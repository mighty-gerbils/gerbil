(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1734357962)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx138822%_)
        (let* ((_%self138824%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e138826%_
                (let ((__tmp139022 (gxc#stx-car-e _%stx138822%_)))
                  (declare (not safe))
                  (method-ref _%self138824%_ __tmp139022))))
          (if _%$e138826%_
              ((lambda (_%method138829%_)
                 (declare (not safe))
                 (_%method138829%_ _%self138824%_ _%stx138822%_))
               _%$e138826%_)
              (let ((__tmp139024 (gxc#stx-car-e _%stx138822%_))
                    (__tmp139023
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138822%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138824%_
                       __tmp139024
                       __tmp139023))))))
    (define gxc#compile-e__1
      (lambda (_%self138833%_ _%stx138834%_)
        (let ((_%$e138836%_
               (let ((__tmp139025 (gxc#stx-car-e _%stx138834%_)))
                 (declare (not safe))
                 (method-ref _%self138833%_ __tmp139025))))
          (if _%$e138836%_
              ((lambda (_%method138839%_)
                 (declare (not safe))
                 (_%method138839%_ _%self138833%_ _%stx138834%_))
               _%$e138836%_)
              (let ((__tmp139027 (gxc#stx-car-e _%stx138834%_))
                    (__tmp139026
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138834%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138833%_
                       __tmp139027
                       __tmp139026))))))
    (define gxc#compile-e
      (lambda _g139029_
        (let ((_g139028_ (let () (declare (not safe)) (##length _g139029_))))
          (cond ((let () (declare (not safe)) (##fx= _g139028_ 1))
                 (apply gxc#compile-e__0 _g139029_))
                ((let () (declare (not safe)) (##fx= _g139028_ 2))
                 (apply gxc#compile-e__1 _g139029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g139029_))))))
    (define gxc#stx-car-e
      (lambda (_%stx138820%_)
        (let ((__tmp139030
               (car (let () (declare (not safe)) (gx#stx-e _%stx138820%_)))))
          (declare (not safe))
          (gx#stx-e __tmp139030))))
    (define gxc#void-method (lambda (_%self138817%_ _%stx138818%_) '#!void))
    (define gxc#false-method (lambda (_%self138814%_ _%stx138815%_) '#f))
    (define gxc#true-method (lambda (_%self138811%_ _%stx138812%_) '#t))
    (define gxc#identity-method
      (lambda (_%self138808%_ _%stx138809%_) _%stx138809%_))
    (define gxc#::void-expression::t
      (let ((__tmp139031 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp139031
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args138805%_
        (apply make-instance gxc#::void-expression::t _%$args138805%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp139032
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
        (__make-promise __tmp139032)))
    (define gxc#::void-special-form::t
      (let ((__tmp139033 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp139033
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args138801%_
        (apply make-instance gxc#::void-special-form::t _%$args138801%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp139034
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
        (__make-promise __tmp139034)))
    (define gxc#::void::t
      (let ((__tmp139035
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp139035 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args138797%_
        (apply make-instance gxc#::void::t _%$args138797%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp139036
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139036)))
    (define gxc#::false-expression::t
      (let ((__tmp139037 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp139037
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args138793%_
        (apply make-instance gxc#::false-expression::t _%$args138793%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp139038
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
        (__make-promise __tmp139038)))
    (define gxc#::false-special-form::t
      (let ((__tmp139039 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp139039
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args138789%_
        (apply make-instance gxc#::false-special-form::t _%$args138789%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp139040
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
        (__make-promise __tmp139040)))
    (define gxc#::false::t
      (let ((__tmp139041
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp139041 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args138785%_
        (apply make-instance gxc#::false::t _%$args138785%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp139042
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139042)))
    (define gxc#::identity-expression::t
      (let ((__tmp139043 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp139043
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args138781%_
        (apply make-instance gxc#::identity-expression::t _%$args138781%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp139044
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
        (__make-promise __tmp139044)))
    (define gxc#::identity-special-form::t
      (let ((__tmp139045 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp139045
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args138777%_
        (apply make-instance gxc#::identity-special-form::t _%$args138777%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp139046
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
        (__make-promise __tmp139046)))
    (define gxc#::identity::t
      (let ((__tmp139047
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp139047
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args138773%_
        (apply make-instance gxc#::identity::t _%$args138773%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp139048
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139048)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp139049 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp139049
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args138769%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args138769%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp139050
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
        (__make-promise __tmp139050)))
    (define gxc#::basic-xform::t
      (let ((__tmp139051
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp139051
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args138765%_
        (apply make-instance gxc#::basic-xform::t _%$args138765%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp139052
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
        (__make-promise __tmp139052)))
    (define gxc#apply-begin%
      (lambda (_%self138721%_ _%stx138722%_)
        (let* ((_%g138724138734%_
                (lambda (_%g138725138731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138725138731%_))))
               (_%g138723138761%_
                (lambda (_%g138725138737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138725138737%_))
                      (let ((_%e138727138739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138725138737%_))))
                        (let ((_%hd138728138742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138727138739%_)))
                              (_%tl138729138744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138727138739%_))))
                          ((lambda (_%L138747%_)
                             (for-each
                              (lambda (_%g138756138758%_)
                                (gxc#compile-e__1
                                 _%self138721%_
                                 _%g138756138758%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L138747%_))))
                           _%tl138729138744%_)))
                      (_%g138724138734%_ _%g138725138737%_)))))
          (_%g138723138761%_ _%stx138722%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self138682%_ _%stx138683%_)
        (let* ((_%g138685138695%_
                (lambda (_%g138686138692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138686138692%_))))
               (_%g138684138718%_
                (lambda (_%g138686138698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138686138698%_))
                      (let ((_%e138688138700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138686138698%_))))
                        (let ((_%hd138689138703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138688138700%_)))
                              (_%tl138690138705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138688138700%_))))
                          ((lambda (_%L138708%_)
                             (gxc#compile-e__1
                              _%self138682%_
                              (last _%L138708%_)))
                           _%tl138690138705%_)))
                      (_%g138685138695%_ _%g138686138698%_)))))
          (_%g138684138718%_ _%stx138683%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self138678%_ _%stx138679%_)
        (let ((__tmp139055
               (lambda () (gxc#apply-begin% _%self138678%_ _%stx138679%_)))
              (__tmp139053
               (let ((__tmp139054
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp139054 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp139055
           gx#current-expander-phi
           __tmp139053))))
    (define gxc#apply-module%
      (lambda (_%self138617%_ _%stx138618%_)
        (let* ((_%g138620138634%_
                (lambda (_%g138621138631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138621138631%_))))
               (_%g138619138675%_
                (lambda (_%g138621138637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138621138637%_))
                      (let ((_%e138624138639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138621138637%_))))
                        (let ((_%hd138625138642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138624138639%_)))
                              (_%tl138626138644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138624138639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138626138644%_))
                              (let ((_%e138627138647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138626138644%_))))
                                (let ((_%hd138628138650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138627138647%_)))
                                      (_%tl138629138652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138627138647%_))))
                                  ((lambda (_%L138655%_ _%L138656%_)
                                     (let* ((_%ctx138669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L138656%_)))
                                            (_%ctx-stx138671%_
                                             (##structure-ref
                                              _%ctx138669%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp139056
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self138617%_
                                                _%ctx-stx138671%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp139056
                                        gx#current-expander-context
                                        _%ctx138669%_)))
                                   _%tl138629138652%_
                                   _%hd138628138650%_)))
                              (_%g138620138634%_ _%g138621138637%_))))
                      (_%g138620138634%_ _%g138621138637%_)))))
          (_%g138619138675%_ _%stx138618%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self138549%_ _%stx138550%_)
        (let* ((_%g138552138569%_
                (lambda (_%g138553138566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138553138566%_))))
               (_%g138551138614%_
                (lambda (_%g138553138572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138553138572%_))
                      (let ((_%e138556138574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138553138572%_))))
                        (let ((_%hd138557138577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138556138574%_)))
                              (_%tl138558138579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138556138574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138558138579%_))
                              (let ((_%e138559138582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138558138579%_))))
                                (let ((_%hd138560138585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138559138582%_)))
                                      (_%tl138561138587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138559138582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138561138587%_))
                                      (let ((_%e138562138590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138561138587%_))))
                                        (let ((_%hd138563138593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138562138590%_)))
                                              (_%tl138564138595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138562138590%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138564138595%_))
                                              ((lambda (_%L138598%_
                                                        _%L138599%_)
                                                 (gxc#compile-e__1
                                                  _%self138549%_
                                                  _%L138598%_))
                                               _%hd138563138593%_
                                               _%hd138560138585%_)
                                              (_%g138552138569%_
                                               _%g138553138572%_))))
                                      (_%g138552138569%_ _%g138553138572%_))))
                              (_%g138552138569%_ _%g138553138572%_))))
                      (_%g138552138569%_ _%g138553138572%_)))))
          (_%g138551138614%_ _%stx138550%_))))
    (define gxc#apply-define-values%
      (lambda (_%self138481%_ _%stx138482%_)
        (let* ((_%g138484138501%_
                (lambda (_%g138485138498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138485138498%_))))
               (_%g138483138546%_
                (lambda (_%g138485138504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138485138504%_))
                      (let ((_%e138488138506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138485138504%_))))
                        (let ((_%hd138489138509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138488138506%_)))
                              (_%tl138490138511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138488138506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138490138511%_))
                              (let ((_%e138491138514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138490138511%_))))
                                (let ((_%hd138492138517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138491138514%_)))
                                      (_%tl138493138519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138491138514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138493138519%_))
                                      (let ((_%e138494138522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138493138519%_))))
                                        (let ((_%hd138495138525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138494138522%_)))
                                              (_%tl138496138527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138494138522%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138496138527%_))
                                              ((lambda (_%L138530%_
                                                        _%L138531%_)
                                                 (gxc#compile-e__1
                                                  _%self138481%_
                                                  _%L138530%_))
                                               _%hd138495138525%_
                                               _%hd138492138517%_)
                                              (_%g138484138501%_
                                               _%g138485138504%_))))
                                      (_%g138484138501%_ _%g138485138504%_))))
                              (_%g138484138501%_ _%g138485138504%_))))
                      (_%g138484138501%_ _%g138485138504%_)))))
          (_%g138483138546%_ _%stx138482%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self138412%_ _%stx138413%_)
        (let* ((_%g138415138432%_
                (lambda (_%g138416138429%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138416138429%_))))
               (_%g138414138478%_
                (lambda (_%g138416138435%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138416138435%_))
                      (let ((_%e138419138437%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138416138435%_))))
                        (let ((_%hd138420138440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138419138437%_)))
                              (_%tl138421138442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138419138437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138421138442%_))
                              (let ((_%e138422138445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138421138442%_))))
                                (let ((_%hd138423138448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138422138445%_)))
                                      (_%tl138424138450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138422138445%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138424138450%_))
                                      (let ((_%e138425138453%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138424138450%_))))
                                        (let ((_%hd138426138456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138425138453%_)))
                                              (_%tl138427138458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138425138453%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138427138458%_))
                                              ((lambda (_%L138461%_
                                                        _%L138462%_)
                                                 (let ((__tmp139059
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self138412%_
                                                           _%L138461%_)))
                                                       (__tmp139057
                                                        (let ((__tmp139058
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp139058 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp139059
                                                    gx#current-expander-phi
                                                    __tmp139057)))
                                               _%hd138426138456%_
                                               _%hd138423138448%_)
                                              (_%g138415138432%_
                                               _%g138416138435%_))))
                                      (_%g138415138432%_ _%g138416138435%_))))
                              (_%g138415138432%_ _%g138416138435%_))))
                      (_%g138415138432%_ _%g138416138435%_)))))
          (_%g138414138478%_ _%stx138413%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self138344%_ _%stx138345%_)
        (let* ((_%g138347138364%_
                (lambda (_%g138348138361%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138348138361%_))))
               (_%g138346138409%_
                (lambda (_%g138348138367%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138348138367%_))
                      (let ((_%e138351138369%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138348138367%_))))
                        (let ((_%hd138352138372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138351138369%_)))
                              (_%tl138353138374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138351138369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138353138374%_))
                              (let ((_%e138354138377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138353138374%_))))
                                (let ((_%hd138355138380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138354138377%_)))
                                      (_%tl138356138382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138354138377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138356138382%_))
                                      (let ((_%e138357138385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138356138382%_))))
                                        (let ((_%hd138358138388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138357138385%_)))
                                              (_%tl138359138390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138357138385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138359138390%_))
                                              ((lambda (_%L138393%_
                                                        _%L138394%_)
                                                 (gxc#compile-e__1
                                                  _%self138344%_
                                                  _%L138393%_))
                                               _%hd138358138388%_
                                               _%hd138355138380%_)
                                              (_%g138347138364%_
                                               _%g138348138367%_))))
                                      (_%g138347138364%_ _%g138348138367%_))))
                              (_%g138347138364%_ _%g138348138367%_))))
                      (_%g138347138364%_ _%g138348138367%_)))))
          (_%g138346138409%_ _%stx138345%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self138226%_ _%stx138227%_)
        (let* ((_%g138229138257%_
                (lambda (_%g138230138254%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138230138254%_))))
               (_%g138228138341%_
                (lambda (_%g138230138260%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138230138260%_))
                      (let ((_%e138233138262%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138230138260%_))))
                        (let ((_%hd138234138265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138233138262%_)))
                              (_%tl138235138267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138233138262%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl138235138267%_))
                              (let ((_g139060_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl138235138267%_
                                        '0))))
                                (begin
                                  (let ((_g139061_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g139060_)
                                               (##values-length _g139060_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g139061_ 2)))
                                        (error "Context expects 2 values"
                                               _g139061_)))
                                  (let ((_%target138236138270%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139060_ 0)))
                                        (_%tl138238138272%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139060_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138238138272%_))
                                        (letrec ((_%loop138239138275%_
                                                  (lambda (_%hd138237138278%_
                                                           _%body138243138280%_
                                                           _%hd138244138282%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138237138278%_))
                                                        (let ((_%e138240138285%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138237138278%_))))
                  (let ((_%lp-hd138241138288%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138240138285%_)))
                        (_%lp-tl138242138290%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138240138285%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd138241138288%_))
                        (let ((_%e138247138293%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd138241138288%_))))
                          (let ((_%hd138248138296%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138247138293%_)))
                                (_%tl138249138298%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138247138293%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138249138298%_))
                                (let ((_%e138250138301%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138249138298%_))))
                                  (let ((_%hd138251138304%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138250138301%_)))
                                        (_%tl138252138306%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138250138301%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138252138306%_))
                                        (_%loop138239138275%_
                                         _%lp-tl138242138290%_
                                         (cons _%hd138251138304%_
                                               _%body138243138280%_)
                                         (cons _%hd138248138296%_
                                               _%hd138244138282%_))
                                        (_%g138229138257%_
                                         _%g138230138260%_))))
                                (_%g138229138257%_ _%g138230138260%_))))
                        (_%g138229138257%_ _%g138230138260%_))))
                (let ((_%body138245138309%_ (reverse _%body138243138280%_))
                      (_%hd138246138311%_ (reverse _%hd138244138282%_)))
                  ((lambda (_%L138314%_ _%L138315%_)
                     (for-each
                      (lambda (_%g138329138331%_)
                        (gxc#compile-e__1 _%self138226%_ _%g138329138331%_))
                      (let ((__tmp139062
                             (lambda (_%g138333138336%_ _%g138334138338%_)
                               (cons _%g138333138336%_ _%g138334138338%_))))
                        (declare (not safe))
                        (__foldr1 __tmp139062 '() _%L138314%_))))
                   _%body138245138309%_
                   _%hd138246138311%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop138239138275%_
                                           _%target138236138270%_
                                           '()
                                           '()))
                                        (_%g138229138257%_
                                         _%g138230138260%_)))))
                              (_%g138229138257%_ _%g138230138260%_))))
                      (_%g138229138257%_ _%g138230138260%_)))))
          (_%g138228138341%_ _%stx138227%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self138079%_ _%stx138080%_)
        (let* ((_%g138082138117%_
                (lambda (_%g138083138114%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138083138114%_))))
               (_%g138081138223%_
                (lambda (_%g138083138120%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138083138120%_))
                      (let ((_%e138087138122%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138083138120%_))))
                        (let ((_%hd138088138125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138087138122%_)))
                              (_%tl138089138127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138087138122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138089138127%_))
                              (let ((_%e138090138130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138089138127%_))))
                                (let ((_%hd138091138133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138090138130%_)))
                                      (_%tl138092138135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138090138130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd138091138133%_))
                                      (let ((_g139063_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd138091138133%_
                                                '0))))
                                        (begin
                                          (let ((_g139064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139063_)
                                                       (##values-length
                                                        _g139063_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139064_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139064_)))
                                          (let ((_%target138093138138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139063_ 0)))
                                                (_%tl138095138140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139063_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138095138140%_))
                                                (letrec ((_%loop138096138143%_
                                                          (lambda (_%hd138094138146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr138100138148%_
                           _%hd138101138150%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138094138146%_))
                        (let ((_%e138097138153%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138094138146%_))))
                          (let ((_%lp-hd138098138156%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138097138153%_)))
                                (_%lp-tl138099138158%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138097138153%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd138098138156%_))
                                (let ((_%e138107138161%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd138098138156%_))))
                                  (let ((_%hd138108138164%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138107138161%_)))
                                        (_%tl138109138166%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138107138161%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138109138166%_))
                                        (let ((_%e138110138169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138109138166%_))))
                                          (let ((_%hd138111138172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138110138169%_)))
                                                (_%tl138112138174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138110138169%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138112138174%_))
                                                (_%loop138096138143%_
                                                 _%lp-tl138099138158%_
                                                 (cons _%hd138111138172%_
                                                       _%expr138100138148%_)
                                                 (cons _%hd138108138164%_
                                                       _%hd138101138150%_))
                                                (_%g138082138117%_
                                                 _%g138083138120%_))))
                                        (_%g138082138117%_
                                         _%g138083138120%_))))
                                (_%g138082138117%_ _%g138083138120%_))))
                        (let ((_%expr138102138177%_
                               (reverse _%expr138100138148%_))
                              (_%hd138103138179%_
                               (reverse _%hd138101138150%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138092138135%_))
                              (let ((_%e138104138182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138092138135%_))))
                                (let ((_%hd138105138185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138104138182%_)))
                                      (_%tl138106138187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138104138182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138106138187%_))
                                      ((lambda (_%L138190%_
                                                _%L138191%_
                                                _%L138192%_)
                                         (for-each
                                          (lambda (_%g138211138213%_)
                                            (gxc#compile-e__1
                                             _%self138079%_
                                             _%g138211138213%_))
                                          (let ((__tmp139066
                                                 (lambda (_%g138215138218%_
                                                          _%g138216138220%_)
                                                   (cons _%g138215138218%_
                                                         _%g138216138220%_)))
                                                (__tmp139065
                                                 (cons _%L138190%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp139066
                                             __tmp139065
                                             _%L138191%_))))
                                       _%hd138105138185%_
                                       _%expr138102138177%_
                                       _%hd138103138179%_)
                                      (_%g138082138117%_ _%g138083138120%_))))
                              (_%g138082138117%_ _%g138083138120%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop138096138143%_
                                                   _%target138093138138%_
                                                   '()
                                                   '()))
                                                (_%g138082138117%_
                                                 _%g138083138120%_)))))
                                      (_%g138082138117%_ _%g138083138120%_))))
                              (_%g138082138117%_ _%g138083138120%_))))
                      (_%g138082138117%_ _%g138083138120%_)))))
          (_%g138081138223%_ _%stx138080%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self138024%_ _%stx138025%_)
        (let* ((_%g138027138041%_
                (lambda (_%g138028138038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138028138038%_))))
               (_%g138026138076%_
                (lambda (_%g138028138044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138028138044%_))
                      (let ((_%e138031138046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138028138044%_))))
                        (let ((_%hd138032138049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138031138046%_)))
                              (_%tl138033138051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138031138046%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138033138051%_))
                              (let ((_%e138034138054%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138033138051%_))))
                                (let ((_%hd138035138057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138034138054%_)))
                                      (_%tl138036138059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138034138054%_))))
                                  ((lambda (_%L138062%_ _%L138063%_)
                                     (gxc#compile-e__1
                                      _%self138024%_
                                      (last _%L138062%_)))
                                   _%tl138036138059%_
                                   _%hd138035138057%_)))
                              (_%g138027138041%_ _%g138028138044%_))))
                      (_%g138027138041%_ _%g138028138044%_)))))
          (_%g138026138076%_ _%stx138025%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self137956%_ _%stx137957%_)
        (let* ((_%g137959137976%_
                (lambda (_%g137960137973%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137960137973%_))))
               (_%g137958138021%_
                (lambda (_%g137960137979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137960137979%_))
                      (let ((_%e137963137981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137960137979%_))))
                        (let ((_%hd137964137984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137963137981%_)))
                              (_%tl137965137986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137963137981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137965137986%_))
                              (let ((_%e137966137989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137965137986%_))))
                                (let ((_%hd137967137992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137966137989%_)))
                                      (_%tl137968137994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137966137989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137968137994%_))
                                      (let ((_%e137969137997%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137968137994%_))))
                                        (let ((_%hd137970138000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137969137997%_)))
                                              (_%tl137971138002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137969137997%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137971138002%_))
                                              ((lambda (_%L138005%_
                                                        _%L138006%_)
                                                 (gxc#compile-e__1
                                                  _%self137956%_
                                                  _%L138005%_))
                                               _%hd137970138000%_
                                               _%hd137967137992%_)
                                              (_%g137959137976%_
                                               _%g137960137979%_))))
                                      (_%g137959137976%_ _%g137960137979%_))))
                              (_%g137959137976%_ _%g137960137979%_))))
                      (_%g137959137976%_ _%g137960137979%_)))))
          (_%g137958138021%_ _%stx137957%_))))
    (define gxc#apply-operands
      (lambda (_%self137869%_ _%stx137870%_)
        (let* ((_%g137872137891%_
                (lambda (_%g137873137888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137873137888%_))))
               (_%g137871137953%_
                (lambda (_%g137873137894%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137873137894%_))
                      (let ((_%e137875137896%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137873137894%_))))
                        (let ((_%hd137876137899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137875137896%_)))
                              (_%tl137877137901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137875137896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137877137901%_))
                              (let ((_g139067_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137877137901%_
                                        '0))))
                                (begin
                                  (let ((_g139068_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g139067_)
                                               (##values-length _g139067_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g139068_ 2)))
                                        (error "Context expects 2 values"
                                               _g139068_)))
                                  (let ((_%target137878137904%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139067_ 0)))
                                        (_%tl137880137906%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139067_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137880137906%_))
                                        (letrec ((_%loop137881137909%_
                                                  (lambda (_%hd137879137912%_
                                                           _%rands137885137914%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137879137912%_))
                                                        (let ((_%e137882137917%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137879137912%_))))
                  (let ((_%lp-hd137883137920%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137882137917%_)))
                        (_%lp-tl137884137922%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137882137917%_))))
                    (_%loop137881137909%_
                     _%lp-tl137884137922%_
                     (cons _%lp-hd137883137920%_ _%rands137885137914%_))))
                (let ((_%rands137886137925%_ (reverse _%rands137885137914%_)))
                  ((lambda (_%L137928%_)
                     (for-each
                      (lambda (_%g137941137943%_)
                        (gxc#compile-e__1 _%self137869%_ _%g137941137943%_))
                      (let ((__tmp139069
                             (lambda (_%g137945137948%_ _%g137946137950%_)
                               (cons _%g137945137948%_ _%g137946137950%_))))
                        (declare (not safe))
                        (__foldr1 __tmp139069 '() _%L137928%_))))
                   _%rands137886137925%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137881137909%_
                                           _%target137878137904%_
                                           '()))
                                        (_%g137872137891%_
                                         _%g137873137894%_)))))
                              (_%g137872137891%_ _%g137873137894%_))))
                      (_%g137872137891%_ _%g137873137894%_)))))
          (_%g137871137953%_ _%stx137870%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx137866%_ _%src-stx137867%_)
        (let ((__tmp139070
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx137867%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx137866%_ __tmp139070))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx137862%_ _%src-stx137863%_ _%ctx137864%_)
        (gxc#compile-e__1
         _%ctx137864%_
         (gxc#xform-wrap-source _%stx137862%_ _%src-stx137863%_))))
    (define gxc#xform-begin%
      (lambda (_%self137817%_ _%stx137818%_)
        (let* ((_%g137820137830%_
                (lambda (_%g137821137827%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137821137827%_))))
               (_%g137819137859%_
                (lambda (_%g137821137833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137821137833%_))
                      (let ((_%e137823137835%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137821137833%_))))
                        (let ((_%hd137824137838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137823137835%_)))
                              (_%tl137825137840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137823137835%_))))
                          ((lambda (_%L137843%_)
                             (let ((_%forms137857%_
                                    (map (lambda (_%g137852137854%_)
                                           (gxc#compile-e__1
                                            _%self137817%_
                                            _%g137852137854%_))
                                         _%L137843%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms137857%_)
                                _%stx137818%_)))
                           _%tl137825137840%_)))
                      (_%g137820137830%_ _%g137821137833%_)))))
          (_%g137819137859%_ _%stx137818%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self137771%_ _%stx137772%_)
        (let* ((_%g137774137784%_
                (lambda (_%g137775137781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137775137781%_))))
               (_%g137773137814%_
                (lambda (_%g137775137787%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137775137787%_))
                      (let ((_%e137777137789%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137775137787%_))))
                        (let ((_%hd137778137792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137777137789%_)))
                              (_%tl137779137794%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137777137789%_))))
                          ((lambda (_%L137797%_)
                             (let ((__tmp139073
                                    (lambda ()
                                      (let ((_%forms137812%_
                                             (map (lambda (_%g137807137809%_)
                                                    (gxc#compile-e__1
                                                     _%self137771%_
                                                     _%g137807137809%_))
                                                  _%L137797%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms137812%_)
                                         _%stx137772%_))))
                                   (__tmp139071
                                    (let ((__tmp139072
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp139072 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp139073
                                gx#current-expander-phi
                                __tmp139071)))
                           _%tl137779137794%_)))
                      (_%g137774137784%_ _%g137775137787%_)))))
          (_%g137773137814%_ _%stx137772%_))))
    (define gxc#xform-module%
      (lambda (_%self137708%_ _%stx137709%_)
        (let* ((_%g137711137725%_
                (lambda (_%g137712137722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137712137722%_))))
               (_%g137710137768%_
                (lambda (_%g137712137728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137712137728%_))
                      (let ((_%e137715137730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137712137728%_))))
                        (let ((_%hd137716137733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137715137730%_)))
                              (_%tl137717137735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137715137730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137717137735%_))
                              (let ((_%e137718137738%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137717137735%_))))
                                (let ((_%hd137719137741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137718137738%_)))
                                      (_%tl137720137743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137718137738%_))))
                                  ((lambda (_%L137746%_ _%L137747%_)
                                     (let* ((_%ctx137760%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137747%_)))
                                            (_%code137762%_
                                             (##structure-ref
                                              _%ctx137760%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code137765%_
                                             (let ((__tmp139074
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self137708%_
                                                       _%code137762%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp139074
                                                gx#current-expander-context
                                                _%ctx137760%_))))
                                       (##structure-set!
                                        _%ctx137760%_
                                        _%code137765%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L137747%_
                                                    (cons _%code137765%_ '())))
                                        _%stx137709%_)))
                                   _%tl137720137743%_
                                   _%hd137719137741%_)))
                              (_%g137711137725%_ _%g137712137728%_))))
                      (_%g137711137725%_ _%g137712137728%_)))))
          (_%g137710137768%_ _%stx137709%_))))
    (define gxc#xform-define-values%
      (lambda (_%self137638%_ _%stx137639%_)
        (let* ((_%g137641137658%_
                (lambda (_%g137642137655%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137642137655%_))))
               (_%g137640137705%_
                (lambda (_%g137642137661%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137642137661%_))
                      (let ((_%e137645137663%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137642137661%_))))
                        (let ((_%hd137646137666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137645137663%_)))
                              (_%tl137647137668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137645137663%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137647137668%_))
                              (let ((_%e137648137671%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137647137668%_))))
                                (let ((_%hd137649137674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137648137671%_)))
                                      (_%tl137650137676%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137648137671%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137650137676%_))
                                      (let ((_%e137651137679%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137650137676%_))))
                                        (let ((_%hd137652137682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137651137679%_)))
                                              (_%tl137653137684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137651137679%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137653137684%_))
                                              ((lambda (_%L137687%_
                                                        _%L137688%_)
                                                 (let ((_%expr137703%_
                                                        (gxc#compile-e__1
                                                         _%self137638%_
                                                         _%L137687%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L137688%_
                                                                (cons _%expr137703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137639%_)))
                                               _%hd137652137682%_
                                               _%hd137649137674%_)
                                              (_%g137641137658%_
                                               _%g137642137661%_))))
                                      (_%g137641137658%_ _%g137642137661%_))))
                              (_%g137641137658%_ _%g137642137661%_))))
                      (_%g137641137658%_ _%g137642137661%_)))))
          (_%g137640137705%_ _%stx137639%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self137567%_ _%stx137568%_)
        (let* ((_%g137570137587%_
                (lambda (_%g137571137584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137571137584%_))))
               (_%g137569137635%_
                (lambda (_%g137571137590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137571137590%_))
                      (let ((_%e137574137592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137571137590%_))))
                        (let ((_%hd137575137595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137574137592%_)))
                              (_%tl137576137597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137574137592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137576137597%_))
                              (let ((_%e137577137600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137576137597%_))))
                                (let ((_%hd137578137603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137577137600%_)))
                                      (_%tl137579137605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137577137600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137579137605%_))
                                      (let ((_%e137580137608%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137579137605%_))))
                                        (let ((_%hd137581137611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137580137608%_)))
                                              (_%tl137582137613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137580137608%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137582137613%_))
                                              ((lambda (_%L137616%_
                                                        _%L137617%_)
                                                 (let ((__tmp139077
                                                        (lambda ()
                                                          (let ((_%expr137633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self137567%_ _%L137616%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L137617%_ (cons _%expr137633%_ '())))
                     _%stx137568%_))))
               (__tmp139075
                (let ((__tmp139076
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp139076 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp139077
                                                    gx#current-expander-phi
                                                    __tmp139075)))
                                               _%hd137581137611%_
                                               _%hd137578137603%_)
                                              (_%g137570137587%_
                                               _%g137571137590%_))))
                                      (_%g137570137587%_ _%g137571137590%_))))
                              (_%g137570137587%_ _%g137571137590%_))))
                      (_%g137570137587%_ _%g137571137590%_)))))
          (_%g137569137635%_ _%stx137568%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self137497%_ _%stx137498%_)
        (let* ((_%g137500137517%_
                (lambda (_%g137501137514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137501137514%_))))
               (_%g137499137564%_
                (lambda (_%g137501137520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137501137520%_))
                      (let ((_%e137504137522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137501137520%_))))
                        (let ((_%hd137505137525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137504137522%_)))
                              (_%tl137506137527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137504137522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137506137527%_))
                              (let ((_%e137507137530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137506137527%_))))
                                (let ((_%hd137508137533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137507137530%_)))
                                      (_%tl137509137535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137507137530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137509137535%_))
                                      (let ((_%e137510137538%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137509137535%_))))
                                        (let ((_%hd137511137541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137510137538%_)))
                                              (_%tl137512137543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137510137538%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137512137543%_))
                                              ((lambda (_%L137546%_
                                                        _%L137547%_)
                                                 (let ((_%expr137562%_
                                                        (gxc#compile-e__1
                                                         _%self137497%_
                                                         _%L137546%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L137547%_
                                                                (cons _%expr137562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137498%_)))
                                               _%hd137511137541%_
                                               _%hd137508137533%_)
                                              (_%g137500137517%_
                                               _%g137501137520%_))))
                                      (_%g137500137517%_ _%g137501137520%_))))
                              (_%g137500137517%_ _%g137501137520%_))))
                      (_%g137500137517%_ _%g137501137520%_)))))
          (_%g137499137564%_ _%stx137498%_))))
    (define gxc#xform-lambda%
      (lambda (_%self137435%_ _%stx137436%_)
        (let* ((_%g137438137452%_
                (lambda (_%g137439137449%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137439137449%_))))
               (_%g137437137494%_
                (lambda (_%g137439137455%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137439137455%_))
                      (let ((_%e137442137457%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137439137455%_))))
                        (let ((_%hd137443137460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137442137457%_)))
                              (_%tl137444137462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137442137457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137444137462%_))
                              (let ((_%e137445137465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137444137462%_))))
                                (let ((_%hd137446137468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137445137465%_)))
                                      (_%tl137447137470%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137445137465%_))))
                                  ((lambda (_%L137473%_ _%L137474%_)
                                     (let ((__tmp139079
                                            (lambda ()
                                              (let ((_%body137492%_
                                                     (map (lambda (_%g137487137489%_)
                                                            (gxc#compile-e__1
                                                             _%self137435%_
                                                             _%g137487137489%_))
                                                          _%L137473%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L137474%_
                                                             _%body137492%_))
                                                 _%stx137436%_))))
                                           (__tmp139078
                                            (gxc#xform-let-locals
                                             _%L137474%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp139079
                                        gxc#current-compile-local-env
                                        __tmp139078)))
                                   _%tl137447137470%_
                                   _%hd137446137468%_)))
                              (_%g137438137452%_ _%g137439137455%_))))
                      (_%g137438137452%_ _%g137439137455%_)))))
          (_%g137437137494%_ _%stx137436%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self137343%_ _%stx137344%_)
        (letrec ((_%clause-e137346%_
                  (lambda (_%clause137387%_)
                    (let* ((_%g137389137400%_
                            (lambda (_%g137390137397%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g137390137397%_))))
                           (_%g137388137432%_
                            (lambda (_%g137390137403%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g137390137403%_))
                                  (let ((_%e137393137405%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g137390137403%_))))
                                    (let ((_%hd137394137408%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137393137405%_)))
                                          (_%tl137395137410%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137393137405%_))))
                                      ((lambda (_%L137413%_ _%L137414%_)
                                         (let ((__tmp139081
                                                (lambda ()
                                                  (let ((_%body137430%_
                                                         (map (lambda (_%g137425137427%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self137343%_
                         _%g137425137427%_))
                      _%L137413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L137414%_
                                                          _%body137430%_))))
                                               (__tmp139080
                                                (gxc#xform-let-locals
                                                 _%L137414%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp139081
                                            gxc#current-compile-local-env
                                            __tmp139080)))
                                       _%tl137395137410%_
                                       _%hd137394137408%_)))
                                  (_%g137389137400%_ _%g137390137403%_)))))
                      (_%g137388137432%_ _%clause137387%_)))))
          (let* ((_%g137348137358%_
                  (lambda (_%g137349137355%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137349137355%_))))
                 (_%g137347137384%_
                  (lambda (_%g137349137361%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137349137361%_))
                        (let ((_%e137351137363%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137349137361%_))))
                          (let ((_%hd137352137366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137351137363%_)))
                                (_%tl137353137368%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137351137363%_))))
                            ((lambda (_%L137371%_)
                               (let ((_%clauses137382%_
                                      (map _%clause-e137346%_ _%L137371%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses137382%_)
                                  _%stx137344%_)))
                             _%tl137353137368%_)))
                        (_%g137348137358%_ _%g137349137361%_)))))
            (_%g137347137384%_ _%stx137344%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self137097%_ _%stx137098%_)
        (let* ((_%g137100137133%_
                (lambda (_%g137101137130%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137101137130%_))))
               (_%g137099137340%_
                (lambda (_%g137101137136%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137101137136%_))
                      (let ((_%e137106137138%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137101137136%_))))
                        (let ((_%hd137107137141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137106137138%_)))
                              (_%tl137108137143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137106137138%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137108137143%_))
                              (let ((_%e137109137146%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137108137143%_))))
                                (let ((_%hd137110137149%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137109137146%_)))
                                      (_%tl137111137151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137109137146%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137110137149%_))
                                      (let ((_g139082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137110137149%_
                                                '0))))
                                        (begin
                                          (let ((_g139083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139082_)
                                                       (##values-length
                                                        _g139082_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139083_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139083_)))
                                          (let ((_%target137112137154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139082_ 0)))
                                                (_%tl137114137156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139082_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137114137156%_))
                                                (letrec ((_%loop137115137159%_
                                                          (lambda (_%hd137113137162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137119137164%_
                           _%hd137120137166%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137113137162%_))
                        (let ((_%e137116137169%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137113137162%_))))
                          (let ((_%lp-hd137117137172%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137116137169%_)))
                                (_%lp-tl137118137174%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137116137169%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137117137172%_))
                                (let ((_%e137123137177%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137117137172%_))))
                                  (let ((_%hd137124137180%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137123137177%_)))
                                        (_%tl137125137182%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137123137177%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137125137182%_))
                                        (let ((_%e137126137185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137125137182%_))))
                                          (let ((_%hd137127137188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137126137185%_)))
                                                (_%tl137128137190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137126137185%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137128137190%_))
                                                (_%loop137115137159%_
                                                 _%lp-tl137118137174%_
                                                 (cons _%hd137127137188%_
                                                       _%expr137119137164%_)
                                                 (cons _%hd137124137180%_
                                                       _%hd137120137166%_))
                                                (_%g137100137133%_
                                                 _%g137101137136%_))))
                                        (_%g137100137133%_
                                         _%g137101137136%_))))
                                (_%g137100137133%_ _%g137101137136%_))))
                        (let ((_%expr137121137193%_
                               (reverse _%expr137119137164%_))
                              (_%hd137122137195%_
                               (reverse _%hd137120137166%_)))
                          ((lambda (_%L137198%_
                                    _%L137199%_
                                    _%L137200%_
                                    _%L137201%_)
                             (let* ((_%g137220137236%_
                                     (lambda (_%g137221137233%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g137221137233%_))))
                                    (_%g137219137326%_
                                     (lambda (_%g137221137239%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g137221137239%_))
                                           (let ((_g139084_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g137221137239%_
                                                     '0))))
                                             (begin
                                               (let ((_g139085_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g139084_)
                                                            (##values-length
                                                             _g139084_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g139085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g139085_)))
                                               (let ((_%target137223137241%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g139084_
                                                         0)))
                                                     (_%tl137225137243%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g139084_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl137225137243%_))
                                                     (letrec ((_%loop137226137246%_
                                                               (lambda (_%hd137224137249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr137230137251%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd137224137249%_))
                             (let ((_%e137227137254%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd137224137249%_))))
                               (let ((_%lp-hd137228137257%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137227137254%_)))
                                     (_%lp-tl137229137259%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137227137254%_))))
                                 (_%loop137226137246%_
                                  _%lp-tl137229137259%_
                                  (cons _%lp-hd137228137257%_
                                        _%expr137230137251%_))))
                             (let ((_%expr137231137262%_
                                    (reverse _%expr137230137251%_)))
                               ((lambda (_%L137265%_)
                                  (let ((__tmp139088
                                         (lambda ()
                                           (let* ((_%g137279137286%_
                                                   (lambda (_%g137280137283%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137280137283%_))))
                                                  (_%g137278137312%_
                                                   (lambda (_%g137280137289%_)
                                                     ((lambda (_%L137291%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L137201%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137265%_
                                  _%L137200%_))
                               (let ((__tmp139089
                                      (lambda (_%g137301137305%_
                                               _%g137302137307%_
                                               _%g137303137309%_)
                                        (cons (cons _%g137302137307%_
                                                    (cons _%g137301137305%_
                                                          '()))
                                              _%g137303137309%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139089
                                  '()
                                  _%L137265%_
                                  _%L137200%_)))
                             _%L137291%_))
                 _%stx137098%_))
              _%g137280137289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137278137312%_
                                              (map (lambda (_%g137314137316%_)
                                                     (gxc#compile-e__1
                                                      _%self137097%_
                                                      _%g137314137316%_))
                                                   _%L137198%_)))))
                                        (__tmp139086
                                         (gxc#xform-let-locals
                                          (let ((__tmp139087
                                                 (lambda (_%g137318137321%_
                                                          _%g137319137323%_)
                                                   (cons _%g137318137321%_
                                                         _%g137319137323%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp139087
                                             '()
                                             _%L137200%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp139088
                                     gxc#current-compile-local-env
                                     __tmp139086)))
                                _%expr137231137262%_))))))
               (_%loop137226137246%_ _%target137223137241%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137220137236%_
                                                      _%g137221137239%_)))))
                                           (_%g137220137236%_
                                            _%g137221137239%_)))))
                               (_%g137219137326%_
                                (map (lambda (_%g137328137330%_)
                                       (gxc#compile-e__1
                                        _%self137097%_
                                        _%g137328137330%_))
                                     (let ((__tmp139090
                                            (lambda (_%g137332137335%_
                                                     _%g137333137337%_)
                                              (cons _%g137332137335%_
                                                    _%g137333137337%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139090
                                        '()
                                        _%L137199%_))))))
                           _%tl137111137151%_
                           _%expr137121137193%_
                           _%hd137122137195%_
                           _%hd137107137141%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137115137159%_
                                                   _%target137112137154%_
                                                   '()
                                                   '()))
                                                (_%g137100137133%_
                                                 _%g137101137136%_)))))
                                      (_%g137100137133%_ _%g137101137136%_))))
                              (_%g137100137133%_ _%g137101137136%_))))
                      (_%g137100137133%_ _%g137101137136%_)))))
          (_%g137099137340%_ _%stx137098%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self136851%_ _%stx136852%_)
        (let* ((_%g136854136887%_
                (lambda (_%g136855136884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136855136884%_))))
               (_%g136853137094%_
                (lambda (_%g136855136890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136855136890%_))
                      (let ((_%e136860136892%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136855136890%_))))
                        (let ((_%hd136861136895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136860136892%_)))
                              (_%tl136862136897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136860136892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136862136897%_))
                              (let ((_%e136863136900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136862136897%_))))
                                (let ((_%hd136864136903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136863136900%_)))
                                      (_%tl136865136905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136863136900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136864136903%_))
                                      (let ((_g139091_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136864136903%_
                                                '0))))
                                        (begin
                                          (let ((_g139092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139091_)
                                                       (##values-length
                                                        _g139091_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139092_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139092_)))
                                          (let ((_%target136866136908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139091_ 0)))
                                                (_%tl136868136910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139091_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136868136910%_))
                                                (letrec ((_%loop136869136913%_
                                                          (lambda (_%hd136867136916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136873136918%_
                           _%hd136874136920%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136867136916%_))
                        (let ((_%e136870136923%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136867136916%_))))
                          (let ((_%lp-hd136871136926%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136870136923%_)))
                                (_%lp-tl136872136928%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136870136923%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136871136926%_))
                                (let ((_%e136877136931%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136871136926%_))))
                                  (let ((_%hd136878136934%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136877136931%_)))
                                        (_%tl136879136936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136877136931%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136879136936%_))
                                        (let ((_%e136880136939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136879136936%_))))
                                          (let ((_%hd136881136942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136880136939%_)))
                                                (_%tl136882136944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136880136939%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136882136944%_))
                                                (_%loop136869136913%_
                                                 _%lp-tl136872136928%_
                                                 (cons _%hd136881136942%_
                                                       _%expr136873136918%_)
                                                 (cons _%hd136878136934%_
                                                       _%hd136874136920%_))
                                                (_%g136854136887%_
                                                 _%g136855136890%_))))
                                        (_%g136854136887%_
                                         _%g136855136890%_))))
                                (_%g136854136887%_ _%g136855136890%_))))
                        (let ((_%expr136875136947%_
                               (reverse _%expr136873136918%_))
                              (_%hd136876136949%_
                               (reverse _%hd136874136920%_)))
                          ((lambda (_%L136952%_
                                    _%L136953%_
                                    _%L136954%_
                                    _%L136955%_)
                             (let ((__tmp139095
                                    (lambda ()
                                      (let* ((_%g136975136991%_
                                              (lambda (_%g136976136988%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g136976136988%_))))
                                             (_%g136974137073%_
                                              (lambda (_%g136976136994%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g136976136994%_))
                                                    (let ((_g139096_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g136976136994%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g139097_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g139096_)
                             (##values-length _g139096_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g139097_ 2)))
                      (error "Context expects 2 values" _g139097_)))
                (let ((_%target136978136996%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139096_ 0)))
                      (_%tl136980136998%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139096_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136980136998%_))
                      (letrec ((_%loop136981137001%_
                                (lambda (_%hd136979137004%_
                                         _%expr136985137006%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd136979137004%_))
                                      (let ((_%e136982137009%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd136979137004%_))))
                                        (let ((_%lp-hd136983137012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136982137009%_)))
                                              (_%lp-tl136984137014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136982137009%_))))
                                          (_%loop136981137001%_
                                           _%lp-tl136984137014%_
                                           (cons _%lp-hd136983137012%_
                                                 _%expr136985137006%_))))
                                      (let ((_%expr136986137017%_
                                             (reverse _%expr136985137006%_)))
                                        ((lambda (_%L137020%_)
                                           (let* ((_%g137034137041%_
                                                   (lambda (_%g137035137038%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137035137038%_))))
                                                  (_%g137033137066%_
                                                   (lambda (_%g137035137044%_)
                                                     ((lambda (_%L137046%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136955%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137020%_
                                  _%L136954%_))
                               (let ((__tmp139098
                                      (lambda (_%g137055137059%_
                                               _%g137056137061%_
                                               _%g137057137063%_)
                                        (cons (cons _%g137056137061%_
                                                    (cons _%g137055137059%_
                                                          '()))
                                              _%g137057137063%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139098
                                  '()
                                  _%L137020%_
                                  _%L136954%_)))
                             _%L137046%_))
                 _%stx136852%_))
              _%g137035137044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137033137066%_
                                              (map (lambda (_%g137068137070%_)
                                                     (gxc#compile-e__1
                                                      _%self136851%_
                                                      _%g137068137070%_))
                                                   _%L136952%_))))
                                         _%expr136986137017%_))))))
                        (_%loop136981137001%_ _%target136978136996%_ '()))
                      (_%g136975136991%_ _%g136976136994%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g136975136991%_
                                                     _%g136976136994%_)))))
                                        (_%g136974137073%_
                                         (map (lambda (_%g137075137077%_)
                                                (gxc#compile-e__1
                                                 _%self136851%_
                                                 _%g137075137077%_))
                                              (let ((__tmp139099
                                                     (lambda (_%g137079137082%_
                                                              _%g137080137084%_)
                                                       (cons _%g137079137082%_
                                                             _%g137080137084%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp139099
                                                 '()
                                                 _%L136953%_)))))))
                                   (__tmp139093
                                    (gxc#xform-let-locals
                                     (let ((__tmp139094
                                            (lambda (_%g137086137089%_
                                                     _%g137087137091%_)
                                              (cons _%g137086137089%_
                                                    _%g137087137091%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139094
                                        '()
                                        _%L136954%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp139095
                                gxc#current-compile-local-env
                                __tmp139093)))
                           _%tl136865136905%_
                           _%expr136875136947%_
                           _%hd136876136949%_
                           _%hd136861136895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136869136913%_
                                                   _%target136866136908%_
                                                   '()
                                                   '()))
                                                (_%g136854136887%_
                                                 _%g136855136890%_)))))
                                      (_%g136854136887%_ _%g136855136890%_))))
                              (_%g136854136887%_ _%g136855136890%_))))
                      (_%g136854136887%_ _%g136855136890%_)))))
          (_%g136853137094%_ _%stx136852%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings136718%_)
        (letrec ((_%flatten136720%_
                  (lambda (_%maybe-lst136778%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst136778%_))
                        (cons _%maybe-lst136778%_ '())
                        (let _%loop136780%_ ((_%rest136782%_
                                              _%maybe-lst136778%_)
                                             (_%result136783%_ '()))
                          (let* ((_%__stx138987138988%_ _%rest136782%_)
                                 (_%g136787136799%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx138987138988%_)))))
                            (let ((_%__kont138989138990%_
                                   (lambda (_%L136837%_ _%L136838%_)
                                     (_%loop136780%_
                                      _%L136837%_
                                      (let ((__tmp139100
                                             (_%flatten136720%_ _%L136838%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result136783%_
                                         __tmp139100)))))
                                  (_%__kont138991138992%_
                                   (lambda (_%L136811%_)
                                     (cons _%L136811%_ _%result136783%_)))
                                  (_%__kont138993138994%_
                                   (lambda () _%result136783%_)))
                              (let ((_%g136785136824%_
                                     (lambda ()
                                       (let ((_%L136811%_
                                              _%__stx138987138988%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L136811%_))
                                             (_%__kont138991138992%_
                                              _%L136811%_)
                                             (_%__kont138993138994%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx138987138988%_))
                                    (let ((_%e136791136829%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx138987138988%_))))
                                      (let ((_%tl136793136834%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136791136829%_)))
                                            (_%hd136792136832%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136791136829%_))))
                                        (_%__kont138989138990%_
                                         _%tl136793136834%_
                                         _%hd136792136832%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g136785136824%_)))))))))))
          (let _%loop136722%_ ((_%rest136724%_
                                (_%flatten136720%_ _%bindings136718%_))
                               (_%locals136725%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest136726136737%_ _%rest136724%_)
                   (_%E136730136741%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest136726136737%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K136733136766%_
                     (lambda (_%rest136763%_ _%id136764%_)
                       (_%loop136722%_
                        _%rest136763%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id136764%_))
                              _%locals136725%_))))
                    (_%K136732136755%_
                     (lambda (_%id136753%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id136753%_))
                             _%locals136725%_)))
                    (_%K136731136746%_ (lambda () _%locals136725%_)))
                (let ((_%try-match136728136760%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest136726136737%_))
                             (let ((_%id136758%_ _%rest136726136737%_))
                               (_%K136732136755%_ _%id136758%_))
                             (_%K136731136746%_)))))
                  (if (pair? _%rest136726136737%_)
                      (let ((_%tl136735136771%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest136726136737%_)))
                            (_%hd136734136769%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest136726136737%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd136734136769%_))
                            (let ((_%id136774%_ _%hd136734136769%_)
                                  (_%rest136776%_ _%tl136735136771%_))
                              (_%K136733136766%_ _%rest136776%_ _%id136774%_))
                            (_%K136731136746%_)))
                      (_%try-match136728136760%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self136670%_ _%stx136671%_)
        (let* ((_%g136673136684%_
                (lambda (_%g136674136681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136674136681%_))))
               (_%g136672136715%_
                (lambda (_%g136674136687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136674136687%_))
                      (let ((_%e136677136689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136674136687%_))))
                        (let ((_%hd136678136692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136677136689%_)))
                              (_%tl136679136694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136677136689%_))))
                          ((lambda (_%L136697%_ _%L136698%_)
                             (let ((_%rands136713%_
                                    (map (lambda (_%g136708136710%_)
                                           (gxc#compile-e__1
                                            _%self136670%_
                                            _%g136708136710%_))
                                         _%L136697%_)))
                               (gxc#xform-wrap-source
                                (cons _%L136698%_ _%rands136713%_)
                                _%stx136671%_)))
                           _%tl136679136694%_
                           _%hd136678136692%_)))
                      (_%g136673136684%_ _%g136674136687%_)))))
          (_%g136672136715%_ _%stx136671%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self136600%_ _%stx136601%_)
        (let* ((_%g136603136620%_
                (lambda (_%g136604136617%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136604136617%_))))
               (_%g136602136667%_
                (lambda (_%g136604136623%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136604136623%_))
                      (let ((_%e136607136625%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136604136623%_))))
                        (let ((_%hd136608136628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136607136625%_)))
                              (_%tl136609136630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136607136625%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136609136630%_))
                              (let ((_%e136610136633%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136609136630%_))))
                                (let ((_%hd136611136636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136610136633%_)))
                                      (_%tl136612136638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136610136633%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136612136638%_))
                                      (let ((_%e136613136641%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136612136638%_))))
                                        (let ((_%hd136614136644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136613136641%_)))
                                              (_%tl136615136646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136613136641%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136615136646%_))
                                              ((lambda (_%L136649%_
                                                        _%L136650%_)
                                                 (let ((_%expr136665%_
                                                        (gxc#compile-e__1
                                                         _%self136600%_
                                                         _%L136649%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L136650%_
                                                                (cons _%expr136665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136601%_)))
                                               _%hd136614136644%_
                                               _%hd136611136636%_)
                                              (_%g136603136620%_
                                               _%g136604136623%_))))
                                      (_%g136603136620%_ _%g136604136623%_))))
                              (_%g136603136620%_ _%g136604136623%_))))
                      (_%g136603136620%_ _%g136604136623%_)))))
          (_%g136602136667%_ _%stx136601%_))))))
