(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1733687560)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx137694%_)
        (let* ((_%self137696%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e137698%_
                (let ((__tmp137894 (gxc#stx-car-e _%stx137694%_)))
                  (declare (not safe))
                  (method-ref _%self137696%_ __tmp137894))))
          (if _%$e137698%_
              ((lambda (_%method137701%_)
                 (declare (not safe))
                 (_%method137701%_ _%self137696%_ _%stx137694%_))
               _%$e137698%_)
              (let ((__tmp137896 (gxc#stx-car-e _%stx137694%_))
                    (__tmp137895
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137694%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137696%_
                       __tmp137896
                       __tmp137895))))))
    (define gxc#compile-e__1
      (lambda (_%self137705%_ _%stx137706%_)
        (let ((_%$e137708%_
               (let ((__tmp137897 (gxc#stx-car-e _%stx137706%_)))
                 (declare (not safe))
                 (method-ref _%self137705%_ __tmp137897))))
          (if _%$e137708%_
              ((lambda (_%method137711%_)
                 (declare (not safe))
                 (_%method137711%_ _%self137705%_ _%stx137706%_))
               _%$e137708%_)
              (let ((__tmp137899 (gxc#stx-car-e _%stx137706%_))
                    (__tmp137898
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137706%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137705%_
                       __tmp137899
                       __tmp137898))))))
    (define gxc#compile-e
      (lambda _g137901_
        (let ((_g137900_ (let () (declare (not safe)) (##length _g137901_))))
          (cond ((let () (declare (not safe)) (##fx= _g137900_ 1))
                 (apply gxc#compile-e__0 _g137901_))
                ((let () (declare (not safe)) (##fx= _g137900_ 2))
                 (apply gxc#compile-e__1 _g137901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g137901_))))))
    (define gxc#stx-car-e
      (lambda (_%stx137692%_)
        (let ((__tmp137902
               (car (let () (declare (not safe)) (gx#stx-e _%stx137692%_)))))
          (declare (not safe))
          (gx#stx-e __tmp137902))))
    (define gxc#void-method (lambda (_%self137689%_ _%stx137690%_) '#!void))
    (define gxc#false-method (lambda (_%self137686%_ _%stx137687%_) '#f))
    (define gxc#true-method (lambda (_%self137683%_ _%stx137684%_) '#t))
    (define gxc#identity-method
      (lambda (_%self137680%_ _%stx137681%_) _%stx137681%_))
    (define gxc#::void-expression::t
      (let ((__tmp137903 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp137903
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args137677%_
        (apply make-instance gxc#::void-expression::t _%$args137677%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp137904
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
        (__make-promise __tmp137904)))
    (define gxc#::void-special-form::t
      (let ((__tmp137905 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp137905
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args137673%_
        (apply make-instance gxc#::void-special-form::t _%$args137673%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp137906
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
        (__make-promise __tmp137906)))
    (define gxc#::void::t
      (let ((__tmp137907
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp137907 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args137669%_
        (apply make-instance gxc#::void::t _%$args137669%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp137908
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137908)))
    (define gxc#::false-expression::t
      (let ((__tmp137909 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp137909
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args137665%_
        (apply make-instance gxc#::false-expression::t _%$args137665%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp137910
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
        (__make-promise __tmp137910)))
    (define gxc#::false-special-form::t
      (let ((__tmp137911 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp137911
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args137661%_
        (apply make-instance gxc#::false-special-form::t _%$args137661%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp137912
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
        (__make-promise __tmp137912)))
    (define gxc#::false::t
      (let ((__tmp137913
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp137913 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args137657%_
        (apply make-instance gxc#::false::t _%$args137657%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp137914
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137914)))
    (define gxc#::identity-expression::t
      (let ((__tmp137915 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp137915
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args137653%_
        (apply make-instance gxc#::identity-expression::t _%$args137653%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp137916
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
        (__make-promise __tmp137916)))
    (define gxc#::identity-special-form::t
      (let ((__tmp137917 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp137917
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args137649%_
        (apply make-instance gxc#::identity-special-form::t _%$args137649%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp137918
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
        (__make-promise __tmp137918)))
    (define gxc#::identity::t
      (let ((__tmp137919
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp137919
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args137645%_
        (apply make-instance gxc#::identity::t _%$args137645%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp137920
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137920)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp137921 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp137921
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args137641%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args137641%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp137922
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
        (__make-promise __tmp137922)))
    (define gxc#::basic-xform::t
      (let ((__tmp137923
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp137923
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args137637%_
        (apply make-instance gxc#::basic-xform::t _%$args137637%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp137924
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
        (__make-promise __tmp137924)))
    (define gxc#apply-begin%
      (lambda (_%self137593%_ _%stx137594%_)
        (let* ((_%g137596137606%_
                (lambda (_%g137597137603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137597137603%_))))
               (_%g137595137633%_
                (lambda (_%g137597137609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137597137609%_))
                      (let ((_%e137599137611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137597137609%_))))
                        (let ((_%hd137600137614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137599137611%_)))
                              (_%tl137601137616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137599137611%_))))
                          ((lambda (_%L137619%_)
                             (for-each
                              (lambda (_%g137628137630%_)
                                (gxc#compile-e__1
                                 _%self137593%_
                                 _%g137628137630%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L137619%_))))
                           _%tl137601137616%_)))
                      (_%g137596137606%_ _%g137597137609%_)))))
          (_%g137595137633%_ _%stx137594%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self137554%_ _%stx137555%_)
        (let* ((_%g137557137567%_
                (lambda (_%g137558137564%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137558137564%_))))
               (_%g137556137590%_
                (lambda (_%g137558137570%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137558137570%_))
                      (let ((_%e137560137572%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137558137570%_))))
                        (let ((_%hd137561137575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137560137572%_)))
                              (_%tl137562137577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137560137572%_))))
                          ((lambda (_%L137580%_)
                             (gxc#compile-e__1
                              _%self137554%_
                              (last _%L137580%_)))
                           _%tl137562137577%_)))
                      (_%g137557137567%_ _%g137558137570%_)))))
          (_%g137556137590%_ _%stx137555%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self137550%_ _%stx137551%_)
        (let ((__tmp137927
               (lambda () (gxc#apply-begin% _%self137550%_ _%stx137551%_)))
              (__tmp137925
               (let ((__tmp137926
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp137926 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp137927
           gx#current-expander-phi
           __tmp137925))))
    (define gxc#apply-module%
      (lambda (_%self137489%_ _%stx137490%_)
        (let* ((_%g137492137506%_
                (lambda (_%g137493137503%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137493137503%_))))
               (_%g137491137547%_
                (lambda (_%g137493137509%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137493137509%_))
                      (let ((_%e137496137511%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137493137509%_))))
                        (let ((_%hd137497137514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137496137511%_)))
                              (_%tl137498137516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137496137511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137498137516%_))
                              (let ((_%e137499137519%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137498137516%_))))
                                (let ((_%hd137500137522%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137499137519%_)))
                                      (_%tl137501137524%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137499137519%_))))
                                  ((lambda (_%L137527%_ _%L137528%_)
                                     (let* ((_%ctx137541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137528%_)))
                                            (_%ctx-stx137543%_
                                             (##structure-ref
                                              _%ctx137541%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp137928
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self137489%_
                                                _%ctx-stx137543%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp137928
                                        gx#current-expander-context
                                        _%ctx137541%_)))
                                   _%tl137501137524%_
                                   _%hd137500137522%_)))
                              (_%g137492137506%_ _%g137493137509%_))))
                      (_%g137492137506%_ _%g137493137509%_)))))
          (_%g137491137547%_ _%stx137490%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self137421%_ _%stx137422%_)
        (let* ((_%g137424137441%_
                (lambda (_%g137425137438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137425137438%_))))
               (_%g137423137486%_
                (lambda (_%g137425137444%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137425137444%_))
                      (let ((_%e137428137446%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137425137444%_))))
                        (let ((_%hd137429137449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137428137446%_)))
                              (_%tl137430137451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137428137446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137430137451%_))
                              (let ((_%e137431137454%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137430137451%_))))
                                (let ((_%hd137432137457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137431137454%_)))
                                      (_%tl137433137459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137431137454%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137433137459%_))
                                      (let ((_%e137434137462%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137433137459%_))))
                                        (let ((_%hd137435137465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137434137462%_)))
                                              (_%tl137436137467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137434137462%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137436137467%_))
                                              ((lambda (_%L137470%_
                                                        _%L137471%_)
                                                 (gxc#compile-e__1
                                                  _%self137421%_
                                                  _%L137470%_))
                                               _%hd137435137465%_
                                               _%hd137432137457%_)
                                              (_%g137424137441%_
                                               _%g137425137444%_))))
                                      (_%g137424137441%_ _%g137425137444%_))))
                              (_%g137424137441%_ _%g137425137444%_))))
                      (_%g137424137441%_ _%g137425137444%_)))))
          (_%g137423137486%_ _%stx137422%_))))
    (define gxc#apply-define-values%
      (lambda (_%self137353%_ _%stx137354%_)
        (let* ((_%g137356137373%_
                (lambda (_%g137357137370%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137357137370%_))))
               (_%g137355137418%_
                (lambda (_%g137357137376%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137357137376%_))
                      (let ((_%e137360137378%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137357137376%_))))
                        (let ((_%hd137361137381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137360137378%_)))
                              (_%tl137362137383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137360137378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137362137383%_))
                              (let ((_%e137363137386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137362137383%_))))
                                (let ((_%hd137364137389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137363137386%_)))
                                      (_%tl137365137391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137363137386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137365137391%_))
                                      (let ((_%e137366137394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137365137391%_))))
                                        (let ((_%hd137367137397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137366137394%_)))
                                              (_%tl137368137399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137366137394%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137368137399%_))
                                              ((lambda (_%L137402%_
                                                        _%L137403%_)
                                                 (gxc#compile-e__1
                                                  _%self137353%_
                                                  _%L137402%_))
                                               _%hd137367137397%_
                                               _%hd137364137389%_)
                                              (_%g137356137373%_
                                               _%g137357137376%_))))
                                      (_%g137356137373%_ _%g137357137376%_))))
                              (_%g137356137373%_ _%g137357137376%_))))
                      (_%g137356137373%_ _%g137357137376%_)))))
          (_%g137355137418%_ _%stx137354%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self137284%_ _%stx137285%_)
        (let* ((_%g137287137304%_
                (lambda (_%g137288137301%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137288137301%_))))
               (_%g137286137350%_
                (lambda (_%g137288137307%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137288137307%_))
                      (let ((_%e137291137309%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137288137307%_))))
                        (let ((_%hd137292137312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137291137309%_)))
                              (_%tl137293137314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137291137309%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137293137314%_))
                              (let ((_%e137294137317%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137293137314%_))))
                                (let ((_%hd137295137320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137294137317%_)))
                                      (_%tl137296137322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137294137317%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137296137322%_))
                                      (let ((_%e137297137325%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137296137322%_))))
                                        (let ((_%hd137298137328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137297137325%_)))
                                              (_%tl137299137330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137297137325%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137299137330%_))
                                              ((lambda (_%L137333%_
                                                        _%L137334%_)
                                                 (let ((__tmp137931
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self137284%_
                                                           _%L137333%_)))
                                                       (__tmp137929
                                                        (let ((__tmp137930
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp137930 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp137931
                                                    gx#current-expander-phi
                                                    __tmp137929)))
                                               _%hd137298137328%_
                                               _%hd137295137320%_)
                                              (_%g137287137304%_
                                               _%g137288137307%_))))
                                      (_%g137287137304%_ _%g137288137307%_))))
                              (_%g137287137304%_ _%g137288137307%_))))
                      (_%g137287137304%_ _%g137288137307%_)))))
          (_%g137286137350%_ _%stx137285%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self137216%_ _%stx137217%_)
        (let* ((_%g137219137236%_
                (lambda (_%g137220137233%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137220137233%_))))
               (_%g137218137281%_
                (lambda (_%g137220137239%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137220137239%_))
                      (let ((_%e137223137241%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137220137239%_))))
                        (let ((_%hd137224137244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137223137241%_)))
                              (_%tl137225137246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137223137241%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137225137246%_))
                              (let ((_%e137226137249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137225137246%_))))
                                (let ((_%hd137227137252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137226137249%_)))
                                      (_%tl137228137254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137226137249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137228137254%_))
                                      (let ((_%e137229137257%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137228137254%_))))
                                        (let ((_%hd137230137260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137229137257%_)))
                                              (_%tl137231137262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137229137257%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137231137262%_))
                                              ((lambda (_%L137265%_
                                                        _%L137266%_)
                                                 (gxc#compile-e__1
                                                  _%self137216%_
                                                  _%L137265%_))
                                               _%hd137230137260%_
                                               _%hd137227137252%_)
                                              (_%g137219137236%_
                                               _%g137220137239%_))))
                                      (_%g137219137236%_ _%g137220137239%_))))
                              (_%g137219137236%_ _%g137220137239%_))))
                      (_%g137219137236%_ _%g137220137239%_)))))
          (_%g137218137281%_ _%stx137217%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self137098%_ _%stx137099%_)
        (let* ((_%g137101137129%_
                (lambda (_%g137102137126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137102137126%_))))
               (_%g137100137213%_
                (lambda (_%g137102137132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137102137132%_))
                      (let ((_%e137105137134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137102137132%_))))
                        (let ((_%hd137106137137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137105137134%_)))
                              (_%tl137107137139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137105137134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137107137139%_))
                              (let ((_g137932_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137107137139%_
                                        '0))))
                                (begin
                                  (let ((_g137933_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g137932_)
                                               (##vector-length _g137932_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g137933_ 2)))
                                        (error "Context expects 2 values"
                                               _g137933_)))
                                  (let ((_%target137108137142%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137932_ 0)))
                                        (_%tl137110137144%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137932_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137110137144%_))
                                        (letrec ((_%loop137111137147%_
                                                  (lambda (_%hd137109137150%_
                                                           _%body137115137152%_
                                                           _%hd137116137154%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137109137150%_))
                                                        (let ((_%e137112137157%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137109137150%_))))
                  (let ((_%lp-hd137113137160%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137112137157%_)))
                        (_%lp-tl137114137162%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137112137157%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd137113137160%_))
                        (let ((_%e137119137165%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd137113137160%_))))
                          (let ((_%hd137120137168%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137119137165%_)))
                                (_%tl137121137170%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137119137165%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137121137170%_))
                                (let ((_%e137122137173%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137121137170%_))))
                                  (let ((_%hd137123137176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137122137173%_)))
                                        (_%tl137124137178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137122137173%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137124137178%_))
                                        (_%loop137111137147%_
                                         _%lp-tl137114137162%_
                                         (cons _%hd137123137176%_
                                               _%body137115137152%_)
                                         (cons _%hd137120137168%_
                                               _%hd137116137154%_))
                                        (_%g137101137129%_
                                         _%g137102137132%_))))
                                (_%g137101137129%_ _%g137102137132%_))))
                        (_%g137101137129%_ _%g137102137132%_))))
                (let ((_%body137117137181%_ (reverse _%body137115137152%_))
                      (_%hd137118137183%_ (reverse _%hd137116137154%_)))
                  ((lambda (_%L137186%_ _%L137187%_)
                     (for-each
                      (lambda (_%g137201137203%_)
                        (gxc#compile-e__1 _%self137098%_ _%g137201137203%_))
                      (let ((__tmp137934
                             (lambda (_%g137205137208%_ _%g137206137210%_)
                               (cons _%g137205137208%_ _%g137206137210%_))))
                        (declare (not safe))
                        (__foldr1 __tmp137934 '() _%L137186%_))))
                   _%body137117137181%_
                   _%hd137118137183%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137111137147%_
                                           _%target137108137142%_
                                           '()
                                           '()))
                                        (_%g137101137129%_
                                         _%g137102137132%_)))))
                              (_%g137101137129%_ _%g137102137132%_))))
                      (_%g137101137129%_ _%g137102137132%_)))))
          (_%g137100137213%_ _%stx137099%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self136951%_ _%stx136952%_)
        (let* ((_%g136954136989%_
                (lambda (_%g136955136986%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136955136986%_))))
               (_%g136953137095%_
                (lambda (_%g136955136992%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136955136992%_))
                      (let ((_%e136959136994%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136955136992%_))))
                        (let ((_%hd136960136997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136959136994%_)))
                              (_%tl136961136999%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136959136994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136961136999%_))
                              (let ((_%e136962137002%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136961136999%_))))
                                (let ((_%hd136963137005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136962137002%_)))
                                      (_%tl136964137007%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136962137002%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136963137005%_))
                                      (let ((_g137935_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136963137005%_
                                                '0))))
                                        (begin
                                          (let ((_g137936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137935_)
                                                       (##vector-length
                                                        _g137935_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137936_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137936_)))
                                          (let ((_%target136965137010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137935_ 0)))
                                                (_%tl136967137012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137935_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136967137012%_))
                                                (letrec ((_%loop136968137015%_
                                                          (lambda (_%hd136966137018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136972137020%_
                           _%hd136973137022%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136966137018%_))
                        (let ((_%e136969137025%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136966137018%_))))
                          (let ((_%lp-hd136970137028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136969137025%_)))
                                (_%lp-tl136971137030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136969137025%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136970137028%_))
                                (let ((_%e136979137033%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136970137028%_))))
                                  (let ((_%hd136980137036%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136979137033%_)))
                                        (_%tl136981137038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136979137033%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136981137038%_))
                                        (let ((_%e136982137041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136981137038%_))))
                                          (let ((_%hd136983137044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136982137041%_)))
                                                (_%tl136984137046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136982137041%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136984137046%_))
                                                (_%loop136968137015%_
                                                 _%lp-tl136971137030%_
                                                 (cons _%hd136983137044%_
                                                       _%expr136972137020%_)
                                                 (cons _%hd136980137036%_
                                                       _%hd136973137022%_))
                                                (_%g136954136989%_
                                                 _%g136955136992%_))))
                                        (_%g136954136989%_
                                         _%g136955136992%_))))
                                (_%g136954136989%_ _%g136955136992%_))))
                        (let ((_%expr136974137049%_
                               (reverse _%expr136972137020%_))
                              (_%hd136975137051%_
                               (reverse _%hd136973137022%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136964137007%_))
                              (let ((_%e136976137054%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136964137007%_))))
                                (let ((_%hd136977137057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136976137054%_)))
                                      (_%tl136978137059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136976137054%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl136978137059%_))
                                      ((lambda (_%L137062%_
                                                _%L137063%_
                                                _%L137064%_)
                                         (for-each
                                          (lambda (_%g137083137085%_)
                                            (gxc#compile-e__1
                                             _%self136951%_
                                             _%g137083137085%_))
                                          (let ((__tmp137938
                                                 (lambda (_%g137087137090%_
                                                          _%g137088137092%_)
                                                   (cons _%g137087137090%_
                                                         _%g137088137092%_)))
                                                (__tmp137937
                                                 (cons _%L137062%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp137938
                                             __tmp137937
                                             _%L137063%_))))
                                       _%hd136977137057%_
                                       _%expr136974137049%_
                                       _%hd136975137051%_)
                                      (_%g136954136989%_ _%g136955136992%_))))
                              (_%g136954136989%_ _%g136955136992%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136968137015%_
                                                   _%target136965137010%_
                                                   '()
                                                   '()))
                                                (_%g136954136989%_
                                                 _%g136955136992%_)))))
                                      (_%g136954136989%_ _%g136955136992%_))))
                              (_%g136954136989%_ _%g136955136992%_))))
                      (_%g136954136989%_ _%g136955136992%_)))))
          (_%g136953137095%_ _%stx136952%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self136896%_ _%stx136897%_)
        (let* ((_%g136899136913%_
                (lambda (_%g136900136910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136900136910%_))))
               (_%g136898136948%_
                (lambda (_%g136900136916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136900136916%_))
                      (let ((_%e136903136918%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136900136916%_))))
                        (let ((_%hd136904136921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136903136918%_)))
                              (_%tl136905136923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136903136918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136905136923%_))
                              (let ((_%e136906136926%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136905136923%_))))
                                (let ((_%hd136907136929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136906136926%_)))
                                      (_%tl136908136931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136906136926%_))))
                                  ((lambda (_%L136934%_ _%L136935%_)
                                     (gxc#compile-e__1
                                      _%self136896%_
                                      (last _%L136934%_)))
                                   _%tl136908136931%_
                                   _%hd136907136929%_)))
                              (_%g136899136913%_ _%g136900136916%_))))
                      (_%g136899136913%_ _%g136900136916%_)))))
          (_%g136898136948%_ _%stx136897%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self136828%_ _%stx136829%_)
        (let* ((_%g136831136848%_
                (lambda (_%g136832136845%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136832136845%_))))
               (_%g136830136893%_
                (lambda (_%g136832136851%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136832136851%_))
                      (let ((_%e136835136853%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136832136851%_))))
                        (let ((_%hd136836136856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136835136853%_)))
                              (_%tl136837136858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136835136853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136837136858%_))
                              (let ((_%e136838136861%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136837136858%_))))
                                (let ((_%hd136839136864%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136838136861%_)))
                                      (_%tl136840136866%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136838136861%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136840136866%_))
                                      (let ((_%e136841136869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136840136866%_))))
                                        (let ((_%hd136842136872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136841136869%_)))
                                              (_%tl136843136874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136841136869%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136843136874%_))
                                              ((lambda (_%L136877%_
                                                        _%L136878%_)
                                                 (gxc#compile-e__1
                                                  _%self136828%_
                                                  _%L136877%_))
                                               _%hd136842136872%_
                                               _%hd136839136864%_)
                                              (_%g136831136848%_
                                               _%g136832136851%_))))
                                      (_%g136831136848%_ _%g136832136851%_))))
                              (_%g136831136848%_ _%g136832136851%_))))
                      (_%g136831136848%_ _%g136832136851%_)))))
          (_%g136830136893%_ _%stx136829%_))))
    (define gxc#apply-operands
      (lambda (_%self136741%_ _%stx136742%_)
        (let* ((_%g136744136763%_
                (lambda (_%g136745136760%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136745136760%_))))
               (_%g136743136825%_
                (lambda (_%g136745136766%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136745136766%_))
                      (let ((_%e136747136768%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136745136766%_))))
                        (let ((_%hd136748136771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136747136768%_)))
                              (_%tl136749136773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136747136768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl136749136773%_))
                              (let ((_g137939_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl136749136773%_
                                        '0))))
                                (begin
                                  (let ((_g137940_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g137939_)
                                               (##vector-length _g137939_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g137940_ 2)))
                                        (error "Context expects 2 values"
                                               _g137940_)))
                                  (let ((_%target136750136776%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137939_ 0)))
                                        (_%tl136752136778%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137939_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136752136778%_))
                                        (letrec ((_%loop136753136781%_
                                                  (lambda (_%hd136751136784%_
                                                           _%rands136757136786%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd136751136784%_))
                                                        (let ((_%e136754136789%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd136751136784%_))))
                  (let ((_%lp-hd136755136792%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136754136789%_)))
                        (_%lp-tl136756136794%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136754136789%_))))
                    (_%loop136753136781%_
                     _%lp-tl136756136794%_
                     (cons _%lp-hd136755136792%_ _%rands136757136786%_))))
                (let ((_%rands136758136797%_ (reverse _%rands136757136786%_)))
                  ((lambda (_%L136800%_)
                     (for-each
                      (lambda (_%g136813136815%_)
                        (gxc#compile-e__1 _%self136741%_ _%g136813136815%_))
                      (let ((__tmp137941
                             (lambda (_%g136817136820%_ _%g136818136822%_)
                               (cons _%g136817136820%_ _%g136818136822%_))))
                        (declare (not safe))
                        (__foldr1 __tmp137941 '() _%L136800%_))))
                   _%rands136758136797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop136753136781%_
                                           _%target136750136776%_
                                           '()))
                                        (_%g136744136763%_
                                         _%g136745136766%_)))))
                              (_%g136744136763%_ _%g136745136766%_))))
                      (_%g136744136763%_ _%g136745136766%_)))))
          (_%g136743136825%_ _%stx136742%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx136738%_ _%src-stx136739%_)
        (let ((__tmp137942
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx136739%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx136738%_ __tmp137942))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx136734%_ _%src-stx136735%_ _%ctx136736%_)
        (gxc#compile-e__1
         _%ctx136736%_
         (gxc#xform-wrap-source _%stx136734%_ _%src-stx136735%_))))
    (define gxc#xform-begin%
      (lambda (_%self136689%_ _%stx136690%_)
        (let* ((_%g136692136702%_
                (lambda (_%g136693136699%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136693136699%_))))
               (_%g136691136731%_
                (lambda (_%g136693136705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136693136705%_))
                      (let ((_%e136695136707%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136693136705%_))))
                        (let ((_%hd136696136710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136695136707%_)))
                              (_%tl136697136712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136695136707%_))))
                          ((lambda (_%L136715%_)
                             (let ((_%forms136729%_
                                    (map (lambda (_%g136724136726%_)
                                           (gxc#compile-e__1
                                            _%self136689%_
                                            _%g136724136726%_))
                                         _%L136715%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms136729%_)
                                _%stx136690%_)))
                           _%tl136697136712%_)))
                      (_%g136692136702%_ _%g136693136705%_)))))
          (_%g136691136731%_ _%stx136690%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self136643%_ _%stx136644%_)
        (let* ((_%g136646136656%_
                (lambda (_%g136647136653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136647136653%_))))
               (_%g136645136686%_
                (lambda (_%g136647136659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136647136659%_))
                      (let ((_%e136649136661%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136647136659%_))))
                        (let ((_%hd136650136664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136649136661%_)))
                              (_%tl136651136666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136649136661%_))))
                          ((lambda (_%L136669%_)
                             (let ((__tmp137945
                                    (lambda ()
                                      (let ((_%forms136684%_
                                             (map (lambda (_%g136679136681%_)
                                                    (gxc#compile-e__1
                                                     _%self136643%_
                                                     _%g136679136681%_))
                                                  _%L136669%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms136684%_)
                                         _%stx136644%_))))
                                   (__tmp137943
                                    (let ((__tmp137944
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp137944 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp137945
                                gx#current-expander-phi
                                __tmp137943)))
                           _%tl136651136666%_)))
                      (_%g136646136656%_ _%g136647136659%_)))))
          (_%g136645136686%_ _%stx136644%_))))
    (define gxc#xform-module%
      (lambda (_%self136580%_ _%stx136581%_)
        (let* ((_%g136583136597%_
                (lambda (_%g136584136594%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136584136594%_))))
               (_%g136582136640%_
                (lambda (_%g136584136600%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136584136600%_))
                      (let ((_%e136587136602%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136584136600%_))))
                        (let ((_%hd136588136605%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136587136602%_)))
                              (_%tl136589136607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136587136602%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136589136607%_))
                              (let ((_%e136590136610%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136589136607%_))))
                                (let ((_%hd136591136613%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136590136610%_)))
                                      (_%tl136592136615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136590136610%_))))
                                  ((lambda (_%L136618%_ _%L136619%_)
                                     (let* ((_%ctx136632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136619%_)))
                                            (_%code136634%_
                                             (##structure-ref
                                              _%ctx136632%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code136637%_
                                             (let ((__tmp137946
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self136580%_
                                                       _%code136634%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp137946
                                                gx#current-expander-context
                                                _%ctx136632%_))))
                                       (##structure-set!
                                        _%ctx136632%_
                                        _%code136637%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L136619%_
                                                    (cons _%code136637%_ '())))
                                        _%stx136581%_)))
                                   _%tl136592136615%_
                                   _%hd136591136613%_)))
                              (_%g136583136597%_ _%g136584136600%_))))
                      (_%g136583136597%_ _%g136584136600%_)))))
          (_%g136582136640%_ _%stx136581%_))))
    (define gxc#xform-define-values%
      (lambda (_%self136510%_ _%stx136511%_)
        (let* ((_%g136513136530%_
                (lambda (_%g136514136527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136514136527%_))))
               (_%g136512136577%_
                (lambda (_%g136514136533%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136514136533%_))
                      (let ((_%e136517136535%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136514136533%_))))
                        (let ((_%hd136518136538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136517136535%_)))
                              (_%tl136519136540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136517136535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136519136540%_))
                              (let ((_%e136520136543%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136519136540%_))))
                                (let ((_%hd136521136546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136520136543%_)))
                                      (_%tl136522136548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136520136543%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136522136548%_))
                                      (let ((_%e136523136551%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136522136548%_))))
                                        (let ((_%hd136524136554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136523136551%_)))
                                              (_%tl136525136556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136523136551%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136525136556%_))
                                              ((lambda (_%L136559%_
                                                        _%L136560%_)
                                                 (let ((_%expr136575%_
                                                        (gxc#compile-e__1
                                                         _%self136510%_
                                                         _%L136559%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L136560%_
                                                                (cons _%expr136575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136511%_)))
                                               _%hd136524136554%_
                                               _%hd136521136546%_)
                                              (_%g136513136530%_
                                               _%g136514136533%_))))
                                      (_%g136513136530%_ _%g136514136533%_))))
                              (_%g136513136530%_ _%g136514136533%_))))
                      (_%g136513136530%_ _%g136514136533%_)))))
          (_%g136512136577%_ _%stx136511%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self136439%_ _%stx136440%_)
        (let* ((_%g136442136459%_
                (lambda (_%g136443136456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136443136456%_))))
               (_%g136441136507%_
                (lambda (_%g136443136462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136443136462%_))
                      (let ((_%e136446136464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136443136462%_))))
                        (let ((_%hd136447136467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136446136464%_)))
                              (_%tl136448136469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136446136464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136448136469%_))
                              (let ((_%e136449136472%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136448136469%_))))
                                (let ((_%hd136450136475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136449136472%_)))
                                      (_%tl136451136477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136449136472%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136451136477%_))
                                      (let ((_%e136452136480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136451136477%_))))
                                        (let ((_%hd136453136483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136452136480%_)))
                                              (_%tl136454136485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136452136480%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136454136485%_))
                                              ((lambda (_%L136488%_
                                                        _%L136489%_)
                                                 (let ((__tmp137949
                                                        (lambda ()
                                                          (let ((_%expr136505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self136439%_ _%L136488%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L136489%_ (cons _%expr136505%_ '())))
                     _%stx136440%_))))
               (__tmp137947
                (let ((__tmp137948
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp137948 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp137949
                                                    gx#current-expander-phi
                                                    __tmp137947)))
                                               _%hd136453136483%_
                                               _%hd136450136475%_)
                                              (_%g136442136459%_
                                               _%g136443136462%_))))
                                      (_%g136442136459%_ _%g136443136462%_))))
                              (_%g136442136459%_ _%g136443136462%_))))
                      (_%g136442136459%_ _%g136443136462%_)))))
          (_%g136441136507%_ _%stx136440%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self136369%_ _%stx136370%_)
        (let* ((_%g136372136389%_
                (lambda (_%g136373136386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136373136386%_))))
               (_%g136371136436%_
                (lambda (_%g136373136392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136373136392%_))
                      (let ((_%e136376136394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136373136392%_))))
                        (let ((_%hd136377136397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136376136394%_)))
                              (_%tl136378136399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136376136394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136378136399%_))
                              (let ((_%e136379136402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136378136399%_))))
                                (let ((_%hd136380136405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136379136402%_)))
                                      (_%tl136381136407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136379136402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136381136407%_))
                                      (let ((_%e136382136410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136381136407%_))))
                                        (let ((_%hd136383136413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136382136410%_)))
                                              (_%tl136384136415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136382136410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136384136415%_))
                                              ((lambda (_%L136418%_
                                                        _%L136419%_)
                                                 (let ((_%expr136434%_
                                                        (gxc#compile-e__1
                                                         _%self136369%_
                                                         _%L136418%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L136419%_
                                                                (cons _%expr136434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136370%_)))
                                               _%hd136383136413%_
                                               _%hd136380136405%_)
                                              (_%g136372136389%_
                                               _%g136373136392%_))))
                                      (_%g136372136389%_ _%g136373136392%_))))
                              (_%g136372136389%_ _%g136373136392%_))))
                      (_%g136372136389%_ _%g136373136392%_)))))
          (_%g136371136436%_ _%stx136370%_))))
    (define gxc#xform-lambda%
      (lambda (_%self136307%_ _%stx136308%_)
        (let* ((_%g136310136324%_
                (lambda (_%g136311136321%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136311136321%_))))
               (_%g136309136366%_
                (lambda (_%g136311136327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136311136327%_))
                      (let ((_%e136314136329%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136311136327%_))))
                        (let ((_%hd136315136332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136314136329%_)))
                              (_%tl136316136334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136314136329%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136316136334%_))
                              (let ((_%e136317136337%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136316136334%_))))
                                (let ((_%hd136318136340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136317136337%_)))
                                      (_%tl136319136342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136317136337%_))))
                                  ((lambda (_%L136345%_ _%L136346%_)
                                     (let ((__tmp137951
                                            (lambda ()
                                              (let ((_%body136364%_
                                                     (map (lambda (_%g136359136361%_)
                                                            (gxc#compile-e__1
                                                             _%self136307%_
                                                             _%g136359136361%_))
                                                          _%L136345%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L136346%_
                                                             _%body136364%_))
                                                 _%stx136308%_))))
                                           (__tmp137950
                                            (gxc#xform-let-locals
                                             _%L136346%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp137951
                                        gxc#current-compile-local-env
                                        __tmp137950)))
                                   _%tl136319136342%_
                                   _%hd136318136340%_)))
                              (_%g136310136324%_ _%g136311136327%_))))
                      (_%g136310136324%_ _%g136311136327%_)))))
          (_%g136309136366%_ _%stx136308%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self136215%_ _%stx136216%_)
        (letrec ((_%clause-e136218%_
                  (lambda (_%clause136259%_)
                    (let* ((_%g136261136272%_
                            (lambda (_%g136262136269%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g136262136269%_))))
                           (_%g136260136304%_
                            (lambda (_%g136262136275%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g136262136275%_))
                                  (let ((_%e136265136277%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g136262136275%_))))
                                    (let ((_%hd136266136280%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136265136277%_)))
                                          (_%tl136267136282%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136265136277%_))))
                                      ((lambda (_%L136285%_ _%L136286%_)
                                         (let ((__tmp137953
                                                (lambda ()
                                                  (let ((_%body136302%_
                                                         (map (lambda (_%g136297136299%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self136215%_
                         _%g136297136299%_))
                      _%L136285%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L136286%_
                                                          _%body136302%_))))
                                               (__tmp137952
                                                (gxc#xform-let-locals
                                                 _%L136286%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp137953
                                            gxc#current-compile-local-env
                                            __tmp137952)))
                                       _%tl136267136282%_
                                       _%hd136266136280%_)))
                                  (_%g136261136272%_ _%g136262136275%_)))))
                      (_%g136260136304%_ _%clause136259%_)))))
          (let* ((_%g136220136230%_
                  (lambda (_%g136221136227%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136221136227%_))))
                 (_%g136219136256%_
                  (lambda (_%g136221136233%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136221136233%_))
                        (let ((_%e136223136235%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136221136233%_))))
                          (let ((_%hd136224136238%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136223136235%_)))
                                (_%tl136225136240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136223136235%_))))
                            ((lambda (_%L136243%_)
                               (let ((_%clauses136254%_
                                      (map _%clause-e136218%_ _%L136243%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses136254%_)
                                  _%stx136216%_)))
                             _%tl136225136240%_)))
                        (_%g136220136230%_ _%g136221136233%_)))))
            (_%g136219136256%_ _%stx136216%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self135969%_ _%stx135970%_)
        (let* ((_%g135972136005%_
                (lambda (_%g135973136002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135973136002%_))))
               (_%g135971136212%_
                (lambda (_%g135973136008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135973136008%_))
                      (let ((_%e135978136010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135973136008%_))))
                        (let ((_%hd135979136013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135978136010%_)))
                              (_%tl135980136015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135978136010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135980136015%_))
                              (let ((_%e135981136018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135980136015%_))))
                                (let ((_%hd135982136021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135981136018%_)))
                                      (_%tl135983136023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135981136018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135982136021%_))
                                      (let ((_g137954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135982136021%_
                                                '0))))
                                        (begin
                                          (let ((_g137955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137954_)
                                                       (##vector-length
                                                        _g137954_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137955_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137955_)))
                                          (let ((_%target135984136026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137954_ 0)))
                                                (_%tl135986136028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137954_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135986136028%_))
                                                (letrec ((_%loop135987136031%_
                                                          (lambda (_%hd135985136034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135991136036%_
                           _%hd135992136038%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135985136034%_))
                        (let ((_%e135988136041%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135985136034%_))))
                          (let ((_%lp-hd135989136044%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135988136041%_)))
                                (_%lp-tl135990136046%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135988136041%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135989136044%_))
                                (let ((_%e135995136049%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135989136044%_))))
                                  (let ((_%hd135996136052%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135995136049%_)))
                                        (_%tl135997136054%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135995136049%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135997136054%_))
                                        (let ((_%e135998136057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135997136054%_))))
                                          (let ((_%hd135999136060%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135998136057%_)))
                                                (_%tl136000136062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135998136057%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136000136062%_))
                                                (_%loop135987136031%_
                                                 _%lp-tl135990136046%_
                                                 (cons _%hd135999136060%_
                                                       _%expr135991136036%_)
                                                 (cons _%hd135996136052%_
                                                       _%hd135992136038%_))
                                                (_%g135972136005%_
                                                 _%g135973136008%_))))
                                        (_%g135972136005%_
                                         _%g135973136008%_))))
                                (_%g135972136005%_ _%g135973136008%_))))
                        (let ((_%expr135993136065%_
                               (reverse _%expr135991136036%_))
                              (_%hd135994136067%_
                               (reverse _%hd135992136038%_)))
                          ((lambda (_%L136070%_
                                    _%L136071%_
                                    _%L136072%_
                                    _%L136073%_)
                             (let* ((_%g136092136108%_
                                     (lambda (_%g136093136105%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136093136105%_))))
                                    (_%g136091136198%_
                                     (lambda (_%g136093136111%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g136093136111%_))
                                           (let ((_g137956_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g136093136111%_
                                                     '0))))
                                             (begin
                                               (let ((_g137957_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g137956_)
                                                            (##vector-length
                                                             _g137956_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g137957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g137957_)))
                                               (let ((_%target136095136113%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g137956_
                                                         0)))
                                                     (_%tl136097136115%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g137956_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl136097136115%_))
                                                     (letrec ((_%loop136098136118%_
                                                               (lambda (_%hd136096136121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr136102136123%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd136096136121%_))
                             (let ((_%e136099136126%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd136096136121%_))))
                               (let ((_%lp-hd136100136129%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136099136126%_)))
                                     (_%lp-tl136101136131%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136099136126%_))))
                                 (_%loop136098136118%_
                                  _%lp-tl136101136131%_
                                  (cons _%lp-hd136100136129%_
                                        _%expr136102136123%_))))
                             (let ((_%expr136103136134%_
                                    (reverse _%expr136102136123%_)))
                               ((lambda (_%L136137%_)
                                  (let ((__tmp137960
                                         (lambda ()
                                           (let* ((_%g136151136158%_
                                                   (lambda (_%g136152136155%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136152136155%_))))
                                                  (_%g136150136184%_
                                                   (lambda (_%g136152136161%_)
                                                     ((lambda (_%L136163%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136073%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136137%_
                                  _%L136072%_))
                               (let ((__tmp137961
                                      (lambda (_%g136173136177%_
                                               _%g136174136179%_
                                               _%g136175136181%_)
                                        (cons (cons _%g136174136179%_
                                                    (cons _%g136173136177%_
                                                          '()))
                                              _%g136175136181%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp137961
                                  '()
                                  _%L136137%_
                                  _%L136072%_)))
                             _%L136163%_))
                 _%stx135970%_))
              _%g136152136161%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136150136184%_
                                              (map (lambda (_%g136186136188%_)
                                                     (gxc#compile-e__1
                                                      _%self135969%_
                                                      _%g136186136188%_))
                                                   _%L136070%_)))))
                                        (__tmp137958
                                         (gxc#xform-let-locals
                                          (let ((__tmp137959
                                                 (lambda (_%g136190136193%_
                                                          _%g136191136195%_)
                                                   (cons _%g136190136193%_
                                                         _%g136191136195%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp137959
                                             '()
                                             _%L136072%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp137960
                                     gxc#current-compile-local-env
                                     __tmp137958)))
                                _%expr136103136134%_))))))
               (_%loop136098136118%_ _%target136095136113%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g136092136108%_
                                                      _%g136093136111%_)))))
                                           (_%g136092136108%_
                                            _%g136093136111%_)))))
                               (_%g136091136198%_
                                (map (lambda (_%g136200136202%_)
                                       (gxc#compile-e__1
                                        _%self135969%_
                                        _%g136200136202%_))
                                     (let ((__tmp137962
                                            (lambda (_%g136204136207%_
                                                     _%g136205136209%_)
                                              (cons _%g136204136207%_
                                                    _%g136205136209%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp137962
                                        '()
                                        _%L136071%_))))))
                           _%tl135983136023%_
                           _%expr135993136065%_
                           _%hd135994136067%_
                           _%hd135979136013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135987136031%_
                                                   _%target135984136026%_
                                                   '()
                                                   '()))
                                                (_%g135972136005%_
                                                 _%g135973136008%_)))))
                                      (_%g135972136005%_ _%g135973136008%_))))
                              (_%g135972136005%_ _%g135973136008%_))))
                      (_%g135972136005%_ _%g135973136008%_)))))
          (_%g135971136212%_ _%stx135970%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self135723%_ _%stx135724%_)
        (let* ((_%g135726135759%_
                (lambda (_%g135727135756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135727135756%_))))
               (_%g135725135966%_
                (lambda (_%g135727135762%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135727135762%_))
                      (let ((_%e135732135764%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135727135762%_))))
                        (let ((_%hd135733135767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135732135764%_)))
                              (_%tl135734135769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135732135764%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135734135769%_))
                              (let ((_%e135735135772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135734135769%_))))
                                (let ((_%hd135736135775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135735135772%_)))
                                      (_%tl135737135777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135735135772%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135736135775%_))
                                      (let ((_g137963_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135736135775%_
                                                '0))))
                                        (begin
                                          (let ((_g137964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137963_)
                                                       (##vector-length
                                                        _g137963_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137964_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137964_)))
                                          (let ((_%target135738135780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137963_ 0)))
                                                (_%tl135740135782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137963_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135740135782%_))
                                                (letrec ((_%loop135741135785%_
                                                          (lambda (_%hd135739135788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135745135790%_
                           _%hd135746135792%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135739135788%_))
                        (let ((_%e135742135795%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135739135788%_))))
                          (let ((_%lp-hd135743135798%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135742135795%_)))
                                (_%lp-tl135744135800%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135742135795%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135743135798%_))
                                (let ((_%e135749135803%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135743135798%_))))
                                  (let ((_%hd135750135806%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135749135803%_)))
                                        (_%tl135751135808%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135749135803%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135751135808%_))
                                        (let ((_%e135752135811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135751135808%_))))
                                          (let ((_%hd135753135814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135752135811%_)))
                                                (_%tl135754135816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135752135811%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135754135816%_))
                                                (_%loop135741135785%_
                                                 _%lp-tl135744135800%_
                                                 (cons _%hd135753135814%_
                                                       _%expr135745135790%_)
                                                 (cons _%hd135750135806%_
                                                       _%hd135746135792%_))
                                                (_%g135726135759%_
                                                 _%g135727135762%_))))
                                        (_%g135726135759%_
                                         _%g135727135762%_))))
                                (_%g135726135759%_ _%g135727135762%_))))
                        (let ((_%expr135747135819%_
                               (reverse _%expr135745135790%_))
                              (_%hd135748135821%_
                               (reverse _%hd135746135792%_)))
                          ((lambda (_%L135824%_
                                    _%L135825%_
                                    _%L135826%_
                                    _%L135827%_)
                             (let ((__tmp137967
                                    (lambda ()
                                      (let* ((_%g135847135863%_
                                              (lambda (_%g135848135860%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g135848135860%_))))
                                             (_%g135846135945%_
                                              (lambda (_%g135848135866%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g135848135866%_))
                                                    (let ((_g137968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g135848135866%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g137969_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g137968_)
                             (##vector-length _g137968_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g137969_ 2)))
                      (error "Context expects 2 values" _g137969_)))
                (let ((_%target135850135868%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g137968_ 0)))
                      (_%tl135852135870%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g137968_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl135852135870%_))
                      (letrec ((_%loop135853135873%_
                                (lambda (_%hd135851135876%_
                                         _%expr135857135878%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd135851135876%_))
                                      (let ((_%e135854135881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd135851135876%_))))
                                        (let ((_%lp-hd135855135884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135854135881%_)))
                                              (_%lp-tl135856135886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135854135881%_))))
                                          (_%loop135853135873%_
                                           _%lp-tl135856135886%_
                                           (cons _%lp-hd135855135884%_
                                                 _%expr135857135878%_))))
                                      (let ((_%expr135858135889%_
                                             (reverse _%expr135857135878%_)))
                                        ((lambda (_%L135892%_)
                                           (let* ((_%g135906135913%_
                                                   (lambda (_%g135907135910%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g135907135910%_))))
                                                  (_%g135905135938%_
                                                   (lambda (_%g135907135916%_)
                                                     ((lambda (_%L135918%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L135827%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L135892%_
                                  _%L135826%_))
                               (let ((__tmp137970
                                      (lambda (_%g135927135931%_
                                               _%g135928135933%_
                                               _%g135929135935%_)
                                        (cons (cons _%g135928135933%_
                                                    (cons _%g135927135931%_
                                                          '()))
                                              _%g135929135935%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp137970
                                  '()
                                  _%L135892%_
                                  _%L135826%_)))
                             _%L135918%_))
                 _%stx135724%_))
              _%g135907135916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g135905135938%_
                                              (map (lambda (_%g135940135942%_)
                                                     (gxc#compile-e__1
                                                      _%self135723%_
                                                      _%g135940135942%_))
                                                   _%L135824%_))))
                                         _%expr135858135889%_))))))
                        (_%loop135853135873%_ _%target135850135868%_ '()))
                      (_%g135847135863%_ _%g135848135866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g135847135863%_
                                                     _%g135848135866%_)))))
                                        (_%g135846135945%_
                                         (map (lambda (_%g135947135949%_)
                                                (gxc#compile-e__1
                                                 _%self135723%_
                                                 _%g135947135949%_))
                                              (let ((__tmp137971
                                                     (lambda (_%g135951135954%_
                                                              _%g135952135956%_)
                                                       (cons _%g135951135954%_
                                                             _%g135952135956%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp137971
                                                 '()
                                                 _%L135825%_)))))))
                                   (__tmp137965
                                    (gxc#xform-let-locals
                                     (let ((__tmp137966
                                            (lambda (_%g135958135961%_
                                                     _%g135959135963%_)
                                              (cons _%g135958135961%_
                                                    _%g135959135963%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp137966
                                        '()
                                        _%L135826%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp137967
                                gxc#current-compile-local-env
                                __tmp137965)))
                           _%tl135737135777%_
                           _%expr135747135819%_
                           _%hd135748135821%_
                           _%hd135733135767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135741135785%_
                                                   _%target135738135780%_
                                                   '()
                                                   '()))
                                                (_%g135726135759%_
                                                 _%g135727135762%_)))))
                                      (_%g135726135759%_ _%g135727135762%_))))
                              (_%g135726135759%_ _%g135727135762%_))))
                      (_%g135726135759%_ _%g135727135762%_)))))
          (_%g135725135966%_ _%stx135724%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings135590%_)
        (letrec ((_%flatten135592%_
                  (lambda (_%maybe-lst135650%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst135650%_))
                        (cons _%maybe-lst135650%_ '())
                        (let _%loop135652%_ ((_%rest135654%_
                                              _%maybe-lst135650%_)
                                             (_%result135655%_ '()))
                          (let* ((_%__stx137859137860%_ _%rest135654%_)
                                 (_%g135659135671%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx137859137860%_)))))
                            (let ((_%__kont137861137862%_
                                   (lambda (_%L135709%_ _%L135710%_)
                                     (_%loop135652%_
                                      _%L135709%_
                                      (let ((__tmp137972
                                             (_%flatten135592%_ _%L135710%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result135655%_
                                         __tmp137972)))))
                                  (_%__kont137863137864%_
                                   (lambda (_%L135683%_)
                                     (cons _%L135683%_ _%result135655%_)))
                                  (_%__kont137865137866%_
                                   (lambda () _%result135655%_)))
                              (let ((_%g135657135696%_
                                     (lambda ()
                                       (let ((_%L135683%_
                                              _%__stx137859137860%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L135683%_))
                                             (_%__kont137863137864%_
                                              _%L135683%_)
                                             (_%__kont137865137866%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx137859137860%_))
                                    (let ((_%e135663135701%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx137859137860%_))))
                                      (let ((_%tl135665135706%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e135663135701%_)))
                                            (_%hd135664135704%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e135663135701%_))))
                                        (_%__kont137861137862%_
                                         _%tl135665135706%_
                                         _%hd135664135704%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g135657135696%_)))))))))))
          (let _%loop135594%_ ((_%rest135596%_
                                (_%flatten135592%_ _%bindings135590%_))
                               (_%locals135597%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest135598135609%_ _%rest135596%_)
                   (_%E135602135613%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest135598135609%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K135605135638%_
                     (lambda (_%rest135635%_ _%id135636%_)
                       (_%loop135594%_
                        _%rest135635%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id135636%_))
                              _%locals135597%_))))
                    (_%K135604135627%_
                     (lambda (_%id135625%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id135625%_))
                             _%locals135597%_)))
                    (_%K135603135618%_ (lambda () _%locals135597%_)))
                (let ((_%try-match135600135632%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest135598135609%_))
                             (let ((_%id135630%_ _%rest135598135609%_))
                               (_%K135604135627%_ _%id135630%_))
                             (_%K135603135618%_)))))
                  (if (pair? _%rest135598135609%_)
                      (let ((_%tl135607135643%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest135598135609%_)))
                            (_%hd135606135641%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest135598135609%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd135606135641%_))
                            (let ((_%id135646%_ _%hd135606135641%_)
                                  (_%rest135648%_ _%tl135607135643%_))
                              (_%K135605135638%_ _%rest135648%_ _%id135646%_))
                            (_%K135603135618%_)))
                      (_%try-match135600135632%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self135542%_ _%stx135543%_)
        (let* ((_%g135545135556%_
                (lambda (_%g135546135553%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135546135553%_))))
               (_%g135544135587%_
                (lambda (_%g135546135559%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135546135559%_))
                      (let ((_%e135549135561%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135546135559%_))))
                        (let ((_%hd135550135564%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135549135561%_)))
                              (_%tl135551135566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135549135561%_))))
                          ((lambda (_%L135569%_ _%L135570%_)
                             (let ((_%rands135585%_
                                    (map (lambda (_%g135580135582%_)
                                           (gxc#compile-e__1
                                            _%self135542%_
                                            _%g135580135582%_))
                                         _%L135569%_)))
                               (gxc#xform-wrap-source
                                (cons _%L135570%_ _%rands135585%_)
                                _%stx135543%_)))
                           _%tl135551135566%_
                           _%hd135550135564%_)))
                      (_%g135545135556%_ _%g135546135559%_)))))
          (_%g135544135587%_ _%stx135543%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self135472%_ _%stx135473%_)
        (let* ((_%g135475135492%_
                (lambda (_%g135476135489%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135476135489%_))))
               (_%g135474135539%_
                (lambda (_%g135476135495%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135476135495%_))
                      (let ((_%e135479135497%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135476135495%_))))
                        (let ((_%hd135480135500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135479135497%_)))
                              (_%tl135481135502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135479135497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135481135502%_))
                              (let ((_%e135482135505%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135481135502%_))))
                                (let ((_%hd135483135508%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135482135505%_)))
                                      (_%tl135484135510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135482135505%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135484135510%_))
                                      (let ((_%e135485135513%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135484135510%_))))
                                        (let ((_%hd135486135516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135485135513%_)))
                                              (_%tl135487135518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135485135513%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135487135518%_))
                                              ((lambda (_%L135521%_
                                                        _%L135522%_)
                                                 (let ((_%expr135537%_
                                                        (gxc#compile-e__1
                                                         _%self135472%_
                                                         _%L135521%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L135522%_
                                                                (cons _%expr135537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135473%_)))
                                               _%hd135486135516%_
                                               _%hd135483135508%_)
                                              (_%g135475135492%_
                                               _%g135476135495%_))))
                                      (_%g135475135492%_ _%g135476135495%_))))
                              (_%g135475135492%_ _%g135476135495%_))))
                      (_%g135475135492%_ _%g135476135495%_)))))
          (_%g135474135539%_ _%stx135473%_))))))
