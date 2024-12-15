(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1734278445)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx138729%_)
        (let* ((_%self138731%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e138733%_
                (let ((__tmp138929 (gxc#stx-car-e _%stx138729%_)))
                  (declare (not safe))
                  (method-ref _%self138731%_ __tmp138929))))
          (if _%$e138733%_
              ((lambda (_%method138736%_)
                 (declare (not safe))
                 (_%method138736%_ _%self138731%_ _%stx138729%_))
               _%$e138733%_)
              (let ((__tmp138931 (gxc#stx-car-e _%stx138729%_))
                    (__tmp138930
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138729%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138731%_
                       __tmp138931
                       __tmp138930))))))
    (define gxc#compile-e__1
      (lambda (_%self138740%_ _%stx138741%_)
        (let ((_%$e138743%_
               (let ((__tmp138932 (gxc#stx-car-e _%stx138741%_)))
                 (declare (not safe))
                 (method-ref _%self138740%_ __tmp138932))))
          (if _%$e138743%_
              ((lambda (_%method138746%_)
                 (declare (not safe))
                 (_%method138746%_ _%self138740%_ _%stx138741%_))
               _%$e138743%_)
              (let ((__tmp138934 (gxc#stx-car-e _%stx138741%_))
                    (__tmp138933
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138741%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138740%_
                       __tmp138934
                       __tmp138933))))))
    (define gxc#compile-e
      (lambda _g138936_
        (let ((_g138935_ (let () (declare (not safe)) (##length _g138936_))))
          (cond ((let () (declare (not safe)) (##fx= _g138935_ 1))
                 (apply gxc#compile-e__0 _g138936_))
                ((let () (declare (not safe)) (##fx= _g138935_ 2))
                 (apply gxc#compile-e__1 _g138936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g138936_))))))
    (define gxc#stx-car-e
      (lambda (_%stx138727%_)
        (let ((__tmp138937
               (car (let () (declare (not safe)) (gx#stx-e _%stx138727%_)))))
          (declare (not safe))
          (gx#stx-e __tmp138937))))
    (define gxc#void-method (lambda (_%self138724%_ _%stx138725%_) '#!void))
    (define gxc#false-method (lambda (_%self138721%_ _%stx138722%_) '#f))
    (define gxc#true-method (lambda (_%self138718%_ _%stx138719%_) '#t))
    (define gxc#identity-method
      (lambda (_%self138715%_ _%stx138716%_) _%stx138716%_))
    (define gxc#::void-expression::t
      (let ((__tmp138938 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp138938
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args138712%_
        (apply make-instance gxc#::void-expression::t _%$args138712%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp138939
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
        (__make-promise __tmp138939)))
    (define gxc#::void-special-form::t
      (let ((__tmp138940 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp138940
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args138708%_
        (apply make-instance gxc#::void-special-form::t _%$args138708%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp138941
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
        (__make-promise __tmp138941)))
    (define gxc#::void::t
      (let ((__tmp138942
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp138942 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args138704%_
        (apply make-instance gxc#::void::t _%$args138704%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp138943
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138943)))
    (define gxc#::false-expression::t
      (let ((__tmp138944 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp138944
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args138700%_
        (apply make-instance gxc#::false-expression::t _%$args138700%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp138945
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
        (__make-promise __tmp138945)))
    (define gxc#::false-special-form::t
      (let ((__tmp138946 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp138946
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args138696%_
        (apply make-instance gxc#::false-special-form::t _%$args138696%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp138947
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
        (__make-promise __tmp138947)))
    (define gxc#::false::t
      (let ((__tmp138948
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp138948 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args138692%_
        (apply make-instance gxc#::false::t _%$args138692%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp138949
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138949)))
    (define gxc#::identity-expression::t
      (let ((__tmp138950 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp138950
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args138688%_
        (apply make-instance gxc#::identity-expression::t _%$args138688%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp138951
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
        (__make-promise __tmp138951)))
    (define gxc#::identity-special-form::t
      (let ((__tmp138952 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp138952
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args138684%_
        (apply make-instance gxc#::identity-special-form::t _%$args138684%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp138953
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
        (__make-promise __tmp138953)))
    (define gxc#::identity::t
      (let ((__tmp138954
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp138954
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args138680%_
        (apply make-instance gxc#::identity::t _%$args138680%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp138955
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138955)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp138956 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp138956
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args138676%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args138676%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp138957
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
        (__make-promise __tmp138957)))
    (define gxc#::basic-xform::t
      (let ((__tmp138958
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp138958
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args138672%_
        (apply make-instance gxc#::basic-xform::t _%$args138672%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp138959
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
        (__make-promise __tmp138959)))
    (define gxc#apply-begin%
      (lambda (_%self138628%_ _%stx138629%_)
        (let* ((_%g138631138641%_
                (lambda (_%g138632138638%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138632138638%_))))
               (_%g138630138668%_
                (lambda (_%g138632138644%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138632138644%_))
                      (let ((_%e138634138646%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138632138644%_))))
                        (let ((_%hd138635138649%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138634138646%_)))
                              (_%tl138636138651%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138634138646%_))))
                          ((lambda (_%L138654%_)
                             (for-each
                              (lambda (_%g138663138665%_)
                                (gxc#compile-e__1
                                 _%self138628%_
                                 _%g138663138665%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L138654%_))))
                           _%tl138636138651%_)))
                      (_%g138631138641%_ _%g138632138644%_)))))
          (_%g138630138668%_ _%stx138629%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self138589%_ _%stx138590%_)
        (let* ((_%g138592138602%_
                (lambda (_%g138593138599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138593138599%_))))
               (_%g138591138625%_
                (lambda (_%g138593138605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138593138605%_))
                      (let ((_%e138595138607%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138593138605%_))))
                        (let ((_%hd138596138610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138595138607%_)))
                              (_%tl138597138612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138595138607%_))))
                          ((lambda (_%L138615%_)
                             (gxc#compile-e__1
                              _%self138589%_
                              (last _%L138615%_)))
                           _%tl138597138612%_)))
                      (_%g138592138602%_ _%g138593138605%_)))))
          (_%g138591138625%_ _%stx138590%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self138585%_ _%stx138586%_)
        (let ((__tmp138962
               (lambda () (gxc#apply-begin% _%self138585%_ _%stx138586%_)))
              (__tmp138960
               (let ((__tmp138961
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp138961 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp138962
           gx#current-expander-phi
           __tmp138960))))
    (define gxc#apply-module%
      (lambda (_%self138524%_ _%stx138525%_)
        (let* ((_%g138527138541%_
                (lambda (_%g138528138538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138528138538%_))))
               (_%g138526138582%_
                (lambda (_%g138528138544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138528138544%_))
                      (let ((_%e138531138546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138528138544%_))))
                        (let ((_%hd138532138549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138531138546%_)))
                              (_%tl138533138551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138531138546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138533138551%_))
                              (let ((_%e138534138554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138533138551%_))))
                                (let ((_%hd138535138557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138534138554%_)))
                                      (_%tl138536138559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138534138554%_))))
                                  ((lambda (_%L138562%_ _%L138563%_)
                                     (let* ((_%ctx138576%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L138563%_)))
                                            (_%ctx-stx138578%_
                                             (##structure-ref
                                              _%ctx138576%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp138963
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self138524%_
                                                _%ctx-stx138578%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138963
                                        gx#current-expander-context
                                        _%ctx138576%_)))
                                   _%tl138536138559%_
                                   _%hd138535138557%_)))
                              (_%g138527138541%_ _%g138528138544%_))))
                      (_%g138527138541%_ _%g138528138544%_)))))
          (_%g138526138582%_ _%stx138525%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self138456%_ _%stx138457%_)
        (let* ((_%g138459138476%_
                (lambda (_%g138460138473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138460138473%_))))
               (_%g138458138521%_
                (lambda (_%g138460138479%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138460138479%_))
                      (let ((_%e138463138481%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138460138479%_))))
                        (let ((_%hd138464138484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138463138481%_)))
                              (_%tl138465138486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138463138481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138465138486%_))
                              (let ((_%e138466138489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138465138486%_))))
                                (let ((_%hd138467138492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138466138489%_)))
                                      (_%tl138468138494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138466138489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138468138494%_))
                                      (let ((_%e138469138497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138468138494%_))))
                                        (let ((_%hd138470138500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138469138497%_)))
                                              (_%tl138471138502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138469138497%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138471138502%_))
                                              ((lambda (_%L138505%_
                                                        _%L138506%_)
                                                 (gxc#compile-e__1
                                                  _%self138456%_
                                                  _%L138505%_))
                                               _%hd138470138500%_
                                               _%hd138467138492%_)
                                              (_%g138459138476%_
                                               _%g138460138479%_))))
                                      (_%g138459138476%_ _%g138460138479%_))))
                              (_%g138459138476%_ _%g138460138479%_))))
                      (_%g138459138476%_ _%g138460138479%_)))))
          (_%g138458138521%_ _%stx138457%_))))
    (define gxc#apply-define-values%
      (lambda (_%self138388%_ _%stx138389%_)
        (let* ((_%g138391138408%_
                (lambda (_%g138392138405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138392138405%_))))
               (_%g138390138453%_
                (lambda (_%g138392138411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138392138411%_))
                      (let ((_%e138395138413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138392138411%_))))
                        (let ((_%hd138396138416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138395138413%_)))
                              (_%tl138397138418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138395138413%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138397138418%_))
                              (let ((_%e138398138421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138397138418%_))))
                                (let ((_%hd138399138424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138398138421%_)))
                                      (_%tl138400138426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138398138421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138400138426%_))
                                      (let ((_%e138401138429%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138400138426%_))))
                                        (let ((_%hd138402138432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138401138429%_)))
                                              (_%tl138403138434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138401138429%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138403138434%_))
                                              ((lambda (_%L138437%_
                                                        _%L138438%_)
                                                 (gxc#compile-e__1
                                                  _%self138388%_
                                                  _%L138437%_))
                                               _%hd138402138432%_
                                               _%hd138399138424%_)
                                              (_%g138391138408%_
                                               _%g138392138411%_))))
                                      (_%g138391138408%_ _%g138392138411%_))))
                              (_%g138391138408%_ _%g138392138411%_))))
                      (_%g138391138408%_ _%g138392138411%_)))))
          (_%g138390138453%_ _%stx138389%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self138319%_ _%stx138320%_)
        (let* ((_%g138322138339%_
                (lambda (_%g138323138336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138323138336%_))))
               (_%g138321138385%_
                (lambda (_%g138323138342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138323138342%_))
                      (let ((_%e138326138344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138323138342%_))))
                        (let ((_%hd138327138347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138326138344%_)))
                              (_%tl138328138349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138326138344%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138328138349%_))
                              (let ((_%e138329138352%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138328138349%_))))
                                (let ((_%hd138330138355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138329138352%_)))
                                      (_%tl138331138357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138329138352%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138331138357%_))
                                      (let ((_%e138332138360%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138331138357%_))))
                                        (let ((_%hd138333138363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138332138360%_)))
                                              (_%tl138334138365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138332138360%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138334138365%_))
                                              ((lambda (_%L138368%_
                                                        _%L138369%_)
                                                 (let ((__tmp138966
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self138319%_
                                                           _%L138368%_)))
                                                       (__tmp138964
                                                        (let ((__tmp138965
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138965 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138966
                                                    gx#current-expander-phi
                                                    __tmp138964)))
                                               _%hd138333138363%_
                                               _%hd138330138355%_)
                                              (_%g138322138339%_
                                               _%g138323138342%_))))
                                      (_%g138322138339%_ _%g138323138342%_))))
                              (_%g138322138339%_ _%g138323138342%_))))
                      (_%g138322138339%_ _%g138323138342%_)))))
          (_%g138321138385%_ _%stx138320%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self138251%_ _%stx138252%_)
        (let* ((_%g138254138271%_
                (lambda (_%g138255138268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138255138268%_))))
               (_%g138253138316%_
                (lambda (_%g138255138274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138255138274%_))
                      (let ((_%e138258138276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138255138274%_))))
                        (let ((_%hd138259138279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138258138276%_)))
                              (_%tl138260138281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138258138276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138260138281%_))
                              (let ((_%e138261138284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138260138281%_))))
                                (let ((_%hd138262138287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138261138284%_)))
                                      (_%tl138263138289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138261138284%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138263138289%_))
                                      (let ((_%e138264138292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138263138289%_))))
                                        (let ((_%hd138265138295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138264138292%_)))
                                              (_%tl138266138297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138264138292%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138266138297%_))
                                              ((lambda (_%L138300%_
                                                        _%L138301%_)
                                                 (gxc#compile-e__1
                                                  _%self138251%_
                                                  _%L138300%_))
                                               _%hd138265138295%_
                                               _%hd138262138287%_)
                                              (_%g138254138271%_
                                               _%g138255138274%_))))
                                      (_%g138254138271%_ _%g138255138274%_))))
                              (_%g138254138271%_ _%g138255138274%_))))
                      (_%g138254138271%_ _%g138255138274%_)))))
          (_%g138253138316%_ _%stx138252%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self138133%_ _%stx138134%_)
        (let* ((_%g138136138164%_
                (lambda (_%g138137138161%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138137138161%_))))
               (_%g138135138248%_
                (lambda (_%g138137138167%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138137138167%_))
                      (let ((_%e138140138169%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138137138167%_))))
                        (let ((_%hd138141138172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138140138169%_)))
                              (_%tl138142138174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138140138169%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl138142138174%_))
                              (let ((_g138967_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl138142138174%_
                                        '0))))
                                (begin
                                  (let ((_g138968_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138967_)
                                               (##values-length _g138967_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138968_ 2)))
                                        (error "Context expects 2 values"
                                               _g138968_)))
                                  (let ((_%target138143138177%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138967_ 0)))
                                        (_%tl138145138179%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138967_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138145138179%_))
                                        (letrec ((_%loop138146138182%_
                                                  (lambda (_%hd138144138185%_
                                                           _%body138150138187%_
                                                           _%hd138151138189%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138144138185%_))
                                                        (let ((_%e138147138192%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138144138185%_))))
                  (let ((_%lp-hd138148138195%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138147138192%_)))
                        (_%lp-tl138149138197%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138147138192%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd138148138195%_))
                        (let ((_%e138154138200%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd138148138195%_))))
                          (let ((_%hd138155138203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138154138200%_)))
                                (_%tl138156138205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138154138200%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138156138205%_))
                                (let ((_%e138157138208%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138156138205%_))))
                                  (let ((_%hd138158138211%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138157138208%_)))
                                        (_%tl138159138213%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138157138208%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138159138213%_))
                                        (_%loop138146138182%_
                                         _%lp-tl138149138197%_
                                         (cons _%hd138158138211%_
                                               _%body138150138187%_)
                                         (cons _%hd138155138203%_
                                               _%hd138151138189%_))
                                        (_%g138136138164%_
                                         _%g138137138167%_))))
                                (_%g138136138164%_ _%g138137138167%_))))
                        (_%g138136138164%_ _%g138137138167%_))))
                (let ((_%body138152138216%_ (reverse _%body138150138187%_))
                      (_%hd138153138218%_ (reverse _%hd138151138189%_)))
                  ((lambda (_%L138221%_ _%L138222%_)
                     (for-each
                      (lambda (_%g138236138238%_)
                        (gxc#compile-e__1 _%self138133%_ _%g138236138238%_))
                      (let ((__tmp138969
                             (lambda (_%g138240138243%_ _%g138241138245%_)
                               (cons _%g138240138243%_ _%g138241138245%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138969 '() _%L138221%_))))
                   _%body138152138216%_
                   _%hd138153138218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop138146138182%_
                                           _%target138143138177%_
                                           '()
                                           '()))
                                        (_%g138136138164%_
                                         _%g138137138167%_)))))
                              (_%g138136138164%_ _%g138137138167%_))))
                      (_%g138136138164%_ _%g138137138167%_)))))
          (_%g138135138248%_ _%stx138134%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self137986%_ _%stx137987%_)
        (let* ((_%g137989138024%_
                (lambda (_%g137990138021%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137990138021%_))))
               (_%g137988138130%_
                (lambda (_%g137990138027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137990138027%_))
                      (let ((_%e137994138029%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137990138027%_))))
                        (let ((_%hd137995138032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137994138029%_)))
                              (_%tl137996138034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137994138029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137996138034%_))
                              (let ((_%e137997138037%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137996138034%_))))
                                (let ((_%hd137998138040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137997138037%_)))
                                      (_%tl137999138042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137997138037%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137998138040%_))
                                      (let ((_g138970_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137998138040%_
                                                '0))))
                                        (begin
                                          (let ((_g138971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138970_)
                                                       (##values-length
                                                        _g138970_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138971_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138971_)))
                                          (let ((_%target138000138045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138970_ 0)))
                                                (_%tl138002138047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138970_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138002138047%_))
                                                (letrec ((_%loop138003138050%_
                                                          (lambda (_%hd138001138053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr138007138055%_
                           _%hd138008138057%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138001138053%_))
                        (let ((_%e138004138060%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138001138053%_))))
                          (let ((_%lp-hd138005138063%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138004138060%_)))
                                (_%lp-tl138006138065%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138004138060%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd138005138063%_))
                                (let ((_%e138014138068%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd138005138063%_))))
                                  (let ((_%hd138015138071%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138014138068%_)))
                                        (_%tl138016138073%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138014138068%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138016138073%_))
                                        (let ((_%e138017138076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138016138073%_))))
                                          (let ((_%hd138018138079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138017138076%_)))
                                                (_%tl138019138081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138017138076%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138019138081%_))
                                                (_%loop138003138050%_
                                                 _%lp-tl138006138065%_
                                                 (cons _%hd138018138079%_
                                                       _%expr138007138055%_)
                                                 (cons _%hd138015138071%_
                                                       _%hd138008138057%_))
                                                (_%g137989138024%_
                                                 _%g137990138027%_))))
                                        (_%g137989138024%_
                                         _%g137990138027%_))))
                                (_%g137989138024%_ _%g137990138027%_))))
                        (let ((_%expr138009138084%_
                               (reverse _%expr138007138055%_))
                              (_%hd138010138086%_
                               (reverse _%hd138008138057%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137999138042%_))
                              (let ((_%e138011138089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137999138042%_))))
                                (let ((_%hd138012138092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138011138089%_)))
                                      (_%tl138013138094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138011138089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138013138094%_))
                                      ((lambda (_%L138097%_
                                                _%L138098%_
                                                _%L138099%_)
                                         (for-each
                                          (lambda (_%g138118138120%_)
                                            (gxc#compile-e__1
                                             _%self137986%_
                                             _%g138118138120%_))
                                          (let ((__tmp138973
                                                 (lambda (_%g138122138125%_
                                                          _%g138123138127%_)
                                                   (cons _%g138122138125%_
                                                         _%g138123138127%_)))
                                                (__tmp138972
                                                 (cons _%L138097%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138973
                                             __tmp138972
                                             _%L138098%_))))
                                       _%hd138012138092%_
                                       _%expr138009138084%_
                                       _%hd138010138086%_)
                                      (_%g137989138024%_ _%g137990138027%_))))
                              (_%g137989138024%_ _%g137990138027%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop138003138050%_
                                                   _%target138000138045%_
                                                   '()
                                                   '()))
                                                (_%g137989138024%_
                                                 _%g137990138027%_)))))
                                      (_%g137989138024%_ _%g137990138027%_))))
                              (_%g137989138024%_ _%g137990138027%_))))
                      (_%g137989138024%_ _%g137990138027%_)))))
          (_%g137988138130%_ _%stx137987%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self137931%_ _%stx137932%_)
        (let* ((_%g137934137948%_
                (lambda (_%g137935137945%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137935137945%_))))
               (_%g137933137983%_
                (lambda (_%g137935137951%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137935137951%_))
                      (let ((_%e137938137953%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137935137951%_))))
                        (let ((_%hd137939137956%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137938137953%_)))
                              (_%tl137940137958%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137938137953%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137940137958%_))
                              (let ((_%e137941137961%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137940137958%_))))
                                (let ((_%hd137942137964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137941137961%_)))
                                      (_%tl137943137966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137941137961%_))))
                                  ((lambda (_%L137969%_ _%L137970%_)
                                     (gxc#compile-e__1
                                      _%self137931%_
                                      (last _%L137969%_)))
                                   _%tl137943137966%_
                                   _%hd137942137964%_)))
                              (_%g137934137948%_ _%g137935137951%_))))
                      (_%g137934137948%_ _%g137935137951%_)))))
          (_%g137933137983%_ _%stx137932%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self137863%_ _%stx137864%_)
        (let* ((_%g137866137883%_
                (lambda (_%g137867137880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137867137880%_))))
               (_%g137865137928%_
                (lambda (_%g137867137886%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137867137886%_))
                      (let ((_%e137870137888%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137867137886%_))))
                        (let ((_%hd137871137891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137870137888%_)))
                              (_%tl137872137893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137870137888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137872137893%_))
                              (let ((_%e137873137896%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137872137893%_))))
                                (let ((_%hd137874137899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137873137896%_)))
                                      (_%tl137875137901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137873137896%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137875137901%_))
                                      (let ((_%e137876137904%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137875137901%_))))
                                        (let ((_%hd137877137907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137876137904%_)))
                                              (_%tl137878137909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137876137904%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137878137909%_))
                                              ((lambda (_%L137912%_
                                                        _%L137913%_)
                                                 (gxc#compile-e__1
                                                  _%self137863%_
                                                  _%L137912%_))
                                               _%hd137877137907%_
                                               _%hd137874137899%_)
                                              (_%g137866137883%_
                                               _%g137867137886%_))))
                                      (_%g137866137883%_ _%g137867137886%_))))
                              (_%g137866137883%_ _%g137867137886%_))))
                      (_%g137866137883%_ _%g137867137886%_)))))
          (_%g137865137928%_ _%stx137864%_))))
    (define gxc#apply-operands
      (lambda (_%self137776%_ _%stx137777%_)
        (let* ((_%g137779137798%_
                (lambda (_%g137780137795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137780137795%_))))
               (_%g137778137860%_
                (lambda (_%g137780137801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137780137801%_))
                      (let ((_%e137782137803%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137780137801%_))))
                        (let ((_%hd137783137806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137782137803%_)))
                              (_%tl137784137808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137782137803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137784137808%_))
                              (let ((_g138974_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137784137808%_
                                        '0))))
                                (begin
                                  (let ((_g138975_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138974_)
                                               (##values-length _g138974_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138975_ 2)))
                                        (error "Context expects 2 values"
                                               _g138975_)))
                                  (let ((_%target137785137811%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138974_ 0)))
                                        (_%tl137787137813%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138974_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137787137813%_))
                                        (letrec ((_%loop137788137816%_
                                                  (lambda (_%hd137786137819%_
                                                           _%rands137792137821%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137786137819%_))
                                                        (let ((_%e137789137824%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137786137819%_))))
                  (let ((_%lp-hd137790137827%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137789137824%_)))
                        (_%lp-tl137791137829%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137789137824%_))))
                    (_%loop137788137816%_
                     _%lp-tl137791137829%_
                     (cons _%lp-hd137790137827%_ _%rands137792137821%_))))
                (let ((_%rands137793137832%_ (reverse _%rands137792137821%_)))
                  ((lambda (_%L137835%_)
                     (for-each
                      (lambda (_%g137848137850%_)
                        (gxc#compile-e__1 _%self137776%_ _%g137848137850%_))
                      (let ((__tmp138976
                             (lambda (_%g137852137855%_ _%g137853137857%_)
                               (cons _%g137852137855%_ _%g137853137857%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138976 '() _%L137835%_))))
                   _%rands137793137832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137788137816%_
                                           _%target137785137811%_
                                           '()))
                                        (_%g137779137798%_
                                         _%g137780137801%_)))))
                              (_%g137779137798%_ _%g137780137801%_))))
                      (_%g137779137798%_ _%g137780137801%_)))))
          (_%g137778137860%_ _%stx137777%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx137773%_ _%src-stx137774%_)
        (let ((__tmp138977
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx137774%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx137773%_ __tmp138977))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx137769%_ _%src-stx137770%_ _%ctx137771%_)
        (gxc#compile-e__1
         _%ctx137771%_
         (gxc#xform-wrap-source _%stx137769%_ _%src-stx137770%_))))
    (define gxc#xform-begin%
      (lambda (_%self137724%_ _%stx137725%_)
        (let* ((_%g137727137737%_
                (lambda (_%g137728137734%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137728137734%_))))
               (_%g137726137766%_
                (lambda (_%g137728137740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137728137740%_))
                      (let ((_%e137730137742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137728137740%_))))
                        (let ((_%hd137731137745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137730137742%_)))
                              (_%tl137732137747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137730137742%_))))
                          ((lambda (_%L137750%_)
                             (let ((_%forms137764%_
                                    (map (lambda (_%g137759137761%_)
                                           (gxc#compile-e__1
                                            _%self137724%_
                                            _%g137759137761%_))
                                         _%L137750%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms137764%_)
                                _%stx137725%_)))
                           _%tl137732137747%_)))
                      (_%g137727137737%_ _%g137728137740%_)))))
          (_%g137726137766%_ _%stx137725%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self137678%_ _%stx137679%_)
        (let* ((_%g137681137691%_
                (lambda (_%g137682137688%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137682137688%_))))
               (_%g137680137721%_
                (lambda (_%g137682137694%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137682137694%_))
                      (let ((_%e137684137696%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137682137694%_))))
                        (let ((_%hd137685137699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137684137696%_)))
                              (_%tl137686137701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137684137696%_))))
                          ((lambda (_%L137704%_)
                             (let ((__tmp138980
                                    (lambda ()
                                      (let ((_%forms137719%_
                                             (map (lambda (_%g137714137716%_)
                                                    (gxc#compile-e__1
                                                     _%self137678%_
                                                     _%g137714137716%_))
                                                  _%L137704%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms137719%_)
                                         _%stx137679%_))))
                                   (__tmp138978
                                    (let ((__tmp138979
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp138979 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138980
                                gx#current-expander-phi
                                __tmp138978)))
                           _%tl137686137701%_)))
                      (_%g137681137691%_ _%g137682137694%_)))))
          (_%g137680137721%_ _%stx137679%_))))
    (define gxc#xform-module%
      (lambda (_%self137615%_ _%stx137616%_)
        (let* ((_%g137618137632%_
                (lambda (_%g137619137629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137619137629%_))))
               (_%g137617137675%_
                (lambda (_%g137619137635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137619137635%_))
                      (let ((_%e137622137637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137619137635%_))))
                        (let ((_%hd137623137640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137622137637%_)))
                              (_%tl137624137642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137622137637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137624137642%_))
                              (let ((_%e137625137645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137624137642%_))))
                                (let ((_%hd137626137648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137625137645%_)))
                                      (_%tl137627137650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137625137645%_))))
                                  ((lambda (_%L137653%_ _%L137654%_)
                                     (let* ((_%ctx137667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137654%_)))
                                            (_%code137669%_
                                             (##structure-ref
                                              _%ctx137667%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code137672%_
                                             (let ((__tmp138981
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self137615%_
                                                       _%code137669%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp138981
                                                gx#current-expander-context
                                                _%ctx137667%_))))
                                       (##structure-set!
                                        _%ctx137667%_
                                        _%code137672%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L137654%_
                                                    (cons _%code137672%_ '())))
                                        _%stx137616%_)))
                                   _%tl137627137650%_
                                   _%hd137626137648%_)))
                              (_%g137618137632%_ _%g137619137635%_))))
                      (_%g137618137632%_ _%g137619137635%_)))))
          (_%g137617137675%_ _%stx137616%_))))
    (define gxc#xform-define-values%
      (lambda (_%self137545%_ _%stx137546%_)
        (let* ((_%g137548137565%_
                (lambda (_%g137549137562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137549137562%_))))
               (_%g137547137612%_
                (lambda (_%g137549137568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137549137568%_))
                      (let ((_%e137552137570%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137549137568%_))))
                        (let ((_%hd137553137573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137552137570%_)))
                              (_%tl137554137575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137552137570%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137554137575%_))
                              (let ((_%e137555137578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137554137575%_))))
                                (let ((_%hd137556137581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137555137578%_)))
                                      (_%tl137557137583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137555137578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137557137583%_))
                                      (let ((_%e137558137586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137557137583%_))))
                                        (let ((_%hd137559137589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137558137586%_)))
                                              (_%tl137560137591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137558137586%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137560137591%_))
                                              ((lambda (_%L137594%_
                                                        _%L137595%_)
                                                 (let ((_%expr137610%_
                                                        (gxc#compile-e__1
                                                         _%self137545%_
                                                         _%L137594%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L137595%_
                                                                (cons _%expr137610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137546%_)))
                                               _%hd137559137589%_
                                               _%hd137556137581%_)
                                              (_%g137548137565%_
                                               _%g137549137568%_))))
                                      (_%g137548137565%_ _%g137549137568%_))))
                              (_%g137548137565%_ _%g137549137568%_))))
                      (_%g137548137565%_ _%g137549137568%_)))))
          (_%g137547137612%_ _%stx137546%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self137474%_ _%stx137475%_)
        (let* ((_%g137477137494%_
                (lambda (_%g137478137491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137478137491%_))))
               (_%g137476137542%_
                (lambda (_%g137478137497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137478137497%_))
                      (let ((_%e137481137499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137478137497%_))))
                        (let ((_%hd137482137502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137481137499%_)))
                              (_%tl137483137504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137481137499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137483137504%_))
                              (let ((_%e137484137507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137483137504%_))))
                                (let ((_%hd137485137510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137484137507%_)))
                                      (_%tl137486137512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137484137507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137486137512%_))
                                      (let ((_%e137487137515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137486137512%_))))
                                        (let ((_%hd137488137518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137487137515%_)))
                                              (_%tl137489137520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137487137515%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137489137520%_))
                                              ((lambda (_%L137523%_
                                                        _%L137524%_)
                                                 (let ((__tmp138984
                                                        (lambda ()
                                                          (let ((_%expr137540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self137474%_ _%L137523%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L137524%_ (cons _%expr137540%_ '())))
                     _%stx137475%_))))
               (__tmp138982
                (let ((__tmp138983
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138983 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138984
                                                    gx#current-expander-phi
                                                    __tmp138982)))
                                               _%hd137488137518%_
                                               _%hd137485137510%_)
                                              (_%g137477137494%_
                                               _%g137478137497%_))))
                                      (_%g137477137494%_ _%g137478137497%_))))
                              (_%g137477137494%_ _%g137478137497%_))))
                      (_%g137477137494%_ _%g137478137497%_)))))
          (_%g137476137542%_ _%stx137475%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self137404%_ _%stx137405%_)
        (let* ((_%g137407137424%_
                (lambda (_%g137408137421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137408137421%_))))
               (_%g137406137471%_
                (lambda (_%g137408137427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137408137427%_))
                      (let ((_%e137411137429%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137408137427%_))))
                        (let ((_%hd137412137432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137411137429%_)))
                              (_%tl137413137434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137411137429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137413137434%_))
                              (let ((_%e137414137437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137413137434%_))))
                                (let ((_%hd137415137440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137414137437%_)))
                                      (_%tl137416137442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137414137437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137416137442%_))
                                      (let ((_%e137417137445%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137416137442%_))))
                                        (let ((_%hd137418137448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137417137445%_)))
                                              (_%tl137419137450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137417137445%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137419137450%_))
                                              ((lambda (_%L137453%_
                                                        _%L137454%_)
                                                 (let ((_%expr137469%_
                                                        (gxc#compile-e__1
                                                         _%self137404%_
                                                         _%L137453%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L137454%_
                                                                (cons _%expr137469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137405%_)))
                                               _%hd137418137448%_
                                               _%hd137415137440%_)
                                              (_%g137407137424%_
                                               _%g137408137427%_))))
                                      (_%g137407137424%_ _%g137408137427%_))))
                              (_%g137407137424%_ _%g137408137427%_))))
                      (_%g137407137424%_ _%g137408137427%_)))))
          (_%g137406137471%_ _%stx137405%_))))
    (define gxc#xform-lambda%
      (lambda (_%self137342%_ _%stx137343%_)
        (let* ((_%g137345137359%_
                (lambda (_%g137346137356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137346137356%_))))
               (_%g137344137401%_
                (lambda (_%g137346137362%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137346137362%_))
                      (let ((_%e137349137364%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137346137362%_))))
                        (let ((_%hd137350137367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137349137364%_)))
                              (_%tl137351137369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137349137364%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137351137369%_))
                              (let ((_%e137352137372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137351137369%_))))
                                (let ((_%hd137353137375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137352137372%_)))
                                      (_%tl137354137377%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137352137372%_))))
                                  ((lambda (_%L137380%_ _%L137381%_)
                                     (let ((__tmp138986
                                            (lambda ()
                                              (let ((_%body137399%_
                                                     (map (lambda (_%g137394137396%_)
                                                            (gxc#compile-e__1
                                                             _%self137342%_
                                                             _%g137394137396%_))
                                                          _%L137380%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L137381%_
                                                             _%body137399%_))
                                                 _%stx137343%_))))
                                           (__tmp138985
                                            (gxc#xform-let-locals
                                             _%L137381%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138986
                                        gxc#current-compile-local-env
                                        __tmp138985)))
                                   _%tl137354137377%_
                                   _%hd137353137375%_)))
                              (_%g137345137359%_ _%g137346137362%_))))
                      (_%g137345137359%_ _%g137346137362%_)))))
          (_%g137344137401%_ _%stx137343%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self137250%_ _%stx137251%_)
        (letrec ((_%clause-e137253%_
                  (lambda (_%clause137294%_)
                    (let* ((_%g137296137307%_
                            (lambda (_%g137297137304%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g137297137304%_))))
                           (_%g137295137339%_
                            (lambda (_%g137297137310%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g137297137310%_))
                                  (let ((_%e137300137312%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g137297137310%_))))
                                    (let ((_%hd137301137315%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137300137312%_)))
                                          (_%tl137302137317%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137300137312%_))))
                                      ((lambda (_%L137320%_ _%L137321%_)
                                         (let ((__tmp138988
                                                (lambda ()
                                                  (let ((_%body137337%_
                                                         (map (lambda (_%g137332137334%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self137250%_
                         _%g137332137334%_))
                      _%L137320%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L137321%_
                                                          _%body137337%_))))
                                               (__tmp138987
                                                (gxc#xform-let-locals
                                                 _%L137321%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp138988
                                            gxc#current-compile-local-env
                                            __tmp138987)))
                                       _%tl137302137317%_
                                       _%hd137301137315%_)))
                                  (_%g137296137307%_ _%g137297137310%_)))))
                      (_%g137295137339%_ _%clause137294%_)))))
          (let* ((_%g137255137265%_
                  (lambda (_%g137256137262%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137256137262%_))))
                 (_%g137254137291%_
                  (lambda (_%g137256137268%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137256137268%_))
                        (let ((_%e137258137270%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137256137268%_))))
                          (let ((_%hd137259137273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137258137270%_)))
                                (_%tl137260137275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137258137270%_))))
                            ((lambda (_%L137278%_)
                               (let ((_%clauses137289%_
                                      (map _%clause-e137253%_ _%L137278%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses137289%_)
                                  _%stx137251%_)))
                             _%tl137260137275%_)))
                        (_%g137255137265%_ _%g137256137268%_)))))
            (_%g137254137291%_ _%stx137251%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self137004%_ _%stx137005%_)
        (let* ((_%g137007137040%_
                (lambda (_%g137008137037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137008137037%_))))
               (_%g137006137247%_
                (lambda (_%g137008137043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137008137043%_))
                      (let ((_%e137013137045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137008137043%_))))
                        (let ((_%hd137014137048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137013137045%_)))
                              (_%tl137015137050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137013137045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137015137050%_))
                              (let ((_%e137016137053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137015137050%_))))
                                (let ((_%hd137017137056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137016137053%_)))
                                      (_%tl137018137058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137016137053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137017137056%_))
                                      (let ((_g138989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137017137056%_
                                                '0))))
                                        (begin
                                          (let ((_g138990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138989_)
                                                       (##values-length
                                                        _g138989_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138990_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138990_)))
                                          (let ((_%target137019137061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138989_ 0)))
                                                (_%tl137021137063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138989_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137021137063%_))
                                                (letrec ((_%loop137022137066%_
                                                          (lambda (_%hd137020137069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137026137071%_
                           _%hd137027137073%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137020137069%_))
                        (let ((_%e137023137076%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137020137069%_))))
                          (let ((_%lp-hd137024137079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137023137076%_)))
                                (_%lp-tl137025137081%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137023137076%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137024137079%_))
                                (let ((_%e137030137084%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137024137079%_))))
                                  (let ((_%hd137031137087%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137030137084%_)))
                                        (_%tl137032137089%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137030137084%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137032137089%_))
                                        (let ((_%e137033137092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137032137089%_))))
                                          (let ((_%hd137034137095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137033137092%_)))
                                                (_%tl137035137097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137033137092%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137035137097%_))
                                                (_%loop137022137066%_
                                                 _%lp-tl137025137081%_
                                                 (cons _%hd137034137095%_
                                                       _%expr137026137071%_)
                                                 (cons _%hd137031137087%_
                                                       _%hd137027137073%_))
                                                (_%g137007137040%_
                                                 _%g137008137043%_))))
                                        (_%g137007137040%_
                                         _%g137008137043%_))))
                                (_%g137007137040%_ _%g137008137043%_))))
                        (let ((_%expr137028137100%_
                               (reverse _%expr137026137071%_))
                              (_%hd137029137102%_
                               (reverse _%hd137027137073%_)))
                          ((lambda (_%L137105%_
                                    _%L137106%_
                                    _%L137107%_
                                    _%L137108%_)
                             (let* ((_%g137127137143%_
                                     (lambda (_%g137128137140%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g137128137140%_))))
                                    (_%g137126137233%_
                                     (lambda (_%g137128137146%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g137128137146%_))
                                           (let ((_g138991_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g137128137146%_
                                                     '0))))
                                             (begin
                                               (let ((_g138992_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g138991_)
                                                            (##values-length
                                                             _g138991_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g138992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g138992_)))
                                               (let ((_%target137130137148%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138991_
                                                         0)))
                                                     (_%tl137132137150%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138991_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl137132137150%_))
                                                     (letrec ((_%loop137133137153%_
                                                               (lambda (_%hd137131137156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr137137137158%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd137131137156%_))
                             (let ((_%e137134137161%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd137131137156%_))))
                               (let ((_%lp-hd137135137164%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137134137161%_)))
                                     (_%lp-tl137136137166%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137134137161%_))))
                                 (_%loop137133137153%_
                                  _%lp-tl137136137166%_
                                  (cons _%lp-hd137135137164%_
                                        _%expr137137137158%_))))
                             (let ((_%expr137138137169%_
                                    (reverse _%expr137137137158%_)))
                               ((lambda (_%L137172%_)
                                  (let ((__tmp138995
                                         (lambda ()
                                           (let* ((_%g137186137193%_
                                                   (lambda (_%g137187137190%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137187137190%_))))
                                                  (_%g137185137219%_
                                                   (lambda (_%g137187137196%_)
                                                     ((lambda (_%L137198%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L137108%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137172%_
                                  _%L137107%_))
                               (let ((__tmp138996
                                      (lambda (_%g137208137212%_
                                               _%g137209137214%_
                                               _%g137210137216%_)
                                        (cons (cons _%g137209137214%_
                                                    (cons _%g137208137212%_
                                                          '()))
                                              _%g137210137216%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp138996
                                  '()
                                  _%L137172%_
                                  _%L137107%_)))
                             _%L137198%_))
                 _%stx137005%_))
              _%g137187137196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137185137219%_
                                              (map (lambda (_%g137221137223%_)
                                                     (gxc#compile-e__1
                                                      _%self137004%_
                                                      _%g137221137223%_))
                                                   _%L137105%_)))))
                                        (__tmp138993
                                         (gxc#xform-let-locals
                                          (let ((__tmp138994
                                                 (lambda (_%g137225137228%_
                                                          _%g137226137230%_)
                                                   (cons _%g137225137228%_
                                                         _%g137226137230%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138994
                                             '()
                                             _%L137107%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp138995
                                     gxc#current-compile-local-env
                                     __tmp138993)))
                                _%expr137138137169%_))))))
               (_%loop137133137153%_ _%target137130137148%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137127137143%_
                                                      _%g137128137146%_)))))
                                           (_%g137127137143%_
                                            _%g137128137146%_)))))
                               (_%g137126137233%_
                                (map (lambda (_%g137235137237%_)
                                       (gxc#compile-e__1
                                        _%self137004%_
                                        _%g137235137237%_))
                                     (let ((__tmp138997
                                            (lambda (_%g137239137242%_
                                                     _%g137240137244%_)
                                              (cons _%g137239137242%_
                                                    _%g137240137244%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp138997
                                        '()
                                        _%L137106%_))))))
                           _%tl137018137058%_
                           _%expr137028137100%_
                           _%hd137029137102%_
                           _%hd137014137048%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137022137066%_
                                                   _%target137019137061%_
                                                   '()
                                                   '()))
                                                (_%g137007137040%_
                                                 _%g137008137043%_)))))
                                      (_%g137007137040%_ _%g137008137043%_))))
                              (_%g137007137040%_ _%g137008137043%_))))
                      (_%g137007137040%_ _%g137008137043%_)))))
          (_%g137006137247%_ _%stx137005%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self136758%_ _%stx136759%_)
        (let* ((_%g136761136794%_
                (lambda (_%g136762136791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136762136791%_))))
               (_%g136760137001%_
                (lambda (_%g136762136797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136762136797%_))
                      (let ((_%e136767136799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136762136797%_))))
                        (let ((_%hd136768136802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136767136799%_)))
                              (_%tl136769136804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136767136799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136769136804%_))
                              (let ((_%e136770136807%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136769136804%_))))
                                (let ((_%hd136771136810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136770136807%_)))
                                      (_%tl136772136812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136770136807%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136771136810%_))
                                      (let ((_g138998_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136771136810%_
                                                '0))))
                                        (begin
                                          (let ((_g138999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138998_)
                                                       (##values-length
                                                        _g138998_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138999_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138999_)))
                                          (let ((_%target136773136815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138998_ 0)))
                                                (_%tl136775136817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138998_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136775136817%_))
                                                (letrec ((_%loop136776136820%_
                                                          (lambda (_%hd136774136823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136780136825%_
                           _%hd136781136827%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136774136823%_))
                        (let ((_%e136777136830%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136774136823%_))))
                          (let ((_%lp-hd136778136833%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136777136830%_)))
                                (_%lp-tl136779136835%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136777136830%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136778136833%_))
                                (let ((_%e136784136838%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136778136833%_))))
                                  (let ((_%hd136785136841%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136784136838%_)))
                                        (_%tl136786136843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136784136838%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136786136843%_))
                                        (let ((_%e136787136846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136786136843%_))))
                                          (let ((_%hd136788136849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136787136846%_)))
                                                (_%tl136789136851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136787136846%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136789136851%_))
                                                (_%loop136776136820%_
                                                 _%lp-tl136779136835%_
                                                 (cons _%hd136788136849%_
                                                       _%expr136780136825%_)
                                                 (cons _%hd136785136841%_
                                                       _%hd136781136827%_))
                                                (_%g136761136794%_
                                                 _%g136762136797%_))))
                                        (_%g136761136794%_
                                         _%g136762136797%_))))
                                (_%g136761136794%_ _%g136762136797%_))))
                        (let ((_%expr136782136854%_
                               (reverse _%expr136780136825%_))
                              (_%hd136783136856%_
                               (reverse _%hd136781136827%_)))
                          ((lambda (_%L136859%_
                                    _%L136860%_
                                    _%L136861%_
                                    _%L136862%_)
                             (let ((__tmp139002
                                    (lambda ()
                                      (let* ((_%g136882136898%_
                                              (lambda (_%g136883136895%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g136883136895%_))))
                                             (_%g136881136980%_
                                              (lambda (_%g136883136901%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g136883136901%_))
                                                    (let ((_g139003_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g136883136901%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g139004_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g139003_)
                             (##values-length _g139003_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g139004_ 2)))
                      (error "Context expects 2 values" _g139004_)))
                (let ((_%target136885136903%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139003_ 0)))
                      (_%tl136887136905%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139003_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136887136905%_))
                      (letrec ((_%loop136888136908%_
                                (lambda (_%hd136886136911%_
                                         _%expr136892136913%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd136886136911%_))
                                      (let ((_%e136889136916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd136886136911%_))))
                                        (let ((_%lp-hd136890136919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136889136916%_)))
                                              (_%lp-tl136891136921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136889136916%_))))
                                          (_%loop136888136908%_
                                           _%lp-tl136891136921%_
                                           (cons _%lp-hd136890136919%_
                                                 _%expr136892136913%_))))
                                      (let ((_%expr136893136924%_
                                             (reverse _%expr136892136913%_)))
                                        ((lambda (_%L136927%_)
                                           (let* ((_%g136941136948%_
                                                   (lambda (_%g136942136945%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136942136945%_))))
                                                  (_%g136940136973%_
                                                   (lambda (_%g136942136951%_)
                                                     ((lambda (_%L136953%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136862%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136927%_
                                  _%L136861%_))
                               (let ((__tmp139005
                                      (lambda (_%g136962136966%_
                                               _%g136963136968%_
                                               _%g136964136970%_)
                                        (cons (cons _%g136963136968%_
                                                    (cons _%g136962136966%_
                                                          '()))
                                              _%g136964136970%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139005
                                  '()
                                  _%L136927%_
                                  _%L136861%_)))
                             _%L136953%_))
                 _%stx136759%_))
              _%g136942136951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136940136973%_
                                              (map (lambda (_%g136975136977%_)
                                                     (gxc#compile-e__1
                                                      _%self136758%_
                                                      _%g136975136977%_))
                                                   _%L136859%_))))
                                         _%expr136893136924%_))))))
                        (_%loop136888136908%_ _%target136885136903%_ '()))
                      (_%g136882136898%_ _%g136883136901%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g136882136898%_
                                                     _%g136883136901%_)))))
                                        (_%g136881136980%_
                                         (map (lambda (_%g136982136984%_)
                                                (gxc#compile-e__1
                                                 _%self136758%_
                                                 _%g136982136984%_))
                                              (let ((__tmp139006
                                                     (lambda (_%g136986136989%_
                                                              _%g136987136991%_)
                                                       (cons _%g136986136989%_
                                                             _%g136987136991%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp139006
                                                 '()
                                                 _%L136860%_)))))))
                                   (__tmp139000
                                    (gxc#xform-let-locals
                                     (let ((__tmp139001
                                            (lambda (_%g136993136996%_
                                                     _%g136994136998%_)
                                              (cons _%g136993136996%_
                                                    _%g136994136998%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139001
                                        '()
                                        _%L136861%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp139002
                                gxc#current-compile-local-env
                                __tmp139000)))
                           _%tl136772136812%_
                           _%expr136782136854%_
                           _%hd136783136856%_
                           _%hd136768136802%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136776136820%_
                                                   _%target136773136815%_
                                                   '()
                                                   '()))
                                                (_%g136761136794%_
                                                 _%g136762136797%_)))))
                                      (_%g136761136794%_ _%g136762136797%_))))
                              (_%g136761136794%_ _%g136762136797%_))))
                      (_%g136761136794%_ _%g136762136797%_)))))
          (_%g136760137001%_ _%stx136759%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings136625%_)
        (letrec ((_%flatten136627%_
                  (lambda (_%maybe-lst136685%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst136685%_))
                        (cons _%maybe-lst136685%_ '())
                        (let _%loop136687%_ ((_%rest136689%_
                                              _%maybe-lst136685%_)
                                             (_%result136690%_ '()))
                          (let* ((_%__stx138894138895%_ _%rest136689%_)
                                 (_%g136694136706%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx138894138895%_)))))
                            (let ((_%__kont138896138897%_
                                   (lambda (_%L136744%_ _%L136745%_)
                                     (_%loop136687%_
                                      _%L136744%_
                                      (let ((__tmp139007
                                             (_%flatten136627%_ _%L136745%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result136690%_
                                         __tmp139007)))))
                                  (_%__kont138898138899%_
                                   (lambda (_%L136718%_)
                                     (cons _%L136718%_ _%result136690%_)))
                                  (_%__kont138900138901%_
                                   (lambda () _%result136690%_)))
                              (let ((_%g136692136731%_
                                     (lambda ()
                                       (let ((_%L136718%_
                                              _%__stx138894138895%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L136718%_))
                                             (_%__kont138898138899%_
                                              _%L136718%_)
                                             (_%__kont138900138901%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx138894138895%_))
                                    (let ((_%e136698136736%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx138894138895%_))))
                                      (let ((_%tl136700136741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136698136736%_)))
                                            (_%hd136699136739%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136698136736%_))))
                                        (_%__kont138896138897%_
                                         _%tl136700136741%_
                                         _%hd136699136739%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g136692136731%_)))))))))))
          (let _%loop136629%_ ((_%rest136631%_
                                (_%flatten136627%_ _%bindings136625%_))
                               (_%locals136632%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest136633136644%_ _%rest136631%_)
                   (_%E136637136648%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest136633136644%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K136640136673%_
                     (lambda (_%rest136670%_ _%id136671%_)
                       (_%loop136629%_
                        _%rest136670%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id136671%_))
                              _%locals136632%_))))
                    (_%K136639136662%_
                     (lambda (_%id136660%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id136660%_))
                             _%locals136632%_)))
                    (_%K136638136653%_ (lambda () _%locals136632%_)))
                (let ((_%try-match136635136667%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest136633136644%_))
                             (let ((_%id136665%_ _%rest136633136644%_))
                               (_%K136639136662%_ _%id136665%_))
                             (_%K136638136653%_)))))
                  (if (pair? _%rest136633136644%_)
                      (let ((_%tl136642136678%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest136633136644%_)))
                            (_%hd136641136676%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest136633136644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd136641136676%_))
                            (let ((_%id136681%_ _%hd136641136676%_)
                                  (_%rest136683%_ _%tl136642136678%_))
                              (_%K136640136673%_ _%rest136683%_ _%id136681%_))
                            (_%K136638136653%_)))
                      (_%try-match136635136667%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self136577%_ _%stx136578%_)
        (let* ((_%g136580136591%_
                (lambda (_%g136581136588%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136581136588%_))))
               (_%g136579136622%_
                (lambda (_%g136581136594%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136581136594%_))
                      (let ((_%e136584136596%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136581136594%_))))
                        (let ((_%hd136585136599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136584136596%_)))
                              (_%tl136586136601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136584136596%_))))
                          ((lambda (_%L136604%_ _%L136605%_)
                             (let ((_%rands136620%_
                                    (map (lambda (_%g136615136617%_)
                                           (gxc#compile-e__1
                                            _%self136577%_
                                            _%g136615136617%_))
                                         _%L136604%_)))
                               (gxc#xform-wrap-source
                                (cons _%L136605%_ _%rands136620%_)
                                _%stx136578%_)))
                           _%tl136586136601%_
                           _%hd136585136599%_)))
                      (_%g136580136591%_ _%g136581136594%_)))))
          (_%g136579136622%_ _%stx136578%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self136507%_ _%stx136508%_)
        (let* ((_%g136510136527%_
                (lambda (_%g136511136524%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136511136524%_))))
               (_%g136509136574%_
                (lambda (_%g136511136530%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136511136530%_))
                      (let ((_%e136514136532%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136511136530%_))))
                        (let ((_%hd136515136535%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136514136532%_)))
                              (_%tl136516136537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136514136532%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136516136537%_))
                              (let ((_%e136517136540%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136516136537%_))))
                                (let ((_%hd136518136543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136517136540%_)))
                                      (_%tl136519136545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136517136540%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136519136545%_))
                                      (let ((_%e136520136548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136519136545%_))))
                                        (let ((_%hd136521136551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136520136548%_)))
                                              (_%tl136522136553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136520136548%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136522136553%_))
                                              ((lambda (_%L136556%_
                                                        _%L136557%_)
                                                 (let ((_%expr136572%_
                                                        (gxc#compile-e__1
                                                         _%self136507%_
                                                         _%L136556%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L136557%_
                                                                (cons _%expr136572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136508%_)))
                                               _%hd136521136551%_
                                               _%hd136518136543%_)
                                              (_%g136510136527%_
                                               _%g136511136530%_))))
                                      (_%g136510136527%_ _%g136511136530%_))))
                              (_%g136510136527%_ _%g136511136530%_))))
                      (_%g136510136527%_ _%g136511136530%_)))))
          (_%g136509136574%_ _%stx136508%_))))))
