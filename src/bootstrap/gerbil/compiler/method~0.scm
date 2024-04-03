(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712121899)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133748%_)
        (let* ((_%self133750%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133752%_
                (let ((__tmp133930
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133748%_))))
                  (declare (not safe))
                  (method-ref _%self133750%_ __tmp133930))))
          (if _%$e133752%_
              ((lambda (_%method133755%_)
                 (declare (not safe))
                 (_%method133755%_ _%self133750%_ _%stx133748%_))
               _%$e133752%_)
              (let ()
                (let ((__tmp133932
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133748%_)))
                      (__tmp133931
                       (let ()
                         (declare (not safe))
                         (gx#syntax->datum _%stx133748%_))))
                  (declare (not safe))
                  (error '"missing method"
                         _%self133750%_
                         __tmp133932
                         __tmp133931)))))))
    (define gxc#compile-e__1
      (lambda (_%self133759%_ _%stx133760%_)
        (let ((_%$e133762%_
               (let ((__tmp133933
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx133760%_))))
                 (declare (not safe))
                 (method-ref _%self133759%_ __tmp133933))))
          (if _%$e133762%_
              ((lambda (_%method133765%_)
                 (declare (not safe))
                 (_%method133765%_ _%self133759%_ _%stx133760%_))
               _%$e133762%_)
              (let ()
                (let ((__tmp133935
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133760%_)))
                      (__tmp133934
                       (let ()
                         (declare (not safe))
                         (gx#syntax->datum _%stx133760%_))))
                  (declare (not safe))
                  (error '"missing method"
                         _%self133759%_
                         __tmp133935
                         __tmp133934)))))))
    (define gxc#compile-e
      (lambda _g133937_
        (let ((_g133936_ (let () (declare (not safe)) (##length _g133937_))))
          (cond ((let () (declare (not safe)) (##fx= _g133936_ 1))
                 (apply (lambda (_%stx133748%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx133748%_)))
                        _g133937_))
                ((let () (declare (not safe)) (##fx= _g133936_ 2))
                 (apply (lambda (_%self133759%_ _%stx133760%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133759%_ _%stx133760%_)))
                        _g133937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133937_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133746%_)
        (let ((__tmp133938
               (car (let () (declare (not safe)) (gx#stx-e _%stx133746%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133938))))
    (define gxc#void-method (lambda (_%self133743%_ _%stx133744%_) '#!void))
    (define gxc#false-method (lambda (_%self133740%_ _%stx133741%_) '#f))
    (define gxc#true-method (lambda (_%self133737%_ _%stx133738%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133734%_ _%stx133735%_) _%stx133735%_))
    (define gxc#::void-expression::t
      (let ((__tmp133939 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133939
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133731%_
        (apply make-instance gxc#::void-expression::t _%$args133731%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133940
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
        (__make-promise __tmp133940)))
    (define gxc#::void-special-form::t
      (let ((__tmp133941 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133941
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133727%_
        (apply make-instance gxc#::void-special-form::t _%$args133727%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133942
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
        (__make-promise __tmp133942)))
    (define gxc#::void::t
      (let ((__tmp133943
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp133943 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133723%_
        (apply make-instance gxc#::void::t _%$args133723%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133944
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133944)))
    (define gxc#::false-expression::t
      (let ((__tmp133945 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133945
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133719%_
        (apply make-instance gxc#::false-expression::t _%$args133719%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133946
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
        (__make-promise __tmp133946)))
    (define gxc#::false-special-form::t
      (let ((__tmp133947 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133947
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133715%_
        (apply make-instance gxc#::false-special-form::t _%$args133715%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133948
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
        (__make-promise __tmp133948)))
    (define gxc#::false::t
      (let ((__tmp133949
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp133949 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133711%_
        (apply make-instance gxc#::false::t _%$args133711%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133950
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133950)))
    (define gxc#::identity-expression::t
      (let ((__tmp133951 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133951
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133707%_
        (apply make-instance gxc#::identity-expression::t _%$args133707%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133952
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
        (__make-promise __tmp133952)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133953 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133953
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133703%_
        (apply make-instance gxc#::identity-special-form::t _%$args133703%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133954
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
        (__make-promise __tmp133954)))
    (define gxc#::identity::t
      (let ((__tmp133955
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133955
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133699%_
        (apply make-instance gxc#::identity::t _%$args133699%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133956
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133956)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133957 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133957
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133695%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133695%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133958
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
        (__make-promise __tmp133958)))
    (define gxc#::basic-xform::t
      (let ((__tmp133959
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133959
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133691%_
        (apply make-instance gxc#::basic-xform::t _%$args133691%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133960
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
        (__make-promise __tmp133960)))
    (define gxc#apply-begin%
      (lambda (_%self133647%_ _%stx133648%_)
        (let* ((_%g133650133660%_
                (lambda (_%g133651133657%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133651133657%_))))
               (_%g133649133687%_
                (lambda (_%g133651133663%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133651133663%_))
                      (let ((_%e133655133665%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133651133663%_))))
                        (let ((_%hd133654133668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133655133665%_)))
                              (_%tl133653133670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133655133665%_))))
                          ((lambda (_%L133673%_)
                             (for-each
                              (lambda (_%g133682133684%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self133647%_
                                   _%g133682133684%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133673%_))))
                           _%tl133653133670%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133650133660%_ _%g133651133663%_))))))
          (declare (not safe))
          (_%g133649133687%_ _%stx133648%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133608%_ _%stx133609%_)
        (let* ((_%g133611133621%_
                (lambda (_%g133612133618%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133612133618%_))))
               (_%g133610133644%_
                (lambda (_%g133612133624%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133612133624%_))
                      (let ((_%e133616133626%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133612133624%_))))
                        (let ((_%hd133615133629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133616133626%_)))
                              (_%tl133614133631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133616133626%_))))
                          ((lambda (_%L133634%_)
                             (let ((__tmp133961 (last _%L133634%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self133608%_ __tmp133961)))
                           _%tl133614133631%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133611133621%_ _%g133612133624%_))))))
          (declare (not safe))
          (_%g133610133644%_ _%stx133609%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133604%_ _%stx133605%_)
        (let ((__tmp133964
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self133604%_ _%stx133605%_))))
              (__tmp133962
               (let ((__tmp133963
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133963 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133964
           gx#current-expander-phi
           __tmp133962))))
    (define gxc#apply-module%
      (lambda (_%self133543%_ _%stx133544%_)
        (let* ((_%g133546133560%_
                (lambda (_%g133547133557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133547133557%_))))
               (_%g133545133601%_
                (lambda (_%g133547133563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133547133563%_))
                      (let ((_%e133552133565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133547133563%_))))
                        (let ((_%hd133551133568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133552133565%_)))
                              (_%tl133550133570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133552133565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133550133570%_))
                              (let ((_%e133555133573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133550133570%_))))
                                (let ((_%hd133554133576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133555133573%_)))
                                      (_%tl133553133578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133555133573%_))))
                                  ((lambda (_%L133581%_ _%L133582%_)
                                     (let* ((_%ctx133595%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133582%_)))
                                            (_%ctx-stx133597%_
                                             (##structure-ref
                                              _%ctx133595%_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp133965
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self133543%_
                                                   _%ctx-stx133597%_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp133965
                                          gx#current-expander-context
                                          _%ctx133595%_))))
                                   _%tl133553133578%_
                                   _%hd133554133576%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133546133560%_ _%g133547133563%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133546133560%_ _%g133547133563%_))))))
          (declare (not safe))
          (_%g133545133601%_ _%stx133544%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133475%_ _%stx133476%_)
        (let* ((_%g133478133495%_
                (lambda (_%g133479133492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133479133492%_))))
               (_%g133477133540%_
                (lambda (_%g133479133498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133479133498%_))
                      (let ((_%e133484133500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133479133498%_))))
                        (let ((_%hd133483133503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133484133500%_)))
                              (_%tl133482133505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133484133500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133482133505%_))
                              (let ((_%e133487133508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133482133505%_))))
                                (let ((_%hd133486133511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133487133508%_)))
                                      (_%tl133485133513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133487133508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133485133513%_))
                                      (let ((_%e133490133516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133485133513%_))))
                                        (let ((_%hd133489133519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133490133516%_)))
                                              (_%tl133488133521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133490133516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133488133521%_))
                                              ((lambda (_%L133524%_
                                                        _%L133525%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133475%_
                                                    _%L133524%_)))
                                               _%hd133489133519%_
                                               _%hd133486133511%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133478133495%_
                                                 _%g133479133498%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133478133495%_
                                         _%g133479133498%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133478133495%_ _%g133479133498%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133478133495%_ _%g133479133498%_))))))
          (declare (not safe))
          (_%g133477133540%_ _%stx133476%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133407%_ _%stx133408%_)
        (let* ((_%g133410133427%_
                (lambda (_%g133411133424%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133411133424%_))))
               (_%g133409133472%_
                (lambda (_%g133411133430%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133411133430%_))
                      (let ((_%e133416133432%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133411133430%_))))
                        (let ((_%hd133415133435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133416133432%_)))
                              (_%tl133414133437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133416133432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133414133437%_))
                              (let ((_%e133419133440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133414133437%_))))
                                (let ((_%hd133418133443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133419133440%_)))
                                      (_%tl133417133445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133419133440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133417133445%_))
                                      (let ((_%e133422133448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133417133445%_))))
                                        (let ((_%hd133421133451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133422133448%_)))
                                              (_%tl133420133453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133422133448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133420133453%_))
                                              ((lambda (_%L133456%_
                                                        _%L133457%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133407%_
                                                    _%L133456%_)))
                                               _%hd133421133451%_
                                               _%hd133418133443%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133410133427%_
                                                 _%g133411133430%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133410133427%_
                                         _%g133411133430%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133410133427%_ _%g133411133430%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133410133427%_ _%g133411133430%_))))))
          (declare (not safe))
          (_%g133409133472%_ _%stx133408%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133338%_ _%stx133339%_)
        (let* ((_%g133341133358%_
                (lambda (_%g133342133355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133342133355%_))))
               (_%g133340133404%_
                (lambda (_%g133342133361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133342133361%_))
                      (let ((_%e133347133363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133342133361%_))))
                        (let ((_%hd133346133366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133347133363%_)))
                              (_%tl133345133368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133347133363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133345133368%_))
                              (let ((_%e133350133371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133345133368%_))))
                                (let ((_%hd133349133374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133350133371%_)))
                                      (_%tl133348133376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133350133371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133348133376%_))
                                      (let ((_%e133353133379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133348133376%_))))
                                        (let ((_%hd133352133382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133353133379%_)))
                                              (_%tl133351133384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133353133379%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133351133384%_))
                                              ((lambda (_%L133387%_
                                                        _%L133388%_)
                                                 (let ((__tmp133968
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133338%_
                                                             _%L133387%_))))
                                                       (__tmp133966
                                                        (let ((__tmp133967
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133967 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133968
                                                    gx#current-expander-phi
                                                    __tmp133966)))
                                               _%hd133352133382%_
                                               _%hd133349133374%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133341133358%_
                                                 _%g133342133361%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133341133358%_
                                         _%g133342133361%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133341133358%_ _%g133342133361%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133341133358%_ _%g133342133361%_))))))
          (declare (not safe))
          (_%g133340133404%_ _%stx133339%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133270%_ _%stx133271%_)
        (let* ((_%g133273133290%_
                (lambda (_%g133274133287%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133274133287%_))))
               (_%g133272133335%_
                (lambda (_%g133274133293%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133274133293%_))
                      (let ((_%e133279133295%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133274133293%_))))
                        (let ((_%hd133278133298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133279133295%_)))
                              (_%tl133277133300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133279133295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133277133300%_))
                              (let ((_%e133282133303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133277133300%_))))
                                (let ((_%hd133281133306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133282133303%_)))
                                      (_%tl133280133308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133282133303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133280133308%_))
                                      (let ((_%e133285133311%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133280133308%_))))
                                        (let ((_%hd133284133314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133285133311%_)))
                                              (_%tl133283133316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133285133311%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133283133316%_))
                                              ((lambda (_%L133319%_
                                                        _%L133320%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133270%_
                                                    _%L133319%_)))
                                               _%hd133284133314%_
                                               _%hd133281133306%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133273133290%_
                                                 _%g133274133293%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133273133290%_
                                         _%g133274133293%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133273133290%_ _%g133274133293%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133273133290%_ _%g133274133293%_))))))
          (declare (not safe))
          (_%g133272133335%_ _%stx133271%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133152%_ _%stx133153%_)
        (let* ((_%g133155133183%_
                (lambda (_%g133156133180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133156133180%_))))
               (_%g133154133267%_
                (lambda (_%g133156133186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133156133186%_))
                      (let ((_%e133161133188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133156133186%_))))
                        (let ((_%hd133160133191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133161133188%_)))
                              (_%tl133159133193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133161133188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133159133193%_))
                              (let ((_g133969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133159133193%_
                                        '0))))
                                (begin
                                  (let ((_g133970_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133969_)
                                               (##vector-length _g133969_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133970_ 2)))
                                        (error "Context expects 2 values"
                                               _g133970_)))
                                  (let ((_%target133162133196%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133969_ 0)))
                                        (_%tl133164133198%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133969_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133164133198%_))
                                        (letrec ((_%loop133165133201%_
                                                  (lambda (_%hd133163133204%_
                                                           _%body133169133206%_
                                                           _%hd133170133208%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133163133204%_))
                                                        (let ((_%e133166133211%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133163133204%_))))
                  (let ((_%lp-hd133167133214%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133166133211%_)))
                        (_%lp-tl133168133216%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133166133211%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133167133214%_))
                        (let ((_%e133175133219%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133167133214%_))))
                          (let ((_%hd133174133222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133175133219%_)))
                                (_%tl133173133224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133175133219%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133173133224%_))
                                (let ((_%e133178133227%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133173133224%_))))
                                  (let ((_%hd133177133230%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133178133227%_)))
                                        (_%tl133176133232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133178133227%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133176133232%_))
                                        (let ((__tmp133972
                                               (cons _%hd133177133230%_
                                                     _%body133169133206%_))
                                              (__tmp133971
                                               (cons _%hd133174133222%_
                                                     _%hd133170133208%_)))
                                          (declare (not safe))
                                          (_%loop133165133201%_
                                           _%lp-tl133168133216%_
                                           __tmp133972
                                           __tmp133971))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133155133183%_
                                           _%g133156133186%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133155133183%_ _%g133156133186%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133155133183%_ _%g133156133186%_)))))
                (let ((_%body133171133235%_ (reverse _%body133169133206%_))
                      (_%hd133172133237%_ (reverse _%hd133170133208%_)))
                  ((lambda (_%L133240%_ _%L133241%_)
                     (for-each
                      (lambda (_%g133255133257%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133152%_ _%g133255133257%_)))
                      (let ((__tmp133973
                             (lambda (_%g133259133262%_ _%g133260133264%_)
                               (cons _%g133259133262%_ _%g133260133264%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133973 '() _%L133240%_))))
                   _%body133171133235%_
                   _%hd133172133237%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133165133201%_
                                             _%target133162133196%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133155133183%_
                                           _%g133156133186%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133155133183%_ _%g133156133186%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133155133183%_ _%g133156133186%_))))))
          (declare (not safe))
          (_%g133154133267%_ _%stx133153%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133005%_ _%stx133006%_)
        (let* ((_%g133008133043%_
                (lambda (_%g133009133040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133009133040%_))))
               (_%g133007133149%_
                (lambda (_%g133009133046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133009133046%_))
                      (let ((_%e133015133048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133009133046%_))))
                        (let ((_%hd133014133051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133015133048%_)))
                              (_%tl133013133053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133015133048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133013133053%_))
                              (let ((_%e133018133056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133013133053%_))))
                                (let ((_%hd133017133059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133018133056%_)))
                                      (_%tl133016133061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133018133056%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133017133059%_))
                                      (let ((_g133974_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133017133059%_
                                                '0))))
                                        (begin
                                          (let ((_g133975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133974_)
                                                       (##vector-length
                                                        _g133974_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133975_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133975_)))
                                          (let ((_%target133019133064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133974_ 0)))
                                                (_%tl133021133066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133974_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133021133066%_))
                                                (letrec ((_%loop133022133069%_
                                                          (lambda (_%hd133020133072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133026133074%_
                           _%hd133027133076%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133020133072%_))
                        (let ((_%e133023133079%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133020133072%_))))
                          (let ((_%lp-hd133024133082%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133023133079%_)))
                                (_%lp-tl133025133084%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133023133079%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133024133082%_))
                                (let ((_%e133032133087%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133024133082%_))))
                                  (let ((_%hd133031133090%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133032133087%_)))
                                        (_%tl133030133092%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133032133087%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133030133092%_))
                                        (let ((_%e133035133095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133030133092%_))))
                                          (let ((_%hd133034133098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133035133095%_)))
                                                (_%tl133033133100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133035133095%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133033133100%_))
                                                (let ((__tmp133977
                                                       (cons _%hd133034133098%_
                                                             _%expr133026133074%_))
                                                      (__tmp133976
                                                       (cons _%hd133031133090%_
                                                             _%hd133027133076%_)))
                                                  (declare (not safe))
                                                  (_%loop133022133069%_
                                                   _%lp-tl133025133084%_
                                                   __tmp133977
                                                   __tmp133976))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133008133043%_
                                                   _%g133009133046%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133008133043%_
                                           _%g133009133046%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133008133043%_ _%g133009133046%_)))))
                        (let ((_%expr133028133103%_
                               (reverse _%expr133026133074%_))
                              (_%hd133029133105%_
                               (reverse _%hd133027133076%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133016133061%_))
                              (let ((_%e133038133108%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133016133061%_))))
                                (let ((_%hd133037133111%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133038133108%_)))
                                      (_%tl133036133113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133038133108%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133036133113%_))
                                      ((lambda (_%L133116%_
                                                _%L133117%_
                                                _%L133118%_)
                                         (for-each
                                          (lambda (_%g133137133139%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133005%_
                                               _%g133137133139%_)))
                                          (let ((__tmp133979
                                                 (lambda (_%g133141133144%_
                                                          _%g133142133146%_)
                                                   (cons _%g133141133144%_
                                                         _%g133142133146%_)))
                                                (__tmp133978
                                                 (cons _%L133116%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133979
                                             __tmp133978
                                             _%L133117%_))))
                                       _%hd133037133111%_
                                       _%expr133028133103%_
                                       _%hd133029133105%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133008133043%_
                                         _%g133009133046%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133008133043%_ _%g133009133046%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133022133069%_
                                                     _%target133019133064%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133008133043%_
                                                   _%g133009133046%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133008133043%_
                                         _%g133009133046%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133008133043%_ _%g133009133046%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133008133043%_ _%g133009133046%_))))))
          (declare (not safe))
          (_%g133007133149%_ _%stx133006%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132950%_ _%stx132951%_)
        (let* ((_%g132953132967%_
                (lambda (_%g132954132964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132954132964%_))))
               (_%g132952133002%_
                (lambda (_%g132954132970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132954132970%_))
                      (let ((_%e132959132972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132954132970%_))))
                        (let ((_%hd132958132975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132959132972%_)))
                              (_%tl132957132977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132959132972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132957132977%_))
                              (let ((_%e132962132980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132957132977%_))))
                                (let ((_%hd132961132983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132962132980%_)))
                                      (_%tl132960132985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132962132980%_))))
                                  ((lambda (_%L132988%_ _%L132989%_)
                                     (let ((__tmp133980 (last _%L132988%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self132950%_
                                        __tmp133980)))
                                   _%tl132960132985%_
                                   _%hd132961132983%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132953132967%_ _%g132954132970%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132953132967%_ _%g132954132970%_))))))
          (declare (not safe))
          (_%g132952133002%_ _%stx132951%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132882%_ _%stx132883%_)
        (let* ((_%g132885132902%_
                (lambda (_%g132886132899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132886132899%_))))
               (_%g132884132947%_
                (lambda (_%g132886132905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132886132905%_))
                      (let ((_%e132891132907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132886132905%_))))
                        (let ((_%hd132890132910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132891132907%_)))
                              (_%tl132889132912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132891132907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132889132912%_))
                              (let ((_%e132894132915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132889132912%_))))
                                (let ((_%hd132893132918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132894132915%_)))
                                      (_%tl132892132920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132894132915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132892132920%_))
                                      (let ((_%e132897132923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132892132920%_))))
                                        (let ((_%hd132896132926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132897132923%_)))
                                              (_%tl132895132928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132897132923%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132895132928%_))
                                              ((lambda (_%L132931%_
                                                        _%L132932%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self132882%_
                                                    _%L132931%_)))
                                               _%hd132896132926%_
                                               _%hd132893132918%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132885132902%_
                                                 _%g132886132905%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132885132902%_
                                         _%g132886132905%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132885132902%_ _%g132886132905%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132885132902%_ _%g132886132905%_))))))
          (declare (not safe))
          (_%g132884132947%_ _%stx132883%_))))
    (define gxc#apply-operands
      (lambda (_%self132795%_ _%stx132796%_)
        (let* ((_%g132798132817%_
                (lambda (_%g132799132814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132799132814%_))))
               (_%g132797132879%_
                (lambda (_%g132799132820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132799132820%_))
                      (let ((_%e132803132822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132799132820%_))))
                        (let ((_%hd132802132825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132803132822%_)))
                              (_%tl132801132827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132803132822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132801132827%_))
                              (let ((_g133981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132801132827%_
                                        '0))))
                                (begin
                                  (let ((_g133982_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133981_)
                                               (##vector-length _g133981_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133982_ 2)))
                                        (error "Context expects 2 values"
                                               _g133982_)))
                                  (let ((_%target132804132830%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133981_ 0)))
                                        (_%tl132806132832%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133981_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132806132832%_))
                                        (letrec ((_%loop132807132835%_
                                                  (lambda (_%hd132805132838%_
                                                           _%rands132811132840%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132805132838%_))
                                                        (let ((_%e132808132843%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132805132838%_))))
                  (let ((_%lp-hd132809132846%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132808132843%_)))
                        (_%lp-tl132810132848%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132808132843%_))))
                    (let ((__tmp133983
                           (cons _%lp-hd132809132846%_ _%rands132811132840%_)))
                      (declare (not safe))
                      (_%loop132807132835%_
                       _%lp-tl132810132848%_
                       __tmp133983))))
                (let ((_%rands132812132851%_ (reverse _%rands132811132840%_)))
                  ((lambda (_%L132854%_)
                     (for-each
                      (lambda (_%g132867132869%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132795%_ _%g132867132869%_)))
                      (let ((__tmp133984
                             (lambda (_%g132871132874%_ _%g132872132876%_)
                               (cons _%g132871132874%_ _%g132872132876%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133984 '() _%L132854%_))))
                   _%rands132812132851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop132807132835%_
                                             _%target132804132830%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132798132817%_
                                           _%g132799132820%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g132798132817%_ _%g132799132820%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132798132817%_ _%g132799132820%_))))))
          (declare (not safe))
          (_%g132797132879%_ _%stx132796%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132792%_ _%src-stx132793%_)
        (let ((__tmp133985
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132793%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132792%_ __tmp133985))))
    (define gxc#xform-begin%
      (lambda (_%self132747%_ _%stx132748%_)
        (let* ((_%g132750132760%_
                (lambda (_%g132751132757%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132751132757%_))))
               (_%g132749132789%_
                (lambda (_%g132751132763%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132751132763%_))
                      (let ((_%e132755132765%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132751132763%_))))
                        (let ((_%hd132754132768%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132755132765%_)))
                              (_%tl132753132770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132755132765%_))))
                          ((lambda (_%L132773%_)
                             (let* ((_%forms132787%_
                                     (map (lambda (_%g132782132784%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132747%_
                                               _%g132782132784%_)))
                                          _%L132773%_))
                                    (__tmp133986
                                     (cons '%#begin _%forms132787%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp133986
                                _%stx132748%_)))
                           _%tl132753132770%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132750132760%_ _%g132751132763%_))))))
          (declare (not safe))
          (_%g132749132789%_ _%stx132748%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132701%_ _%stx132702%_)
        (let* ((_%g132704132714%_
                (lambda (_%g132705132711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132705132711%_))))
               (_%g132703132744%_
                (lambda (_%g132705132717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132705132717%_))
                      (let ((_%e132709132719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132705132717%_))))
                        (let ((_%hd132708132722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132709132719%_)))
                              (_%tl132707132724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132709132719%_))))
                          ((lambda (_%L132727%_)
                             (let ((__tmp133989
                                    (lambda ()
                                      (let* ((_%forms132742%_
                                              (map (lambda (_%g132737132739%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132701%_
                                                        _%g132737132739%_)))
                                                   _%L132727%_))
                                             (__tmp133990
                                              (cons '%#begin-syntax
                                                    _%forms132742%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp133990
                                         _%stx132702%_))))
                                   (__tmp133987
                                    (let ((__tmp133988
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp133988 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133989
                                gx#current-expander-phi
                                __tmp133987)))
                           _%tl132707132724%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132704132714%_ _%g132705132717%_))))))
          (declare (not safe))
          (_%g132703132744%_ _%stx132702%_))))
    (define gxc#xform-module%
      (lambda (_%self132638%_ _%stx132639%_)
        (let* ((_%g132641132655%_
                (lambda (_%g132642132652%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132642132652%_))))
               (_%g132640132698%_
                (lambda (_%g132642132658%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132642132658%_))
                      (let ((_%e132647132660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132642132658%_))))
                        (let ((_%hd132646132663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132647132660%_)))
                              (_%tl132645132665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132647132660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132645132665%_))
                              (let ((_%e132650132668%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132645132665%_))))
                                (let ((_%hd132649132671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132650132668%_)))
                                      (_%tl132648132673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132650132668%_))))
                                  ((lambda (_%L132676%_ _%L132677%_)
                                     (let* ((_%ctx132690%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132677%_)))
                                            (_%code132692%_
                                             (##structure-ref
                                              _%ctx132690%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132695%_
                                             (let ((__tmp133991
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self132638%_
                                                         _%code132692%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp133991
                                                gx#current-expander-context
                                                _%ctx132690%_))))
                                       (##structure-set!
                                        _%ctx132690%_
                                        _%code132695%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp133992
                                              (cons '%#module
                                                    (cons _%L132677%_
                                                          (cons _%code132695%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp133992
                                          _%stx132639%_))))
                                   _%tl132648132673%_
                                   _%hd132649132671%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132641132655%_ _%g132642132658%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132641132655%_ _%g132642132658%_))))))
          (declare (not safe))
          (_%g132640132698%_ _%stx132639%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132568%_ _%stx132569%_)
        (let* ((_%g132571132588%_
                (lambda (_%g132572132585%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132572132585%_))))
               (_%g132570132635%_
                (lambda (_%g132572132591%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132572132591%_))
                      (let ((_%e132577132593%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132572132591%_))))
                        (let ((_%hd132576132596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132577132593%_)))
                              (_%tl132575132598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132577132593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132575132598%_))
                              (let ((_%e132580132601%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132575132598%_))))
                                (let ((_%hd132579132604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132580132601%_)))
                                      (_%tl132578132606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132580132601%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132578132606%_))
                                      (let ((_%e132583132609%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132578132606%_))))
                                        (let ((_%hd132582132612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132583132609%_)))
                                              (_%tl132581132614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132583132609%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132581132614%_))
                                              ((lambda (_%L132617%_
                                                        _%L132618%_)
                                                 (let* ((_%expr132633%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132568%_
                                                            _%L132617%_)))
                                                        (__tmp133993
                                                         (cons '%#define-values
                                                               (cons _%L132618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132633%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp133993
                                                    _%stx132569%_)))
                                               _%hd132582132612%_
                                               _%hd132579132604%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132571132588%_
                                                 _%g132572132591%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132571132588%_
                                         _%g132572132591%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132571132588%_ _%g132572132591%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132571132588%_ _%g132572132591%_))))))
          (declare (not safe))
          (_%g132570132635%_ _%stx132569%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132497%_ _%stx132498%_)
        (let* ((_%g132500132517%_
                (lambda (_%g132501132514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132501132514%_))))
               (_%g132499132565%_
                (lambda (_%g132501132520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132501132520%_))
                      (let ((_%e132506132522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132501132520%_))))
                        (let ((_%hd132505132525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132506132522%_)))
                              (_%tl132504132527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132506132522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132504132527%_))
                              (let ((_%e132509132530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132504132527%_))))
                                (let ((_%hd132508132533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132509132530%_)))
                                      (_%tl132507132535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132509132530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132507132535%_))
                                      (let ((_%e132512132538%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132507132535%_))))
                                        (let ((_%hd132511132541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132512132538%_)))
                                              (_%tl132510132543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132512132538%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132510132543%_))
                                              ((lambda (_%L132546%_
                                                        _%L132547%_)
                                                 (let ((__tmp133996
                                                        (lambda ()
                                                          (let* ((_%expr132563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self132497%_ _%L132546%_)))
                         (__tmp133997
                          (cons '%#define-syntax
                                (cons _%L132547%_ (cons _%expr132563%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp133997 _%stx132498%_))))
               (__tmp133994
                (let ((__tmp133995
                       (let ()
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
                                               _%hd132511132541%_
                                               _%hd132508132533%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132500132517%_
                                                 _%g132501132520%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132500132517%_
                                         _%g132501132520%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132500132517%_ _%g132501132520%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132500132517%_ _%g132501132520%_))))))
          (declare (not safe))
          (_%g132499132565%_ _%stx132498%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132427%_ _%stx132428%_)
        (let* ((_%g132430132447%_
                (lambda (_%g132431132444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132431132444%_))))
               (_%g132429132494%_
                (lambda (_%g132431132450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132431132450%_))
                      (let ((_%e132436132452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132431132450%_))))
                        (let ((_%hd132435132455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132436132452%_)))
                              (_%tl132434132457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132436132452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132434132457%_))
                              (let ((_%e132439132460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132434132457%_))))
                                (let ((_%hd132438132463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132439132460%_)))
                                      (_%tl132437132465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132439132460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132437132465%_))
                                      (let ((_%e132442132468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132437132465%_))))
                                        (let ((_%hd132441132471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132442132468%_)))
                                              (_%tl132440132473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132442132468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132440132473%_))
                                              ((lambda (_%L132476%_
                                                        _%L132477%_)
                                                 (let* ((_%expr132492%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132427%_
                                                            _%L132476%_)))
                                                        (__tmp133998
                                                         (cons '%#begin-annotation
                                                               (cons _%L132477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132492%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp133998
                                                    _%stx132428%_)))
                                               _%hd132441132471%_
                                               _%hd132438132463%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132430132447%_
                                                 _%g132431132450%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132430132447%_
                                         _%g132431132450%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132430132447%_ _%g132431132450%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132430132447%_ _%g132431132450%_))))))
          (declare (not safe))
          (_%g132429132494%_ _%stx132428%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132365%_ _%stx132366%_)
        (let* ((_%g132368132382%_
                (lambda (_%g132369132379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132369132379%_))))
               (_%g132367132424%_
                (lambda (_%g132369132385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132369132385%_))
                      (let ((_%e132374132387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132369132385%_))))
                        (let ((_%hd132373132390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132374132387%_)))
                              (_%tl132372132392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132374132387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132372132392%_))
                              (let ((_%e132377132395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132372132392%_))))
                                (let ((_%hd132376132398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132377132395%_)))
                                      (_%tl132375132400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132377132395%_))))
                                  ((lambda (_%L132403%_ _%L132404%_)
                                     (let ((__tmp134001
                                            (lambda ()
                                              (let* ((_%body132422%_
                                                      (map (lambda (_%g132417132419%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132365%_ _%g132417132419%_)))
                   _%L132403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134002
                                                      (cons '%#lambda
                                                            (cons _%L132404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body132422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134002
                                                 _%stx132366%_))))
                                           (__tmp133999
                                            (let ((__tmp134000
                                                   (cons _%L132404%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134000))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134001
                                        gxc#current-compile-local-env
                                        __tmp133999)))
                                   _%tl132375132400%_
                                   _%hd132376132398%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132368132382%_ _%g132369132385%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132368132382%_ _%g132369132385%_))))))
          (declare (not safe))
          (_%g132367132424%_ _%stx132366%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132273%_ _%stx132274%_)
        (letrec ((_%clause-e132276%_
                  (lambda (_%clause132317%_)
                    (let* ((_%g132319132330%_
                            (lambda (_%g132320132327%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132320132327%_))))
                           (_%g132318132362%_
                            (lambda (_%g132320132333%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132320132333%_))
                                  (let ((_%e132325132335%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132320132333%_))))
                                    (let ((_%hd132324132338%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132325132335%_)))
                                          (_%tl132323132340%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132325132335%_))))
                                      ((lambda (_%L132343%_ _%L132344%_)
                                         (let ((__tmp134005
                                                (lambda ()
                                                  (let ((_%body132360%_
                                                         (map (lambda (_%g132355132357%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132273%_ _%g132355132357%_)))
                      _%L132343%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132344%_
                                                          _%body132360%_))))
                                               (__tmp134003
                                                (let ((__tmp134004
                                                       (cons _%L132344%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134004))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134005
                                            gxc#current-compile-local-env
                                            __tmp134003)))
                                       _%tl132323132340%_
                                       _%hd132324132338%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132319132330%_ _%g132320132333%_))))))
                      (declare (not safe))
                      (_%g132318132362%_ _%clause132317%_)))))
          (let* ((_%g132278132288%_
                  (lambda (_%g132279132285%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132279132285%_))))
                 (_%g132277132314%_
                  (lambda (_%g132279132291%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132279132291%_))
                        (let ((_%e132283132293%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132279132291%_))))
                          (let ((_%hd132282132296%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132283132293%_)))
                                (_%tl132281132298%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132283132293%_))))
                            ((lambda (_%L132301%_)
                               (let* ((_%clauses132312%_
                                       (map _%clause-e132276%_ _%L132301%_))
                                      (__tmp134006
                                       (cons '%#case-lambda
                                             _%clauses132312%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134006
                                  _%stx132274%_)))
                             _%tl132281132298%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132278132288%_ _%g132279132291%_))))))
            (declare (not safe))
            (_%g132277132314%_ _%stx132274%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132027%_ _%stx132028%_)
        (let* ((_%g132030132063%_
                (lambda (_%g132031132060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132031132060%_))))
               (_%g132029132270%_
                (lambda (_%g132031132066%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132031132066%_))
                      (let ((_%e132038132068%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132031132066%_))))
                        (let ((_%hd132037132071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132038132068%_)))
                              (_%tl132036132073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132038132068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132036132073%_))
                              (let ((_%e132041132076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132036132073%_))))
                                (let ((_%hd132040132079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132041132076%_)))
                                      (_%tl132039132081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132041132076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132040132079%_))
                                      (let ((_g134007_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132040132079%_
                                                '0))))
                                        (begin
                                          (let ((_g134008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134007_)
                                                       (##vector-length
                                                        _g134007_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134008_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134008_)))
                                          (let ((_%target132042132084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134007_ 0)))
                                                (_%tl132044132086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134007_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132044132086%_))
                                                (letrec ((_%loop132045132089%_
                                                          (lambda (_%hd132043132092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132049132094%_
                           _%hd132050132096%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132043132092%_))
                        (let ((_%e132046132099%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132043132092%_))))
                          (let ((_%lp-hd132047132102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132046132099%_)))
                                (_%lp-tl132048132104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132046132099%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132047132102%_))
                                (let ((_%e132055132107%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132047132102%_))))
                                  (let ((_%hd132054132110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132055132107%_)))
                                        (_%tl132053132112%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132055132107%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132053132112%_))
                                        (let ((_%e132058132115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132053132112%_))))
                                          (let ((_%hd132057132118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132058132115%_)))
                                                (_%tl132056132120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132058132115%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132056132120%_))
                                                (let ((__tmp134010
                                                       (cons _%hd132057132118%_
                                                             _%expr132049132094%_))
                                                      (__tmp134009
                                                       (cons _%hd132054132110%_
                                                             _%hd132050132096%_)))
                                                  (declare (not safe))
                                                  (_%loop132045132089%_
                                                   _%lp-tl132048132104%_
                                                   __tmp134010
                                                   __tmp134009))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132030132063%_
                                                   _%g132031132066%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132030132063%_
                                           _%g132031132066%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132030132063%_ _%g132031132066%_)))))
                        (let ((_%expr132051132123%_
                               (reverse _%expr132049132094%_))
                              (_%hd132052132125%_
                               (reverse _%hd132050132096%_)))
                          ((lambda (_%L132128%_
                                    _%L132129%_
                                    _%L132130%_
                                    _%L132131%_)
                             (let* ((_%g132150132166%_
                                     (lambda (_%g132151132163%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132151132163%_))))
                                    (_%g132149132256%_
                                     (lambda (_%g132151132169%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132151132169%_))
                                           (let ((_g134011_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132151132169%_
                                                     '0))))
                                             (begin
                                               (let ((_g134012_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134011_)
                                                            (##vector-length
                                                             _g134011_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134012_)))
                                               (let ((_%target132153132171%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134011_
                                                         0)))
                                                     (_%tl132155132173%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134011_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132155132173%_))
                                                     (letrec ((_%loop132156132176%_
                                                               (lambda (_%hd132154132179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132160132181%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132154132179%_))
                             (let ((_%e132157132184%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132154132179%_))))
                               (let ((_%lp-hd132158132187%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132157132184%_)))
                                     (_%lp-tl132159132189%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132157132184%_))))
                                 (let ((__tmp134013
                                        (cons _%lp-hd132158132187%_
                                              _%expr132160132181%_)))
                                   (declare (not safe))
                                   (_%loop132156132176%_
                                    _%lp-tl132159132189%_
                                    __tmp134013))))
                             (let ((_%expr132161132192%_
                                    (reverse _%expr132160132181%_)))
                               ((lambda (_%L132195%_)
                                  (let ()
                                    (let ((__tmp134017
                                           (lambda ()
                                             (let* ((_%g132209132216%_
                                                     (lambda (_%g132210132213%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132210132213%_))))
                                                    (_%g132208132242%_
                                                     (lambda (_%g132210132219%_)
                                                       ((lambda (_%L132221%_)
                                                          (let ()
                                                            (let ((__tmp134018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L132131%_
                                 (cons (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L132195%_
                                            _%L132130%_))
                                         (let ((__tmp134019
                                                (lambda (_%g132231132235%_
                                                         _%g132232132237%_
                                                         _%g132233132239%_)
                                                  (cons (cons _%g132232132237%_
                                                              (cons _%g132231132235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%g132233132239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp134019
                                            '()
                                            _%L132195%_
                                            _%L132130%_)))
                                       _%L132221%_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134018 _%stx132028%_))))
                _%g132210132219%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134020
                                                     (map (lambda (_%g132244132246%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132027%_
                                                               _%g132244132246%_)))
                                                          _%L132128%_)))
                                               (declare (not safe))
                                               (_%g132208132242%_
                                                __tmp134020))))
                                          (__tmp134014
                                           (let ((__tmp134015
                                                  (let ((__tmp134016
                                                         (lambda (_%g132248132251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g132249132253%_)
                   (cons _%g132248132251%_ _%g132249132253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp134016
                                                     '()
                                                     _%L132130%_))))
                                             (declare (not safe))
                                             (gxc#xform-let-locals
                                              __tmp134015))))
                                      (declare (not safe))
                                      (__call-with-parameters
                                       __tmp134017
                                       gxc#current-compile-local-env
                                       __tmp134014))))
                                _%expr132161132192%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132156132176%_ _%target132153132171%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132150132166%_
                                                        _%g132151132169%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132150132166%_
                                              _%g132151132169%_)))))
                                    (__tmp134021
                                     (map (lambda (_%g132258132260%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132027%_
                                               _%g132258132260%_)))
                                          (let ((__tmp134022
                                                 (lambda (_%g132262132265%_
                                                          _%g132263132267%_)
                                                   (cons _%g132262132265%_
                                                         _%g132263132267%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134022
                                             '()
                                             _%L132129%_)))))
                               (declare (not safe))
                               (_%g132149132256%_ __tmp134021)))
                           _%tl132039132081%_
                           _%expr132051132123%_
                           _%hd132052132125%_
                           _%hd132037132071%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132045132089%_
                                                     _%target132042132084%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132030132063%_
                                                   _%g132031132066%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132030132063%_
                                         _%g132031132066%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132030132063%_ _%g132031132066%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132030132063%_ _%g132031132066%_))))))
          (declare (not safe))
          (_%g132029132270%_ _%stx132028%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131781%_ _%stx131782%_)
        (let* ((_%g131784131817%_
                (lambda (_%g131785131814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131785131814%_))))
               (_%g131783132024%_
                (lambda (_%g131785131820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131785131820%_))
                      (let ((_%e131792131822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131785131820%_))))
                        (let ((_%hd131791131825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131792131822%_)))
                              (_%tl131790131827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131792131822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131790131827%_))
                              (let ((_%e131795131830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131790131827%_))))
                                (let ((_%hd131794131833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131795131830%_)))
                                      (_%tl131793131835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131795131830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131794131833%_))
                                      (let ((_g134023_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131794131833%_
                                                '0))))
                                        (begin
                                          (let ((_g134024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134023_)
                                                       (##vector-length
                                                        _g134023_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134024_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134024_)))
                                          (let ((_%target131796131838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134023_ 0)))
                                                (_%tl131798131840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134023_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131798131840%_))
                                                (letrec ((_%loop131799131843%_
                                                          (lambda (_%hd131797131846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131803131848%_
                           _%hd131804131850%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131797131846%_))
                        (let ((_%e131800131853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131797131846%_))))
                          (let ((_%lp-hd131801131856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131800131853%_)))
                                (_%lp-tl131802131858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131800131853%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131801131856%_))
                                (let ((_%e131809131861%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131801131856%_))))
                                  (let ((_%hd131808131864%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131809131861%_)))
                                        (_%tl131807131866%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131809131861%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131807131866%_))
                                        (let ((_%e131812131869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131807131866%_))))
                                          (let ((_%hd131811131872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131812131869%_)))
                                                (_%tl131810131874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131812131869%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131810131874%_))
                                                (let ((__tmp134026
                                                       (cons _%hd131811131872%_
                                                             _%expr131803131848%_))
                                                      (__tmp134025
                                                       (cons _%hd131808131864%_
                                                             _%hd131804131850%_)))
                                                  (declare (not safe))
                                                  (_%loop131799131843%_
                                                   _%lp-tl131802131858%_
                                                   __tmp134026
                                                   __tmp134025))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131784131817%_
                                                   _%g131785131820%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g131784131817%_
                                           _%g131785131820%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g131784131817%_ _%g131785131820%_)))))
                        (let ((_%expr131805131877%_
                               (reverse _%expr131803131848%_))
                              (_%hd131806131879%_
                               (reverse _%hd131804131850%_)))
                          ((lambda (_%L131882%_
                                    _%L131883%_
                                    _%L131884%_
                                    _%L131885%_)
                             (let ((__tmp134030
                                    (lambda ()
                                      (let* ((_%g131905131921%_
                                              (lambda (_%g131906131918%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131906131918%_))))
                                             (_%g131904132003%_
                                              (lambda (_%g131906131924%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131906131924%_))
                                                    (let ((_g134031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131906131924%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134032_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134031_)
                             (##vector-length _g134031_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134032_ 2)))
                      (error "Context expects 2 values" _g134032_)))
                (let ((_%target131908131926%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134031_ 0)))
                      (_%tl131910131928%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134031_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131910131928%_))
                      (letrec ((_%loop131911131931%_
                                (lambda (_%hd131909131934%_
                                         _%expr131915131936%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131909131934%_))
                                      (let ((_%e131912131939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131909131934%_))))
                                        (let ((_%lp-hd131913131942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131912131939%_)))
                                              (_%lp-tl131914131944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131912131939%_))))
                                          (let ((__tmp134033
                                                 (cons _%lp-hd131913131942%_
                                                       _%expr131915131936%_)))
                                            (declare (not safe))
                                            (_%loop131911131931%_
                                             _%lp-tl131914131944%_
                                             __tmp134033))))
                                      (let ((_%expr131916131947%_
                                             (reverse _%expr131915131936%_)))
                                        ((lambda (_%L131950%_)
                                           (let ()
                                             (let* ((_%g131964131971%_
                                                     (lambda (_%g131965131968%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g131965131968%_))))
                                                    (_%g131963131996%_
                                                     (lambda (_%g131965131974%_)
                                                       ((lambda (_%L131976%_)
                                                          (let ()
                                                            (let ((__tmp134034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L131885%_
                                 (cons (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L131950%_
                                            _%L131884%_))
                                         (let ((__tmp134035
                                                (lambda (_%g131985131989%_
                                                         _%g131986131991%_
                                                         _%g131987131993%_)
                                                  (cons (cons _%g131986131991%_
                                                              (cons _%g131985131989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%g131987131993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp134035
                                            '()
                                            _%L131950%_
                                            _%L131884%_)))
                                       _%L131976%_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134034 _%stx131782%_))))
                _%g131965131974%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134036
                                                     (map (lambda (_%g131998132000%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self131781%_
                                                               _%g131998132000%_)))
                                                          _%L131882%_)))
                                               (declare (not safe))
                                               (_%g131963131996%_
                                                __tmp134036))))
                                         _%expr131916131947%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop131911131931%_ _%target131908131926%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g131905131921%_ _%g131906131924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g131905131921%_
                                                       _%g131906131924%_)))))
                                             (__tmp134037
                                              (map (lambda (_%g132005132007%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self131781%_
                                                        _%g132005132007%_)))
                                                   (let ((__tmp134038
                                                          (lambda (_%g132009132012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132010132014%_)
                    (cons _%g132009132012%_ _%g132010132014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134038
                                                      '()
                                                      _%L131883%_)))))
                                        (declare (not safe))
                                        (_%g131904132003%_ __tmp134037))))
                                   (__tmp134027
                                    (let ((__tmp134028
                                           (let ((__tmp134029
                                                  (lambda (_%g132016132019%_
                                                           _%g132017132021%_)
                                                    (cons _%g132016132019%_
                                                          _%g132017132021%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134029
                                              '()
                                              _%L131884%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134028))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134030
                                gxc#current-compile-local-env
                                __tmp134027)))
                           _%tl131793131835%_
                           _%expr131805131877%_
                           _%hd131806131879%_
                           _%hd131791131825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop131799131843%_
                                                     _%target131796131838%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131784131817%_
                                                   _%g131785131820%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131784131817%_
                                         _%g131785131820%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131784131817%_ _%g131785131820%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131784131817%_ _%g131785131820%_))))))
          (declare (not safe))
          (_%g131783132024%_ _%stx131782%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131685%_)
        (let _%loop131687%_ ((_%rest131689%_ _%bindings131685%_)
                             (_%locals131690%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131691131699%_ _%rest131689%_)
                 (_%else131693131707%_ (lambda () _%locals131690%_))
                 (_%K131695131769%_
                  (lambda (_%rest131710%_ _%bind131711%_)
                    (let _%loop-bind131713%_ ((_%bind131715%_ _%bind131711%_)
                                              (_%locals131716%_
                                               _%locals131690%_))
                      (let* ((_%bind131717131728%_ _%bind131715%_)
                             (_%E131721131732%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131717131728%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131724131757%_
                               (lambda (_%bind-rest131754%_ _%id131755%_)
                                 (let ((__tmp134039
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131755%_))
                                              _%locals131716%_)))
                                   (declare (not safe))
                                   (_%loop-bind131713%_
                                    _%bind-rest131754%_
                                    __tmp134039))))
                              (_%K131723131746%_
                               (lambda (_%id131744%_)
                                 (let ((__tmp134040
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131744%_))
                                              _%locals131716%_)))
                                   (declare (not safe))
                                   (_%loop131687%_
                                    _%rest131710%_
                                    __tmp134040))))
                              (_%K131722131737%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop131687%_
                                    _%rest131710%_
                                    _%locals131716%_)))))
                          (let ((_%try-match131719131751%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131717131728%_))
                                       (let ((_%id131749%_
                                              _%bind131717131728%_))
                                         (declare (not safe))
                                         (_%K131723131746%_ _%id131749%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K131722131737%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131717131728%_))
                                (let ((_%tl131726131762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131717131728%_)))
                                      (_%hd131725131760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131717131728%_))))
                                  (let ((_%id131765%_ _%hd131725131760%_)
                                        (_%bind-rest131767%_
                                         _%tl131726131762%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K131724131757%_
                                       _%bind-rest131767%_
                                       _%id131765%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match131719131751%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131691131699%_))
                (let ((_%hd131696131772%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131691131699%_)))
                      (_%tl131697131774%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131691131699%_))))
                  (let* ((_%bind131777%_ _%hd131696131772%_)
                         (_%rest131779%_ _%tl131697131774%_))
                    (declare (not safe))
                    (_%K131695131769%_ _%rest131779%_ _%bind131777%_)))
                (let () (declare (not safe)) (_%else131693131707%_)))))))
    (define gxc#xform-operands
      (lambda (_%self131637%_ _%stx131638%_)
        (let* ((_%g131640131651%_
                (lambda (_%g131641131648%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131641131648%_))))
               (_%g131639131682%_
                (lambda (_%g131641131654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131641131654%_))
                      (let ((_%e131646131656%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131641131654%_))))
                        (let ((_%hd131645131659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131646131656%_)))
                              (_%tl131644131661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131646131656%_))))
                          ((lambda (_%L131664%_ _%L131665%_)
                             (let* ((_%rands131680%_
                                     (map (lambda (_%g131675131677%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self131637%_
                                               _%g131675131677%_)))
                                          _%L131664%_))
                                    (__tmp134041
                                     (cons _%L131665%_ _%rands131680%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134041
                                _%stx131638%_)))
                           _%tl131644131661%_
                           _%hd131645131659%_)))
                      (let ()
                        (declare (not safe))
                        (_%g131640131651%_ _%g131641131654%_))))))
          (declare (not safe))
          (_%g131639131682%_ _%stx131638%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131567%_ _%stx131568%_)
        (let* ((_%g131570131587%_
                (lambda (_%g131571131584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131571131584%_))))
               (_%g131569131634%_
                (lambda (_%g131571131590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131571131590%_))
                      (let ((_%e131576131592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131571131590%_))))
                        (let ((_%hd131575131595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131576131592%_)))
                              (_%tl131574131597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131576131592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131574131597%_))
                              (let ((_%e131579131600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131574131597%_))))
                                (let ((_%hd131578131603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131579131600%_)))
                                      (_%tl131577131605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131579131600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131577131605%_))
                                      (let ((_%e131582131608%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131577131605%_))))
                                        (let ((_%hd131581131611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131582131608%_)))
                                              (_%tl131580131613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131582131608%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131580131613%_))
                                              ((lambda (_%L131616%_
                                                        _%L131617%_)
                                                 (let* ((_%expr131632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self131567%_
                                                            _%L131616%_)))
                                                        (__tmp134042
                                                         (cons '%#set!
                                                               (cons _%L131617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr131632%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134042
                                                    _%stx131568%_)))
                                               _%hd131581131611%_
                                               _%hd131578131603%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g131570131587%_
                                                 _%g131571131590%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131570131587%_
                                         _%g131571131590%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131570131587%_ _%g131571131590%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131570131587%_ _%g131571131590%_))))))
          (declare (not safe))
          (_%g131569131634%_ _%stx131568%_))))))
