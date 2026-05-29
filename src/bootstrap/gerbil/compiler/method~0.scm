(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1779967244)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx196857%_)
        (let* ((_%self196859%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e196861%_
                (let ((__tmp197079 (gxc#stx-car-e _%stx196857%_)))
                  (declare (not safe))
                  (method-ref _%self196859%_ __tmp197079))))
          (if _%$e196861%_
              (let ()
                (declare (not safe))
                (let ((_%$e196867%_ (gx#stx-source _%stx196857%_)))
                  (if _%$e196867%_
                      (call-with-parameters__1
                       (lambda () (_%$e196861%_ _%self196859%_ _%stx196857%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e196867%_ '()))
                             (let ((_%$e196874%_
                                    (gxc#current-compile-context)))
                               (if _%$e196874%_ _%$e196874%_ '()))))
                      (_%$e196861%_ _%self196859%_ _%stx196857%_))))
              (let ((__tmp197081 (gxc#stx-car-e _%stx196857%_))
                    (__tmp197080
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx196857%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self196859%_
                       __tmp197081
                       __tmp197080))))))
    (define gxc#compile-e__1
      (lambda (_%self196879%_ _%stx196880%_)
        (let ((_%$e196882%_
               (let ((__tmp197082 (gxc#stx-car-e _%stx196880%_)))
                 (declare (not safe))
                 (method-ref _%self196879%_ __tmp197082))))
          (if _%$e196882%_
              (let ()
                (declare (not safe))
                (let ((_%$e196888%_ (gx#stx-source _%stx196880%_)))
                  (if _%$e196888%_
                      (call-with-parameters__1
                       (lambda () (_%$e196882%_ _%self196879%_ _%stx196880%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e196888%_ '()))
                             (let ((_%$e196895%_
                                    (gxc#current-compile-context)))
                               (if _%$e196895%_ _%$e196895%_ '()))))
                      (_%$e196882%_ _%self196879%_ _%stx196880%_))))
              (let ((__tmp197084 (gxc#stx-car-e _%stx196880%_))
                    (__tmp197083
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx196880%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self196879%_
                       __tmp197084
                       __tmp197083))))))
    (define gxc#compile-e
      (lambda _g197085_
        (let ((_g197086_ (let () (declare (not safe)) (##length _g197085_))))
          (cond ((let () (declare (not safe)) (##fx= _g197086_ 1))
                 (apply gxc#compile-e__0 _g197085_))
                ((let () (declare (not safe)) (##fx= _g197086_ 2))
                 (apply gxc#compile-e__1 _g197085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g197085_))))))
    (define gxc#stx-car-e
      (lambda (_%stx196855%_)
        (let ((__tmp197087
               (car (let () (declare (not safe)) (gx#stx-e _%stx196855%_)))))
          (declare (not safe))
          (gx#stx-e __tmp197087))))
    (define gxc#void-method (lambda (_%self196852%_ _%stx196853%_) '#!void))
    (define gxc#false-method (lambda (_%self196849%_ _%stx196850%_) '#f))
    (define gxc#true-method (lambda (_%self196846%_ _%stx196847%_) '#t))
    (define gxc#identity-method
      (lambda (_%self196843%_ _%stx196844%_) _%stx196844%_))
    (define gxc#::void-expression::t
      (let ((__tmp197088 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp197088
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args196840%_
        (apply make-instance gxc#::void-expression::t _%$args196840%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp197089
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
        (__make-atomic-promise __tmp197089)))
    (define gxc#::void-special-form::t
      (let ((__tmp197090 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp197090
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args196836%_
        (apply make-instance gxc#::void-special-form::t _%$args196836%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp197091
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
        (__make-atomic-promise __tmp197091)))
    (define gxc#::void::t
      (let ((__tmp197092
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp197092 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args196832%_
        (apply make-instance gxc#::void::t _%$args196832%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp197093
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp197093)))
    (define gxc#::false-expression::t
      (let ((__tmp197094 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp197094
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args196828%_
        (apply make-instance gxc#::false-expression::t _%$args196828%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp197095
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
        (__make-atomic-promise __tmp197095)))
    (define gxc#::false-special-form::t
      (let ((__tmp197096 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp197096
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args196824%_
        (apply make-instance gxc#::false-special-form::t _%$args196824%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp197097
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
        (__make-atomic-promise __tmp197097)))
    (define gxc#::false::t
      (let ((__tmp197098
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp197098 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args196820%_
        (apply make-instance gxc#::false::t _%$args196820%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp197099
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp197099)))
    (define gxc#::identity-expression::t
      (let ((__tmp197100 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp197100
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args196816%_
        (apply make-instance gxc#::identity-expression::t _%$args196816%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp197101
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
        (__make-atomic-promise __tmp197101)))
    (define gxc#::identity-special-form::t
      (let ((__tmp197102 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp197102
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args196812%_
        (apply make-instance gxc#::identity-special-form::t _%$args196812%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp197103
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
        (__make-atomic-promise __tmp197103)))
    (define gxc#::identity::t
      (let ((__tmp197104
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp197104
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args196808%_
        (apply make-instance gxc#::identity::t _%$args196808%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp197105
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp197105)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp197106 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp197106
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args196804%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args196804%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp197107
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
        (__make-atomic-promise __tmp197107)))
    (define gxc#::basic-xform::t
      (let ((__tmp197108
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp197108
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args196800%_
        (apply make-instance gxc#::basic-xform::t _%$args196800%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp197109
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
        (__make-atomic-promise __tmp197109)))
    (define gxc#apply-begin%
      (lambda (_%self196756%_ _%stx196757%_)
        (let* ((_%g196759196769%_
                (lambda (_%g196760196766%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196760196766%_))))
               (_%g196758196796%_
                (lambda (_%g196760196772%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196760196772%_))
                      (let ((_%e196762196774%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196760196772%_))))
                        (let ((_%hd196763196777%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196762196774%_)))
                              (_%tl196764196779%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196762196774%_))))
                          (for-each
                           (lambda (_%g196791196793%_)
                             (gxc#compile-e__1
                              _%self196756%_
                              _%g196791196793%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl196764196779%_)))))
                      (_%g196759196769%_ _%g196760196772%_)))))
          (_%g196758196796%_ _%stx196757%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self196717%_ _%stx196718%_)
        (let* ((_%g196720196730%_
                (lambda (_%g196721196727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196721196727%_))))
               (_%g196719196753%_
                (lambda (_%g196721196733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196721196733%_))
                      (let ((_%e196723196735%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196721196733%_))))
                        (let ((_%hd196724196738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196723196735%_)))
                              (_%tl196725196740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196723196735%_))))
                          (gxc#compile-e__1
                           _%self196717%_
                           (last _%tl196725196740%_))))
                      (_%g196720196730%_ _%g196721196733%_)))))
          (_%g196719196753%_ _%stx196718%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self196713%_ _%stx196714%_)
        (let ((__tmp197112
               (lambda () (gxc#apply-begin% _%self196713%_ _%stx196714%_)))
              (__tmp197110
               (let ((__tmp197111
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp197111 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp197112
           gx#current-expander-phi
           __tmp197110))))
    (define gxc#apply-module%
      (lambda (_%self196652%_ _%stx196653%_)
        (let* ((_%g196655196669%_
                (lambda (_%g196656196666%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196656196666%_))))
               (_%g196654196710%_
                (lambda (_%g196656196672%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196656196672%_))
                      (let ((_%e196659196674%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196656196672%_))))
                        (let ((_%hd196660196677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196659196674%_)))
                              (_%tl196661196679%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196659196674%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196661196679%_))
                              (let ((_%e196662196682%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196661196679%_))))
                                (let ((_%hd196663196685%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196662196682%_)))
                                      (_%tl196664196687%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196662196682%_))))
                                  (let* ((_%ctx196704%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%hd196663196685%_)))
                                         (_%ctx-stx196706%_
                                          (##structure-ref
                                           _%ctx196704%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp197113
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self196652%_
                                             _%ctx-stx196706%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp197113
                                     gx#current-expander-context
                                     _%ctx196704%_))))
                              (_%g196655196669%_ _%g196656196672%_))))
                      (_%g196655196669%_ _%g196656196672%_)))))
          (_%g196654196710%_ _%stx196653%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self196584%_ _%stx196585%_)
        (let* ((_%g196587196604%_
                (lambda (_%g196588196601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196588196601%_))))
               (_%g196586196649%_
                (lambda (_%g196588196607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196588196607%_))
                      (let ((_%e196591196609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196588196607%_))))
                        (let ((_%hd196592196612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196591196609%_)))
                              (_%tl196593196614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196591196609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196593196614%_))
                              (let ((_%e196594196617%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196593196614%_))))
                                (let ((_%hd196595196620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196594196617%_)))
                                      (_%tl196596196622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196594196617%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196596196622%_))
                                      (let ((_%e196597196625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196596196622%_))))
                                        (let ((_%hd196598196628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196597196625%_)))
                                              (_%tl196599196630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196597196625%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196599196630%_))
                                              (gxc#compile-e__1
                                               _%self196584%_
                                               _%hd196598196628%_)
                                              (_%g196587196604%_
                                               _%g196588196607%_))))
                                      (_%g196587196604%_ _%g196588196607%_))))
                              (_%g196587196604%_ _%g196588196607%_))))
                      (_%g196587196604%_ _%g196588196607%_)))))
          (_%g196586196649%_ _%stx196585%_))))
    (define gxc#apply-define-values%
      (lambda (_%self196516%_ _%stx196517%_)
        (let* ((_%g196519196536%_
                (lambda (_%g196520196533%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196520196533%_))))
               (_%g196518196581%_
                (lambda (_%g196520196539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196520196539%_))
                      (let ((_%e196523196541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196520196539%_))))
                        (let ((_%hd196524196544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196523196541%_)))
                              (_%tl196525196546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196523196541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196525196546%_))
                              (let ((_%e196526196549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196525196546%_))))
                                (let ((_%hd196527196552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196526196549%_)))
                                      (_%tl196528196554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196526196549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196528196554%_))
                                      (let ((_%e196529196557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196528196554%_))))
                                        (let ((_%hd196530196560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196529196557%_)))
                                              (_%tl196531196562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196529196557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196531196562%_))
                                              (gxc#compile-e__1
                                               _%self196516%_
                                               _%hd196530196560%_)
                                              (_%g196519196536%_
                                               _%g196520196539%_))))
                                      (_%g196519196536%_ _%g196520196539%_))))
                              (_%g196519196536%_ _%g196520196539%_))))
                      (_%g196519196536%_ _%g196520196539%_)))))
          (_%g196518196581%_ _%stx196517%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self196447%_ _%stx196448%_)
        (let* ((_%g196450196467%_
                (lambda (_%g196451196464%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196451196464%_))))
               (_%g196449196513%_
                (lambda (_%g196451196470%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196451196470%_))
                      (let ((_%e196454196472%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196451196470%_))))
                        (let ((_%hd196455196475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196454196472%_)))
                              (_%tl196456196477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196454196472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196456196477%_))
                              (let ((_%e196457196480%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196456196477%_))))
                                (let ((_%hd196458196483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196457196480%_)))
                                      (_%tl196459196485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196457196480%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196459196485%_))
                                      (let ((_%e196460196488%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196459196485%_))))
                                        (let ((_%hd196461196491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196460196488%_)))
                                              (_%tl196462196493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196460196488%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196462196493%_))
                                              (let ((__tmp197116
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self196447%_
                                                        _%hd196461196491%_)))
                                                    (__tmp197114
                                                     (let ((__tmp197115
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp197115
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp197116
                                                 gx#current-expander-phi
                                                 __tmp197114))
                                              (_%g196450196467%_
                                               _%g196451196470%_))))
                                      (_%g196450196467%_ _%g196451196470%_))))
                              (_%g196450196467%_ _%g196451196470%_))))
                      (_%g196450196467%_ _%g196451196470%_)))))
          (_%g196449196513%_ _%stx196448%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self196379%_ _%stx196380%_)
        (let* ((_%g196382196399%_
                (lambda (_%g196383196396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196383196396%_))))
               (_%g196381196444%_
                (lambda (_%g196383196402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196383196402%_))
                      (let ((_%e196386196404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196383196402%_))))
                        (let ((_%hd196387196407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196386196404%_)))
                              (_%tl196388196409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196386196404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196388196409%_))
                              (let ((_%e196389196412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196388196409%_))))
                                (let ((_%hd196390196415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196389196412%_)))
                                      (_%tl196391196417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196389196412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196391196417%_))
                                      (let ((_%e196392196420%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196391196417%_))))
                                        (let ((_%hd196393196423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196392196420%_)))
                                              (_%tl196394196425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196392196420%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196394196425%_))
                                              (gxc#compile-e__1
                                               _%self196379%_
                                               _%hd196393196423%_)
                                              (_%g196382196399%_
                                               _%g196383196402%_))))
                                      (_%g196382196399%_ _%g196383196402%_))))
                              (_%g196382196399%_ _%g196383196402%_))))
                      (_%g196382196399%_ _%g196383196402%_)))))
          (_%g196381196444%_ _%stx196380%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self196265%_ _%stx196266%_)
        (let* ((_%g196268196296%_
                (lambda (_%g196269196293%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196269196293%_))))
               (_%g196267196376%_
                (lambda (_%g196269196299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196269196299%_))
                      (let ((_%e196272196301%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196269196299%_))))
                        (let ((_%hd196273196304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196272196301%_)))
                              (_%tl196274196306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196272196301%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196274196306%_))
                              (let ((_g197117_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196274196306%_
                                        '0))))
                                (begin
                                  (let ((_g197118_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g197117_)
                                               (##values-length _g197117_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g197118_ 2)))
                                        (error "Context expects 2 values"
                                               _g197118_)))
                                  (let ((_%target196275196309%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g197117_ 0)))
                                        (_%tl196277196311%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g197117_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196277196311%_))
                                        (letrec ((_%loop196278196314%_
                                                  (lambda (_%hd196276196317%_
                                                           _%body196282196319%_
                                                           _%hd196283196320%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196276196317%_))
                                                        (let ((_%e196279196322%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196276196317%_))))
                  (let ((_%lp-hd196280196325%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196279196322%_)))
                        (_%lp-tl196281196327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196279196322%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196280196325%_))
                        (let ((_%e196286196330%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd196280196325%_))))
                          (let ((_%hd196287196333%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196286196330%_)))
                                (_%tl196288196335%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196286196330%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196288196335%_))
                                (let ((_%e196289196338%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196288196335%_))))
                                  (let ((_%hd196290196341%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196289196338%_)))
                                        (_%tl196291196343%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196289196338%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196291196343%_))
                                        (_%loop196278196314%_
                                         _%lp-tl196281196327%_
                                         (cons _%hd196290196341%_
                                               _%body196282196319%_)
                                         (cons _%hd196287196333%_
                                               _%hd196283196320%_))
                                        (_%g196268196296%_
                                         _%g196269196299%_))))
                                (_%g196268196296%_ _%g196269196299%_))))
                        (_%g196268196296%_ _%g196269196299%_))))
                (let ((_%body196284196346%_ (reverse _%body196282196319%_))
                      (_%hd196285196347%_ (reverse _%hd196283196320%_)))
                  (for-each
                   (lambda (_%g196364196366%_)
                     (gxc#compile-e__1 _%self196265%_ _%g196364196366%_))
                   (let ((__tmp197119
                          (lambda (_%g196368196371%_ _%g196369196373%_)
                            (cons _%g196368196371%_ _%g196369196373%_))))
                     (declare (not safe))
                     (foldr__0 __tmp197119 '() _%body196284196346%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196278196314%_
                                           _%target196275196309%_
                                           '()
                                           '()))
                                        (_%g196268196296%_
                                         _%g196269196299%_)))))
                              (_%g196268196296%_ _%g196269196299%_))))
                      (_%g196268196296%_ _%g196269196299%_)))))
          (_%g196267196376%_ _%stx196266%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self196122%_ _%stx196123%_)
        (let* ((_%g196125196160%_
                (lambda (_%g196126196157%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196126196157%_))))
               (_%g196124196262%_
                (lambda (_%g196126196163%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196126196163%_))
                      (let ((_%e196130196165%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196126196163%_))))
                        (let ((_%hd196131196168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196130196165%_)))
                              (_%tl196132196170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196130196165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196132196170%_))
                              (let ((_%e196133196173%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196132196170%_))))
                                (let ((_%hd196134196176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196133196173%_)))
                                      (_%tl196135196178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196133196173%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd196134196176%_))
                                      (let ((_g197120_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd196134196176%_
                                                '0))))
                                        (begin
                                          (let ((_g197121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g197120_)
                                                       (##values-length
                                                        _g197120_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g197121_ 2)))
                                                (error "Context expects 2 values"
                                                       _g197121_)))
                                          (let ((_%target196136196181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g197120_ 0)))
                                                (_%tl196138196183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g197120_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196138196183%_))
                                                (letrec ((_%loop196139196186%_
                                                          (lambda (_%hd196137196189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr196143196191%_
                           _%hd196144196192%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196137196189%_))
                        (let ((_%e196140196194%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd196137196189%_))))
                          (let ((_%lp-hd196141196197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196140196194%_)))
                                (_%lp-tl196142196199%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196140196194%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196141196197%_))
                                (let ((_%e196147196202%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd196141196197%_))))
                                  (let ((_%hd196148196205%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196147196202%_)))
                                        (_%tl196149196207%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196147196202%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196149196207%_))
                                        (let ((_%e196150196210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl196149196207%_))))
                                          (let ((_%hd196151196213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196150196210%_)))
                                                (_%tl196152196215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196150196210%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196152196215%_))
                                                (_%loop196139196186%_
                                                 _%lp-tl196142196199%_
                                                 (cons _%hd196151196213%_
                                                       _%expr196143196191%_)
                                                 (cons _%hd196148196205%_
                                                       _%hd196144196192%_))
                                                (_%g196125196160%_
                                                 _%g196126196163%_))))
                                        (_%g196125196160%_
                                         _%g196126196163%_))))
                                (_%g196125196160%_ _%g196126196163%_))))
                        (let ((_%expr196145196218%_
                               (reverse _%expr196143196191%_))
                              (_%hd196146196219%_
                               (reverse _%hd196144196192%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196135196178%_))
                              (let ((_%e196153196221%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196135196178%_))))
                                (let ((_%hd196154196224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196153196221%_)))
                                      (_%tl196155196226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196153196221%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196155196226%_))
                                      (for-each
                                       (lambda (_%g196250196252%_)
                                         (gxc#compile-e__1
                                          _%self196122%_
                                          _%g196250196252%_))
                                       (let ((__tmp197123
                                              (lambda (_%g196254196257%_
                                                       _%g196255196259%_)
                                                (cons _%g196254196257%_
                                                      _%g196255196259%_)))
                                             (__tmp197122
                                              (cons _%hd196154196224%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp197123
                                          __tmp197122
                                          _%expr196145196218%_)))
                                      (_%g196125196160%_ _%g196126196163%_))))
                              (_%g196125196160%_ _%g196126196163%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196139196186%_
                                                   _%target196136196181%_
                                                   '()
                                                   '()))
                                                (_%g196125196160%_
                                                 _%g196126196163%_)))))
                                      (_%g196125196160%_ _%g196126196163%_))))
                              (_%g196125196160%_ _%g196126196163%_))))
                      (_%g196125196160%_ _%g196126196163%_)))))
          (_%g196124196262%_ _%stx196123%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self196067%_ _%stx196068%_)
        (let* ((_%g196070196084%_
                (lambda (_%g196071196081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196071196081%_))))
               (_%g196069196119%_
                (lambda (_%g196071196087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196071196087%_))
                      (let ((_%e196074196089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196071196087%_))))
                        (let ((_%hd196075196092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196074196089%_)))
                              (_%tl196076196094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196074196089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196076196094%_))
                              (let ((_%e196077196097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196076196094%_))))
                                (let ((_%hd196078196100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196077196097%_)))
                                      (_%tl196079196102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196077196097%_))))
                                  (gxc#compile-e__1
                                   _%self196067%_
                                   (last _%tl196079196102%_))))
                              (_%g196070196084%_ _%g196071196087%_))))
                      (_%g196070196084%_ _%g196071196087%_)))))
          (_%g196069196119%_ _%stx196068%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self195999%_ _%stx196000%_)
        (let* ((_%g196002196019%_
                (lambda (_%g196003196016%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196003196016%_))))
               (_%g196001196064%_
                (lambda (_%g196003196022%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196003196022%_))
                      (let ((_%e196006196024%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196003196022%_))))
                        (let ((_%hd196007196027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196006196024%_)))
                              (_%tl196008196029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196006196024%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196008196029%_))
                              (let ((_%e196009196032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196008196029%_))))
                                (let ((_%hd196010196035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196009196032%_)))
                                      (_%tl196011196037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196009196032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196011196037%_))
                                      (let ((_%e196012196040%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196011196037%_))))
                                        (let ((_%hd196013196043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196012196040%_)))
                                              (_%tl196014196045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196012196040%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196014196045%_))
                                              (gxc#compile-e__1
                                               _%self195999%_
                                               _%hd196013196043%_)
                                              (_%g196002196019%_
                                               _%g196003196022%_))))
                                      (_%g196002196019%_ _%g196003196022%_))))
                              (_%g196002196019%_ _%g196003196022%_))))
                      (_%g196002196019%_ _%g196003196022%_)))))
          (_%g196001196064%_ _%stx196000%_))))
    (define gxc#apply-operands
      (lambda (_%self195914%_ _%stx195915%_)
        (let* ((_%g195917195936%_
                (lambda (_%g195918195933%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195918195933%_))))
               (_%g195916195996%_
                (lambda (_%g195918195939%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195918195939%_))
                      (let ((_%e195920195941%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195918195939%_))))
                        (let ((_%hd195921195944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195920195941%_)))
                              (_%tl195922195946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195920195941%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195922195946%_))
                              (let ((_g197124_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195922195946%_
                                        '0))))
                                (begin
                                  (let ((_g197125_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g197124_)
                                               (##values-length _g197124_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g197125_ 2)))
                                        (error "Context expects 2 values"
                                               _g197125_)))
                                  (let ((_%target195923195949%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g197124_ 0)))
                                        (_%tl195925195951%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g197124_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195925195951%_))
                                        (letrec ((_%loop195926195954%_
                                                  (lambda (_%hd195924195957%_
                                                           _%rands195930195959%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195924195957%_))
                                                        (let ((_%e195927195961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd195924195957%_))))
                  (let ((_%lp-hd195928195964%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195927195961%_)))
                        (_%lp-tl195929195966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195927195961%_))))
                    (_%loop195926195954%_
                     _%lp-tl195929195966%_
                     (cons _%lp-hd195928195964%_ _%rands195930195959%_))))
                (let ((_%rands195931195969%_ (reverse _%rands195930195959%_)))
                  (for-each
                   (lambda (_%g195984195986%_)
                     (gxc#compile-e__1 _%self195914%_ _%g195984195986%_))
                   (let ((__tmp197126
                          (lambda (_%g195988195991%_ _%g195989195993%_)
                            (cons _%g195988195991%_ _%g195989195993%_))))
                     (declare (not safe))
                     (foldr__0 __tmp197126 '() _%rands195931195969%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195926195954%_
                                           _%target195923195949%_
                                           '()))
                                        (_%g195917195936%_
                                         _%g195918195939%_)))))
                              (_%g195917195936%_ _%g195918195939%_))))
                      (_%g195917195936%_ _%g195918195939%_)))))
          (_%g195916195996%_ _%stx195915%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx195911%_ _%src-stx195912%_)
        (let ((__tmp197127
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx195912%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx195911%_ __tmp197127))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx195907%_ _%src-stx195908%_ _%ctx195909%_)
        (gxc#compile-e__1
         _%ctx195909%_
         (gxc#xform-wrap-source _%stx195907%_ _%src-stx195908%_))))
    (define gxc#xform-begin%
      (lambda (_%self195862%_ _%stx195863%_)
        (let* ((_%g195865195875%_
                (lambda (_%g195866195872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195866195872%_))))
               (_%g195864195904%_
                (lambda (_%g195866195878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195866195878%_))
                      (let ((_%e195868195880%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195866195878%_))))
                        (let ((_%hd195869195883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195868195880%_)))
                              (_%tl195870195885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195868195880%_))))
                          (let ((_%forms195902%_
                                 (map (lambda (_%g195897195899%_)
                                        (gxc#compile-e__1
                                         _%self195862%_
                                         _%g195897195899%_))
                                      _%tl195870195885%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms195902%_)
                             _%stx195863%_))))
                      (_%g195865195875%_ _%g195866195878%_)))))
          (_%g195864195904%_ _%stx195863%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self195816%_ _%stx195817%_)
        (let* ((_%g195819195829%_
                (lambda (_%g195820195826%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195820195826%_))))
               (_%g195818195859%_
                (lambda (_%g195820195832%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195820195832%_))
                      (let ((_%e195822195834%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195820195832%_))))
                        (let ((_%hd195823195837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195822195834%_)))
                              (_%tl195824195839%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195822195834%_))))
                          (let ((__tmp197130
                                 (lambda ()
                                   (let ((_%forms195857%_
                                          (map (lambda (_%g195852195854%_)
                                                 (gxc#compile-e__1
                                                  _%self195816%_
                                                  _%g195852195854%_))
                                               _%tl195824195839%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms195857%_)
                                      _%stx195817%_))))
                                (__tmp197128
                                 (let ((__tmp197129
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp197129 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp197130
                             gx#current-expander-phi
                             __tmp197128))))
                      (_%g195819195829%_ _%g195820195832%_)))))
          (_%g195818195859%_ _%stx195817%_))))
    (define gxc#xform-module%
      (lambda (_%self195753%_ _%stx195754%_)
        (let* ((_%g195756195770%_
                (lambda (_%g195757195767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195757195767%_))))
               (_%g195755195813%_
                (lambda (_%g195757195773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195757195773%_))
                      (let ((_%e195760195775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195757195773%_))))
                        (let ((_%hd195761195778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195760195775%_)))
                              (_%tl195762195780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195760195775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195762195780%_))
                              (let ((_%e195763195783%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195762195780%_))))
                                (let ((_%hd195764195786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195763195783%_)))
                                      (_%tl195765195788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195763195783%_))))
                                  (let* ((_%ctx195805%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%hd195764195786%_)))
                                         (_%code195807%_
                                          (##structure-ref
                                           _%ctx195805%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code195810%_
                                          (let ((__tmp197131
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self195753%_
                                                    _%code195807%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp197131
                                             gx#current-expander-context
                                             _%ctx195805%_))))
                                    (##structure-set!
                                     _%ctx195805%_
                                     _%code195810%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%hd195764195786%_
                                                 (cons _%code195810%_ '())))
                                     _%stx195754%_))))
                              (_%g195756195770%_ _%g195757195773%_))))
                      (_%g195756195770%_ _%g195757195773%_)))))
          (_%g195755195813%_ _%stx195754%_))))
    (define gxc#xform-define-values%
      (lambda (_%self195683%_ _%stx195684%_)
        (let* ((_%g195686195703%_
                (lambda (_%g195687195700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195687195700%_))))
               (_%g195685195750%_
                (lambda (_%g195687195706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195687195706%_))
                      (let ((_%e195690195708%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195687195706%_))))
                        (let ((_%hd195691195711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195690195708%_)))
                              (_%tl195692195713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195690195708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195692195713%_))
                              (let ((_%e195693195716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195692195713%_))))
                                (let ((_%hd195694195719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195693195716%_)))
                                      (_%tl195695195721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195693195716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195695195721%_))
                                      (let ((_%e195696195724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195695195721%_))))
                                        (let ((_%hd195697195727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195696195724%_)))
                                              (_%tl195698195729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195696195724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195698195729%_))
                                              (let ((_%expr195748%_
                                                     (gxc#compile-e__1
                                                      _%self195683%_
                                                      _%hd195697195727%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%hd195694195719%_
                                                             (cons _%expr195748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx195684%_))
                                              (_%g195686195703%_
                                               _%g195687195706%_))))
                                      (_%g195686195703%_ _%g195687195706%_))))
                              (_%g195686195703%_ _%g195687195706%_))))
                      (_%g195686195703%_ _%g195687195706%_)))))
          (_%g195685195750%_ _%stx195684%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self195612%_ _%stx195613%_)
        (let* ((_%g195615195632%_
                (lambda (_%g195616195629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195616195629%_))))
               (_%g195614195680%_
                (lambda (_%g195616195635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195616195635%_))
                      (let ((_%e195619195637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195616195635%_))))
                        (let ((_%hd195620195640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195619195637%_)))
                              (_%tl195621195642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195619195637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195621195642%_))
                              (let ((_%e195622195645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195621195642%_))))
                                (let ((_%hd195623195648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195622195645%_)))
                                      (_%tl195624195650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195622195645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195624195650%_))
                                      (let ((_%e195625195653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195624195650%_))))
                                        (let ((_%hd195626195656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195625195653%_)))
                                              (_%tl195627195658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195625195653%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195627195658%_))
                                              (let ((__tmp197134
                                                     (lambda ()
                                                       (let ((_%expr195678%_
                                                              (gxc#compile-e__1
                                                               _%self195612%_
                                                               _%hd195626195656%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%hd195623195648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr195678%_ '())))
                  _%stx195613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp197132
                                                     (let ((__tmp197133
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp197133
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp197134
                                                 gx#current-expander-phi
                                                 __tmp197132))
                                              (_%g195615195632%_
                                               _%g195616195635%_))))
                                      (_%g195615195632%_ _%g195616195635%_))))
                              (_%g195615195632%_ _%g195616195635%_))))
                      (_%g195615195632%_ _%g195616195635%_)))))
          (_%g195614195680%_ _%stx195613%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self195542%_ _%stx195543%_)
        (let* ((_%g195545195562%_
                (lambda (_%g195546195559%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195546195559%_))))
               (_%g195544195609%_
                (lambda (_%g195546195565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195546195565%_))
                      (let ((_%e195549195567%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195546195565%_))))
                        (let ((_%hd195550195570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195549195567%_)))
                              (_%tl195551195572%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195549195567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195551195572%_))
                              (let ((_%e195552195575%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195551195572%_))))
                                (let ((_%hd195553195578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195552195575%_)))
                                      (_%tl195554195580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195552195575%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195554195580%_))
                                      (let ((_%e195555195583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195554195580%_))))
                                        (let ((_%hd195556195586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195555195583%_)))
                                              (_%tl195557195588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195555195583%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195557195588%_))
                                              (let ((_%expr195607%_
                                                     (gxc#compile-e__1
                                                      _%self195542%_
                                                      _%hd195556195586%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%hd195553195578%_
                                                             (cons _%expr195607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx195543%_))
                                              (_%g195545195562%_
                                               _%g195546195565%_))))
                                      (_%g195545195562%_ _%g195546195565%_))))
                              (_%g195545195562%_ _%g195546195565%_))))
                      (_%g195545195562%_ _%g195546195565%_)))))
          (_%g195544195609%_ _%stx195543%_))))
    (define gxc#xform-lambda%
      (lambda (_%self195480%_ _%stx195481%_)
        (let* ((_%g195483195497%_
                (lambda (_%g195484195494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195484195494%_))))
               (_%g195482195539%_
                (lambda (_%g195484195500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195484195500%_))
                      (let ((_%e195487195502%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195484195500%_))))
                        (let ((_%hd195488195505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195487195502%_)))
                              (_%tl195489195507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195487195502%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195489195507%_))
                              (let ((_%e195490195510%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195489195507%_))))
                                (let ((_%hd195491195513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195490195510%_)))
                                      (_%tl195492195515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195490195510%_))))
                                  (let ((__tmp197136
                                         (lambda ()
                                           (let ((_%body195537%_
                                                  (map (lambda (_%g195532195534%_)
                                                         (gxc#compile-e__1
                                                          _%self195480%_
                                                          _%g195532195534%_))
                                                       _%tl195492195515%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%hd195491195513%_
                                                          _%body195537%_))
                                              _%stx195481%_))))
                                        (__tmp197135
                                         (gxc#xform-let-locals
                                          _%hd195491195513%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp197136
                                     gxc#current-compile-local-env
                                     __tmp197135))))
                              (_%g195483195497%_ _%g195484195500%_))))
                      (_%g195483195497%_ _%g195484195500%_)))))
          (_%g195482195539%_ _%stx195481%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self195388%_ _%stx195389%_)
        (letrec ((_%clause-e195391%_
                  (lambda (_%clause195432%_)
                    (let* ((_%g195434195445%_
                            (lambda (_%g195435195442%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g195435195442%_))))
                           (_%g195433195477%_
                            (lambda (_%g195435195448%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g195435195448%_))
                                  (let ((_%e195438195450%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g195435195448%_))))
                                    (let ((_%hd195439195453%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195438195450%_)))
                                          (_%tl195440195455%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195438195450%_))))
                                      (let ((__tmp197138
                                             (lambda ()
                                               (let ((_%body195475%_
                                                      (map (lambda (_%g195470195472%_)
                                                             (gxc#compile-e__1
                                                              _%self195388%_
                                                              _%g195470195472%_))
                                                           _%tl195440195455%_)))
                                                 (cons _%hd195439195453%_
                                                       _%body195475%_))))
                                            (__tmp197137
                                             (gxc#xform-let-locals
                                              _%hd195439195453%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp197138
                                         gxc#current-compile-local-env
                                         __tmp197137))))
                                  (_%g195434195445%_ _%g195435195448%_)))))
                      (_%g195433195477%_ _%clause195432%_)))))
          (let* ((_%g195393195403%_
                  (lambda (_%g195394195400%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195394195400%_))))
                 (_%g195392195429%_
                  (lambda (_%g195394195406%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195394195406%_))
                        (let ((_%e195396195408%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195394195406%_))))
                          (let ((_%hd195397195411%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195396195408%_)))
                                (_%tl195398195413%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195396195408%_))))
                            (let ((_%clauses195427%_
                                   (map _%clause-e195391%_
                                        _%tl195398195413%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses195427%_)
                               _%stx195389%_))))
                        (_%g195393195403%_ _%g195394195406%_)))))
            (_%g195392195429%_ _%stx195389%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self195148%_ _%stx195149%_)
        (let* ((_%g195151195184%_
                (lambda (_%g195152195181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195152195181%_))))
               (_%g195150195385%_
                (lambda (_%g195152195187%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195152195187%_))
                      (let ((_%e195157195189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195152195187%_))))
                        (let ((_%hd195158195192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195157195189%_)))
                              (_%tl195159195194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195157195189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195159195194%_))
                              (let ((_%e195160195197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195159195194%_))))
                                (let ((_%hd195161195200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195160195197%_)))
                                      (_%tl195162195202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195160195197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd195161195200%_))
                                      (let ((_g197139_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd195161195200%_
                                                '0))))
                                        (begin
                                          (let ((_g197140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g197139_)
                                                       (##values-length
                                                        _g197139_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g197140_ 2)))
                                                (error "Context expects 2 values"
                                                       _g197140_)))
                                          (let ((_%target195163195205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g197139_ 0)))
                                                (_%tl195165195207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g197139_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195165195207%_))
                                                (letrec ((_%loop195166195210%_
                                                          (lambda (_%hd195164195213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr195170195215%_
                           _%hd195171195216%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195164195213%_))
                        (let ((_%e195167195218%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd195164195213%_))))
                          (let ((_%lp-hd195168195221%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195167195218%_)))
                                (_%lp-tl195169195223%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195167195218%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195168195221%_))
                                (let ((_%e195174195226%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd195168195221%_))))
                                  (let ((_%hd195175195229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195174195226%_)))
                                        (_%tl195176195231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195174195226%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195176195231%_))
                                        (let ((_%e195177195234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195176195231%_))))
                                          (let ((_%hd195178195237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195177195234%_)))
                                                (_%tl195179195239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195177195234%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195179195239%_))
                                                (_%loop195166195210%_
                                                 _%lp-tl195169195223%_
                                                 (cons _%hd195178195237%_
                                                       _%expr195170195215%_)
                                                 (cons _%hd195175195229%_
                                                       _%hd195171195216%_))
                                                (_%g195151195184%_
                                                 _%g195152195187%_))))
                                        (_%g195151195184%_
                                         _%g195152195187%_))))
                                (_%g195151195184%_ _%g195152195187%_))))
                        (let ((_%expr195172195242%_
                               (reverse _%expr195170195215%_))
                              (_%hd195173195243%_
                               (reverse _%hd195171195216%_)))
                          (let* ((_%g195267195283%_
                                  (lambda (_%g195268195280%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g195268195280%_))))
                                 (_%g195266195371%_
                                  (lambda (_%g195268195286%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%g195268195286%_))
                                        (let ((_g197141_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%g195268195286%_
                                                  '0))))
                                          (begin
                                            (let ((_g197142_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g197141_)
                                                         (##values-length
                                                          _g197141_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g197142_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g197142_)))
                                            (let ((_%target195270195288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g197141_
                                                      0)))
                                                  (_%tl195272195290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g197141_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl195272195290%_))
                                                  (letrec ((_%loop195273195293%_
                                                            (lambda (_%hd195271195296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr195277195298%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd195271195296%_))
                          (let ((_%e195274195300%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%hd195271195296%_))))
                            (let ((_%lp-hd195275195303%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195274195300%_)))
                                  (_%lp-tl195276195305%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195274195300%_))))
                              (_%loop195273195293%_
                               _%lp-tl195276195305%_
                               (cons _%lp-hd195275195303%_
                                     _%expr195277195298%_))))
                          (let ((_%expr195278195308%_
                                 (reverse _%expr195277195298%_)))
                            (let ((__tmp197145
                                   (lambda ()
                                     (let* ((_%g195324195331%_
                                             (lambda (_%g195325195328%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g195325195328%_))))
                                            (_%g195323195357%_
                                             (lambda (_%g195325195334%_)
                                               (gxc#xform-wrap-source
                                                (cons _%hd195158195192%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%expr195278195308%_
                         _%hd195173195243%_))
                      (let ((__tmp197146
                             (lambda (_%g195346195350%_
                                      _%g195347195352%_
                                      _%g195348195354%_)
                               (cons (cons _%g195347195352%_
                                           (cons _%g195346195350%_ '()))
                                     _%g195348195354%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp197146
                         '()
                         _%expr195278195308%_
                         _%hd195173195243%_)))
                    _%g195325195334%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx195149%_))))
                                       (_%g195323195357%_
                                        (map (lambda (_%g195359195361%_)
                                               (gxc#compile-e__1
                                                _%self195148%_
                                                _%g195359195361%_))
                                             _%tl195162195202%_)))))
                                  (__tmp197143
                                   (gxc#xform-let-locals
                                    (let ((__tmp197144
                                           (lambda (_%g195363195366%_
                                                    _%g195364195368%_)
                                             (cons _%g195363195366%_
                                                   _%g195364195368%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp197144
                                       '()
                                       _%hd195173195243%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp197145
                               gxc#current-compile-local-env
                               __tmp197143)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop195273195293%_
                                                     _%target195270195288%_
                                                     '()))
                                                  (_%g195267195283%_
                                                   _%g195268195286%_)))))
                                        (_%g195267195283%_
                                         _%g195268195286%_)))))
                            (_%g195266195371%_
                             (map (lambda (_%g195373195375%_)
                                    (gxc#compile-e__1
                                     _%self195148%_
                                     _%g195373195375%_))
                                  (let ((__tmp197147
                                         (lambda (_%g195377195380%_
                                                  _%g195378195382%_)
                                           (cons _%g195377195380%_
                                                 _%g195378195382%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp197147
                                     '()
                                     _%expr195172195242%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195166195210%_
                                                   _%target195163195205%_
                                                   '()
                                                   '()))
                                                (_%g195151195184%_
                                                 _%g195152195187%_)))))
                                      (_%g195151195184%_ _%g195152195187%_))))
                              (_%g195151195184%_ _%g195152195187%_))))
                      (_%g195151195184%_ _%g195152195187%_)))))
          (_%g195150195385%_ _%stx195149%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self194908%_ _%stx194909%_)
        (let* ((_%g194911194944%_
                (lambda (_%g194912194941%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194912194941%_))))
               (_%g194910195145%_
                (lambda (_%g194912194947%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194912194947%_))
                      (let ((_%e194917194949%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194912194947%_))))
                        (let ((_%hd194918194952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194917194949%_)))
                              (_%tl194919194954%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194917194949%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194919194954%_))
                              (let ((_%e194920194957%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194919194954%_))))
                                (let ((_%hd194921194960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194920194957%_)))
                                      (_%tl194922194962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194920194957%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194921194960%_))
                                      (let ((_g197148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194921194960%_
                                                '0))))
                                        (begin
                                          (let ((_g197149_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g197148_)
                                                       (##values-length
                                                        _g197148_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g197149_ 2)))
                                                (error "Context expects 2 values"
                                                       _g197149_)))
                                          (let ((_%target194923194965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g197148_ 0)))
                                                (_%tl194925194967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g197148_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194925194967%_))
                                                (letrec ((_%loop194926194970%_
                                                          (lambda (_%hd194924194973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194930194975%_
                           _%hd194931194976%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194924194973%_))
                        (let ((_%e194927194978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194924194973%_))))
                          (let ((_%lp-hd194928194981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194927194978%_)))
                                (_%lp-tl194929194983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194927194978%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194928194981%_))
                                (let ((_%e194934194986%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194928194981%_))))
                                  (let ((_%hd194935194989%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194934194986%_)))
                                        (_%tl194936194991%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194934194986%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194936194991%_))
                                        (let ((_%e194937194994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194936194991%_))))
                                          (let ((_%hd194938194997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194937194994%_)))
                                                (_%tl194939194999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194937194994%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194939194999%_))
                                                (_%loop194926194970%_
                                                 _%lp-tl194929194983%_
                                                 (cons _%hd194938194997%_
                                                       _%expr194930194975%_)
                                                 (cons _%hd194935194989%_
                                                       _%hd194931194976%_))
                                                (_%g194911194944%_
                                                 _%g194912194947%_))))
                                        (_%g194911194944%_
                                         _%g194912194947%_))))
                                (_%g194911194944%_ _%g194912194947%_))))
                        (let ((_%expr194932195002%_
                               (reverse _%expr194930194975%_))
                              (_%hd194933195003%_
                               (reverse _%hd194931194976%_)))
                          (let ((__tmp197152
                                 (lambda ()
                                   (let* ((_%g195028195044%_
                                           (lambda (_%g195029195041%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g195029195041%_))))
                                          (_%g195027195124%_
                                           (lambda (_%g195029195047%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%g195029195047%_))
                                                 (let ((_g197153_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%g195029195047%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g197154_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g197153_)
                          (##values-length _g197153_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g197154_ 2)))
                   (error "Context expects 2 values" _g197154_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target195031195049%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g197153_
                                                               0)))
                                                           (_%tl195033195051%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g197153_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl195033195051%_))
                                                           (letrec ((_%loop195034195054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd195032195057%_ _%expr195038195059%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd195032195057%_))
                                   (let ((_%e195035195061%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd195032195057%_))))
                                     (let ((_%lp-hd195036195064%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e195035195061%_)))
                                           (_%lp-tl195037195066%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e195035195061%_))))
                                       (_%loop195034195054%_
                                        _%lp-tl195037195066%_
                                        (cons _%lp-hd195036195064%_
                                              _%expr195038195059%_))))
                                   (let* ((_%expr195039195069%_
                                           (reverse _%expr195038195059%_))
                                          (_%g195085195092%_
                                           (lambda (_%g195086195089%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g195086195089%_))))
                                          (_%g195084195117%_
                                           (lambda (_%g195086195095%_)
                                             (gxc#xform-wrap-source
                                              (cons _%hd194918194952%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%expr195039195069%_
                                                               _%hd194933195003%_))
                                                            (let ((__tmp197155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g195106195110%_
                                    _%g195107195112%_
                                    _%g195108195114%_)
                             (cons (cons _%g195107195112%_
                                         (cons _%g195106195110%_ '()))
                                   _%g195108195114%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp197155
                       '()
                       _%expr195039195069%_
                       _%hd194933195003%_)))
                  _%g195086195095%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx194909%_))))
                                     (_%g195084195117%_
                                      (map (lambda (_%g195119195121%_)
                                             (gxc#compile-e__1
                                              _%self194908%_
                                              _%g195119195121%_))
                                           _%tl194922194962%_)))))))
                     (_%loop195034195054%_ _%target195031195049%_ '()))
                   (_%g195028195044%_ _%g195029195047%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g195028195044%_
                                                  _%g195029195047%_)))))
                                     (_%g195027195124%_
                                      (map (lambda (_%g195126195128%_)
                                             (gxc#compile-e__1
                                              _%self194908%_
                                              _%g195126195128%_))
                                           (let ((__tmp197156
                                                  (lambda (_%g195130195133%_
                                                           _%g195131195135%_)
                                                    (cons _%g195130195133%_
                                                          _%g195131195135%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp197156
                                              '()
                                              _%expr194932195002%_)))))))
                                (__tmp197150
                                 (gxc#xform-let-locals
                                  (let ((__tmp197151
                                         (lambda (_%g195137195140%_
                                                  _%g195138195142%_)
                                           (cons _%g195137195140%_
                                                 _%g195138195142%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp197151
                                     '()
                                     _%hd194933195003%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp197152
                             gxc#current-compile-local-env
                             __tmp197150)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194926194970%_
                                                   _%target194923194965%_
                                                   '()
                                                   '()))
                                                (_%g194911194944%_
                                                 _%g194912194947%_)))))
                                      (_%g194911194944%_ _%g194912194947%_))))
                              (_%g194911194944%_ _%g194912194947%_))))
                      (_%g194911194944%_ _%g194912194947%_)))))
          (_%g194910195145%_ _%stx194909%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings194775%_)
        (letrec ((_%flatten194777%_
                  (lambda (_%maybe-lst194835%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst194835%_))
                        (cons _%maybe-lst194835%_ '())
                        (let _%loop194837%_ ((_%rest194839%_
                                              _%maybe-lst194835%_)
                                             (_%result194840%_ '()))
                          (let* ((_%__stx197044197045%_ _%rest194839%_)
                                 (_%g194844194856%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx197044197045%_)))))
                            (let ((_%__kont197046197047%_
                                   (lambda (_%g194846194894%_
                                            _%g194847194895%_)
                                     (_%loop194837%_
                                      _%g194846194894%_
                                      (let ((__tmp197157
                                             (_%flatten194777%_
                                              _%g194847194895%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result194840%_
                                         __tmp197157)))))
                                  (_%__kont197048197049%_
                                   (lambda (_%g194851194868%_)
                                     (cons _%g194851194868%_
                                           _%result194840%_)))
                                  (_%__kont197050197051%_
                                   (lambda () _%result194840%_)))
                              (let ((_%g194842194881%_
                                     (lambda ()
                                       (let ((_%g194851194868%_
                                              _%__stx197044197045%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g194851194868%_))
                                             (_%__kont197048197049%_
                                              _%g194851194868%_)
                                             (_%__kont197050197051%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx197044197045%_))
                                    (let ((_%e194848194886%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx197044197045%_))))
                                      (let ((_%tl194850194891%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e194848194886%_)))
                                            (_%hd194849194889%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e194848194886%_))))
                                        (_%__kont197046197047%_
                                         _%tl194850194891%_
                                         _%hd194849194889%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g194842194881%_)))))))))))
          (let _%loop194779%_ ((_%rest194781%_
                                (_%flatten194777%_ _%bindings194775%_))
                               (_%locals194782%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest194783194794%_ _%rest194781%_)
                   (_%E194787194798%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest194783194794%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K194790194823%_
                     (lambda (_%rest194820%_ _%id194821%_)
                       (_%loop194779%_
                        _%rest194820%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id194821%_))
                              _%locals194782%_))))
                    (_%K194789194812%_
                     (lambda (_%id194810%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id194810%_))
                             _%locals194782%_)))
                    (_%K194788194803%_ (lambda () _%locals194782%_)))
                (let ((_%try-match194785194817%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest194783194794%_))
                             (let ((_%id194815%_ _%rest194783194794%_))
                               (_%K194789194812%_ _%id194815%_))
                             (_%K194788194803%_)))))
                  (if (pair? _%rest194783194794%_)
                      (let ((_%tl194792194828%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest194783194794%_)))
                            (_%hd194791194826%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest194783194794%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd194791194826%_))
                            (let ((_%id194831%_ _%hd194791194826%_)
                                  (_%rest194833%_ _%tl194792194828%_))
                              (_%K194790194823%_ _%rest194833%_ _%id194831%_))
                            (_%K194788194803%_)))
                      (_%try-match194785194817%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self194727%_ _%stx194728%_)
        (let* ((_%g194730194741%_
                (lambda (_%g194731194738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194731194738%_))))
               (_%g194729194772%_
                (lambda (_%g194731194744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194731194744%_))
                      (let ((_%e194734194746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194731194744%_))))
                        (let ((_%hd194735194749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194734194746%_)))
                              (_%tl194736194751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194734194746%_))))
                          (let ((_%rands194770%_
                                 (map (lambda (_%g194765194767%_)
                                        (gxc#compile-e__1
                                         _%self194727%_
                                         _%g194765194767%_))
                                      _%tl194736194751%_)))
                            (gxc#xform-wrap-source
                             (cons _%hd194735194749%_ _%rands194770%_)
                             _%stx194728%_))))
                      (_%g194730194741%_ _%g194731194744%_)))))
          (_%g194729194772%_ _%stx194728%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self194657%_ _%stx194658%_)
        (let* ((_%g194660194677%_
                (lambda (_%g194661194674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194661194674%_))))
               (_%g194659194724%_
                (lambda (_%g194661194680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194661194680%_))
                      (let ((_%e194664194682%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194661194680%_))))
                        (let ((_%hd194665194685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194664194682%_)))
                              (_%tl194666194687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194664194682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194666194687%_))
                              (let ((_%e194667194690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194666194687%_))))
                                (let ((_%hd194668194693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194667194690%_)))
                                      (_%tl194669194695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194667194690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194669194695%_))
                                      (let ((_%e194670194698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194669194695%_))))
                                        (let ((_%hd194671194701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194670194698%_)))
                                              (_%tl194672194703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194670194698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194672194703%_))
                                              (let ((_%expr194722%_
                                                     (gxc#compile-e__1
                                                      _%self194657%_
                                                      _%hd194671194701%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%hd194668194693%_
                                                             (cons _%expr194722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx194658%_))
                                              (_%g194660194677%_
                                               _%g194661194680%_))))
                                      (_%g194660194677%_ _%g194661194680%_))))
                              (_%g194660194677%_ _%g194661194680%_))))
                      (_%g194660194677%_ _%g194661194680%_)))))
          (_%g194659194724%_ _%stx194658%_))))))
