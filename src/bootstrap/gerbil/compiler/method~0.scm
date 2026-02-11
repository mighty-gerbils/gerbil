(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770752337)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx192593%_)
        (let* ((_%self192595%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e192597%_
                (let ((__tmp192815 (gxc#stx-car-e _%stx192593%_)))
                  (declare (not safe))
                  (method-ref _%self192595%_ __tmp192815))))
          (if _%$e192597%_
              ((lambda (_%method192600%_)
                 (declare (not safe))
                 (let ((_%$e192603%_ (gx#stx-source _%stx192593%_)))
                   (if _%$e192603%_
                       ((lambda (_%source192606%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method192600%_ _%self192595%_ _%stx192593%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source192606%_ '()))
                                 (let ((_%$e192610%_
                                        (gxc#current-compile-context)))
                                   (if _%$e192610%_ _%$e192610%_ '())))))
                        _%$e192603%_)
                       (_%method192600%_ _%self192595%_ _%stx192593%_))))
               _%$e192597%_)
              (let ((__tmp192817 (gxc#stx-car-e _%stx192593%_))
                    (__tmp192816
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx192593%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self192595%_
                       __tmp192817
                       __tmp192816))))))
    (define gxc#compile-e__1
      (lambda (_%self192615%_ _%stx192616%_)
        (let ((_%$e192618%_
               (let ((__tmp192818 (gxc#stx-car-e _%stx192616%_)))
                 (declare (not safe))
                 (method-ref _%self192615%_ __tmp192818))))
          (if _%$e192618%_
              ((lambda (_%method192621%_)
                 (declare (not safe))
                 (let ((_%$e192624%_ (gx#stx-source _%stx192616%_)))
                   (if _%$e192624%_
                       ((lambda (_%source192627%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method192621%_ _%self192615%_ _%stx192616%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source192627%_ '()))
                                 (let ((_%$e192631%_
                                        (gxc#current-compile-context)))
                                   (if _%$e192631%_ _%$e192631%_ '())))))
                        _%$e192624%_)
                       (_%method192621%_ _%self192615%_ _%stx192616%_))))
               _%$e192618%_)
              (let ((__tmp192820 (gxc#stx-car-e _%stx192616%_))
                    (__tmp192819
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx192616%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self192615%_
                       __tmp192820
                       __tmp192819))))))
    (define gxc#compile-e
      (lambda _g192821_
        (let ((_g192822_ (let () (declare (not safe)) (##length _g192821_))))
          (cond ((let () (declare (not safe)) (##fx= _g192822_ 1))
                 (apply gxc#compile-e__0 _g192821_))
                ((let () (declare (not safe)) (##fx= _g192822_ 2))
                 (apply gxc#compile-e__1 _g192821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g192821_))))))
    (define gxc#stx-car-e
      (lambda (_%stx192591%_)
        (let ((__tmp192823
               (car (let () (declare (not safe)) (gx#stx-e _%stx192591%_)))))
          (declare (not safe))
          (gx#stx-e __tmp192823))))
    (define gxc#void-method (lambda (_%self192588%_ _%stx192589%_) '#!void))
    (define gxc#false-method (lambda (_%self192585%_ _%stx192586%_) '#f))
    (define gxc#true-method (lambda (_%self192582%_ _%stx192583%_) '#t))
    (define gxc#identity-method
      (lambda (_%self192579%_ _%stx192580%_) _%stx192580%_))
    (define gxc#::void-expression::t
      (let ((__tmp192824 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp192824
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args192576%_
        (apply make-instance gxc#::void-expression::t _%$args192576%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp192825
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
        (__make-atomic-promise __tmp192825)))
    (define gxc#::void-special-form::t
      (let ((__tmp192826 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp192826
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args192572%_
        (apply make-instance gxc#::void-special-form::t _%$args192572%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp192827
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
        (__make-atomic-promise __tmp192827)))
    (define gxc#::void::t
      (let ((__tmp192828
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp192828 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args192568%_
        (apply make-instance gxc#::void::t _%$args192568%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp192829
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp192829)))
    (define gxc#::false-expression::t
      (let ((__tmp192830 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp192830
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args192564%_
        (apply make-instance gxc#::false-expression::t _%$args192564%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp192831
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
        (__make-atomic-promise __tmp192831)))
    (define gxc#::false-special-form::t
      (let ((__tmp192832 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp192832
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args192560%_
        (apply make-instance gxc#::false-special-form::t _%$args192560%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp192833
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
        (__make-atomic-promise __tmp192833)))
    (define gxc#::false::t
      (let ((__tmp192834
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp192834 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args192556%_
        (apply make-instance gxc#::false::t _%$args192556%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp192835
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp192835)))
    (define gxc#::identity-expression::t
      (let ((__tmp192836 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp192836
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args192552%_
        (apply make-instance gxc#::identity-expression::t _%$args192552%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp192837
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
        (__make-atomic-promise __tmp192837)))
    (define gxc#::identity-special-form::t
      (let ((__tmp192838 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp192838
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args192548%_
        (apply make-instance gxc#::identity-special-form::t _%$args192548%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp192839
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
        (__make-atomic-promise __tmp192839)))
    (define gxc#::identity::t
      (let ((__tmp192840
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp192840
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args192544%_
        (apply make-instance gxc#::identity::t _%$args192544%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp192841
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp192841)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp192842 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp192842
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args192540%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args192540%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp192843
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
        (__make-atomic-promise __tmp192843)))
    (define gxc#::basic-xform::t
      (let ((__tmp192844
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp192844
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args192536%_
        (apply make-instance gxc#::basic-xform::t _%$args192536%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp192845
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
        (__make-atomic-promise __tmp192845)))
    (define gxc#apply-begin%
      (lambda (_%self192492%_ _%stx192493%_)
        (let* ((_%g192495192505%_
                (lambda (_%g192496192502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192496192502%_))))
               (_%g192494192532%_
                (lambda (_%g192496192508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192496192508%_))
                      (let ((_%e192498192510%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192496192508%_))))
                        (let ((_%hd192499192513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192498192510%_)))
                              (_%tl192500192515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192498192510%_))))
                          ((lambda (_%g192497192518%_)
                             (for-each
                              (lambda (_%g192527192529%_)
                                (gxc#compile-e__1
                                 _%self192492%_
                                 _%g192527192529%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g192497192518%_))))
                           _%tl192500192515%_)))
                      (_%g192495192505%_ _%g192496192508%_)))))
          (_%g192494192532%_ _%stx192493%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self192453%_ _%stx192454%_)
        (let* ((_%g192456192466%_
                (lambda (_%g192457192463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192457192463%_))))
               (_%g192455192489%_
                (lambda (_%g192457192469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192457192469%_))
                      (let ((_%e192459192471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192457192469%_))))
                        (let ((_%hd192460192474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192459192471%_)))
                              (_%tl192461192476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192459192471%_))))
                          ((lambda (_%g192458192479%_)
                             (gxc#compile-e__1
                              _%self192453%_
                              (last _%g192458192479%_)))
                           _%tl192461192476%_)))
                      (_%g192456192466%_ _%g192457192469%_)))))
          (_%g192455192489%_ _%stx192454%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self192449%_ _%stx192450%_)
        (let ((__tmp192848
               (lambda () (gxc#apply-begin% _%self192449%_ _%stx192450%_)))
              (__tmp192846
               (let ((__tmp192847
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp192847 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp192848
           gx#current-expander-phi
           __tmp192846))))
    (define gxc#apply-module%
      (lambda (_%self192388%_ _%stx192389%_)
        (let* ((_%g192391192405%_
                (lambda (_%g192392192402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192392192402%_))))
               (_%g192390192446%_
                (lambda (_%g192392192408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192392192408%_))
                      (let ((_%e192395192410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192392192408%_))))
                        (let ((_%hd192396192413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192395192410%_)))
                              (_%tl192397192415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192395192410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192397192415%_))
                              (let ((_%e192398192418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192397192415%_))))
                                (let ((_%hd192399192421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192398192418%_)))
                                      (_%tl192400192423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192398192418%_))))
                                  ((lambda (_%g192393192426%_
                                            _%g192394192427%_)
                                     (let* ((_%ctx192440%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g192394192427%_)))
                                            (_%ctx-stx192442%_
                                             (##structure-ref
                                              _%ctx192440%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp192849
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self192388%_
                                                _%ctx-stx192442%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp192849
                                        gx#current-expander-context
                                        _%ctx192440%_)))
                                   _%tl192400192423%_
                                   _%hd192399192421%_)))
                              (_%g192391192405%_ _%g192392192408%_))))
                      (_%g192391192405%_ _%g192392192408%_)))))
          (_%g192390192446%_ _%stx192389%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self192320%_ _%stx192321%_)
        (let* ((_%g192323192340%_
                (lambda (_%g192324192337%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192324192337%_))))
               (_%g192322192385%_
                (lambda (_%g192324192343%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192324192343%_))
                      (let ((_%e192327192345%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192324192343%_))))
                        (let ((_%hd192328192348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192327192345%_)))
                              (_%tl192329192350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192327192345%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192329192350%_))
                              (let ((_%e192330192353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192329192350%_))))
                                (let ((_%hd192331192356%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192330192353%_)))
                                      (_%tl192332192358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192330192353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192332192358%_))
                                      (let ((_%e192333192361%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192332192358%_))))
                                        (let ((_%hd192334192364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192333192361%_)))
                                              (_%tl192335192366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192333192361%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192335192366%_))
                                              ((lambda (_%g192325192369%_
                                                        _%g192326192370%_)
                                                 (gxc#compile-e__1
                                                  _%self192320%_
                                                  _%g192325192369%_))
                                               _%hd192334192364%_
                                               _%hd192331192356%_)
                                              (_%g192323192340%_
                                               _%g192324192343%_))))
                                      (_%g192323192340%_ _%g192324192343%_))))
                              (_%g192323192340%_ _%g192324192343%_))))
                      (_%g192323192340%_ _%g192324192343%_)))))
          (_%g192322192385%_ _%stx192321%_))))
    (define gxc#apply-define-values%
      (lambda (_%self192252%_ _%stx192253%_)
        (let* ((_%g192255192272%_
                (lambda (_%g192256192269%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192256192269%_))))
               (_%g192254192317%_
                (lambda (_%g192256192275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192256192275%_))
                      (let ((_%e192259192277%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192256192275%_))))
                        (let ((_%hd192260192280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192259192277%_)))
                              (_%tl192261192282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192259192277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192261192282%_))
                              (let ((_%e192262192285%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192261192282%_))))
                                (let ((_%hd192263192288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192262192285%_)))
                                      (_%tl192264192290%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192262192285%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192264192290%_))
                                      (let ((_%e192265192293%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192264192290%_))))
                                        (let ((_%hd192266192296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192265192293%_)))
                                              (_%tl192267192298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192265192293%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192267192298%_))
                                              ((lambda (_%g192257192301%_
                                                        _%g192258192302%_)
                                                 (gxc#compile-e__1
                                                  _%self192252%_
                                                  _%g192257192301%_))
                                               _%hd192266192296%_
                                               _%hd192263192288%_)
                                              (_%g192255192272%_
                                               _%g192256192275%_))))
                                      (_%g192255192272%_ _%g192256192275%_))))
                              (_%g192255192272%_ _%g192256192275%_))))
                      (_%g192255192272%_ _%g192256192275%_)))))
          (_%g192254192317%_ _%stx192253%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self192183%_ _%stx192184%_)
        (let* ((_%g192186192203%_
                (lambda (_%g192187192200%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192187192200%_))))
               (_%g192185192249%_
                (lambda (_%g192187192206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192187192206%_))
                      (let ((_%e192190192208%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192187192206%_))))
                        (let ((_%hd192191192211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192190192208%_)))
                              (_%tl192192192213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192190192208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192192192213%_))
                              (let ((_%e192193192216%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192192192213%_))))
                                (let ((_%hd192194192219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192193192216%_)))
                                      (_%tl192195192221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192193192216%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192195192221%_))
                                      (let ((_%e192196192224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192195192221%_))))
                                        (let ((_%hd192197192227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192196192224%_)))
                                              (_%tl192198192229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192196192224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192198192229%_))
                                              ((lambda (_%g192188192232%_
                                                        _%g192189192233%_)
                                                 (let ((__tmp192852
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self192183%_
                                                           _%g192188192232%_)))
                                                       (__tmp192850
                                                        (let ((__tmp192851
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp192851 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp192852
                                                    gx#current-expander-phi
                                                    __tmp192850)))
                                               _%hd192197192227%_
                                               _%hd192194192219%_)
                                              (_%g192186192203%_
                                               _%g192187192206%_))))
                                      (_%g192186192203%_ _%g192187192206%_))))
                              (_%g192186192203%_ _%g192187192206%_))))
                      (_%g192186192203%_ _%g192187192206%_)))))
          (_%g192185192249%_ _%stx192184%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self192115%_ _%stx192116%_)
        (let* ((_%g192118192135%_
                (lambda (_%g192119192132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192119192132%_))))
               (_%g192117192180%_
                (lambda (_%g192119192138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192119192138%_))
                      (let ((_%e192122192140%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192119192138%_))))
                        (let ((_%hd192123192143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192122192140%_)))
                              (_%tl192124192145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192122192140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192124192145%_))
                              (let ((_%e192125192148%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192124192145%_))))
                                (let ((_%hd192126192151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192125192148%_)))
                                      (_%tl192127192153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192125192148%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192127192153%_))
                                      (let ((_%e192128192156%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192127192153%_))))
                                        (let ((_%hd192129192159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192128192156%_)))
                                              (_%tl192130192161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192128192156%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192130192161%_))
                                              ((lambda (_%g192120192164%_
                                                        _%g192121192165%_)
                                                 (gxc#compile-e__1
                                                  _%self192115%_
                                                  _%g192120192164%_))
                                               _%hd192129192159%_
                                               _%hd192126192151%_)
                                              (_%g192118192135%_
                                               _%g192119192138%_))))
                                      (_%g192118192135%_ _%g192119192138%_))))
                              (_%g192118192135%_ _%g192119192138%_))))
                      (_%g192118192135%_ _%g192119192138%_)))))
          (_%g192117192180%_ _%stx192116%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self192001%_ _%stx192002%_)
        (let* ((_%g192004192032%_
                (lambda (_%g192005192029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192005192029%_))))
               (_%g192003192112%_
                (lambda (_%g192005192035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192005192035%_))
                      (let ((_%e192008192037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192005192035%_))))
                        (let ((_%hd192009192040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192008192037%_)))
                              (_%tl192010192042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192008192037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl192010192042%_))
                              (let ((_g192853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl192010192042%_
                                        '0))))
                                (begin
                                  (let ((_g192854_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g192853_)
                                               (##values-length _g192853_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g192854_ 2)))
                                        (error "Context expects 2 values"
                                               _g192854_)))
                                  (let ((_%target192011192045%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g192853_ 0)))
                                        (_%tl192013192047%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g192853_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192013192047%_))
                                        (letrec ((_%loop192014192050%_
                                                  (lambda (_%hd192012192053%_
                                                           _%body192018192055%_
                                                           _%hd192019192056%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd192012192053%_))
                                                        (let ((_%e192015192058%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd192012192053%_))))
                  (let ((_%lp-hd192016192061%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192015192058%_)))
                        (_%lp-tl192017192063%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192015192058%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd192016192061%_))
                        (let ((_%e192022192066%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd192016192061%_))))
                          (let ((_%hd192023192069%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192022192066%_)))
                                (_%tl192024192071%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192022192066%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl192024192071%_))
                                (let ((_%e192025192074%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl192024192071%_))))
                                  (let ((_%hd192026192077%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192025192074%_)))
                                        (_%tl192027192079%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192025192074%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192027192079%_))
                                        (_%loop192014192050%_
                                         _%lp-tl192017192063%_
                                         (cons _%hd192026192077%_
                                               _%body192018192055%_)
                                         (cons _%hd192023192069%_
                                               _%hd192019192056%_))
                                        (_%g192004192032%_
                                         _%g192005192035%_))))
                                (_%g192004192032%_ _%g192005192035%_))))
                        (_%g192004192032%_ _%g192005192035%_))))
                (let ((_%body192020192082%_ (reverse _%body192018192055%_))
                      (_%hd192021192083%_ (reverse _%hd192019192056%_)))
                  ((lambda (_%g192006192085%_ _%g192007192086%_)
                     (for-each
                      (lambda (_%g192100192102%_)
                        (gxc#compile-e__1 _%self192001%_ _%g192100192102%_))
                      (let ((__tmp192855
                             (lambda (_%g192104192107%_ _%g192105192109%_)
                               (cons _%g192104192107%_ _%g192105192109%_))))
                        (declare (not safe))
                        (foldr__0 __tmp192855 '() _%g192006192085%_))))
                   _%body192020192082%_
                   _%hd192021192083%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop192014192050%_
                                           _%target192011192045%_
                                           '()
                                           '()))
                                        (_%g192004192032%_
                                         _%g192005192035%_)))))
                              (_%g192004192032%_ _%g192005192035%_))))
                      (_%g192004192032%_ _%g192005192035%_)))))
          (_%g192003192112%_ _%stx192002%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self191858%_ _%stx191859%_)
        (let* ((_%g191861191896%_
                (lambda (_%g191862191893%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191862191893%_))))
               (_%g191860191998%_
                (lambda (_%g191862191899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191862191899%_))
                      (let ((_%e191866191901%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191862191899%_))))
                        (let ((_%hd191867191904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191866191901%_)))
                              (_%tl191868191906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191866191901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191868191906%_))
                              (let ((_%e191869191909%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191868191906%_))))
                                (let ((_%hd191870191912%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191869191909%_)))
                                      (_%tl191871191914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191869191909%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd191870191912%_))
                                      (let ((_g192856_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd191870191912%_
                                                '0))))
                                        (begin
                                          (let ((_g192857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192856_)
                                                       (##values-length
                                                        _g192856_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192857_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192857_)))
                                          (let ((_%target191872191917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192856_ 0)))
                                                (_%tl191874191919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192856_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191874191919%_))
                                                (letrec ((_%loop191875191922%_
                                                          (lambda (_%hd191873191925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr191879191927%_
                           _%hd191880191928%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191873191925%_))
                        (let ((_%e191876191930%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd191873191925%_))))
                          (let ((_%lp-hd191877191933%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191876191930%_)))
                                (_%lp-tl191878191935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191876191930%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd191877191933%_))
                                (let ((_%e191883191938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd191877191933%_))))
                                  (let ((_%hd191884191941%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191883191938%_)))
                                        (_%tl191885191943%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191883191938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl191885191943%_))
                                        (let ((_%e191886191946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl191885191943%_))))
                                          (let ((_%hd191887191949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191886191946%_)))
                                                (_%tl191888191951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191886191946%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191888191951%_))
                                                (_%loop191875191922%_
                                                 _%lp-tl191878191935%_
                                                 (cons _%hd191887191949%_
                                                       _%expr191879191927%_)
                                                 (cons _%hd191884191941%_
                                                       _%hd191880191928%_))
                                                (_%g191861191896%_
                                                 _%g191862191899%_))))
                                        (_%g191861191896%_
                                         _%g191862191899%_))))
                                (_%g191861191896%_ _%g191862191899%_))))
                        (let ((_%expr191881191954%_
                               (reverse _%expr191879191927%_))
                              (_%hd191882191955%_
                               (reverse _%hd191880191928%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191871191914%_))
                              (let ((_%e191889191957%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191871191914%_))))
                                (let ((_%hd191890191960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191889191957%_)))
                                      (_%tl191891191962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191889191957%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191891191962%_))
                                      ((lambda (_%g191863191965%_
                                                _%g191864191966%_
                                                _%g191865191967%_)
                                         (for-each
                                          (lambda (_%g191986191988%_)
                                            (gxc#compile-e__1
                                             _%self191858%_
                                             _%g191986191988%_))
                                          (let ((__tmp192859
                                                 (lambda (_%g191990191993%_
                                                          _%g191991191995%_)
                                                   (cons _%g191990191993%_
                                                         _%g191991191995%_)))
                                                (__tmp192858
                                                 (cons _%g191863191965%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp192859
                                             __tmp192858
                                             _%g191864191966%_))))
                                       _%hd191890191960%_
                                       _%expr191881191954%_
                                       _%hd191882191955%_)
                                      (_%g191861191896%_ _%g191862191899%_))))
                              (_%g191861191896%_ _%g191862191899%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop191875191922%_
                                                   _%target191872191917%_
                                                   '()
                                                   '()))
                                                (_%g191861191896%_
                                                 _%g191862191899%_)))))
                                      (_%g191861191896%_ _%g191862191899%_))))
                              (_%g191861191896%_ _%g191862191899%_))))
                      (_%g191861191896%_ _%g191862191899%_)))))
          (_%g191860191998%_ _%stx191859%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self191803%_ _%stx191804%_)
        (let* ((_%g191806191820%_
                (lambda (_%g191807191817%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191807191817%_))))
               (_%g191805191855%_
                (lambda (_%g191807191823%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191807191823%_))
                      (let ((_%e191810191825%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191807191823%_))))
                        (let ((_%hd191811191828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191810191825%_)))
                              (_%tl191812191830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191810191825%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191812191830%_))
                              (let ((_%e191813191833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191812191830%_))))
                                (let ((_%hd191814191836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191813191833%_)))
                                      (_%tl191815191838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191813191833%_))))
                                  ((lambda (_%g191808191841%_
                                            _%g191809191842%_)
                                     (gxc#compile-e__1
                                      _%self191803%_
                                      (last _%g191808191841%_)))
                                   _%tl191815191838%_
                                   _%hd191814191836%_)))
                              (_%g191806191820%_ _%g191807191823%_))))
                      (_%g191806191820%_ _%g191807191823%_)))))
          (_%g191805191855%_ _%stx191804%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self191735%_ _%stx191736%_)
        (let* ((_%g191738191755%_
                (lambda (_%g191739191752%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191739191752%_))))
               (_%g191737191800%_
                (lambda (_%g191739191758%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191739191758%_))
                      (let ((_%e191742191760%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191739191758%_))))
                        (let ((_%hd191743191763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191742191760%_)))
                              (_%tl191744191765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191742191760%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191744191765%_))
                              (let ((_%e191745191768%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191744191765%_))))
                                (let ((_%hd191746191771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191745191768%_)))
                                      (_%tl191747191773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191745191768%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191747191773%_))
                                      (let ((_%e191748191776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191747191773%_))))
                                        (let ((_%hd191749191779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191748191776%_)))
                                              (_%tl191750191781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191748191776%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191750191781%_))
                                              ((lambda (_%g191740191784%_
                                                        _%g191741191785%_)
                                                 (gxc#compile-e__1
                                                  _%self191735%_
                                                  _%g191740191784%_))
                                               _%hd191749191779%_
                                               _%hd191746191771%_)
                                              (_%g191738191755%_
                                               _%g191739191758%_))))
                                      (_%g191738191755%_ _%g191739191758%_))))
                              (_%g191738191755%_ _%g191739191758%_))))
                      (_%g191738191755%_ _%g191739191758%_)))))
          (_%g191737191800%_ _%stx191736%_))))
    (define gxc#apply-operands
      (lambda (_%self191650%_ _%stx191651%_)
        (let* ((_%g191653191672%_
                (lambda (_%g191654191669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191654191669%_))))
               (_%g191652191732%_
                (lambda (_%g191654191675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191654191675%_))
                      (let ((_%e191656191677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191654191675%_))))
                        (let ((_%hd191657191680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191656191677%_)))
                              (_%tl191658191682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191656191677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl191658191682%_))
                              (let ((_g192860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl191658191682%_
                                        '0))))
                                (begin
                                  (let ((_g192861_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g192860_)
                                               (##values-length _g192860_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g192861_ 2)))
                                        (error "Context expects 2 values"
                                               _g192861_)))
                                  (let ((_%target191659191685%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g192860_ 0)))
                                        (_%tl191661191687%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g192860_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191661191687%_))
                                        (letrec ((_%loop191662191690%_
                                                  (lambda (_%hd191660191693%_
                                                           _%rands191666191695%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd191660191693%_))
                                                        (let ((_%e191663191697%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd191660191693%_))))
                  (let ((_%lp-hd191664191700%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191663191697%_)))
                        (_%lp-tl191665191702%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191663191697%_))))
                    (_%loop191662191690%_
                     _%lp-tl191665191702%_
                     (cons _%lp-hd191664191700%_ _%rands191666191695%_))))
                (let ((_%rands191667191705%_ (reverse _%rands191666191695%_)))
                  ((lambda (_%g191655191707%_)
                     (for-each
                      (lambda (_%g191720191722%_)
                        (gxc#compile-e__1 _%self191650%_ _%g191720191722%_))
                      (let ((__tmp192862
                             (lambda (_%g191724191727%_ _%g191725191729%_)
                               (cons _%g191724191727%_ _%g191725191729%_))))
                        (declare (not safe))
                        (foldr__0 __tmp192862 '() _%g191655191707%_))))
                   _%rands191667191705%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop191662191690%_
                                           _%target191659191685%_
                                           '()))
                                        (_%g191653191672%_
                                         _%g191654191675%_)))))
                              (_%g191653191672%_ _%g191654191675%_))))
                      (_%g191653191672%_ _%g191654191675%_)))))
          (_%g191652191732%_ _%stx191651%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx191647%_ _%src-stx191648%_)
        (let ((__tmp192863
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx191648%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx191647%_ __tmp192863))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx191643%_ _%src-stx191644%_ _%ctx191645%_)
        (gxc#compile-e__1
         _%ctx191645%_
         (gxc#xform-wrap-source _%stx191643%_ _%src-stx191644%_))))
    (define gxc#xform-begin%
      (lambda (_%self191598%_ _%stx191599%_)
        (let* ((_%g191601191611%_
                (lambda (_%g191602191608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191602191608%_))))
               (_%g191600191640%_
                (lambda (_%g191602191614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191602191614%_))
                      (let ((_%e191604191616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191602191614%_))))
                        (let ((_%hd191605191619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191604191616%_)))
                              (_%tl191606191621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191604191616%_))))
                          ((lambda (_%g191603191624%_)
                             (let ((_%forms191638%_
                                    (map (lambda (_%g191633191635%_)
                                           (gxc#compile-e__1
                                            _%self191598%_
                                            _%g191633191635%_))
                                         _%g191603191624%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms191638%_)
                                _%stx191599%_)))
                           _%tl191606191621%_)))
                      (_%g191601191611%_ _%g191602191614%_)))))
          (_%g191600191640%_ _%stx191599%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self191552%_ _%stx191553%_)
        (let* ((_%g191555191565%_
                (lambda (_%g191556191562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191556191562%_))))
               (_%g191554191595%_
                (lambda (_%g191556191568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191556191568%_))
                      (let ((_%e191558191570%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191556191568%_))))
                        (let ((_%hd191559191573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191558191570%_)))
                              (_%tl191560191575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191558191570%_))))
                          ((lambda (_%g191557191578%_)
                             (let ((__tmp192866
                                    (lambda ()
                                      (let ((_%forms191593%_
                                             (map (lambda (_%g191588191590%_)
                                                    (gxc#compile-e__1
                                                     _%self191552%_
                                                     _%g191588191590%_))
                                                  _%g191557191578%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms191593%_)
                                         _%stx191553%_))))
                                   (__tmp192864
                                    (let ((__tmp192865
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp192865 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp192866
                                gx#current-expander-phi
                                __tmp192864)))
                           _%tl191560191575%_)))
                      (_%g191555191565%_ _%g191556191568%_)))))
          (_%g191554191595%_ _%stx191553%_))))
    (define gxc#xform-module%
      (lambda (_%self191489%_ _%stx191490%_)
        (let* ((_%g191492191506%_
                (lambda (_%g191493191503%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191493191503%_))))
               (_%g191491191549%_
                (lambda (_%g191493191509%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191493191509%_))
                      (let ((_%e191496191511%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191493191509%_))))
                        (let ((_%hd191497191514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191496191511%_)))
                              (_%tl191498191516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191496191511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191498191516%_))
                              (let ((_%e191499191519%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191498191516%_))))
                                (let ((_%hd191500191522%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191499191519%_)))
                                      (_%tl191501191524%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191499191519%_))))
                                  ((lambda (_%g191494191527%_
                                            _%g191495191528%_)
                                     (let* ((_%ctx191541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g191495191528%_)))
                                            (_%code191543%_
                                             (##structure-ref
                                              _%ctx191541%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code191546%_
                                             (let ((__tmp192867
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self191489%_
                                                       _%code191543%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp192867
                                                gx#current-expander-context
                                                _%ctx191541%_))))
                                       (##structure-set!
                                        _%ctx191541%_
                                        _%code191546%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g191495191528%_
                                                    (cons _%code191546%_ '())))
                                        _%stx191490%_)))
                                   _%tl191501191524%_
                                   _%hd191500191522%_)))
                              (_%g191492191506%_ _%g191493191509%_))))
                      (_%g191492191506%_ _%g191493191509%_)))))
          (_%g191491191549%_ _%stx191490%_))))
    (define gxc#xform-define-values%
      (lambda (_%self191419%_ _%stx191420%_)
        (let* ((_%g191422191439%_
                (lambda (_%g191423191436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191423191436%_))))
               (_%g191421191486%_
                (lambda (_%g191423191442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191423191442%_))
                      (let ((_%e191426191444%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191423191442%_))))
                        (let ((_%hd191427191447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191426191444%_)))
                              (_%tl191428191449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191426191444%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191428191449%_))
                              (let ((_%e191429191452%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191428191449%_))))
                                (let ((_%hd191430191455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191429191452%_)))
                                      (_%tl191431191457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191429191452%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191431191457%_))
                                      (let ((_%e191432191460%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191431191457%_))))
                                        (let ((_%hd191433191463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191432191460%_)))
                                              (_%tl191434191465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191432191460%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191434191465%_))
                                              ((lambda (_%g191424191468%_
                                                        _%g191425191469%_)
                                                 (let ((_%expr191484%_
                                                        (gxc#compile-e__1
                                                         _%self191419%_
                                                         _%g191424191468%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g191425191469%_
                                                                (cons _%expr191484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx191420%_)))
                                               _%hd191433191463%_
                                               _%hd191430191455%_)
                                              (_%g191422191439%_
                                               _%g191423191442%_))))
                                      (_%g191422191439%_ _%g191423191442%_))))
                              (_%g191422191439%_ _%g191423191442%_))))
                      (_%g191422191439%_ _%g191423191442%_)))))
          (_%g191421191486%_ _%stx191420%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self191348%_ _%stx191349%_)
        (let* ((_%g191351191368%_
                (lambda (_%g191352191365%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191352191365%_))))
               (_%g191350191416%_
                (lambda (_%g191352191371%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191352191371%_))
                      (let ((_%e191355191373%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191352191371%_))))
                        (let ((_%hd191356191376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191355191373%_)))
                              (_%tl191357191378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191355191373%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191357191378%_))
                              (let ((_%e191358191381%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191357191378%_))))
                                (let ((_%hd191359191384%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191358191381%_)))
                                      (_%tl191360191386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191358191381%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191360191386%_))
                                      (let ((_%e191361191389%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191360191386%_))))
                                        (let ((_%hd191362191392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191361191389%_)))
                                              (_%tl191363191394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191361191389%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191363191394%_))
                                              ((lambda (_%g191353191397%_
                                                        _%g191354191398%_)
                                                 (let ((__tmp192870
                                                        (lambda ()
                                                          (let ((_%expr191414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self191348%_ _%g191353191397%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g191354191398%_ (cons _%expr191414%_ '())))
                     _%stx191349%_))))
               (__tmp192868
                (let ((__tmp192869
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp192869 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp192870
                                                    gx#current-expander-phi
                                                    __tmp192868)))
                                               _%hd191362191392%_
                                               _%hd191359191384%_)
                                              (_%g191351191368%_
                                               _%g191352191371%_))))
                                      (_%g191351191368%_ _%g191352191371%_))))
                              (_%g191351191368%_ _%g191352191371%_))))
                      (_%g191351191368%_ _%g191352191371%_)))))
          (_%g191350191416%_ _%stx191349%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self191278%_ _%stx191279%_)
        (let* ((_%g191281191298%_
                (lambda (_%g191282191295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191282191295%_))))
               (_%g191280191345%_
                (lambda (_%g191282191301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191282191301%_))
                      (let ((_%e191285191303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191282191301%_))))
                        (let ((_%hd191286191306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191285191303%_)))
                              (_%tl191287191308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191285191303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191287191308%_))
                              (let ((_%e191288191311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191287191308%_))))
                                (let ((_%hd191289191314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191288191311%_)))
                                      (_%tl191290191316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191288191311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191290191316%_))
                                      (let ((_%e191291191319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191290191316%_))))
                                        (let ((_%hd191292191322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191291191319%_)))
                                              (_%tl191293191324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191291191319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191293191324%_))
                                              ((lambda (_%g191283191327%_
                                                        _%g191284191328%_)
                                                 (let ((_%expr191343%_
                                                        (gxc#compile-e__1
                                                         _%self191278%_
                                                         _%g191283191327%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g191284191328%_
                                                                (cons _%expr191343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx191279%_)))
                                               _%hd191292191322%_
                                               _%hd191289191314%_)
                                              (_%g191281191298%_
                                               _%g191282191301%_))))
                                      (_%g191281191298%_ _%g191282191301%_))))
                              (_%g191281191298%_ _%g191282191301%_))))
                      (_%g191281191298%_ _%g191282191301%_)))))
          (_%g191280191345%_ _%stx191279%_))))
    (define gxc#xform-lambda%
      (lambda (_%self191216%_ _%stx191217%_)
        (let* ((_%g191219191233%_
                (lambda (_%g191220191230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191220191230%_))))
               (_%g191218191275%_
                (lambda (_%g191220191236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191220191236%_))
                      (let ((_%e191223191238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191220191236%_))))
                        (let ((_%hd191224191241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191223191238%_)))
                              (_%tl191225191243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191223191238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191225191243%_))
                              (let ((_%e191226191246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191225191243%_))))
                                (let ((_%hd191227191249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191226191246%_)))
                                      (_%tl191228191251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191226191246%_))))
                                  ((lambda (_%g191221191254%_
                                            _%g191222191255%_)
                                     (let ((__tmp192872
                                            (lambda ()
                                              (let ((_%body191273%_
                                                     (map (lambda (_%g191268191270%_)
                                                            (gxc#compile-e__1
                                                             _%self191216%_
                                                             _%g191268191270%_))
                                                          _%g191221191254%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g191222191255%_
                                                             _%body191273%_))
                                                 _%stx191217%_))))
                                           (__tmp192871
                                            (gxc#xform-let-locals
                                             _%g191222191255%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp192872
                                        gxc#current-compile-local-env
                                        __tmp192871)))
                                   _%tl191228191251%_
                                   _%hd191227191249%_)))
                              (_%g191219191233%_ _%g191220191236%_))))
                      (_%g191219191233%_ _%g191220191236%_)))))
          (_%g191218191275%_ _%stx191217%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self191124%_ _%stx191125%_)
        (letrec ((_%clause-e191127%_
                  (lambda (_%clause191168%_)
                    (let* ((_%g191170191181%_
                            (lambda (_%g191171191178%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g191171191178%_))))
                           (_%g191169191213%_
                            (lambda (_%g191171191184%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g191171191184%_))
                                  (let ((_%e191174191186%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g191171191184%_))))
                                    (let ((_%hd191175191189%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191174191186%_)))
                                          (_%tl191176191191%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191174191186%_))))
                                      ((lambda (_%g191172191194%_
                                                _%g191173191195%_)
                                         (let ((__tmp192874
                                                (lambda ()
                                                  (let ((_%body191211%_
                                                         (map (lambda (_%g191206191208%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self191124%_
                         _%g191206191208%_))
                      _%g191172191194%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g191173191195%_
                                                          _%body191211%_))))
                                               (__tmp192873
                                                (gxc#xform-let-locals
                                                 _%g191173191195%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp192874
                                            gxc#current-compile-local-env
                                            __tmp192873)))
                                       _%tl191176191191%_
                                       _%hd191175191189%_)))
                                  (_%g191170191181%_ _%g191171191184%_)))))
                      (_%g191169191213%_ _%clause191168%_)))))
          (let* ((_%g191129191139%_
                  (lambda (_%g191130191136%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g191130191136%_))))
                 (_%g191128191165%_
                  (lambda (_%g191130191142%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g191130191142%_))
                        (let ((_%e191132191144%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g191130191142%_))))
                          (let ((_%hd191133191147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191132191144%_)))
                                (_%tl191134191149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191132191144%_))))
                            ((lambda (_%g191131191152%_)
                               (let ((_%clauses191163%_
                                      (map _%clause-e191127%_
                                           _%g191131191152%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses191163%_)
                                  _%stx191125%_)))
                             _%tl191134191149%_)))
                        (_%g191129191139%_ _%g191130191142%_)))))
            (_%g191128191165%_ _%stx191125%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self190884%_ _%stx190885%_)
        (let* ((_%g190887190920%_
                (lambda (_%g190888190917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190888190917%_))))
               (_%g190886191121%_
                (lambda (_%g190888190923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190888190923%_))
                      (let ((_%e190893190925%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190888190923%_))))
                        (let ((_%hd190894190928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190893190925%_)))
                              (_%tl190895190930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190893190925%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190895190930%_))
                              (let ((_%e190896190933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190895190930%_))))
                                (let ((_%hd190897190936%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190896190933%_)))
                                      (_%tl190898190938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190896190933%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd190897190936%_))
                                      (let ((_g192875_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd190897190936%_
                                                '0))))
                                        (begin
                                          (let ((_g192876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192875_)
                                                       (##values-length
                                                        _g192875_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192876_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192876_)))
                                          (let ((_%target190899190941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192875_ 0)))
                                                (_%tl190901190943%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192875_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190901190943%_))
                                                (letrec ((_%loop190902190946%_
                                                          (lambda (_%hd190900190949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr190906190951%_
                           _%hd190907190952%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190900190949%_))
                        (let ((_%e190903190954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd190900190949%_))))
                          (let ((_%lp-hd190904190957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190903190954%_)))
                                (_%lp-tl190905190959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190903190954%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd190904190957%_))
                                (let ((_%e190910190962%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd190904190957%_))))
                                  (let ((_%hd190911190965%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190910190962%_)))
                                        (_%tl190912190967%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190910190962%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl190912190967%_))
                                        (let ((_%e190913190970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl190912190967%_))))
                                          (let ((_%hd190914190973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190913190970%_)))
                                                (_%tl190915190975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190913190970%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190915190975%_))
                                                (_%loop190902190946%_
                                                 _%lp-tl190905190959%_
                                                 (cons _%hd190914190973%_
                                                       _%expr190906190951%_)
                                                 (cons _%hd190911190965%_
                                                       _%hd190907190952%_))
                                                (_%g190887190920%_
                                                 _%g190888190923%_))))
                                        (_%g190887190920%_
                                         _%g190888190923%_))))
                                (_%g190887190920%_ _%g190888190923%_))))
                        (let ((_%expr190908190978%_
                               (reverse _%expr190906190951%_))
                              (_%hd190909190979%_
                               (reverse _%hd190907190952%_)))
                          ((lambda (_%g190889190981%_
                                    _%g190890190982%_
                                    _%g190891190983%_
                                    _%g190892190984%_)
                             (let* ((_%g191003191019%_
                                     (lambda (_%g191004191016%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g191004191016%_))))
                                    (_%g191002191107%_
                                     (lambda (_%g191004191022%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g191004191022%_))
                                           (let ((_g192877_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g191004191022%_
                                                     '0))))
                                             (begin
                                               (let ((_g192878_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g192877_)
                                                            (##values-length
                                                             _g192877_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g192878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g192878_)))
                                               (let ((_%target191006191024%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g192877_
                                                         0)))
                                                     (_%tl191008191026%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g192877_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl191008191026%_))
                                                     (letrec ((_%loop191009191029%_
                                                               (lambda (_%hd191007191032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr191013191034%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd191007191032%_))
                             (let ((_%e191010191036%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd191007191032%_))))
                               (let ((_%lp-hd191011191039%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e191010191036%_)))
                                     (_%lp-tl191012191041%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e191010191036%_))))
                                 (_%loop191009191029%_
                                  _%lp-tl191012191041%_
                                  (cons _%lp-hd191011191039%_
                                        _%expr191013191034%_))))
                             (let ((_%expr191014191044%_
                                    (reverse _%expr191013191034%_)))
                               ((lambda (_%g191005191046%_)
                                  (let ((__tmp192881
                                         (lambda ()
                                           (let* ((_%g191060191067%_
                                                   (lambda (_%g191061191064%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g191061191064%_))))
                                                  (_%g191059191093%_
                                                   (lambda (_%g191061191070%_)
                                                     ((lambda (_%g191062191072%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g190892190984%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g191005191046%_
                                  _%g190891190983%_))
                               (let ((__tmp192882
                                      (lambda (_%g191082191086%_
                                               _%g191083191088%_
                                               _%g191084191090%_)
                                        (cons (cons _%g191083191088%_
                                                    (cons _%g191082191086%_
                                                          '()))
                                              _%g191084191090%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp192882
                                  '()
                                  _%g191005191046%_
                                  _%g190891190983%_)))
                             _%g191062191072%_))
                 _%stx190885%_))
              _%g191061191070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g191059191093%_
                                              (map (lambda (_%g191095191097%_)
                                                     (gxc#compile-e__1
                                                      _%self190884%_
                                                      _%g191095191097%_))
                                                   _%g190889190981%_)))))
                                        (__tmp192879
                                         (gxc#xform-let-locals
                                          (let ((__tmp192880
                                                 (lambda (_%g191099191102%_
                                                          _%g191100191104%_)
                                                   (cons _%g191099191102%_
                                                         _%g191100191104%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp192880
                                             '()
                                             _%g190891190983%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp192881
                                     gxc#current-compile-local-env
                                     __tmp192879)))
                                _%expr191014191044%_))))))
               (_%loop191009191029%_ _%target191006191024%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g191003191019%_
                                                      _%g191004191022%_)))))
                                           (_%g191003191019%_
                                            _%g191004191022%_)))))
                               (_%g191002191107%_
                                (map (lambda (_%g191109191111%_)
                                       (gxc#compile-e__1
                                        _%self190884%_
                                        _%g191109191111%_))
                                     (let ((__tmp192883
                                            (lambda (_%g191113191116%_
                                                     _%g191114191118%_)
                                              (cons _%g191113191116%_
                                                    _%g191114191118%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp192883
                                        '()
                                        _%g190890190982%_))))))
                           _%tl190898190938%_
                           _%expr190908190978%_
                           _%hd190909190979%_
                           _%hd190894190928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190902190946%_
                                                   _%target190899190941%_
                                                   '()
                                                   '()))
                                                (_%g190887190920%_
                                                 _%g190888190923%_)))))
                                      (_%g190887190920%_ _%g190888190923%_))))
                              (_%g190887190920%_ _%g190888190923%_))))
                      (_%g190887190920%_ _%g190888190923%_)))))
          (_%g190886191121%_ _%stx190885%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self190644%_ _%stx190645%_)
        (let* ((_%g190647190680%_
                (lambda (_%g190648190677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190648190677%_))))
               (_%g190646190881%_
                (lambda (_%g190648190683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190648190683%_))
                      (let ((_%e190653190685%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190648190683%_))))
                        (let ((_%hd190654190688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190653190685%_)))
                              (_%tl190655190690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190653190685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190655190690%_))
                              (let ((_%e190656190693%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190655190690%_))))
                                (let ((_%hd190657190696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190656190693%_)))
                                      (_%tl190658190698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190656190693%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd190657190696%_))
                                      (let ((_g192884_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd190657190696%_
                                                '0))))
                                        (begin
                                          (let ((_g192885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192884_)
                                                       (##values-length
                                                        _g192884_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192885_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192885_)))
                                          (let ((_%target190659190701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192884_ 0)))
                                                (_%tl190661190703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192884_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190661190703%_))
                                                (letrec ((_%loop190662190706%_
                                                          (lambda (_%hd190660190709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr190666190711%_
                           _%hd190667190712%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190660190709%_))
                        (let ((_%e190663190714%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd190660190709%_))))
                          (let ((_%lp-hd190664190717%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190663190714%_)))
                                (_%lp-tl190665190719%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190663190714%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd190664190717%_))
                                (let ((_%e190670190722%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd190664190717%_))))
                                  (let ((_%hd190671190725%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190670190722%_)))
                                        (_%tl190672190727%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190670190722%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl190672190727%_))
                                        (let ((_%e190673190730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl190672190727%_))))
                                          (let ((_%hd190674190733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190673190730%_)))
                                                (_%tl190675190735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190673190730%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190675190735%_))
                                                (_%loop190662190706%_
                                                 _%lp-tl190665190719%_
                                                 (cons _%hd190674190733%_
                                                       _%expr190666190711%_)
                                                 (cons _%hd190671190725%_
                                                       _%hd190667190712%_))
                                                (_%g190647190680%_
                                                 _%g190648190683%_))))
                                        (_%g190647190680%_
                                         _%g190648190683%_))))
                                (_%g190647190680%_ _%g190648190683%_))))
                        (let ((_%expr190668190738%_
                               (reverse _%expr190666190711%_))
                              (_%hd190669190739%_
                               (reverse _%hd190667190712%_)))
                          ((lambda (_%g190649190741%_
                                    _%g190650190742%_
                                    _%g190651190743%_
                                    _%g190652190744%_)
                             (let ((__tmp192888
                                    (lambda ()
                                      (let* ((_%g190764190780%_
                                              (lambda (_%g190765190777%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g190765190777%_))))
                                             (_%g190763190860%_
                                              (lambda (_%g190765190783%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g190765190783%_))
                                                    (let ((_g192889_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g190765190783%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g192890_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g192889_)
                             (##values-length _g192889_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g192890_ 2)))
                      (error "Context expects 2 values" _g192890_)))
                (let ((_%target190767190785%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g192889_ 0)))
                      (_%tl190769190787%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g192889_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190769190787%_))
                      (letrec ((_%loop190770190790%_
                                (lambda (_%hd190768190793%_
                                         _%expr190774190795%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190768190793%_))
                                      (let ((_%e190771190797%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd190768190793%_))))
                                        (let ((_%lp-hd190772190800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190771190797%_)))
                                              (_%lp-tl190773190802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190771190797%_))))
                                          (_%loop190770190790%_
                                           _%lp-tl190773190802%_
                                           (cons _%lp-hd190772190800%_
                                                 _%expr190774190795%_))))
                                      (let ((_%expr190775190805%_
                                             (reverse _%expr190774190795%_)))
                                        ((lambda (_%g190766190807%_)
                                           (let* ((_%g190821190828%_
                                                   (lambda (_%g190822190825%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g190822190825%_))))
                                                  (_%g190820190853%_
                                                   (lambda (_%g190822190831%_)
                                                     ((lambda (_%g190823190833%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g190652190744%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g190766190807%_
                                  _%g190651190743%_))
                               (let ((__tmp192891
                                      (lambda (_%g190842190846%_
                                               _%g190843190848%_
                                               _%g190844190850%_)
                                        (cons (cons _%g190843190848%_
                                                    (cons _%g190842190846%_
                                                          '()))
                                              _%g190844190850%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp192891
                                  '()
                                  _%g190766190807%_
                                  _%g190651190743%_)))
                             _%g190823190833%_))
                 _%stx190645%_))
              _%g190822190831%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g190820190853%_
                                              (map (lambda (_%g190855190857%_)
                                                     (gxc#compile-e__1
                                                      _%self190644%_
                                                      _%g190855190857%_))
                                                   _%g190649190741%_))))
                                         _%expr190775190805%_))))))
                        (_%loop190770190790%_ _%target190767190785%_ '()))
                      (_%g190764190780%_ _%g190765190783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g190764190780%_
                                                     _%g190765190783%_)))))
                                        (_%g190763190860%_
                                         (map (lambda (_%g190862190864%_)
                                                (gxc#compile-e__1
                                                 _%self190644%_
                                                 _%g190862190864%_))
                                              (let ((__tmp192892
                                                     (lambda (_%g190866190869%_
                                                              _%g190867190871%_)
                                                       (cons _%g190866190869%_
                                                             _%g190867190871%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp192892
                                                 '()
                                                 _%g190650190742%_)))))))
                                   (__tmp192886
                                    (gxc#xform-let-locals
                                     (let ((__tmp192887
                                            (lambda (_%g190873190876%_
                                                     _%g190874190878%_)
                                              (cons _%g190873190876%_
                                                    _%g190874190878%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp192887
                                        '()
                                        _%g190651190743%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp192888
                                gxc#current-compile-local-env
                                __tmp192886)))
                           _%tl190658190698%_
                           _%expr190668190738%_
                           _%hd190669190739%_
                           _%hd190654190688%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190662190706%_
                                                   _%target190659190701%_
                                                   '()
                                                   '()))
                                                (_%g190647190680%_
                                                 _%g190648190683%_)))))
                                      (_%g190647190680%_ _%g190648190683%_))))
                              (_%g190647190680%_ _%g190648190683%_))))
                      (_%g190647190680%_ _%g190648190683%_)))))
          (_%g190646190881%_ _%stx190645%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings190511%_)
        (letrec ((_%flatten190513%_
                  (lambda (_%maybe-lst190571%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst190571%_))
                        (cons _%maybe-lst190571%_ '())
                        (let _%loop190573%_ ((_%rest190575%_
                                              _%maybe-lst190571%_)
                                             (_%result190576%_ '()))
                          (let* ((_%__stx192780192781%_ _%rest190575%_)
                                 (_%g190580190592%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx192780192781%_)))))
                            (let ((_%__kont192782192783%_
                                   (lambda (_%g190582190630%_
                                            _%g190583190631%_)
                                     (_%loop190573%_
                                      _%g190582190630%_
                                      (let ((__tmp192893
                                             (_%flatten190513%_
                                              _%g190583190631%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result190576%_
                                         __tmp192893)))))
                                  (_%__kont192784192785%_
                                   (lambda (_%g190587190604%_)
                                     (cons _%g190587190604%_
                                           _%result190576%_)))
                                  (_%__kont192786192787%_
                                   (lambda () _%result190576%_)))
                              (let ((_%g190578190617%_
                                     (lambda ()
                                       (let ((_%g190587190604%_
                                              _%__stx192780192781%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g190587190604%_))
                                             (_%__kont192784192785%_
                                              _%g190587190604%_)
                                             (_%__kont192786192787%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx192780192781%_))
                                    (let ((_%e190584190622%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx192780192781%_))))
                                      (let ((_%tl190586190627%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e190584190622%_)))
                                            (_%hd190585190625%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e190584190622%_))))
                                        (_%__kont192782192783%_
                                         _%tl190586190627%_
                                         _%hd190585190625%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g190578190617%_)))))))))))
          (let _%loop190515%_ ((_%rest190517%_
                                (_%flatten190513%_ _%bindings190511%_))
                               (_%locals190518%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest190519190530%_ _%rest190517%_)
                   (_%E190523190534%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest190519190530%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K190526190559%_
                     (lambda (_%rest190556%_ _%id190557%_)
                       (_%loop190515%_
                        _%rest190556%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id190557%_))
                              _%locals190518%_))))
                    (_%K190525190548%_
                     (lambda (_%id190546%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id190546%_))
                             _%locals190518%_)))
                    (_%K190524190539%_ (lambda () _%locals190518%_)))
                (let ((_%try-match190521190553%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest190519190530%_))
                             (let ((_%id190551%_ _%rest190519190530%_))
                               (_%K190525190548%_ _%id190551%_))
                             (_%K190524190539%_)))))
                  (if (pair? _%rest190519190530%_)
                      (let ((_%tl190528190564%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest190519190530%_)))
                            (_%hd190527190562%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest190519190530%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd190527190562%_))
                            (let ((_%id190567%_ _%hd190527190562%_)
                                  (_%rest190569%_ _%tl190528190564%_))
                              (_%K190526190559%_ _%rest190569%_ _%id190567%_))
                            (_%K190524190539%_)))
                      (_%try-match190521190553%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self190463%_ _%stx190464%_)
        (let* ((_%g190466190477%_
                (lambda (_%g190467190474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190467190474%_))))
               (_%g190465190508%_
                (lambda (_%g190467190480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190467190480%_))
                      (let ((_%e190470190482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190467190480%_))))
                        (let ((_%hd190471190485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190470190482%_)))
                              (_%tl190472190487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190470190482%_))))
                          ((lambda (_%g190468190490%_ _%g190469190491%_)
                             (let ((_%rands190506%_
                                    (map (lambda (_%g190501190503%_)
                                           (gxc#compile-e__1
                                            _%self190463%_
                                            _%g190501190503%_))
                                         _%g190468190490%_)))
                               (gxc#xform-wrap-source
                                (cons _%g190469190491%_ _%rands190506%_)
                                _%stx190464%_)))
                           _%tl190472190487%_
                           _%hd190471190485%_)))
                      (_%g190466190477%_ _%g190467190480%_)))))
          (_%g190465190508%_ _%stx190464%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self190393%_ _%stx190394%_)
        (let* ((_%g190396190413%_
                (lambda (_%g190397190410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190397190410%_))))
               (_%g190395190460%_
                (lambda (_%g190397190416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190397190416%_))
                      (let ((_%e190400190418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190397190416%_))))
                        (let ((_%hd190401190421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190400190418%_)))
                              (_%tl190402190423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190400190418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190402190423%_))
                              (let ((_%e190403190426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190402190423%_))))
                                (let ((_%hd190404190429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190403190426%_)))
                                      (_%tl190405190431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190403190426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190405190431%_))
                                      (let ((_%e190406190434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190405190431%_))))
                                        (let ((_%hd190407190437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190406190434%_)))
                                              (_%tl190408190439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190406190434%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190408190439%_))
                                              ((lambda (_%g190398190442%_
                                                        _%g190399190443%_)
                                                 (let ((_%expr190458%_
                                                        (gxc#compile-e__1
                                                         _%self190393%_
                                                         _%g190398190442%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g190399190443%_
                                                                (cons _%expr190458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx190394%_)))
                                               _%hd190407190437%_
                                               _%hd190404190429%_)
                                              (_%g190396190413%_
                                               _%g190397190416%_))))
                                      (_%g190396190413%_ _%g190397190416%_))))
                              (_%g190396190413%_ _%g190397190416%_))))
                      (_%g190396190413%_ _%g190397190416%_)))))
          (_%g190395190460%_ _%stx190394%_))))))
