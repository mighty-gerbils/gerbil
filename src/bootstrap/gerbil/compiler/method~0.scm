(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1773009269)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx195556%_)
        (let* ((_%self195558%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e195560%_
                (let ((__tmp195778 (gxc#stx-car-e _%stx195556%_)))
                  (declare (not safe))
                  (method-ref _%self195558%_ __tmp195778))))
          (if _%$e195560%_
              ((lambda (_%method195563%_)
                 (declare (not safe))
                 (let ((_%$e195566%_ (gx#stx-source _%stx195556%_)))
                   (if _%$e195566%_
                       ((lambda (_%source195569%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method195563%_ _%self195558%_ _%stx195556%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195569%_ '()))
                                 (let ((_%$e195573%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195573%_ _%$e195573%_ '())))))
                        _%$e195566%_)
                       (_%method195563%_ _%self195558%_ _%stx195556%_))))
               _%$e195560%_)
              (let ((__tmp195780 (gxc#stx-car-e _%stx195556%_))
                    (__tmp195779
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx195556%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self195558%_
                       __tmp195780
                       __tmp195779))))))
    (define gxc#compile-e__1
      (lambda (_%self195578%_ _%stx195579%_)
        (let ((_%$e195581%_
               (let ((__tmp195781 (gxc#stx-car-e _%stx195579%_)))
                 (declare (not safe))
                 (method-ref _%self195578%_ __tmp195781))))
          (if _%$e195581%_
              ((lambda (_%method195584%_)
                 (declare (not safe))
                 (let ((_%$e195587%_ (gx#stx-source _%stx195579%_)))
                   (if _%$e195587%_
                       ((lambda (_%source195590%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method195584%_ _%self195578%_ _%stx195579%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195590%_ '()))
                                 (let ((_%$e195594%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195594%_ _%$e195594%_ '())))))
                        _%$e195587%_)
                       (_%method195584%_ _%self195578%_ _%stx195579%_))))
               _%$e195581%_)
              (let ((__tmp195783 (gxc#stx-car-e _%stx195579%_))
                    (__tmp195782
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx195579%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self195578%_
                       __tmp195783
                       __tmp195782))))))
    (define gxc#compile-e
      (lambda _g195784_
        (let ((_g195785_ (let () (declare (not safe)) (##length _g195784_))))
          (cond ((let () (declare (not safe)) (##fx= _g195785_ 1))
                 (apply gxc#compile-e__0 _g195784_))
                ((let () (declare (not safe)) (##fx= _g195785_ 2))
                 (apply gxc#compile-e__1 _g195784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g195784_))))))
    (define gxc#stx-car-e
      (lambda (_%stx195554%_)
        (let ((__tmp195786
               (car (let () (declare (not safe)) (gx#stx-e _%stx195554%_)))))
          (declare (not safe))
          (gx#stx-e __tmp195786))))
    (define gxc#void-method (lambda (_%self195551%_ _%stx195552%_) '#!void))
    (define gxc#false-method (lambda (_%self195548%_ _%stx195549%_) '#f))
    (define gxc#true-method (lambda (_%self195545%_ _%stx195546%_) '#t))
    (define gxc#identity-method
      (lambda (_%self195542%_ _%stx195543%_) _%stx195543%_))
    (define gxc#::void-expression::t
      (let ((__tmp195787 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp195787
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args195539%_
        (apply make-instance gxc#::void-expression::t _%$args195539%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp195788
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
        (__make-atomic-promise __tmp195788)))
    (define gxc#::void-special-form::t
      (let ((__tmp195789 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp195789
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args195535%_
        (apply make-instance gxc#::void-special-form::t _%$args195535%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp195790
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
        (__make-atomic-promise __tmp195790)))
    (define gxc#::void::t
      (let ((__tmp195791
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp195791 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args195531%_
        (apply make-instance gxc#::void::t _%$args195531%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp195792
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195792)))
    (define gxc#::false-expression::t
      (let ((__tmp195793 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp195793
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args195527%_
        (apply make-instance gxc#::false-expression::t _%$args195527%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp195794
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
        (__make-atomic-promise __tmp195794)))
    (define gxc#::false-special-form::t
      (let ((__tmp195795 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp195795
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args195523%_
        (apply make-instance gxc#::false-special-form::t _%$args195523%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp195796
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
        (__make-atomic-promise __tmp195796)))
    (define gxc#::false::t
      (let ((__tmp195797
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp195797 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args195519%_
        (apply make-instance gxc#::false::t _%$args195519%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp195798
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195798)))
    (define gxc#::identity-expression::t
      (let ((__tmp195799 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp195799
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args195515%_
        (apply make-instance gxc#::identity-expression::t _%$args195515%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp195800
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
        (__make-atomic-promise __tmp195800)))
    (define gxc#::identity-special-form::t
      (let ((__tmp195801 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp195801
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args195511%_
        (apply make-instance gxc#::identity-special-form::t _%$args195511%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp195802
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
        (__make-atomic-promise __tmp195802)))
    (define gxc#::identity::t
      (let ((__tmp195803
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp195803
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args195507%_
        (apply make-instance gxc#::identity::t _%$args195507%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp195804
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195804)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp195805 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp195805
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args195503%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args195503%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp195806
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
        (__make-atomic-promise __tmp195806)))
    (define gxc#::basic-xform::t
      (let ((__tmp195807
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp195807
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args195499%_
        (apply make-instance gxc#::basic-xform::t _%$args195499%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp195808
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
        (__make-atomic-promise __tmp195808)))
    (define gxc#apply-begin%
      (lambda (_%self195455%_ _%stx195456%_)
        (let* ((_%g195458195468%_
                (lambda (_%g195459195465%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195459195465%_))))
               (_%g195457195495%_
                (lambda (_%g195459195471%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195459195471%_))
                      (let ((_%e195461195473%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195459195471%_))))
                        (let ((_%hd195462195476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195461195473%_)))
                              (_%tl195463195478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195461195473%_))))
                          ((lambda (_%g195460195481%_)
                             (for-each
                              (lambda (_%g195490195492%_)
                                (gxc#compile-e__1
                                 _%self195455%_
                                 _%g195490195492%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g195460195481%_))))
                           _%tl195463195478%_)))
                      (_%g195458195468%_ _%g195459195471%_)))))
          (_%g195457195495%_ _%stx195456%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self195416%_ _%stx195417%_)
        (let* ((_%g195419195429%_
                (lambda (_%g195420195426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195420195426%_))))
               (_%g195418195452%_
                (lambda (_%g195420195432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195420195432%_))
                      (let ((_%e195422195434%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195420195432%_))))
                        (let ((_%hd195423195437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195422195434%_)))
                              (_%tl195424195439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195422195434%_))))
                          ((lambda (_%g195421195442%_)
                             (gxc#compile-e__1
                              _%self195416%_
                              (last _%g195421195442%_)))
                           _%tl195424195439%_)))
                      (_%g195419195429%_ _%g195420195432%_)))))
          (_%g195418195452%_ _%stx195417%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self195412%_ _%stx195413%_)
        (let ((__tmp195811
               (lambda () (gxc#apply-begin% _%self195412%_ _%stx195413%_)))
              (__tmp195809
               (let ((__tmp195810
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp195810 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195811
           gx#current-expander-phi
           __tmp195809))))
    (define gxc#apply-module%
      (lambda (_%self195351%_ _%stx195352%_)
        (let* ((_%g195354195368%_
                (lambda (_%g195355195365%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195355195365%_))))
               (_%g195353195409%_
                (lambda (_%g195355195371%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195355195371%_))
                      (let ((_%e195358195373%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195355195371%_))))
                        (let ((_%hd195359195376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195358195373%_)))
                              (_%tl195360195378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195358195373%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195360195378%_))
                              (let ((_%e195361195381%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195360195378%_))))
                                (let ((_%hd195362195384%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195361195381%_)))
                                      (_%tl195363195386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195361195381%_))))
                                  ((lambda (_%g195356195389%_
                                            _%g195357195390%_)
                                     (let* ((_%ctx195403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g195357195390%_)))
                                            (_%ctx-stx195405%_
                                             (##structure-ref
                                              _%ctx195403%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp195812
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self195351%_
                                                _%ctx-stx195405%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195812
                                        gx#current-expander-context
                                        _%ctx195403%_)))
                                   _%tl195363195386%_
                                   _%hd195362195384%_)))
                              (_%g195354195368%_ _%g195355195371%_))))
                      (_%g195354195368%_ _%g195355195371%_)))))
          (_%g195353195409%_ _%stx195352%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self195283%_ _%stx195284%_)
        (let* ((_%g195286195303%_
                (lambda (_%g195287195300%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195287195300%_))))
               (_%g195285195348%_
                (lambda (_%g195287195306%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195287195306%_))
                      (let ((_%e195290195308%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195287195306%_))))
                        (let ((_%hd195291195311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195290195308%_)))
                              (_%tl195292195313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195290195308%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195292195313%_))
                              (let ((_%e195293195316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195292195313%_))))
                                (let ((_%hd195294195319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195293195316%_)))
                                      (_%tl195295195321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195293195316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195295195321%_))
                                      (let ((_%e195296195324%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195295195321%_))))
                                        (let ((_%hd195297195327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195296195324%_)))
                                              (_%tl195298195329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195296195324%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195298195329%_))
                                              ((lambda (_%g195288195332%_
                                                        _%g195289195333%_)
                                                 (gxc#compile-e__1
                                                  _%self195283%_
                                                  _%g195288195332%_))
                                               _%hd195297195327%_
                                               _%hd195294195319%_)
                                              (_%g195286195303%_
                                               _%g195287195306%_))))
                                      (_%g195286195303%_ _%g195287195306%_))))
                              (_%g195286195303%_ _%g195287195306%_))))
                      (_%g195286195303%_ _%g195287195306%_)))))
          (_%g195285195348%_ _%stx195284%_))))
    (define gxc#apply-define-values%
      (lambda (_%self195215%_ _%stx195216%_)
        (let* ((_%g195218195235%_
                (lambda (_%g195219195232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195219195232%_))))
               (_%g195217195280%_
                (lambda (_%g195219195238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195219195238%_))
                      (let ((_%e195222195240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195219195238%_))))
                        (let ((_%hd195223195243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195222195240%_)))
                              (_%tl195224195245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195222195240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195224195245%_))
                              (let ((_%e195225195248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195224195245%_))))
                                (let ((_%hd195226195251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195225195248%_)))
                                      (_%tl195227195253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195225195248%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195227195253%_))
                                      (let ((_%e195228195256%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195227195253%_))))
                                        (let ((_%hd195229195259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195228195256%_)))
                                              (_%tl195230195261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195228195256%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195230195261%_))
                                              ((lambda (_%g195220195264%_
                                                        _%g195221195265%_)
                                                 (gxc#compile-e__1
                                                  _%self195215%_
                                                  _%g195220195264%_))
                                               _%hd195229195259%_
                                               _%hd195226195251%_)
                                              (_%g195218195235%_
                                               _%g195219195238%_))))
                                      (_%g195218195235%_ _%g195219195238%_))))
                              (_%g195218195235%_ _%g195219195238%_))))
                      (_%g195218195235%_ _%g195219195238%_)))))
          (_%g195217195280%_ _%stx195216%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self195146%_ _%stx195147%_)
        (let* ((_%g195149195166%_
                (lambda (_%g195150195163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195150195163%_))))
               (_%g195148195212%_
                (lambda (_%g195150195169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195150195169%_))
                      (let ((_%e195153195171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195150195169%_))))
                        (let ((_%hd195154195174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195153195171%_)))
                              (_%tl195155195176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195153195171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195155195176%_))
                              (let ((_%e195156195179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195155195176%_))))
                                (let ((_%hd195157195182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195156195179%_)))
                                      (_%tl195158195184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195156195179%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195158195184%_))
                                      (let ((_%e195159195187%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195158195184%_))))
                                        (let ((_%hd195160195190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195159195187%_)))
                                              (_%tl195161195192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195159195187%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195161195192%_))
                                              ((lambda (_%g195151195195%_
                                                        _%g195152195196%_)
                                                 (let ((__tmp195815
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self195146%_
                                                           _%g195151195195%_)))
                                                       (__tmp195813
                                                        (let ((__tmp195814
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195814 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195815
                                                    gx#current-expander-phi
                                                    __tmp195813)))
                                               _%hd195160195190%_
                                               _%hd195157195182%_)
                                              (_%g195149195166%_
                                               _%g195150195169%_))))
                                      (_%g195149195166%_ _%g195150195169%_))))
                              (_%g195149195166%_ _%g195150195169%_))))
                      (_%g195149195166%_ _%g195150195169%_)))))
          (_%g195148195212%_ _%stx195147%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self195078%_ _%stx195079%_)
        (let* ((_%g195081195098%_
                (lambda (_%g195082195095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195082195095%_))))
               (_%g195080195143%_
                (lambda (_%g195082195101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195082195101%_))
                      (let ((_%e195085195103%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195082195101%_))))
                        (let ((_%hd195086195106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195085195103%_)))
                              (_%tl195087195108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195085195103%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195087195108%_))
                              (let ((_%e195088195111%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195087195108%_))))
                                (let ((_%hd195089195114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195088195111%_)))
                                      (_%tl195090195116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195088195111%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195090195116%_))
                                      (let ((_%e195091195119%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195090195116%_))))
                                        (let ((_%hd195092195122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195091195119%_)))
                                              (_%tl195093195124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195091195119%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195093195124%_))
                                              ((lambda (_%g195083195127%_
                                                        _%g195084195128%_)
                                                 (gxc#compile-e__1
                                                  _%self195078%_
                                                  _%g195083195127%_))
                                               _%hd195092195122%_
                                               _%hd195089195114%_)
                                              (_%g195081195098%_
                                               _%g195082195101%_))))
                                      (_%g195081195098%_ _%g195082195101%_))))
                              (_%g195081195098%_ _%g195082195101%_))))
                      (_%g195081195098%_ _%g195082195101%_)))))
          (_%g195080195143%_ _%stx195079%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self194964%_ _%stx194965%_)
        (let* ((_%g194967194995%_
                (lambda (_%g194968194992%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194968194992%_))))
               (_%g194966195075%_
                (lambda (_%g194968194998%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194968194998%_))
                      (let ((_%e194971195000%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194968194998%_))))
                        (let ((_%hd194972195003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194971195000%_)))
                              (_%tl194973195005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194971195000%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194973195005%_))
                              (let ((_g195816_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194973195005%_
                                        '0))))
                                (begin
                                  (let ((_g195817_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195816_)
                                               (##values-length _g195816_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195817_ 2)))
                                        (error "Context expects 2 values"
                                               _g195817_)))
                                  (let ((_%target194974195008%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195816_ 0)))
                                        (_%tl194976195010%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195816_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194976195010%_))
                                        (letrec ((_%loop194977195013%_
                                                  (lambda (_%hd194975195016%_
                                                           _%body194981195018%_
                                                           _%hd194982195019%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194975195016%_))
                                                        (let ((_%e194978195021%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194975195016%_))))
                  (let ((_%lp-hd194979195024%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194978195021%_)))
                        (_%lp-tl194980195026%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194978195021%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194979195024%_))
                        (let ((_%e194985195029%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd194979195024%_))))
                          (let ((_%hd194986195032%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194985195029%_)))
                                (_%tl194987195034%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194985195029%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194987195034%_))
                                (let ((_%e194988195037%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194987195034%_))))
                                  (let ((_%hd194989195040%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194988195037%_)))
                                        (_%tl194990195042%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194988195037%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194990195042%_))
                                        (_%loop194977195013%_
                                         _%lp-tl194980195026%_
                                         (cons _%hd194989195040%_
                                               _%body194981195018%_)
                                         (cons _%hd194986195032%_
                                               _%hd194982195019%_))
                                        (_%g194967194995%_
                                         _%g194968194998%_))))
                                (_%g194967194995%_ _%g194968194998%_))))
                        (_%g194967194995%_ _%g194968194998%_))))
                (let ((_%body194983195045%_ (reverse _%body194981195018%_))
                      (_%hd194984195046%_ (reverse _%hd194982195019%_)))
                  ((lambda (_%g194969195048%_ _%g194970195049%_)
                     (for-each
                      (lambda (_%g195063195065%_)
                        (gxc#compile-e__1 _%self194964%_ _%g195063195065%_))
                      (let ((__tmp195818
                             (lambda (_%g195067195070%_ _%g195068195072%_)
                               (cons _%g195067195070%_ _%g195068195072%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195818 '() _%g194969195048%_))))
                   _%body194983195045%_
                   _%hd194984195046%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194977195013%_
                                           _%target194974195008%_
                                           '()
                                           '()))
                                        (_%g194967194995%_
                                         _%g194968194998%_)))))
                              (_%g194967194995%_ _%g194968194998%_))))
                      (_%g194967194995%_ _%g194968194998%_)))))
          (_%g194966195075%_ _%stx194965%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self194821%_ _%stx194822%_)
        (let* ((_%g194824194859%_
                (lambda (_%g194825194856%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194825194856%_))))
               (_%g194823194961%_
                (lambda (_%g194825194862%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194825194862%_))
                      (let ((_%e194829194864%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194825194862%_))))
                        (let ((_%hd194830194867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194829194864%_)))
                              (_%tl194831194869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194829194864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194831194869%_))
                              (let ((_%e194832194872%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194831194869%_))))
                                (let ((_%hd194833194875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194832194872%_)))
                                      (_%tl194834194877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194832194872%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194833194875%_))
                                      (let ((_g195819_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194833194875%_
                                                '0))))
                                        (begin
                                          (let ((_g195820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195819_)
                                                       (##values-length
                                                        _g195819_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195820_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195820_)))
                                          (let ((_%target194835194880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195819_ 0)))
                                                (_%tl194837194882%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195819_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194837194882%_))
                                                (letrec ((_%loop194838194885%_
                                                          (lambda (_%hd194836194888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194842194890%_
                           _%hd194843194891%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194836194888%_))
                        (let ((_%e194839194893%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194836194888%_))))
                          (let ((_%lp-hd194840194896%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194839194893%_)))
                                (_%lp-tl194841194898%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194839194893%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194840194896%_))
                                (let ((_%e194846194901%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194840194896%_))))
                                  (let ((_%hd194847194904%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194846194901%_)))
                                        (_%tl194848194906%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194846194901%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194848194906%_))
                                        (let ((_%e194849194909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194848194906%_))))
                                          (let ((_%hd194850194912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194849194909%_)))
                                                (_%tl194851194914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194849194909%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194851194914%_))
                                                (_%loop194838194885%_
                                                 _%lp-tl194841194898%_
                                                 (cons _%hd194850194912%_
                                                       _%expr194842194890%_)
                                                 (cons _%hd194847194904%_
                                                       _%hd194843194891%_))
                                                (_%g194824194859%_
                                                 _%g194825194862%_))))
                                        (_%g194824194859%_
                                         _%g194825194862%_))))
                                (_%g194824194859%_ _%g194825194862%_))))
                        (let ((_%expr194844194917%_
                               (reverse _%expr194842194890%_))
                              (_%hd194845194918%_
                               (reverse _%hd194843194891%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194834194877%_))
                              (let ((_%e194852194920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194834194877%_))))
                                (let ((_%hd194853194923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194852194920%_)))
                                      (_%tl194854194925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194852194920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194854194925%_))
                                      ((lambda (_%g194826194928%_
                                                _%g194827194929%_
                                                _%g194828194930%_)
                                         (for-each
                                          (lambda (_%g194949194951%_)
                                            (gxc#compile-e__1
                                             _%self194821%_
                                             _%g194949194951%_))
                                          (let ((__tmp195822
                                                 (lambda (_%g194953194956%_
                                                          _%g194954194958%_)
                                                   (cons _%g194953194956%_
                                                         _%g194954194958%_)))
                                                (__tmp195821
                                                 (cons _%g194826194928%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195822
                                             __tmp195821
                                             _%g194827194929%_))))
                                       _%hd194853194923%_
                                       _%expr194844194917%_
                                       _%hd194845194918%_)
                                      (_%g194824194859%_ _%g194825194862%_))))
                              (_%g194824194859%_ _%g194825194862%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194838194885%_
                                                   _%target194835194880%_
                                                   '()
                                                   '()))
                                                (_%g194824194859%_
                                                 _%g194825194862%_)))))
                                      (_%g194824194859%_ _%g194825194862%_))))
                              (_%g194824194859%_ _%g194825194862%_))))
                      (_%g194824194859%_ _%g194825194862%_)))))
          (_%g194823194961%_ _%stx194822%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self194766%_ _%stx194767%_)
        (let* ((_%g194769194783%_
                (lambda (_%g194770194780%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194770194780%_))))
               (_%g194768194818%_
                (lambda (_%g194770194786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194770194786%_))
                      (let ((_%e194773194788%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194770194786%_))))
                        (let ((_%hd194774194791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194773194788%_)))
                              (_%tl194775194793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194773194788%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194775194793%_))
                              (let ((_%e194776194796%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194775194793%_))))
                                (let ((_%hd194777194799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194776194796%_)))
                                      (_%tl194778194801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194776194796%_))))
                                  ((lambda (_%g194771194804%_
                                            _%g194772194805%_)
                                     (gxc#compile-e__1
                                      _%self194766%_
                                      (last _%g194771194804%_)))
                                   _%tl194778194801%_
                                   _%hd194777194799%_)))
                              (_%g194769194783%_ _%g194770194786%_))))
                      (_%g194769194783%_ _%g194770194786%_)))))
          (_%g194768194818%_ _%stx194767%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self194698%_ _%stx194699%_)
        (let* ((_%g194701194718%_
                (lambda (_%g194702194715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194702194715%_))))
               (_%g194700194763%_
                (lambda (_%g194702194721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194702194721%_))
                      (let ((_%e194705194723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194702194721%_))))
                        (let ((_%hd194706194726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194705194723%_)))
                              (_%tl194707194728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194705194723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194707194728%_))
                              (let ((_%e194708194731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194707194728%_))))
                                (let ((_%hd194709194734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194708194731%_)))
                                      (_%tl194710194736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194708194731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194710194736%_))
                                      (let ((_%e194711194739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194710194736%_))))
                                        (let ((_%hd194712194742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194711194739%_)))
                                              (_%tl194713194744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194711194739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194713194744%_))
                                              ((lambda (_%g194703194747%_
                                                        _%g194704194748%_)
                                                 (gxc#compile-e__1
                                                  _%self194698%_
                                                  _%g194703194747%_))
                                               _%hd194712194742%_
                                               _%hd194709194734%_)
                                              (_%g194701194718%_
                                               _%g194702194721%_))))
                                      (_%g194701194718%_ _%g194702194721%_))))
                              (_%g194701194718%_ _%g194702194721%_))))
                      (_%g194701194718%_ _%g194702194721%_)))))
          (_%g194700194763%_ _%stx194699%_))))
    (define gxc#apply-operands
      (lambda (_%self194613%_ _%stx194614%_)
        (let* ((_%g194616194635%_
                (lambda (_%g194617194632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194617194632%_))))
               (_%g194615194695%_
                (lambda (_%g194617194638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194617194638%_))
                      (let ((_%e194619194640%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194617194638%_))))
                        (let ((_%hd194620194643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194619194640%_)))
                              (_%tl194621194645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194619194640%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194621194645%_))
                              (let ((_g195823_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194621194645%_
                                        '0))))
                                (begin
                                  (let ((_g195824_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195823_)
                                               (##values-length _g195823_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195824_ 2)))
                                        (error "Context expects 2 values"
                                               _g195824_)))
                                  (let ((_%target194622194648%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195823_ 0)))
                                        (_%tl194624194650%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195823_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194624194650%_))
                                        (letrec ((_%loop194625194653%_
                                                  (lambda (_%hd194623194656%_
                                                           _%rands194629194658%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194623194656%_))
                                                        (let ((_%e194626194660%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194623194656%_))))
                  (let ((_%lp-hd194627194663%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194626194660%_)))
                        (_%lp-tl194628194665%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194626194660%_))))
                    (_%loop194625194653%_
                     _%lp-tl194628194665%_
                     (cons _%lp-hd194627194663%_ _%rands194629194658%_))))
                (let ((_%rands194630194668%_ (reverse _%rands194629194658%_)))
                  ((lambda (_%g194618194670%_)
                     (for-each
                      (lambda (_%g194683194685%_)
                        (gxc#compile-e__1 _%self194613%_ _%g194683194685%_))
                      (let ((__tmp195825
                             (lambda (_%g194687194690%_ _%g194688194692%_)
                               (cons _%g194687194690%_ _%g194688194692%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195825 '() _%g194618194670%_))))
                   _%rands194630194668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194625194653%_
                                           _%target194622194648%_
                                           '()))
                                        (_%g194616194635%_
                                         _%g194617194638%_)))))
                              (_%g194616194635%_ _%g194617194638%_))))
                      (_%g194616194635%_ _%g194617194638%_)))))
          (_%g194615194695%_ _%stx194614%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx194610%_ _%src-stx194611%_)
        (let ((__tmp195826
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx194611%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx194610%_ __tmp195826))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx194606%_ _%src-stx194607%_ _%ctx194608%_)
        (gxc#compile-e__1
         _%ctx194608%_
         (gxc#xform-wrap-source _%stx194606%_ _%src-stx194607%_))))
    (define gxc#xform-begin%
      (lambda (_%self194561%_ _%stx194562%_)
        (let* ((_%g194564194574%_
                (lambda (_%g194565194571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194565194571%_))))
               (_%g194563194603%_
                (lambda (_%g194565194577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194565194577%_))
                      (let ((_%e194567194579%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194565194577%_))))
                        (let ((_%hd194568194582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194567194579%_)))
                              (_%tl194569194584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194567194579%_))))
                          ((lambda (_%g194566194587%_)
                             (let ((_%forms194601%_
                                    (map (lambda (_%g194596194598%_)
                                           (gxc#compile-e__1
                                            _%self194561%_
                                            _%g194596194598%_))
                                         _%g194566194587%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms194601%_)
                                _%stx194562%_)))
                           _%tl194569194584%_)))
                      (_%g194564194574%_ _%g194565194577%_)))))
          (_%g194563194603%_ _%stx194562%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self194515%_ _%stx194516%_)
        (let* ((_%g194518194528%_
                (lambda (_%g194519194525%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194519194525%_))))
               (_%g194517194558%_
                (lambda (_%g194519194531%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194519194531%_))
                      (let ((_%e194521194533%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194519194531%_))))
                        (let ((_%hd194522194536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194521194533%_)))
                              (_%tl194523194538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194521194533%_))))
                          ((lambda (_%g194520194541%_)
                             (let ((__tmp195829
                                    (lambda ()
                                      (let ((_%forms194556%_
                                             (map (lambda (_%g194551194553%_)
                                                    (gxc#compile-e__1
                                                     _%self194515%_
                                                     _%g194551194553%_))
                                                  _%g194520194541%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms194556%_)
                                         _%stx194516%_))))
                                   (__tmp195827
                                    (let ((__tmp195828
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp195828 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195829
                                gx#current-expander-phi
                                __tmp195827)))
                           _%tl194523194538%_)))
                      (_%g194518194528%_ _%g194519194531%_)))))
          (_%g194517194558%_ _%stx194516%_))))
    (define gxc#xform-module%
      (lambda (_%self194452%_ _%stx194453%_)
        (let* ((_%g194455194469%_
                (lambda (_%g194456194466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194456194466%_))))
               (_%g194454194512%_
                (lambda (_%g194456194472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194456194472%_))
                      (let ((_%e194459194474%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194456194472%_))))
                        (let ((_%hd194460194477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194459194474%_)))
                              (_%tl194461194479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194459194474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194461194479%_))
                              (let ((_%e194462194482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194461194479%_))))
                                (let ((_%hd194463194485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194462194482%_)))
                                      (_%tl194464194487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194462194482%_))))
                                  ((lambda (_%g194457194490%_
                                            _%g194458194491%_)
                                     (let* ((_%ctx194504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g194458194491%_)))
                                            (_%code194506%_
                                             (##structure-ref
                                              _%ctx194504%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code194509%_
                                             (let ((__tmp195830
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self194452%_
                                                       _%code194506%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp195830
                                                gx#current-expander-context
                                                _%ctx194504%_))))
                                       (##structure-set!
                                        _%ctx194504%_
                                        _%code194509%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g194458194491%_
                                                    (cons _%code194509%_ '())))
                                        _%stx194453%_)))
                                   _%tl194464194487%_
                                   _%hd194463194485%_)))
                              (_%g194455194469%_ _%g194456194472%_))))
                      (_%g194455194469%_ _%g194456194472%_)))))
          (_%g194454194512%_ _%stx194453%_))))
    (define gxc#xform-define-values%
      (lambda (_%self194382%_ _%stx194383%_)
        (let* ((_%g194385194402%_
                (lambda (_%g194386194399%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194386194399%_))))
               (_%g194384194449%_
                (lambda (_%g194386194405%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194386194405%_))
                      (let ((_%e194389194407%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194386194405%_))))
                        (let ((_%hd194390194410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194389194407%_)))
                              (_%tl194391194412%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194389194407%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194391194412%_))
                              (let ((_%e194392194415%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194391194412%_))))
                                (let ((_%hd194393194418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194392194415%_)))
                                      (_%tl194394194420%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194392194415%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194394194420%_))
                                      (let ((_%e194395194423%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194394194420%_))))
                                        (let ((_%hd194396194426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194395194423%_)))
                                              (_%tl194397194428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194395194423%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194397194428%_))
                                              ((lambda (_%g194387194431%_
                                                        _%g194388194432%_)
                                                 (let ((_%expr194447%_
                                                        (gxc#compile-e__1
                                                         _%self194382%_
                                                         _%g194387194431%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g194388194432%_
                                                                (cons _%expr194447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx194383%_)))
                                               _%hd194396194426%_
                                               _%hd194393194418%_)
                                              (_%g194385194402%_
                                               _%g194386194405%_))))
                                      (_%g194385194402%_ _%g194386194405%_))))
                              (_%g194385194402%_ _%g194386194405%_))))
                      (_%g194385194402%_ _%g194386194405%_)))))
          (_%g194384194449%_ _%stx194383%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self194311%_ _%stx194312%_)
        (let* ((_%g194314194331%_
                (lambda (_%g194315194328%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194315194328%_))))
               (_%g194313194379%_
                (lambda (_%g194315194334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194315194334%_))
                      (let ((_%e194318194336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194315194334%_))))
                        (let ((_%hd194319194339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194318194336%_)))
                              (_%tl194320194341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194318194336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194320194341%_))
                              (let ((_%e194321194344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194320194341%_))))
                                (let ((_%hd194322194347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194321194344%_)))
                                      (_%tl194323194349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194321194344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194323194349%_))
                                      (let ((_%e194324194352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194323194349%_))))
                                        (let ((_%hd194325194355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194324194352%_)))
                                              (_%tl194326194357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194324194352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194326194357%_))
                                              ((lambda (_%g194316194360%_
                                                        _%g194317194361%_)
                                                 (let ((__tmp195833
                                                        (lambda ()
                                                          (let ((_%expr194377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self194311%_ _%g194316194360%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g194317194361%_ (cons _%expr194377%_ '())))
                     _%stx194312%_))))
               (__tmp195831
                (let ((__tmp195832
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195832 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195833
                                                    gx#current-expander-phi
                                                    __tmp195831)))
                                               _%hd194325194355%_
                                               _%hd194322194347%_)
                                              (_%g194314194331%_
                                               _%g194315194334%_))))
                                      (_%g194314194331%_ _%g194315194334%_))))
                              (_%g194314194331%_ _%g194315194334%_))))
                      (_%g194314194331%_ _%g194315194334%_)))))
          (_%g194313194379%_ _%stx194312%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self194241%_ _%stx194242%_)
        (let* ((_%g194244194261%_
                (lambda (_%g194245194258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194245194258%_))))
               (_%g194243194308%_
                (lambda (_%g194245194264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194245194264%_))
                      (let ((_%e194248194266%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194245194264%_))))
                        (let ((_%hd194249194269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194248194266%_)))
                              (_%tl194250194271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194248194266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194250194271%_))
                              (let ((_%e194251194274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194250194271%_))))
                                (let ((_%hd194252194277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194251194274%_)))
                                      (_%tl194253194279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194251194274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194253194279%_))
                                      (let ((_%e194254194282%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194253194279%_))))
                                        (let ((_%hd194255194285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194254194282%_)))
                                              (_%tl194256194287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194254194282%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194256194287%_))
                                              ((lambda (_%g194246194290%_
                                                        _%g194247194291%_)
                                                 (let ((_%expr194306%_
                                                        (gxc#compile-e__1
                                                         _%self194241%_
                                                         _%g194246194290%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g194247194291%_
                                                                (cons _%expr194306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx194242%_)))
                                               _%hd194255194285%_
                                               _%hd194252194277%_)
                                              (_%g194244194261%_
                                               _%g194245194264%_))))
                                      (_%g194244194261%_ _%g194245194264%_))))
                              (_%g194244194261%_ _%g194245194264%_))))
                      (_%g194244194261%_ _%g194245194264%_)))))
          (_%g194243194308%_ _%stx194242%_))))
    (define gxc#xform-lambda%
      (lambda (_%self194179%_ _%stx194180%_)
        (let* ((_%g194182194196%_
                (lambda (_%g194183194193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194183194193%_))))
               (_%g194181194238%_
                (lambda (_%g194183194199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194183194199%_))
                      (let ((_%e194186194201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194183194199%_))))
                        (let ((_%hd194187194204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194186194201%_)))
                              (_%tl194188194206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194186194201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194188194206%_))
                              (let ((_%e194189194209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194188194206%_))))
                                (let ((_%hd194190194212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194189194209%_)))
                                      (_%tl194191194214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194189194209%_))))
                                  ((lambda (_%g194184194217%_
                                            _%g194185194218%_)
                                     (let ((__tmp195835
                                            (lambda ()
                                              (let ((_%body194236%_
                                                     (map (lambda (_%g194231194233%_)
                                                            (gxc#compile-e__1
                                                             _%self194179%_
                                                             _%g194231194233%_))
                                                          _%g194184194217%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g194185194218%_
                                                             _%body194236%_))
                                                 _%stx194180%_))))
                                           (__tmp195834
                                            (gxc#xform-let-locals
                                             _%g194185194218%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195835
                                        gxc#current-compile-local-env
                                        __tmp195834)))
                                   _%tl194191194214%_
                                   _%hd194190194212%_)))
                              (_%g194182194196%_ _%g194183194199%_))))
                      (_%g194182194196%_ _%g194183194199%_)))))
          (_%g194181194238%_ _%stx194180%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self194087%_ _%stx194088%_)
        (letrec ((_%clause-e194090%_
                  (lambda (_%clause194131%_)
                    (let* ((_%g194133194144%_
                            (lambda (_%g194134194141%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g194134194141%_))))
                           (_%g194132194176%_
                            (lambda (_%g194134194147%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g194134194147%_))
                                  (let ((_%e194137194149%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g194134194147%_))))
                                    (let ((_%hd194138194152%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194137194149%_)))
                                          (_%tl194139194154%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194137194149%_))))
                                      ((lambda (_%g194135194157%_
                                                _%g194136194158%_)
                                         (let ((__tmp195837
                                                (lambda ()
                                                  (let ((_%body194174%_
                                                         (map (lambda (_%g194169194171%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self194087%_
                         _%g194169194171%_))
                      _%g194135194157%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g194136194158%_
                                                          _%body194174%_))))
                                               (__tmp195836
                                                (gxc#xform-let-locals
                                                 _%g194136194158%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp195837
                                            gxc#current-compile-local-env
                                            __tmp195836)))
                                       _%tl194139194154%_
                                       _%hd194138194152%_)))
                                  (_%g194133194144%_ _%g194134194147%_)))))
                      (_%g194132194176%_ _%clause194131%_)))))
          (let* ((_%g194092194102%_
                  (lambda (_%g194093194099%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194093194099%_))))
                 (_%g194091194128%_
                  (lambda (_%g194093194105%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194093194105%_))
                        (let ((_%e194095194107%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194093194105%_))))
                          (let ((_%hd194096194110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194095194107%_)))
                                (_%tl194097194112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194095194107%_))))
                            ((lambda (_%g194094194115%_)
                               (let ((_%clauses194126%_
                                      (map _%clause-e194090%_
                                           _%g194094194115%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses194126%_)
                                  _%stx194088%_)))
                             _%tl194097194112%_)))
                        (_%g194092194102%_ _%g194093194105%_)))))
            (_%g194091194128%_ _%stx194088%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self193847%_ _%stx193848%_)
        (let* ((_%g193850193883%_
                (lambda (_%g193851193880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193851193880%_))))
               (_%g193849194084%_
                (lambda (_%g193851193886%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193851193886%_))
                      (let ((_%e193856193888%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193851193886%_))))
                        (let ((_%hd193857193891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193856193888%_)))
                              (_%tl193858193893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193856193888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193858193893%_))
                              (let ((_%e193859193896%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193858193893%_))))
                                (let ((_%hd193860193899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193859193896%_)))
                                      (_%tl193861193901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193859193896%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193860193899%_))
                                      (let ((_g195838_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193860193899%_
                                                '0))))
                                        (begin
                                          (let ((_g195839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195838_)
                                                       (##values-length
                                                        _g195838_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195839_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195839_)))
                                          (let ((_%target193862193904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195838_ 0)))
                                                (_%tl193864193906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195838_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193864193906%_))
                                                (letrec ((_%loop193865193909%_
                                                          (lambda (_%hd193863193912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193869193914%_
                           _%hd193870193915%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193863193912%_))
                        (let ((_%e193866193917%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193863193912%_))))
                          (let ((_%lp-hd193867193920%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193866193917%_)))
                                (_%lp-tl193868193922%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193866193917%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193867193920%_))
                                (let ((_%e193873193925%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193867193920%_))))
                                  (let ((_%hd193874193928%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193873193925%_)))
                                        (_%tl193875193930%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193873193925%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193875193930%_))
                                        (let ((_%e193876193933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193875193930%_))))
                                          (let ((_%hd193877193936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193876193933%_)))
                                                (_%tl193878193938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193876193933%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193878193938%_))
                                                (_%loop193865193909%_
                                                 _%lp-tl193868193922%_
                                                 (cons _%hd193877193936%_
                                                       _%expr193869193914%_)
                                                 (cons _%hd193874193928%_
                                                       _%hd193870193915%_))
                                                (_%g193850193883%_
                                                 _%g193851193886%_))))
                                        (_%g193850193883%_
                                         _%g193851193886%_))))
                                (_%g193850193883%_ _%g193851193886%_))))
                        (let ((_%expr193871193941%_
                               (reverse _%expr193869193914%_))
                              (_%hd193872193942%_
                               (reverse _%hd193870193915%_)))
                          ((lambda (_%g193852193944%_
                                    _%g193853193945%_
                                    _%g193854193946%_
                                    _%g193855193947%_)
                             (let* ((_%g193966193982%_
                                     (lambda (_%g193967193979%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g193967193979%_))))
                                    (_%g193965194070%_
                                     (lambda (_%g193967193985%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g193967193985%_))
                                           (let ((_g195840_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g193967193985%_
                                                     '0))))
                                             (begin
                                               (let ((_g195841_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g195840_)
                                                            (##values-length
                                                             _g195840_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g195841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g195841_)))
                                               (let ((_%target193969193987%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195840_
                                                         0)))
                                                     (_%tl193971193989%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195840_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193971193989%_))
                                                     (letrec ((_%loop193972193992%_
                                                               (lambda (_%hd193970193995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr193976193997%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd193970193995%_))
                             (let ((_%e193973193999%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd193970193995%_))))
                               (let ((_%lp-hd193974194002%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e193973193999%_)))
                                     (_%lp-tl193975194004%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e193973193999%_))))
                                 (_%loop193972193992%_
                                  _%lp-tl193975194004%_
                                  (cons _%lp-hd193974194002%_
                                        _%expr193976193997%_))))
                             (let ((_%expr193977194007%_
                                    (reverse _%expr193976193997%_)))
                               ((lambda (_%g193968194009%_)
                                  (let ((__tmp195844
                                         (lambda ()
                                           (let* ((_%g194023194030%_
                                                   (lambda (_%g194024194027%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g194024194027%_))))
                                                  (_%g194022194056%_
                                                   (lambda (_%g194024194033%_)
                                                     ((lambda (_%g194025194035%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193855193947%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193968194009%_
                                  _%g193854193946%_))
                               (let ((__tmp195845
                                      (lambda (_%g194045194049%_
                                               _%g194046194051%_
                                               _%g194047194053%_)
                                        (cons (cons _%g194046194051%_
                                                    (cons _%g194045194049%_
                                                          '()))
                                              _%g194047194053%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195845
                                  '()
                                  _%g193968194009%_
                                  _%g193854193946%_)))
                             _%g194025194035%_))
                 _%stx193848%_))
              _%g194024194033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g194022194056%_
                                              (map (lambda (_%g194058194060%_)
                                                     (gxc#compile-e__1
                                                      _%self193847%_
                                                      _%g194058194060%_))
                                                   _%g193852193944%_)))))
                                        (__tmp195842
                                         (gxc#xform-let-locals
                                          (let ((__tmp195843
                                                 (lambda (_%g194062194065%_
                                                          _%g194063194067%_)
                                                   (cons _%g194062194065%_
                                                         _%g194063194067%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195843
                                             '()
                                             _%g193854193946%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp195844
                                     gxc#current-compile-local-env
                                     __tmp195842)))
                                _%expr193977194007%_))))))
               (_%loop193972193992%_ _%target193969193987%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g193966193982%_
                                                      _%g193967193985%_)))))
                                           (_%g193966193982%_
                                            _%g193967193985%_)))))
                               (_%g193965194070%_
                                (map (lambda (_%g194072194074%_)
                                       (gxc#compile-e__1
                                        _%self193847%_
                                        _%g194072194074%_))
                                     (let ((__tmp195846
                                            (lambda (_%g194076194079%_
                                                     _%g194077194081%_)
                                              (cons _%g194076194079%_
                                                    _%g194077194081%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195846
                                        '()
                                        _%g193853193945%_))))))
                           _%tl193861193901%_
                           _%expr193871193941%_
                           _%hd193872193942%_
                           _%hd193857193891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193865193909%_
                                                   _%target193862193904%_
                                                   '()
                                                   '()))
                                                (_%g193850193883%_
                                                 _%g193851193886%_)))))
                                      (_%g193850193883%_ _%g193851193886%_))))
                              (_%g193850193883%_ _%g193851193886%_))))
                      (_%g193850193883%_ _%g193851193886%_)))))
          (_%g193849194084%_ _%stx193848%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self193607%_ _%stx193608%_)
        (let* ((_%g193610193643%_
                (lambda (_%g193611193640%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193611193640%_))))
               (_%g193609193844%_
                (lambda (_%g193611193646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193611193646%_))
                      (let ((_%e193616193648%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193611193646%_))))
                        (let ((_%hd193617193651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193616193648%_)))
                              (_%tl193618193653%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193616193648%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193618193653%_))
                              (let ((_%e193619193656%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193618193653%_))))
                                (let ((_%hd193620193659%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193619193656%_)))
                                      (_%tl193621193661%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193619193656%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193620193659%_))
                                      (let ((_g195847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193620193659%_
                                                '0))))
                                        (begin
                                          (let ((_g195848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195847_)
                                                       (##values-length
                                                        _g195847_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195848_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195848_)))
                                          (let ((_%target193622193664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195847_ 0)))
                                                (_%tl193624193666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195847_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193624193666%_))
                                                (letrec ((_%loop193625193669%_
                                                          (lambda (_%hd193623193672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193629193674%_
                           _%hd193630193675%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193623193672%_))
                        (let ((_%e193626193677%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193623193672%_))))
                          (let ((_%lp-hd193627193680%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193626193677%_)))
                                (_%lp-tl193628193682%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193626193677%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193627193680%_))
                                (let ((_%e193633193685%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193627193680%_))))
                                  (let ((_%hd193634193688%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193633193685%_)))
                                        (_%tl193635193690%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193633193685%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193635193690%_))
                                        (let ((_%e193636193693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193635193690%_))))
                                          (let ((_%hd193637193696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193636193693%_)))
                                                (_%tl193638193698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193636193693%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193638193698%_))
                                                (_%loop193625193669%_
                                                 _%lp-tl193628193682%_
                                                 (cons _%hd193637193696%_
                                                       _%expr193629193674%_)
                                                 (cons _%hd193634193688%_
                                                       _%hd193630193675%_))
                                                (_%g193610193643%_
                                                 _%g193611193646%_))))
                                        (_%g193610193643%_
                                         _%g193611193646%_))))
                                (_%g193610193643%_ _%g193611193646%_))))
                        (let ((_%expr193631193701%_
                               (reverse _%expr193629193674%_))
                              (_%hd193632193702%_
                               (reverse _%hd193630193675%_)))
                          ((lambda (_%g193612193704%_
                                    _%g193613193705%_
                                    _%g193614193706%_
                                    _%g193615193707%_)
                             (let ((__tmp195851
                                    (lambda ()
                                      (let* ((_%g193727193743%_
                                              (lambda (_%g193728193740%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g193728193740%_))))
                                             (_%g193726193823%_
                                              (lambda (_%g193728193746%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g193728193746%_))
                                                    (let ((_g195852_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g193728193746%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g195853_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g195852_)
                             (##values-length _g195852_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g195853_ 2)))
                      (error "Context expects 2 values" _g195853_)))
                (let ((_%target193730193748%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195852_ 0)))
                      (_%tl193732193750%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195852_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193732193750%_))
                      (letrec ((_%loop193733193753%_
                                (lambda (_%hd193731193756%_
                                         _%expr193737193758%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193731193756%_))
                                      (let ((_%e193734193760%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd193731193756%_))))
                                        (let ((_%lp-hd193735193763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193734193760%_)))
                                              (_%lp-tl193736193765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193734193760%_))))
                                          (_%loop193733193753%_
                                           _%lp-tl193736193765%_
                                           (cons _%lp-hd193735193763%_
                                                 _%expr193737193758%_))))
                                      (let ((_%expr193738193768%_
                                             (reverse _%expr193737193758%_)))
                                        ((lambda (_%g193729193770%_)
                                           (let* ((_%g193784193791%_
                                                   (lambda (_%g193785193788%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g193785193788%_))))
                                                  (_%g193783193816%_
                                                   (lambda (_%g193785193794%_)
                                                     ((lambda (_%g193786193796%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193615193707%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193729193770%_
                                  _%g193614193706%_))
                               (let ((__tmp195854
                                      (lambda (_%g193805193809%_
                                               _%g193806193811%_
                                               _%g193807193813%_)
                                        (cons (cons _%g193806193811%_
                                                    (cons _%g193805193809%_
                                                          '()))
                                              _%g193807193813%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195854
                                  '()
                                  _%g193729193770%_
                                  _%g193614193706%_)))
                             _%g193786193796%_))
                 _%stx193608%_))
              _%g193785193794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g193783193816%_
                                              (map (lambda (_%g193818193820%_)
                                                     (gxc#compile-e__1
                                                      _%self193607%_
                                                      _%g193818193820%_))
                                                   _%g193612193704%_))))
                                         _%expr193738193768%_))))))
                        (_%loop193733193753%_ _%target193730193748%_ '()))
                      (_%g193727193743%_ _%g193728193746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g193727193743%_
                                                     _%g193728193746%_)))))
                                        (_%g193726193823%_
                                         (map (lambda (_%g193825193827%_)
                                                (gxc#compile-e__1
                                                 _%self193607%_
                                                 _%g193825193827%_))
                                              (let ((__tmp195855
                                                     (lambda (_%g193829193832%_
                                                              _%g193830193834%_)
                                                       (cons _%g193829193832%_
                                                             _%g193830193834%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp195855
                                                 '()
                                                 _%g193613193705%_)))))))
                                   (__tmp195849
                                    (gxc#xform-let-locals
                                     (let ((__tmp195850
                                            (lambda (_%g193836193839%_
                                                     _%g193837193841%_)
                                              (cons _%g193836193839%_
                                                    _%g193837193841%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195850
                                        '()
                                        _%g193614193706%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195851
                                gxc#current-compile-local-env
                                __tmp195849)))
                           _%tl193621193661%_
                           _%expr193631193701%_
                           _%hd193632193702%_
                           _%hd193617193651%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193625193669%_
                                                   _%target193622193664%_
                                                   '()
                                                   '()))
                                                (_%g193610193643%_
                                                 _%g193611193646%_)))))
                                      (_%g193610193643%_ _%g193611193646%_))))
                              (_%g193610193643%_ _%g193611193646%_))))
                      (_%g193610193643%_ _%g193611193646%_)))))
          (_%g193609193844%_ _%stx193608%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings193474%_)
        (letrec ((_%flatten193476%_
                  (lambda (_%maybe-lst193534%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst193534%_))
                        (cons _%maybe-lst193534%_ '())
                        (let _%loop193536%_ ((_%rest193538%_
                                              _%maybe-lst193534%_)
                                             (_%result193539%_ '()))
                          (let* ((_%__stx195743195744%_ _%rest193538%_)
                                 (_%g193543193555%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx195743195744%_)))))
                            (let ((_%__kont195745195746%_
                                   (lambda (_%g193545193593%_
                                            _%g193546193594%_)
                                     (_%loop193536%_
                                      _%g193545193593%_
                                      (let ((__tmp195856
                                             (_%flatten193476%_
                                              _%g193546193594%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result193539%_
                                         __tmp195856)))))
                                  (_%__kont195747195748%_
                                   (lambda (_%g193550193567%_)
                                     (cons _%g193550193567%_
                                           _%result193539%_)))
                                  (_%__kont195749195750%_
                                   (lambda () _%result193539%_)))
                              (let ((_%g193541193580%_
                                     (lambda ()
                                       (let ((_%g193550193567%_
                                              _%__stx195743195744%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g193550193567%_))
                                             (_%__kont195747195748%_
                                              _%g193550193567%_)
                                             (_%__kont195749195750%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx195743195744%_))
                                    (let ((_%e193547193585%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx195743195744%_))))
                                      (let ((_%tl193549193590%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193547193585%_)))
                                            (_%hd193548193588%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193547193585%_))))
                                        (_%__kont195745195746%_
                                         _%tl193549193590%_
                                         _%hd193548193588%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193541193580%_)))))))))))
          (let _%loop193478%_ ((_%rest193480%_
                                (_%flatten193476%_ _%bindings193474%_))
                               (_%locals193481%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest193482193493%_ _%rest193480%_)
                   (_%E193486193497%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest193482193493%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K193489193522%_
                     (lambda (_%rest193519%_ _%id193520%_)
                       (_%loop193478%_
                        _%rest193519%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id193520%_))
                              _%locals193481%_))))
                    (_%K193488193511%_
                     (lambda (_%id193509%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id193509%_))
                             _%locals193481%_)))
                    (_%K193487193502%_ (lambda () _%locals193481%_)))
                (let ((_%try-match193484193516%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest193482193493%_))
                             (let ((_%id193514%_ _%rest193482193493%_))
                               (_%K193488193511%_ _%id193514%_))
                             (_%K193487193502%_)))))
                  (if (pair? _%rest193482193493%_)
                      (let ((_%tl193491193527%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest193482193493%_)))
                            (_%hd193490193525%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest193482193493%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd193490193525%_))
                            (let ((_%id193530%_ _%hd193490193525%_)
                                  (_%rest193532%_ _%tl193491193527%_))
                              (_%K193489193522%_ _%rest193532%_ _%id193530%_))
                            (_%K193487193502%_)))
                      (_%try-match193484193516%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self193426%_ _%stx193427%_)
        (let* ((_%g193429193440%_
                (lambda (_%g193430193437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193430193437%_))))
               (_%g193428193471%_
                (lambda (_%g193430193443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193430193443%_))
                      (let ((_%e193433193445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193430193443%_))))
                        (let ((_%hd193434193448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193433193445%_)))
                              (_%tl193435193450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193433193445%_))))
                          ((lambda (_%g193431193453%_ _%g193432193454%_)
                             (let ((_%rands193469%_
                                    (map (lambda (_%g193464193466%_)
                                           (gxc#compile-e__1
                                            _%self193426%_
                                            _%g193464193466%_))
                                         _%g193431193453%_)))
                               (gxc#xform-wrap-source
                                (cons _%g193432193454%_ _%rands193469%_)
                                _%stx193427%_)))
                           _%tl193435193450%_
                           _%hd193434193448%_)))
                      (_%g193429193440%_ _%g193430193443%_)))))
          (_%g193428193471%_ _%stx193427%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self193356%_ _%stx193357%_)
        (let* ((_%g193359193376%_
                (lambda (_%g193360193373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193360193373%_))))
               (_%g193358193423%_
                (lambda (_%g193360193379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193360193379%_))
                      (let ((_%e193363193381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193360193379%_))))
                        (let ((_%hd193364193384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193363193381%_)))
                              (_%tl193365193386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193363193381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193365193386%_))
                              (let ((_%e193366193389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193365193386%_))))
                                (let ((_%hd193367193392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193366193389%_)))
                                      (_%tl193368193394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193366193389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193368193394%_))
                                      (let ((_%e193369193397%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193368193394%_))))
                                        (let ((_%hd193370193400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193369193397%_)))
                                              (_%tl193371193402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193369193397%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193371193402%_))
                                              ((lambda (_%g193361193405%_
                                                        _%g193362193406%_)
                                                 (let ((_%expr193421%_
                                                        (gxc#compile-e__1
                                                         _%self193356%_
                                                         _%g193361193405%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g193362193406%_
                                                                (cons _%expr193421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193357%_)))
                                               _%hd193370193400%_
                                               _%hd193367193392%_)
                                              (_%g193359193376%_
                                               _%g193360193379%_))))
                                      (_%g193359193376%_ _%g193360193379%_))))
                              (_%g193359193376%_ _%g193360193379%_))))
                      (_%g193359193376%_ _%g193360193379%_)))))
          (_%g193358193423%_ _%stx193357%_))))))
