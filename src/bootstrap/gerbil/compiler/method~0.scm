(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1734225194)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx138733%_)
        (let* ((_%self138735%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e138737%_
                (let ((__tmp138933 (gxc#stx-car-e _%stx138733%_)))
                  (declare (not safe))
                  (method-ref _%self138735%_ __tmp138933))))
          (if _%$e138737%_
              ((lambda (_%method138740%_)
                 (declare (not safe))
                 (_%method138740%_ _%self138735%_ _%stx138733%_))
               _%$e138737%_)
              (let ((__tmp138935 (gxc#stx-car-e _%stx138733%_))
                    (__tmp138934
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138733%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138735%_
                       __tmp138935
                       __tmp138934))))))
    (define gxc#compile-e__1
      (lambda (_%self138744%_ _%stx138745%_)
        (let ((_%$e138747%_
               (let ((__tmp138936 (gxc#stx-car-e _%stx138745%_)))
                 (declare (not safe))
                 (method-ref _%self138744%_ __tmp138936))))
          (if _%$e138747%_
              ((lambda (_%method138750%_)
                 (declare (not safe))
                 (_%method138750%_ _%self138744%_ _%stx138745%_))
               _%$e138747%_)
              (let ((__tmp138938 (gxc#stx-car-e _%stx138745%_))
                    (__tmp138937
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138745%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138744%_
                       __tmp138938
                       __tmp138937))))))
    (define gxc#compile-e
      (lambda _g138940_
        (let ((_g138939_ (let () (declare (not safe)) (##length _g138940_))))
          (cond ((let () (declare (not safe)) (##fx= _g138939_ 1))
                 (apply gxc#compile-e__0 _g138940_))
                ((let () (declare (not safe)) (##fx= _g138939_ 2))
                 (apply gxc#compile-e__1 _g138940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g138940_))))))
    (define gxc#stx-car-e
      (lambda (_%stx138731%_)
        (let ((__tmp138941
               (car (let () (declare (not safe)) (gx#stx-e _%stx138731%_)))))
          (declare (not safe))
          (gx#stx-e __tmp138941))))
    (define gxc#void-method (lambda (_%self138728%_ _%stx138729%_) '#!void))
    (define gxc#false-method (lambda (_%self138725%_ _%stx138726%_) '#f))
    (define gxc#true-method (lambda (_%self138722%_ _%stx138723%_) '#t))
    (define gxc#identity-method
      (lambda (_%self138719%_ _%stx138720%_) _%stx138720%_))
    (define gxc#::void-expression::t
      (let ((__tmp138942 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp138942
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args138716%_
        (apply make-instance gxc#::void-expression::t _%$args138716%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp138943
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
        (__make-promise __tmp138943)))
    (define gxc#::void-special-form::t
      (let ((__tmp138944 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp138944
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args138712%_
        (apply make-instance gxc#::void-special-form::t _%$args138712%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp138945
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
        (__make-promise __tmp138945)))
    (define gxc#::void::t
      (let ((__tmp138946
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp138946 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args138708%_
        (apply make-instance gxc#::void::t _%$args138708%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp138947
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138947)))
    (define gxc#::false-expression::t
      (let ((__tmp138948 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp138948
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args138704%_
        (apply make-instance gxc#::false-expression::t _%$args138704%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp138949
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
        (__make-promise __tmp138949)))
    (define gxc#::false-special-form::t
      (let ((__tmp138950 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp138950
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args138700%_
        (apply make-instance gxc#::false-special-form::t _%$args138700%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp138951
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
        (__make-promise __tmp138951)))
    (define gxc#::false::t
      (let ((__tmp138952
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp138952 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args138696%_
        (apply make-instance gxc#::false::t _%$args138696%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp138953
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138953)))
    (define gxc#::identity-expression::t
      (let ((__tmp138954 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp138954
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args138692%_
        (apply make-instance gxc#::identity-expression::t _%$args138692%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp138955
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
        (__make-promise __tmp138955)))
    (define gxc#::identity-special-form::t
      (let ((__tmp138956 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp138956
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args138688%_
        (apply make-instance gxc#::identity-special-form::t _%$args138688%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp138957
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
        (__make-promise __tmp138957)))
    (define gxc#::identity::t
      (let ((__tmp138958
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp138958
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args138684%_
        (apply make-instance gxc#::identity::t _%$args138684%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp138959
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138959)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp138960 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp138960
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args138680%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args138680%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp138961
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
        (__make-promise __tmp138961)))
    (define gxc#::basic-xform::t
      (let ((__tmp138962
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp138962
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args138676%_
        (apply make-instance gxc#::basic-xform::t _%$args138676%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp138963
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
        (__make-promise __tmp138963)))
    (define gxc#apply-begin%
      (lambda (_%self138632%_ _%stx138633%_)
        (let* ((_%g138635138645%_
                (lambda (_%g138636138642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138636138642%_))))
               (_%g138634138672%_
                (lambda (_%g138636138648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138636138648%_))
                      (let ((_%e138638138650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138636138648%_))))
                        (let ((_%hd138639138653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138638138650%_)))
                              (_%tl138640138655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138638138650%_))))
                          ((lambda (_%L138658%_)
                             (for-each
                              (lambda (_%g138667138669%_)
                                (gxc#compile-e__1
                                 _%self138632%_
                                 _%g138667138669%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L138658%_))))
                           _%tl138640138655%_)))
                      (_%g138635138645%_ _%g138636138648%_)))))
          (_%g138634138672%_ _%stx138633%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self138593%_ _%stx138594%_)
        (let* ((_%g138596138606%_
                (lambda (_%g138597138603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138597138603%_))))
               (_%g138595138629%_
                (lambda (_%g138597138609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138597138609%_))
                      (let ((_%e138599138611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138597138609%_))))
                        (let ((_%hd138600138614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138599138611%_)))
                              (_%tl138601138616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138599138611%_))))
                          ((lambda (_%L138619%_)
                             (gxc#compile-e__1
                              _%self138593%_
                              (last _%L138619%_)))
                           _%tl138601138616%_)))
                      (_%g138596138606%_ _%g138597138609%_)))))
          (_%g138595138629%_ _%stx138594%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self138589%_ _%stx138590%_)
        (let ((__tmp138966
               (lambda () (gxc#apply-begin% _%self138589%_ _%stx138590%_)))
              (__tmp138964
               (let ((__tmp138965
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp138965 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp138966
           gx#current-expander-phi
           __tmp138964))))
    (define gxc#apply-module%
      (lambda (_%self138528%_ _%stx138529%_)
        (let* ((_%g138531138545%_
                (lambda (_%g138532138542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138532138542%_))))
               (_%g138530138586%_
                (lambda (_%g138532138548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138532138548%_))
                      (let ((_%e138535138550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138532138548%_))))
                        (let ((_%hd138536138553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138535138550%_)))
                              (_%tl138537138555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138535138550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138537138555%_))
                              (let ((_%e138538138558%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138537138555%_))))
                                (let ((_%hd138539138561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138538138558%_)))
                                      (_%tl138540138563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138538138558%_))))
                                  ((lambda (_%L138566%_ _%L138567%_)
                                     (let* ((_%ctx138580%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L138567%_)))
                                            (_%ctx-stx138582%_
                                             (##structure-ref
                                              _%ctx138580%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp138967
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self138528%_
                                                _%ctx-stx138582%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138967
                                        gx#current-expander-context
                                        _%ctx138580%_)))
                                   _%tl138540138563%_
                                   _%hd138539138561%_)))
                              (_%g138531138545%_ _%g138532138548%_))))
                      (_%g138531138545%_ _%g138532138548%_)))))
          (_%g138530138586%_ _%stx138529%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self138460%_ _%stx138461%_)
        (let* ((_%g138463138480%_
                (lambda (_%g138464138477%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138464138477%_))))
               (_%g138462138525%_
                (lambda (_%g138464138483%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138464138483%_))
                      (let ((_%e138467138485%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138464138483%_))))
                        (let ((_%hd138468138488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138467138485%_)))
                              (_%tl138469138490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138467138485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138469138490%_))
                              (let ((_%e138470138493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138469138490%_))))
                                (let ((_%hd138471138496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138470138493%_)))
                                      (_%tl138472138498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138470138493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138472138498%_))
                                      (let ((_%e138473138501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138472138498%_))))
                                        (let ((_%hd138474138504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138473138501%_)))
                                              (_%tl138475138506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138473138501%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138475138506%_))
                                              ((lambda (_%L138509%_
                                                        _%L138510%_)
                                                 (gxc#compile-e__1
                                                  _%self138460%_
                                                  _%L138509%_))
                                               _%hd138474138504%_
                                               _%hd138471138496%_)
                                              (_%g138463138480%_
                                               _%g138464138483%_))))
                                      (_%g138463138480%_ _%g138464138483%_))))
                              (_%g138463138480%_ _%g138464138483%_))))
                      (_%g138463138480%_ _%g138464138483%_)))))
          (_%g138462138525%_ _%stx138461%_))))
    (define gxc#apply-define-values%
      (lambda (_%self138392%_ _%stx138393%_)
        (let* ((_%g138395138412%_
                (lambda (_%g138396138409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138396138409%_))))
               (_%g138394138457%_
                (lambda (_%g138396138415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138396138415%_))
                      (let ((_%e138399138417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138396138415%_))))
                        (let ((_%hd138400138420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138399138417%_)))
                              (_%tl138401138422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138399138417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138401138422%_))
                              (let ((_%e138402138425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138401138422%_))))
                                (let ((_%hd138403138428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138402138425%_)))
                                      (_%tl138404138430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138402138425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138404138430%_))
                                      (let ((_%e138405138433%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138404138430%_))))
                                        (let ((_%hd138406138436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138405138433%_)))
                                              (_%tl138407138438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138405138433%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138407138438%_))
                                              ((lambda (_%L138441%_
                                                        _%L138442%_)
                                                 (gxc#compile-e__1
                                                  _%self138392%_
                                                  _%L138441%_))
                                               _%hd138406138436%_
                                               _%hd138403138428%_)
                                              (_%g138395138412%_
                                               _%g138396138415%_))))
                                      (_%g138395138412%_ _%g138396138415%_))))
                              (_%g138395138412%_ _%g138396138415%_))))
                      (_%g138395138412%_ _%g138396138415%_)))))
          (_%g138394138457%_ _%stx138393%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self138323%_ _%stx138324%_)
        (let* ((_%g138326138343%_
                (lambda (_%g138327138340%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138327138340%_))))
               (_%g138325138389%_
                (lambda (_%g138327138346%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138327138346%_))
                      (let ((_%e138330138348%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138327138346%_))))
                        (let ((_%hd138331138351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138330138348%_)))
                              (_%tl138332138353%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138330138348%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138332138353%_))
                              (let ((_%e138333138356%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138332138353%_))))
                                (let ((_%hd138334138359%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138333138356%_)))
                                      (_%tl138335138361%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138333138356%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138335138361%_))
                                      (let ((_%e138336138364%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138335138361%_))))
                                        (let ((_%hd138337138367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138336138364%_)))
                                              (_%tl138338138369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138336138364%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138338138369%_))
                                              ((lambda (_%L138372%_
                                                        _%L138373%_)
                                                 (let ((__tmp138970
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self138323%_
                                                           _%L138372%_)))
                                                       (__tmp138968
                                                        (let ((__tmp138969
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138969 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138970
                                                    gx#current-expander-phi
                                                    __tmp138968)))
                                               _%hd138337138367%_
                                               _%hd138334138359%_)
                                              (_%g138326138343%_
                                               _%g138327138346%_))))
                                      (_%g138326138343%_ _%g138327138346%_))))
                              (_%g138326138343%_ _%g138327138346%_))))
                      (_%g138326138343%_ _%g138327138346%_)))))
          (_%g138325138389%_ _%stx138324%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self138255%_ _%stx138256%_)
        (let* ((_%g138258138275%_
                (lambda (_%g138259138272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138259138272%_))))
               (_%g138257138320%_
                (lambda (_%g138259138278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138259138278%_))
                      (let ((_%e138262138280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138259138278%_))))
                        (let ((_%hd138263138283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138262138280%_)))
                              (_%tl138264138285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138262138280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138264138285%_))
                              (let ((_%e138265138288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138264138285%_))))
                                (let ((_%hd138266138291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138265138288%_)))
                                      (_%tl138267138293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138265138288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138267138293%_))
                                      (let ((_%e138268138296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138267138293%_))))
                                        (let ((_%hd138269138299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138268138296%_)))
                                              (_%tl138270138301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138268138296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138270138301%_))
                                              ((lambda (_%L138304%_
                                                        _%L138305%_)
                                                 (gxc#compile-e__1
                                                  _%self138255%_
                                                  _%L138304%_))
                                               _%hd138269138299%_
                                               _%hd138266138291%_)
                                              (_%g138258138275%_
                                               _%g138259138278%_))))
                                      (_%g138258138275%_ _%g138259138278%_))))
                              (_%g138258138275%_ _%g138259138278%_))))
                      (_%g138258138275%_ _%g138259138278%_)))))
          (_%g138257138320%_ _%stx138256%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self138137%_ _%stx138138%_)
        (let* ((_%g138140138168%_
                (lambda (_%g138141138165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138141138165%_))))
               (_%g138139138252%_
                (lambda (_%g138141138171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138141138171%_))
                      (let ((_%e138144138173%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138141138171%_))))
                        (let ((_%hd138145138176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138144138173%_)))
                              (_%tl138146138178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138144138173%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl138146138178%_))
                              (let ((_g138971_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl138146138178%_
                                        '0))))
                                (begin
                                  (let ((_g138972_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138971_)
                                               (##values-length _g138971_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138972_ 2)))
                                        (error "Context expects 2 values"
                                               _g138972_)))
                                  (let ((_%target138147138181%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138971_ 0)))
                                        (_%tl138149138183%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138971_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138149138183%_))
                                        (letrec ((_%loop138150138186%_
                                                  (lambda (_%hd138148138189%_
                                                           _%body138154138191%_
                                                           _%hd138155138193%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138148138189%_))
                                                        (let ((_%e138151138196%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138148138189%_))))
                  (let ((_%lp-hd138152138199%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138151138196%_)))
                        (_%lp-tl138153138201%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138151138196%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd138152138199%_))
                        (let ((_%e138158138204%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd138152138199%_))))
                          (let ((_%hd138159138207%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138158138204%_)))
                                (_%tl138160138209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138158138204%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138160138209%_))
                                (let ((_%e138161138212%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138160138209%_))))
                                  (let ((_%hd138162138215%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138161138212%_)))
                                        (_%tl138163138217%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138161138212%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138163138217%_))
                                        (_%loop138150138186%_
                                         _%lp-tl138153138201%_
                                         (cons _%hd138162138215%_
                                               _%body138154138191%_)
                                         (cons _%hd138159138207%_
                                               _%hd138155138193%_))
                                        (_%g138140138168%_
                                         _%g138141138171%_))))
                                (_%g138140138168%_ _%g138141138171%_))))
                        (_%g138140138168%_ _%g138141138171%_))))
                (let ((_%body138156138220%_ (reverse _%body138154138191%_))
                      (_%hd138157138222%_ (reverse _%hd138155138193%_)))
                  ((lambda (_%L138225%_ _%L138226%_)
                     (for-each
                      (lambda (_%g138240138242%_)
                        (gxc#compile-e__1 _%self138137%_ _%g138240138242%_))
                      (let ((__tmp138973
                             (lambda (_%g138244138247%_ _%g138245138249%_)
                               (cons _%g138244138247%_ _%g138245138249%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138973 '() _%L138225%_))))
                   _%body138156138220%_
                   _%hd138157138222%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop138150138186%_
                                           _%target138147138181%_
                                           '()
                                           '()))
                                        (_%g138140138168%_
                                         _%g138141138171%_)))))
                              (_%g138140138168%_ _%g138141138171%_))))
                      (_%g138140138168%_ _%g138141138171%_)))))
          (_%g138139138252%_ _%stx138138%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self137990%_ _%stx137991%_)
        (let* ((_%g137993138028%_
                (lambda (_%g137994138025%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137994138025%_))))
               (_%g137992138134%_
                (lambda (_%g137994138031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137994138031%_))
                      (let ((_%e137998138033%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137994138031%_))))
                        (let ((_%hd137999138036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137998138033%_)))
                              (_%tl138000138038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137998138033%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138000138038%_))
                              (let ((_%e138001138041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138000138038%_))))
                                (let ((_%hd138002138044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138001138041%_)))
                                      (_%tl138003138046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138001138041%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd138002138044%_))
                                      (let ((_g138974_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd138002138044%_
                                                '0))))
                                        (begin
                                          (let ((_g138975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138974_)
                                                       (##values-length
                                                        _g138974_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138975_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138975_)))
                                          (let ((_%target138004138049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138974_ 0)))
                                                (_%tl138006138051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138974_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138006138051%_))
                                                (letrec ((_%loop138007138054%_
                                                          (lambda (_%hd138005138057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr138011138059%_
                           _%hd138012138061%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138005138057%_))
                        (let ((_%e138008138064%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138005138057%_))))
                          (let ((_%lp-hd138009138067%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138008138064%_)))
                                (_%lp-tl138010138069%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138008138064%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd138009138067%_))
                                (let ((_%e138018138072%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd138009138067%_))))
                                  (let ((_%hd138019138075%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138018138072%_)))
                                        (_%tl138020138077%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138018138072%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138020138077%_))
                                        (let ((_%e138021138080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138020138077%_))))
                                          (let ((_%hd138022138083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138021138080%_)))
                                                (_%tl138023138085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138021138080%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138023138085%_))
                                                (_%loop138007138054%_
                                                 _%lp-tl138010138069%_
                                                 (cons _%hd138022138083%_
                                                       _%expr138011138059%_)
                                                 (cons _%hd138019138075%_
                                                       _%hd138012138061%_))
                                                (_%g137993138028%_
                                                 _%g137994138031%_))))
                                        (_%g137993138028%_
                                         _%g137994138031%_))))
                                (_%g137993138028%_ _%g137994138031%_))))
                        (let ((_%expr138013138088%_
                               (reverse _%expr138011138059%_))
                              (_%hd138014138090%_
                               (reverse _%hd138012138061%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138003138046%_))
                              (let ((_%e138015138093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138003138046%_))))
                                (let ((_%hd138016138096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138015138093%_)))
                                      (_%tl138017138098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138015138093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138017138098%_))
                                      ((lambda (_%L138101%_
                                                _%L138102%_
                                                _%L138103%_)
                                         (for-each
                                          (lambda (_%g138122138124%_)
                                            (gxc#compile-e__1
                                             _%self137990%_
                                             _%g138122138124%_))
                                          (let ((__tmp138977
                                                 (lambda (_%g138126138129%_
                                                          _%g138127138131%_)
                                                   (cons _%g138126138129%_
                                                         _%g138127138131%_)))
                                                (__tmp138976
                                                 (cons _%L138101%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138977
                                             __tmp138976
                                             _%L138102%_))))
                                       _%hd138016138096%_
                                       _%expr138013138088%_
                                       _%hd138014138090%_)
                                      (_%g137993138028%_ _%g137994138031%_))))
                              (_%g137993138028%_ _%g137994138031%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop138007138054%_
                                                   _%target138004138049%_
                                                   '()
                                                   '()))
                                                (_%g137993138028%_
                                                 _%g137994138031%_)))))
                                      (_%g137993138028%_ _%g137994138031%_))))
                              (_%g137993138028%_ _%g137994138031%_))))
                      (_%g137993138028%_ _%g137994138031%_)))))
          (_%g137992138134%_ _%stx137991%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self137935%_ _%stx137936%_)
        (let* ((_%g137938137952%_
                (lambda (_%g137939137949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137939137949%_))))
               (_%g137937137987%_
                (lambda (_%g137939137955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137939137955%_))
                      (let ((_%e137942137957%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137939137955%_))))
                        (let ((_%hd137943137960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137942137957%_)))
                              (_%tl137944137962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137942137957%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137944137962%_))
                              (let ((_%e137945137965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137944137962%_))))
                                (let ((_%hd137946137968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137945137965%_)))
                                      (_%tl137947137970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137945137965%_))))
                                  ((lambda (_%L137973%_ _%L137974%_)
                                     (gxc#compile-e__1
                                      _%self137935%_
                                      (last _%L137973%_)))
                                   _%tl137947137970%_
                                   _%hd137946137968%_)))
                              (_%g137938137952%_ _%g137939137955%_))))
                      (_%g137938137952%_ _%g137939137955%_)))))
          (_%g137937137987%_ _%stx137936%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self137867%_ _%stx137868%_)
        (let* ((_%g137870137887%_
                (lambda (_%g137871137884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137871137884%_))))
               (_%g137869137932%_
                (lambda (_%g137871137890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137871137890%_))
                      (let ((_%e137874137892%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137871137890%_))))
                        (let ((_%hd137875137895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137874137892%_)))
                              (_%tl137876137897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137874137892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137876137897%_))
                              (let ((_%e137877137900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137876137897%_))))
                                (let ((_%hd137878137903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137877137900%_)))
                                      (_%tl137879137905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137877137900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137879137905%_))
                                      (let ((_%e137880137908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137879137905%_))))
                                        (let ((_%hd137881137911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137880137908%_)))
                                              (_%tl137882137913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137880137908%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137882137913%_))
                                              ((lambda (_%L137916%_
                                                        _%L137917%_)
                                                 (gxc#compile-e__1
                                                  _%self137867%_
                                                  _%L137916%_))
                                               _%hd137881137911%_
                                               _%hd137878137903%_)
                                              (_%g137870137887%_
                                               _%g137871137890%_))))
                                      (_%g137870137887%_ _%g137871137890%_))))
                              (_%g137870137887%_ _%g137871137890%_))))
                      (_%g137870137887%_ _%g137871137890%_)))))
          (_%g137869137932%_ _%stx137868%_))))
    (define gxc#apply-operands
      (lambda (_%self137780%_ _%stx137781%_)
        (let* ((_%g137783137802%_
                (lambda (_%g137784137799%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137784137799%_))))
               (_%g137782137864%_
                (lambda (_%g137784137805%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137784137805%_))
                      (let ((_%e137786137807%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137784137805%_))))
                        (let ((_%hd137787137810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137786137807%_)))
                              (_%tl137788137812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137786137807%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137788137812%_))
                              (let ((_g138978_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137788137812%_
                                        '0))))
                                (begin
                                  (let ((_g138979_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138978_)
                                               (##values-length _g138978_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138979_ 2)))
                                        (error "Context expects 2 values"
                                               _g138979_)))
                                  (let ((_%target137789137815%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138978_ 0)))
                                        (_%tl137791137817%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138978_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137791137817%_))
                                        (letrec ((_%loop137792137820%_
                                                  (lambda (_%hd137790137823%_
                                                           _%rands137796137825%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137790137823%_))
                                                        (let ((_%e137793137828%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137790137823%_))))
                  (let ((_%lp-hd137794137831%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137793137828%_)))
                        (_%lp-tl137795137833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137793137828%_))))
                    (_%loop137792137820%_
                     _%lp-tl137795137833%_
                     (cons _%lp-hd137794137831%_ _%rands137796137825%_))))
                (let ((_%rands137797137836%_ (reverse _%rands137796137825%_)))
                  ((lambda (_%L137839%_)
                     (for-each
                      (lambda (_%g137852137854%_)
                        (gxc#compile-e__1 _%self137780%_ _%g137852137854%_))
                      (let ((__tmp138980
                             (lambda (_%g137856137859%_ _%g137857137861%_)
                               (cons _%g137856137859%_ _%g137857137861%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138980 '() _%L137839%_))))
                   _%rands137797137836%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137792137820%_
                                           _%target137789137815%_
                                           '()))
                                        (_%g137783137802%_
                                         _%g137784137805%_)))))
                              (_%g137783137802%_ _%g137784137805%_))))
                      (_%g137783137802%_ _%g137784137805%_)))))
          (_%g137782137864%_ _%stx137781%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx137777%_ _%src-stx137778%_)
        (let ((__tmp138981
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx137778%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx137777%_ __tmp138981))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx137773%_ _%src-stx137774%_ _%ctx137775%_)
        (gxc#compile-e__1
         _%ctx137775%_
         (gxc#xform-wrap-source _%stx137773%_ _%src-stx137774%_))))
    (define gxc#xform-begin%
      (lambda (_%self137728%_ _%stx137729%_)
        (let* ((_%g137731137741%_
                (lambda (_%g137732137738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137732137738%_))))
               (_%g137730137770%_
                (lambda (_%g137732137744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137732137744%_))
                      (let ((_%e137734137746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137732137744%_))))
                        (let ((_%hd137735137749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137734137746%_)))
                              (_%tl137736137751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137734137746%_))))
                          ((lambda (_%L137754%_)
                             (let ((_%forms137768%_
                                    (map (lambda (_%g137763137765%_)
                                           (gxc#compile-e__1
                                            _%self137728%_
                                            _%g137763137765%_))
                                         _%L137754%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms137768%_)
                                _%stx137729%_)))
                           _%tl137736137751%_)))
                      (_%g137731137741%_ _%g137732137744%_)))))
          (_%g137730137770%_ _%stx137729%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self137682%_ _%stx137683%_)
        (let* ((_%g137685137695%_
                (lambda (_%g137686137692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137686137692%_))))
               (_%g137684137725%_
                (lambda (_%g137686137698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137686137698%_))
                      (let ((_%e137688137700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137686137698%_))))
                        (let ((_%hd137689137703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137688137700%_)))
                              (_%tl137690137705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137688137700%_))))
                          ((lambda (_%L137708%_)
                             (let ((__tmp138984
                                    (lambda ()
                                      (let ((_%forms137723%_
                                             (map (lambda (_%g137718137720%_)
                                                    (gxc#compile-e__1
                                                     _%self137682%_
                                                     _%g137718137720%_))
                                                  _%L137708%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms137723%_)
                                         _%stx137683%_))))
                                   (__tmp138982
                                    (let ((__tmp138983
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp138983 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138984
                                gx#current-expander-phi
                                __tmp138982)))
                           _%tl137690137705%_)))
                      (_%g137685137695%_ _%g137686137698%_)))))
          (_%g137684137725%_ _%stx137683%_))))
    (define gxc#xform-module%
      (lambda (_%self137619%_ _%stx137620%_)
        (let* ((_%g137622137636%_
                (lambda (_%g137623137633%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137623137633%_))))
               (_%g137621137679%_
                (lambda (_%g137623137639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137623137639%_))
                      (let ((_%e137626137641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137623137639%_))))
                        (let ((_%hd137627137644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137626137641%_)))
                              (_%tl137628137646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137626137641%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137628137646%_))
                              (let ((_%e137629137649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137628137646%_))))
                                (let ((_%hd137630137652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137629137649%_)))
                                      (_%tl137631137654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137629137649%_))))
                                  ((lambda (_%L137657%_ _%L137658%_)
                                     (let* ((_%ctx137671%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137658%_)))
                                            (_%code137673%_
                                             (##structure-ref
                                              _%ctx137671%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code137676%_
                                             (let ((__tmp138985
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self137619%_
                                                       _%code137673%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp138985
                                                gx#current-expander-context
                                                _%ctx137671%_))))
                                       (##structure-set!
                                        _%ctx137671%_
                                        _%code137676%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L137658%_
                                                    (cons _%code137676%_ '())))
                                        _%stx137620%_)))
                                   _%tl137631137654%_
                                   _%hd137630137652%_)))
                              (_%g137622137636%_ _%g137623137639%_))))
                      (_%g137622137636%_ _%g137623137639%_)))))
          (_%g137621137679%_ _%stx137620%_))))
    (define gxc#xform-define-values%
      (lambda (_%self137549%_ _%stx137550%_)
        (let* ((_%g137552137569%_
                (lambda (_%g137553137566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137553137566%_))))
               (_%g137551137616%_
                (lambda (_%g137553137572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137553137572%_))
                      (let ((_%e137556137574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137553137572%_))))
                        (let ((_%hd137557137577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137556137574%_)))
                              (_%tl137558137579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137556137574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137558137579%_))
                              (let ((_%e137559137582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137558137579%_))))
                                (let ((_%hd137560137585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137559137582%_)))
                                      (_%tl137561137587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137559137582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137561137587%_))
                                      (let ((_%e137562137590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137561137587%_))))
                                        (let ((_%hd137563137593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137562137590%_)))
                                              (_%tl137564137595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137562137590%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137564137595%_))
                                              ((lambda (_%L137598%_
                                                        _%L137599%_)
                                                 (let ((_%expr137614%_
                                                        (gxc#compile-e__1
                                                         _%self137549%_
                                                         _%L137598%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L137599%_
                                                                (cons _%expr137614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137550%_)))
                                               _%hd137563137593%_
                                               _%hd137560137585%_)
                                              (_%g137552137569%_
                                               _%g137553137572%_))))
                                      (_%g137552137569%_ _%g137553137572%_))))
                              (_%g137552137569%_ _%g137553137572%_))))
                      (_%g137552137569%_ _%g137553137572%_)))))
          (_%g137551137616%_ _%stx137550%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self137478%_ _%stx137479%_)
        (let* ((_%g137481137498%_
                (lambda (_%g137482137495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137482137495%_))))
               (_%g137480137546%_
                (lambda (_%g137482137501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137482137501%_))
                      (let ((_%e137485137503%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137482137501%_))))
                        (let ((_%hd137486137506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137485137503%_)))
                              (_%tl137487137508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137485137503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137487137508%_))
                              (let ((_%e137488137511%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137487137508%_))))
                                (let ((_%hd137489137514%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137488137511%_)))
                                      (_%tl137490137516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137488137511%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137490137516%_))
                                      (let ((_%e137491137519%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137490137516%_))))
                                        (let ((_%hd137492137522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137491137519%_)))
                                              (_%tl137493137524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137491137519%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137493137524%_))
                                              ((lambda (_%L137527%_
                                                        _%L137528%_)
                                                 (let ((__tmp138988
                                                        (lambda ()
                                                          (let ((_%expr137544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self137478%_ _%L137527%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L137528%_ (cons _%expr137544%_ '())))
                     _%stx137479%_))))
               (__tmp138986
                (let ((__tmp138987
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138987 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138988
                                                    gx#current-expander-phi
                                                    __tmp138986)))
                                               _%hd137492137522%_
                                               _%hd137489137514%_)
                                              (_%g137481137498%_
                                               _%g137482137501%_))))
                                      (_%g137481137498%_ _%g137482137501%_))))
                              (_%g137481137498%_ _%g137482137501%_))))
                      (_%g137481137498%_ _%g137482137501%_)))))
          (_%g137480137546%_ _%stx137479%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self137408%_ _%stx137409%_)
        (let* ((_%g137411137428%_
                (lambda (_%g137412137425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137412137425%_))))
               (_%g137410137475%_
                (lambda (_%g137412137431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137412137431%_))
                      (let ((_%e137415137433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137412137431%_))))
                        (let ((_%hd137416137436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137415137433%_)))
                              (_%tl137417137438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137415137433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137417137438%_))
                              (let ((_%e137418137441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137417137438%_))))
                                (let ((_%hd137419137444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137418137441%_)))
                                      (_%tl137420137446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137418137441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137420137446%_))
                                      (let ((_%e137421137449%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137420137446%_))))
                                        (let ((_%hd137422137452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137421137449%_)))
                                              (_%tl137423137454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137421137449%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137423137454%_))
                                              ((lambda (_%L137457%_
                                                        _%L137458%_)
                                                 (let ((_%expr137473%_
                                                        (gxc#compile-e__1
                                                         _%self137408%_
                                                         _%L137457%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L137458%_
                                                                (cons _%expr137473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137409%_)))
                                               _%hd137422137452%_
                                               _%hd137419137444%_)
                                              (_%g137411137428%_
                                               _%g137412137431%_))))
                                      (_%g137411137428%_ _%g137412137431%_))))
                              (_%g137411137428%_ _%g137412137431%_))))
                      (_%g137411137428%_ _%g137412137431%_)))))
          (_%g137410137475%_ _%stx137409%_))))
    (define gxc#xform-lambda%
      (lambda (_%self137346%_ _%stx137347%_)
        (let* ((_%g137349137363%_
                (lambda (_%g137350137360%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137350137360%_))))
               (_%g137348137405%_
                (lambda (_%g137350137366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137350137366%_))
                      (let ((_%e137353137368%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137350137366%_))))
                        (let ((_%hd137354137371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137353137368%_)))
                              (_%tl137355137373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137353137368%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137355137373%_))
                              (let ((_%e137356137376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137355137373%_))))
                                (let ((_%hd137357137379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137356137376%_)))
                                      (_%tl137358137381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137356137376%_))))
                                  ((lambda (_%L137384%_ _%L137385%_)
                                     (let ((__tmp138990
                                            (lambda ()
                                              (let ((_%body137403%_
                                                     (map (lambda (_%g137398137400%_)
                                                            (gxc#compile-e__1
                                                             _%self137346%_
                                                             _%g137398137400%_))
                                                          _%L137384%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L137385%_
                                                             _%body137403%_))
                                                 _%stx137347%_))))
                                           (__tmp138989
                                            (gxc#xform-let-locals
                                             _%L137385%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138990
                                        gxc#current-compile-local-env
                                        __tmp138989)))
                                   _%tl137358137381%_
                                   _%hd137357137379%_)))
                              (_%g137349137363%_ _%g137350137366%_))))
                      (_%g137349137363%_ _%g137350137366%_)))))
          (_%g137348137405%_ _%stx137347%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self137254%_ _%stx137255%_)
        (letrec ((_%clause-e137257%_
                  (lambda (_%clause137298%_)
                    (let* ((_%g137300137311%_
                            (lambda (_%g137301137308%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g137301137308%_))))
                           (_%g137299137343%_
                            (lambda (_%g137301137314%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g137301137314%_))
                                  (let ((_%e137304137316%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g137301137314%_))))
                                    (let ((_%hd137305137319%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137304137316%_)))
                                          (_%tl137306137321%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137304137316%_))))
                                      ((lambda (_%L137324%_ _%L137325%_)
                                         (let ((__tmp138992
                                                (lambda ()
                                                  (let ((_%body137341%_
                                                         (map (lambda (_%g137336137338%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self137254%_
                         _%g137336137338%_))
                      _%L137324%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L137325%_
                                                          _%body137341%_))))
                                               (__tmp138991
                                                (gxc#xform-let-locals
                                                 _%L137325%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp138992
                                            gxc#current-compile-local-env
                                            __tmp138991)))
                                       _%tl137306137321%_
                                       _%hd137305137319%_)))
                                  (_%g137300137311%_ _%g137301137314%_)))))
                      (_%g137299137343%_ _%clause137298%_)))))
          (let* ((_%g137259137269%_
                  (lambda (_%g137260137266%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137260137266%_))))
                 (_%g137258137295%_
                  (lambda (_%g137260137272%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137260137272%_))
                        (let ((_%e137262137274%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137260137272%_))))
                          (let ((_%hd137263137277%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137262137274%_)))
                                (_%tl137264137279%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137262137274%_))))
                            ((lambda (_%L137282%_)
                               (let ((_%clauses137293%_
                                      (map _%clause-e137257%_ _%L137282%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses137293%_)
                                  _%stx137255%_)))
                             _%tl137264137279%_)))
                        (_%g137259137269%_ _%g137260137272%_)))))
            (_%g137258137295%_ _%stx137255%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self137008%_ _%stx137009%_)
        (let* ((_%g137011137044%_
                (lambda (_%g137012137041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137012137041%_))))
               (_%g137010137251%_
                (lambda (_%g137012137047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137012137047%_))
                      (let ((_%e137017137049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137012137047%_))))
                        (let ((_%hd137018137052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137017137049%_)))
                              (_%tl137019137054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137017137049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137019137054%_))
                              (let ((_%e137020137057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137019137054%_))))
                                (let ((_%hd137021137060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137020137057%_)))
                                      (_%tl137022137062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137020137057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137021137060%_))
                                      (let ((_g138993_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137021137060%_
                                                '0))))
                                        (begin
                                          (let ((_g138994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138993_)
                                                       (##values-length
                                                        _g138993_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138994_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138994_)))
                                          (let ((_%target137023137065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138993_ 0)))
                                                (_%tl137025137067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138993_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137025137067%_))
                                                (letrec ((_%loop137026137070%_
                                                          (lambda (_%hd137024137073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137030137075%_
                           _%hd137031137077%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137024137073%_))
                        (let ((_%e137027137080%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137024137073%_))))
                          (let ((_%lp-hd137028137083%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137027137080%_)))
                                (_%lp-tl137029137085%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137027137080%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137028137083%_))
                                (let ((_%e137034137088%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137028137083%_))))
                                  (let ((_%hd137035137091%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137034137088%_)))
                                        (_%tl137036137093%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137034137088%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137036137093%_))
                                        (let ((_%e137037137096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137036137093%_))))
                                          (let ((_%hd137038137099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137037137096%_)))
                                                (_%tl137039137101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137037137096%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137039137101%_))
                                                (_%loop137026137070%_
                                                 _%lp-tl137029137085%_
                                                 (cons _%hd137038137099%_
                                                       _%expr137030137075%_)
                                                 (cons _%hd137035137091%_
                                                       _%hd137031137077%_))
                                                (_%g137011137044%_
                                                 _%g137012137047%_))))
                                        (_%g137011137044%_
                                         _%g137012137047%_))))
                                (_%g137011137044%_ _%g137012137047%_))))
                        (let ((_%expr137032137104%_
                               (reverse _%expr137030137075%_))
                              (_%hd137033137106%_
                               (reverse _%hd137031137077%_)))
                          ((lambda (_%L137109%_
                                    _%L137110%_
                                    _%L137111%_
                                    _%L137112%_)
                             (let* ((_%g137131137147%_
                                     (lambda (_%g137132137144%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g137132137144%_))))
                                    (_%g137130137237%_
                                     (lambda (_%g137132137150%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g137132137150%_))
                                           (let ((_g138995_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g137132137150%_
                                                     '0))))
                                             (begin
                                               (let ((_g138996_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g138995_)
                                                            (##values-length
                                                             _g138995_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g138996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g138996_)))
                                               (let ((_%target137134137152%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138995_
                                                         0)))
                                                     (_%tl137136137154%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138995_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl137136137154%_))
                                                     (letrec ((_%loop137137137157%_
                                                               (lambda (_%hd137135137160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr137141137162%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd137135137160%_))
                             (let ((_%e137138137165%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd137135137160%_))))
                               (let ((_%lp-hd137139137168%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137138137165%_)))
                                     (_%lp-tl137140137170%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137138137165%_))))
                                 (_%loop137137137157%_
                                  _%lp-tl137140137170%_
                                  (cons _%lp-hd137139137168%_
                                        _%expr137141137162%_))))
                             (let ((_%expr137142137173%_
                                    (reverse _%expr137141137162%_)))
                               ((lambda (_%L137176%_)
                                  (let ((__tmp138999
                                         (lambda ()
                                           (let* ((_%g137190137197%_
                                                   (lambda (_%g137191137194%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137191137194%_))))
                                                  (_%g137189137223%_
                                                   (lambda (_%g137191137200%_)
                                                     ((lambda (_%L137202%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L137112%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137176%_
                                  _%L137111%_))
                               (let ((__tmp139000
                                      (lambda (_%g137212137216%_
                                               _%g137213137218%_
                                               _%g137214137220%_)
                                        (cons (cons _%g137213137218%_
                                                    (cons _%g137212137216%_
                                                          '()))
                                              _%g137214137220%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139000
                                  '()
                                  _%L137176%_
                                  _%L137111%_)))
                             _%L137202%_))
                 _%stx137009%_))
              _%g137191137200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137189137223%_
                                              (map (lambda (_%g137225137227%_)
                                                     (gxc#compile-e__1
                                                      _%self137008%_
                                                      _%g137225137227%_))
                                                   _%L137109%_)))))
                                        (__tmp138997
                                         (gxc#xform-let-locals
                                          (let ((__tmp138998
                                                 (lambda (_%g137229137232%_
                                                          _%g137230137234%_)
                                                   (cons _%g137229137232%_
                                                         _%g137230137234%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138998
                                             '()
                                             _%L137111%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp138999
                                     gxc#current-compile-local-env
                                     __tmp138997)))
                                _%expr137142137173%_))))))
               (_%loop137137137157%_ _%target137134137152%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137131137147%_
                                                      _%g137132137150%_)))))
                                           (_%g137131137147%_
                                            _%g137132137150%_)))))
                               (_%g137130137237%_
                                (map (lambda (_%g137239137241%_)
                                       (gxc#compile-e__1
                                        _%self137008%_
                                        _%g137239137241%_))
                                     (let ((__tmp139001
                                            (lambda (_%g137243137246%_
                                                     _%g137244137248%_)
                                              (cons _%g137243137246%_
                                                    _%g137244137248%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139001
                                        '()
                                        _%L137110%_))))))
                           _%tl137022137062%_
                           _%expr137032137104%_
                           _%hd137033137106%_
                           _%hd137018137052%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137026137070%_
                                                   _%target137023137065%_
                                                   '()
                                                   '()))
                                                (_%g137011137044%_
                                                 _%g137012137047%_)))))
                                      (_%g137011137044%_ _%g137012137047%_))))
                              (_%g137011137044%_ _%g137012137047%_))))
                      (_%g137011137044%_ _%g137012137047%_)))))
          (_%g137010137251%_ _%stx137009%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self136762%_ _%stx136763%_)
        (let* ((_%g136765136798%_
                (lambda (_%g136766136795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136766136795%_))))
               (_%g136764137005%_
                (lambda (_%g136766136801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136766136801%_))
                      (let ((_%e136771136803%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136766136801%_))))
                        (let ((_%hd136772136806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136771136803%_)))
                              (_%tl136773136808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136771136803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136773136808%_))
                              (let ((_%e136774136811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136773136808%_))))
                                (let ((_%hd136775136814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136774136811%_)))
                                      (_%tl136776136816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136774136811%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136775136814%_))
                                      (let ((_g139002_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136775136814%_
                                                '0))))
                                        (begin
                                          (let ((_g139003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139002_)
                                                       (##values-length
                                                        _g139002_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139003_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139003_)))
                                          (let ((_%target136777136819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139002_ 0)))
                                                (_%tl136779136821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139002_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136779136821%_))
                                                (letrec ((_%loop136780136824%_
                                                          (lambda (_%hd136778136827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136784136829%_
                           _%hd136785136831%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136778136827%_))
                        (let ((_%e136781136834%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136778136827%_))))
                          (let ((_%lp-hd136782136837%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136781136834%_)))
                                (_%lp-tl136783136839%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136781136834%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136782136837%_))
                                (let ((_%e136788136842%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136782136837%_))))
                                  (let ((_%hd136789136845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136788136842%_)))
                                        (_%tl136790136847%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136788136842%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136790136847%_))
                                        (let ((_%e136791136850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136790136847%_))))
                                          (let ((_%hd136792136853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136791136850%_)))
                                                (_%tl136793136855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136791136850%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136793136855%_))
                                                (_%loop136780136824%_
                                                 _%lp-tl136783136839%_
                                                 (cons _%hd136792136853%_
                                                       _%expr136784136829%_)
                                                 (cons _%hd136789136845%_
                                                       _%hd136785136831%_))
                                                (_%g136765136798%_
                                                 _%g136766136801%_))))
                                        (_%g136765136798%_
                                         _%g136766136801%_))))
                                (_%g136765136798%_ _%g136766136801%_))))
                        (let ((_%expr136786136858%_
                               (reverse _%expr136784136829%_))
                              (_%hd136787136860%_
                               (reverse _%hd136785136831%_)))
                          ((lambda (_%L136863%_
                                    _%L136864%_
                                    _%L136865%_
                                    _%L136866%_)
                             (let ((__tmp139006
                                    (lambda ()
                                      (let* ((_%g136886136902%_
                                              (lambda (_%g136887136899%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g136887136899%_))))
                                             (_%g136885136984%_
                                              (lambda (_%g136887136905%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g136887136905%_))
                                                    (let ((_g139007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g136887136905%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g139008_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g139007_)
                             (##values-length _g139007_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g139008_ 2)))
                      (error "Context expects 2 values" _g139008_)))
                (let ((_%target136889136907%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139007_ 0)))
                      (_%tl136891136909%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139007_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136891136909%_))
                      (letrec ((_%loop136892136912%_
                                (lambda (_%hd136890136915%_
                                         _%expr136896136917%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd136890136915%_))
                                      (let ((_%e136893136920%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd136890136915%_))))
                                        (let ((_%lp-hd136894136923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136893136920%_)))
                                              (_%lp-tl136895136925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136893136920%_))))
                                          (_%loop136892136912%_
                                           _%lp-tl136895136925%_
                                           (cons _%lp-hd136894136923%_
                                                 _%expr136896136917%_))))
                                      (let ((_%expr136897136928%_
                                             (reverse _%expr136896136917%_)))
                                        ((lambda (_%L136931%_)
                                           (let* ((_%g136945136952%_
                                                   (lambda (_%g136946136949%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136946136949%_))))
                                                  (_%g136944136977%_
                                                   (lambda (_%g136946136955%_)
                                                     ((lambda (_%L136957%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136866%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136931%_
                                  _%L136865%_))
                               (let ((__tmp139009
                                      (lambda (_%g136966136970%_
                                               _%g136967136972%_
                                               _%g136968136974%_)
                                        (cons (cons _%g136967136972%_
                                                    (cons _%g136966136970%_
                                                          '()))
                                              _%g136968136974%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139009
                                  '()
                                  _%L136931%_
                                  _%L136865%_)))
                             _%L136957%_))
                 _%stx136763%_))
              _%g136946136955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136944136977%_
                                              (map (lambda (_%g136979136981%_)
                                                     (gxc#compile-e__1
                                                      _%self136762%_
                                                      _%g136979136981%_))
                                                   _%L136863%_))))
                                         _%expr136897136928%_))))))
                        (_%loop136892136912%_ _%target136889136907%_ '()))
                      (_%g136886136902%_ _%g136887136905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g136886136902%_
                                                     _%g136887136905%_)))))
                                        (_%g136885136984%_
                                         (map (lambda (_%g136986136988%_)
                                                (gxc#compile-e__1
                                                 _%self136762%_
                                                 _%g136986136988%_))
                                              (let ((__tmp139010
                                                     (lambda (_%g136990136993%_
                                                              _%g136991136995%_)
                                                       (cons _%g136990136993%_
                                                             _%g136991136995%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp139010
                                                 '()
                                                 _%L136864%_)))))))
                                   (__tmp139004
                                    (gxc#xform-let-locals
                                     (let ((__tmp139005
                                            (lambda (_%g136997137000%_
                                                     _%g136998137002%_)
                                              (cons _%g136997137000%_
                                                    _%g136998137002%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139005
                                        '()
                                        _%L136865%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp139006
                                gxc#current-compile-local-env
                                __tmp139004)))
                           _%tl136776136816%_
                           _%expr136786136858%_
                           _%hd136787136860%_
                           _%hd136772136806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136780136824%_
                                                   _%target136777136819%_
                                                   '()
                                                   '()))
                                                (_%g136765136798%_
                                                 _%g136766136801%_)))))
                                      (_%g136765136798%_ _%g136766136801%_))))
                              (_%g136765136798%_ _%g136766136801%_))))
                      (_%g136765136798%_ _%g136766136801%_)))))
          (_%g136764137005%_ _%stx136763%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings136629%_)
        (letrec ((_%flatten136631%_
                  (lambda (_%maybe-lst136689%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst136689%_))
                        (cons _%maybe-lst136689%_ '())
                        (let _%loop136691%_ ((_%rest136693%_
                                              _%maybe-lst136689%_)
                                             (_%result136694%_ '()))
                          (let* ((_%__stx138898138899%_ _%rest136693%_)
                                 (_%g136698136710%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx138898138899%_)))))
                            (let ((_%__kont138900138901%_
                                   (lambda (_%L136748%_ _%L136749%_)
                                     (_%loop136691%_
                                      _%L136748%_
                                      (let ((__tmp139011
                                             (_%flatten136631%_ _%L136749%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result136694%_
                                         __tmp139011)))))
                                  (_%__kont138902138903%_
                                   (lambda (_%L136722%_)
                                     (cons _%L136722%_ _%result136694%_)))
                                  (_%__kont138904138905%_
                                   (lambda () _%result136694%_)))
                              (let ((_%g136696136735%_
                                     (lambda ()
                                       (let ((_%L136722%_
                                              _%__stx138898138899%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L136722%_))
                                             (_%__kont138902138903%_
                                              _%L136722%_)
                                             (_%__kont138904138905%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx138898138899%_))
                                    (let ((_%e136702136740%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx138898138899%_))))
                                      (let ((_%tl136704136745%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136702136740%_)))
                                            (_%hd136703136743%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136702136740%_))))
                                        (_%__kont138900138901%_
                                         _%tl136704136745%_
                                         _%hd136703136743%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g136696136735%_)))))))))))
          (let _%loop136633%_ ((_%rest136635%_
                                (_%flatten136631%_ _%bindings136629%_))
                               (_%locals136636%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest136637136648%_ _%rest136635%_)
                   (_%E136641136652%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest136637136648%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K136644136677%_
                     (lambda (_%rest136674%_ _%id136675%_)
                       (_%loop136633%_
                        _%rest136674%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id136675%_))
                              _%locals136636%_))))
                    (_%K136643136666%_
                     (lambda (_%id136664%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id136664%_))
                             _%locals136636%_)))
                    (_%K136642136657%_ (lambda () _%locals136636%_)))
                (let ((_%try-match136639136671%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest136637136648%_))
                             (let ((_%id136669%_ _%rest136637136648%_))
                               (_%K136643136666%_ _%id136669%_))
                             (_%K136642136657%_)))))
                  (if (pair? _%rest136637136648%_)
                      (let ((_%tl136646136682%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest136637136648%_)))
                            (_%hd136645136680%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest136637136648%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd136645136680%_))
                            (let ((_%id136685%_ _%hd136645136680%_)
                                  (_%rest136687%_ _%tl136646136682%_))
                              (_%K136644136677%_ _%rest136687%_ _%id136685%_))
                            (_%K136642136657%_)))
                      (_%try-match136639136671%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self136581%_ _%stx136582%_)
        (let* ((_%g136584136595%_
                (lambda (_%g136585136592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136585136592%_))))
               (_%g136583136626%_
                (lambda (_%g136585136598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136585136598%_))
                      (let ((_%e136588136600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136585136598%_))))
                        (let ((_%hd136589136603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136588136600%_)))
                              (_%tl136590136605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136588136600%_))))
                          ((lambda (_%L136608%_ _%L136609%_)
                             (let ((_%rands136624%_
                                    (map (lambda (_%g136619136621%_)
                                           (gxc#compile-e__1
                                            _%self136581%_
                                            _%g136619136621%_))
                                         _%L136608%_)))
                               (gxc#xform-wrap-source
                                (cons _%L136609%_ _%rands136624%_)
                                _%stx136582%_)))
                           _%tl136590136605%_
                           _%hd136589136603%_)))
                      (_%g136584136595%_ _%g136585136598%_)))))
          (_%g136583136626%_ _%stx136582%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self136511%_ _%stx136512%_)
        (let* ((_%g136514136531%_
                (lambda (_%g136515136528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136515136528%_))))
               (_%g136513136578%_
                (lambda (_%g136515136534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136515136534%_))
                      (let ((_%e136518136536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136515136534%_))))
                        (let ((_%hd136519136539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136518136536%_)))
                              (_%tl136520136541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136518136536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136520136541%_))
                              (let ((_%e136521136544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136520136541%_))))
                                (let ((_%hd136522136547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136521136544%_)))
                                      (_%tl136523136549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136521136544%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136523136549%_))
                                      (let ((_%e136524136552%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136523136549%_))))
                                        (let ((_%hd136525136555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136524136552%_)))
                                              (_%tl136526136557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136524136552%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136526136557%_))
                                              ((lambda (_%L136560%_
                                                        _%L136561%_)
                                                 (let ((_%expr136576%_
                                                        (gxc#compile-e__1
                                                         _%self136511%_
                                                         _%L136560%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L136561%_
                                                                (cons _%expr136576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136512%_)))
                                               _%hd136525136555%_
                                               _%hd136522136547%_)
                                              (_%g136514136531%_
                                               _%g136515136534%_))))
                                      (_%g136514136531%_ _%g136515136534%_))))
                              (_%g136514136531%_ _%g136515136534%_))))
                      (_%g136514136531%_ _%g136515136534%_)))))
          (_%g136513136578%_ _%stx136512%_))))))
