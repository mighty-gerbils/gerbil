(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1771037610)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx203494%_)
        (let* ((_%self203496%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e203498%_
                (let ((__tmp203716 (gxc#stx-car-e _%stx203494%_)))
                  (declare (not safe))
                  (method-ref _%self203496%_ __tmp203716))))
          (if _%$e203498%_
              ((lambda (_%method203501%_)
                 (declare (not safe))
                 (let ((_%$e203504%_ (gx#stx-source _%stx203494%_)))
                   (if _%$e203504%_
                       ((lambda (_%source203507%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method203501%_ _%self203496%_ _%stx203494%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source203507%_ '()))
                                 (let ((_%$e203511%_
                                        (gxc#current-compile-context)))
                                   (if _%$e203511%_ _%$e203511%_ '())))))
                        _%$e203504%_)
                       (_%method203501%_ _%self203496%_ _%stx203494%_))))
               _%$e203498%_)
              (let ((__tmp203718 (gxc#stx-car-e _%stx203494%_))
                    (__tmp203717
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx203494%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self203496%_
                       __tmp203718
                       __tmp203717))))))
    (define gxc#compile-e__1
      (lambda (_%self203516%_ _%stx203517%_)
        (let ((_%$e203519%_
               (let ((__tmp203719 (gxc#stx-car-e _%stx203517%_)))
                 (declare (not safe))
                 (method-ref _%self203516%_ __tmp203719))))
          (if _%$e203519%_
              ((lambda (_%method203522%_)
                 (declare (not safe))
                 (let ((_%$e203525%_ (gx#stx-source _%stx203517%_)))
                   (if _%$e203525%_
                       ((lambda (_%source203528%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method203522%_ _%self203516%_ _%stx203517%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source203528%_ '()))
                                 (let ((_%$e203532%_
                                        (gxc#current-compile-context)))
                                   (if _%$e203532%_ _%$e203532%_ '())))))
                        _%$e203525%_)
                       (_%method203522%_ _%self203516%_ _%stx203517%_))))
               _%$e203519%_)
              (let ((__tmp203721 (gxc#stx-car-e _%stx203517%_))
                    (__tmp203720
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx203517%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self203516%_
                       __tmp203721
                       __tmp203720))))))
    (define gxc#compile-e
      (lambda _g203722_
        (let ((_g203723_ (let () (declare (not safe)) (##length _g203722_))))
          (cond ((let () (declare (not safe)) (##fx= _g203723_ 1))
                 (apply gxc#compile-e__0 _g203722_))
                ((let () (declare (not safe)) (##fx= _g203723_ 2))
                 (apply gxc#compile-e__1 _g203722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g203722_))))))
    (define gxc#stx-car-e
      (lambda (_%stx203492%_)
        (let ((__tmp203724
               (car (let () (declare (not safe)) (gx#stx-e _%stx203492%_)))))
          (declare (not safe))
          (gx#stx-e __tmp203724))))
    (define gxc#void-method (lambda (_%self203489%_ _%stx203490%_) '#!void))
    (define gxc#false-method (lambda (_%self203486%_ _%stx203487%_) '#f))
    (define gxc#true-method (lambda (_%self203483%_ _%stx203484%_) '#t))
    (define gxc#identity-method
      (lambda (_%self203480%_ _%stx203481%_) _%stx203481%_))
    (define gxc#::void-expression::t
      (let ((__tmp203725 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp203725
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args203477%_
        (apply make-instance gxc#::void-expression::t _%$args203477%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp203726
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
        (__make-atomic-promise __tmp203726)))
    (define gxc#::void-special-form::t
      (let ((__tmp203727 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp203727
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args203473%_
        (apply make-instance gxc#::void-special-form::t _%$args203473%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp203728
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
        (__make-atomic-promise __tmp203728)))
    (define gxc#::void::t
      (let ((__tmp203729
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp203729 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args203469%_
        (apply make-instance gxc#::void::t _%$args203469%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp203730
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp203730)))
    (define gxc#::false-expression::t
      (let ((__tmp203731 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp203731
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args203465%_
        (apply make-instance gxc#::false-expression::t _%$args203465%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp203732
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
        (__make-atomic-promise __tmp203732)))
    (define gxc#::false-special-form::t
      (let ((__tmp203733 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp203733
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args203461%_
        (apply make-instance gxc#::false-special-form::t _%$args203461%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp203734
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
        (__make-atomic-promise __tmp203734)))
    (define gxc#::false::t
      (let ((__tmp203735
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp203735 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args203457%_
        (apply make-instance gxc#::false::t _%$args203457%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp203736
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp203736)))
    (define gxc#::identity-expression::t
      (let ((__tmp203737 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp203737
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args203453%_
        (apply make-instance gxc#::identity-expression::t _%$args203453%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp203738
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
        (__make-atomic-promise __tmp203738)))
    (define gxc#::identity-special-form::t
      (let ((__tmp203739 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp203739
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args203449%_
        (apply make-instance gxc#::identity-special-form::t _%$args203449%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp203740
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
        (__make-atomic-promise __tmp203740)))
    (define gxc#::identity::t
      (let ((__tmp203741
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp203741
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args203445%_
        (apply make-instance gxc#::identity::t _%$args203445%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp203742
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp203742)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp203743 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp203743
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args203441%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args203441%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp203744
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
        (__make-atomic-promise __tmp203744)))
    (define gxc#::basic-xform::t
      (let ((__tmp203745
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp203745
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args203437%_
        (apply make-instance gxc#::basic-xform::t _%$args203437%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp203746
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
        (__make-atomic-promise __tmp203746)))
    (define gxc#apply-begin%
      (lambda (_%self203393%_ _%stx203394%_)
        (let* ((_%g203396203406%_
                (lambda (_%g203397203403%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203397203403%_))))
               (_%g203395203433%_
                (lambda (_%g203397203409%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203397203409%_))
                      (let ((_%e203399203411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203397203409%_))))
                        (let ((_%hd203400203414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203399203411%_)))
                              (_%tl203401203416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203399203411%_))))
                          ((lambda (_%g203398203419%_)
                             (for-each
                              (lambda (_%g203428203430%_)
                                (gxc#compile-e__1
                                 _%self203393%_
                                 _%g203428203430%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g203398203419%_))))
                           _%tl203401203416%_)))
                      (_%g203396203406%_ _%g203397203409%_)))))
          (_%g203395203433%_ _%stx203394%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self203354%_ _%stx203355%_)
        (let* ((_%g203357203367%_
                (lambda (_%g203358203364%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203358203364%_))))
               (_%g203356203390%_
                (lambda (_%g203358203370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203358203370%_))
                      (let ((_%e203360203372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203358203370%_))))
                        (let ((_%hd203361203375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203360203372%_)))
                              (_%tl203362203377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203360203372%_))))
                          ((lambda (_%g203359203380%_)
                             (gxc#compile-e__1
                              _%self203354%_
                              (last _%g203359203380%_)))
                           _%tl203362203377%_)))
                      (_%g203357203367%_ _%g203358203370%_)))))
          (_%g203356203390%_ _%stx203355%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self203350%_ _%stx203351%_)
        (let ((__tmp203749
               (lambda () (gxc#apply-begin% _%self203350%_ _%stx203351%_)))
              (__tmp203747
               (let ((__tmp203748
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp203748 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203749
           gx#current-expander-phi
           __tmp203747))))
    (define gxc#apply-module%
      (lambda (_%self203289%_ _%stx203290%_)
        (let* ((_%g203292203306%_
                (lambda (_%g203293203303%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203293203303%_))))
               (_%g203291203347%_
                (lambda (_%g203293203309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203293203309%_))
                      (let ((_%e203296203311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203293203309%_))))
                        (let ((_%hd203297203314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203296203311%_)))
                              (_%tl203298203316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203296203311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203298203316%_))
                              (let ((_%e203299203319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203298203316%_))))
                                (let ((_%hd203300203322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203299203319%_)))
                                      (_%tl203301203324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203299203319%_))))
                                  ((lambda (_%g203294203327%_
                                            _%g203295203328%_)
                                     (let* ((_%ctx203341%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g203295203328%_)))
                                            (_%ctx-stx203343%_
                                             (##structure-ref
                                              _%ctx203341%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp203750
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self203289%_
                                                _%ctx-stx203343%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp203750
                                        gx#current-expander-context
                                        _%ctx203341%_)))
                                   _%tl203301203324%_
                                   _%hd203300203322%_)))
                              (_%g203292203306%_ _%g203293203309%_))))
                      (_%g203292203306%_ _%g203293203309%_)))))
          (_%g203291203347%_ _%stx203290%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self203221%_ _%stx203222%_)
        (let* ((_%g203224203241%_
                (lambda (_%g203225203238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203225203238%_))))
               (_%g203223203286%_
                (lambda (_%g203225203244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203225203244%_))
                      (let ((_%e203228203246%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203225203244%_))))
                        (let ((_%hd203229203249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203228203246%_)))
                              (_%tl203230203251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203228203246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203230203251%_))
                              (let ((_%e203231203254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203230203251%_))))
                                (let ((_%hd203232203257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203231203254%_)))
                                      (_%tl203233203259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203231203254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203233203259%_))
                                      (let ((_%e203234203262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203233203259%_))))
                                        (let ((_%hd203235203265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203234203262%_)))
                                              (_%tl203236203267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203234203262%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203236203267%_))
                                              ((lambda (_%g203226203270%_
                                                        _%g203227203271%_)
                                                 (gxc#compile-e__1
                                                  _%self203221%_
                                                  _%g203226203270%_))
                                               _%hd203235203265%_
                                               _%hd203232203257%_)
                                              (_%g203224203241%_
                                               _%g203225203244%_))))
                                      (_%g203224203241%_ _%g203225203244%_))))
                              (_%g203224203241%_ _%g203225203244%_))))
                      (_%g203224203241%_ _%g203225203244%_)))))
          (_%g203223203286%_ _%stx203222%_))))
    (define gxc#apply-define-values%
      (lambda (_%self203153%_ _%stx203154%_)
        (let* ((_%g203156203173%_
                (lambda (_%g203157203170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203157203170%_))))
               (_%g203155203218%_
                (lambda (_%g203157203176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203157203176%_))
                      (let ((_%e203160203178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203157203176%_))))
                        (let ((_%hd203161203181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203160203178%_)))
                              (_%tl203162203183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203160203178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203162203183%_))
                              (let ((_%e203163203186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203162203183%_))))
                                (let ((_%hd203164203189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203163203186%_)))
                                      (_%tl203165203191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203163203186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203165203191%_))
                                      (let ((_%e203166203194%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203165203191%_))))
                                        (let ((_%hd203167203197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203166203194%_)))
                                              (_%tl203168203199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203166203194%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203168203199%_))
                                              ((lambda (_%g203158203202%_
                                                        _%g203159203203%_)
                                                 (gxc#compile-e__1
                                                  _%self203153%_
                                                  _%g203158203202%_))
                                               _%hd203167203197%_
                                               _%hd203164203189%_)
                                              (_%g203156203173%_
                                               _%g203157203176%_))))
                                      (_%g203156203173%_ _%g203157203176%_))))
                              (_%g203156203173%_ _%g203157203176%_))))
                      (_%g203156203173%_ _%g203157203176%_)))))
          (_%g203155203218%_ _%stx203154%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self203084%_ _%stx203085%_)
        (let* ((_%g203087203104%_
                (lambda (_%g203088203101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203088203101%_))))
               (_%g203086203150%_
                (lambda (_%g203088203107%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203088203107%_))
                      (let ((_%e203091203109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203088203107%_))))
                        (let ((_%hd203092203112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203091203109%_)))
                              (_%tl203093203114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203091203109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203093203114%_))
                              (let ((_%e203094203117%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203093203114%_))))
                                (let ((_%hd203095203120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203094203117%_)))
                                      (_%tl203096203122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203094203117%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203096203122%_))
                                      (let ((_%e203097203125%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203096203122%_))))
                                        (let ((_%hd203098203128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203097203125%_)))
                                              (_%tl203099203130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203097203125%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203099203130%_))
                                              ((lambda (_%g203089203133%_
                                                        _%g203090203134%_)
                                                 (let ((__tmp203753
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self203084%_
                                                           _%g203089203133%_)))
                                                       (__tmp203751
                                                        (let ((__tmp203752
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp203752 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp203753
                                                    gx#current-expander-phi
                                                    __tmp203751)))
                                               _%hd203098203128%_
                                               _%hd203095203120%_)
                                              (_%g203087203104%_
                                               _%g203088203107%_))))
                                      (_%g203087203104%_ _%g203088203107%_))))
                              (_%g203087203104%_ _%g203088203107%_))))
                      (_%g203087203104%_ _%g203088203107%_)))))
          (_%g203086203150%_ _%stx203085%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self203016%_ _%stx203017%_)
        (let* ((_%g203019203036%_
                (lambda (_%g203020203033%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203020203033%_))))
               (_%g203018203081%_
                (lambda (_%g203020203039%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203020203039%_))
                      (let ((_%e203023203041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203020203039%_))))
                        (let ((_%hd203024203044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203023203041%_)))
                              (_%tl203025203046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203023203041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203025203046%_))
                              (let ((_%e203026203049%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203025203046%_))))
                                (let ((_%hd203027203052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203026203049%_)))
                                      (_%tl203028203054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203026203049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203028203054%_))
                                      (let ((_%e203029203057%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203028203054%_))))
                                        (let ((_%hd203030203060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203029203057%_)))
                                              (_%tl203031203062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203029203057%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203031203062%_))
                                              ((lambda (_%g203021203065%_
                                                        _%g203022203066%_)
                                                 (gxc#compile-e__1
                                                  _%self203016%_
                                                  _%g203021203065%_))
                                               _%hd203030203060%_
                                               _%hd203027203052%_)
                                              (_%g203019203036%_
                                               _%g203020203039%_))))
                                      (_%g203019203036%_ _%g203020203039%_))))
                              (_%g203019203036%_ _%g203020203039%_))))
                      (_%g203019203036%_ _%g203020203039%_)))))
          (_%g203018203081%_ _%stx203017%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self202902%_ _%stx202903%_)
        (let* ((_%g202905202933%_
                (lambda (_%g202906202930%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202906202930%_))))
               (_%g202904203013%_
                (lambda (_%g202906202936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202906202936%_))
                      (let ((_%e202909202938%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202906202936%_))))
                        (let ((_%hd202910202941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202909202938%_)))
                              (_%tl202911202943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202909202938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202911202943%_))
                              (let ((_g203754_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202911202943%_
                                        '0))))
                                (begin
                                  (let ((_g203755_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203754_)
                                               (##values-length _g203754_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203755_ 2)))
                                        (error "Context expects 2 values"
                                               _g203755_)))
                                  (let ((_%target202912202946%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g203754_ 0)))
                                        (_%tl202914202948%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g203754_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202914202948%_))
                                        (letrec ((_%loop202915202951%_
                                                  (lambda (_%hd202913202954%_
                                                           _%body202919202956%_
                                                           _%hd202920202957%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202913202954%_))
                                                        (let ((_%e202916202959%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202913202954%_))))
                  (let ((_%lp-hd202917202962%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202916202959%_)))
                        (_%lp-tl202918202964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202916202959%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202917202962%_))
                        (let ((_%e202923202967%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd202917202962%_))))
                          (let ((_%hd202924202970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202923202967%_)))
                                (_%tl202925202972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202923202967%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202925202972%_))
                                (let ((_%e202926202975%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl202925202972%_))))
                                  (let ((_%hd202927202978%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202926202975%_)))
                                        (_%tl202928202980%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202926202975%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202928202980%_))
                                        (_%loop202915202951%_
                                         _%lp-tl202918202964%_
                                         (cons _%hd202927202978%_
                                               _%body202919202956%_)
                                         (cons _%hd202924202970%_
                                               _%hd202920202957%_))
                                        (_%g202905202933%_
                                         _%g202906202936%_))))
                                (_%g202905202933%_ _%g202906202936%_))))
                        (_%g202905202933%_ _%g202906202936%_))))
                (let ((_%body202921202983%_ (reverse _%body202919202956%_))
                      (_%hd202922202984%_ (reverse _%hd202920202957%_)))
                  ((lambda (_%g202907202986%_ _%g202908202987%_)
                     (for-each
                      (lambda (_%g203001203003%_)
                        (gxc#compile-e__1 _%self202902%_ _%g203001203003%_))
                      (let ((__tmp203756
                             (lambda (_%g203005203008%_ _%g203006203010%_)
                               (cons _%g203005203008%_ _%g203006203010%_))))
                        (declare (not safe))
                        (foldr__0 __tmp203756 '() _%g202907202986%_))))
                   _%body202921202983%_
                   _%hd202922202984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202915202951%_
                                           _%target202912202946%_
                                           '()
                                           '()))
                                        (_%g202905202933%_
                                         _%g202906202936%_)))))
                              (_%g202905202933%_ _%g202906202936%_))))
                      (_%g202905202933%_ _%g202906202936%_)))))
          (_%g202904203013%_ _%stx202903%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self202759%_ _%stx202760%_)
        (let* ((_%g202762202797%_
                (lambda (_%g202763202794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202763202794%_))))
               (_%g202761202899%_
                (lambda (_%g202763202800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202763202800%_))
                      (let ((_%e202767202802%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202763202800%_))))
                        (let ((_%hd202768202805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202767202802%_)))
                              (_%tl202769202807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202767202802%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202769202807%_))
                              (let ((_%e202770202810%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202769202807%_))))
                                (let ((_%hd202771202813%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202770202810%_)))
                                      (_%tl202772202815%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202770202810%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202771202813%_))
                                      (let ((_g203757_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd202771202813%_
                                                '0))))
                                        (begin
                                          (let ((_g203758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203757_)
                                                       (##values-length
                                                        _g203757_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203758_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203758_)))
                                          (let ((_%target202773202818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g203757_ 0)))
                                                (_%tl202775202820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g203757_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202775202820%_))
                                                (letrec ((_%loop202776202823%_
                                                          (lambda (_%hd202774202826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr202780202828%_
                           _%hd202781202829%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202774202826%_))
                        (let ((_%e202777202831%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202774202826%_))))
                          (let ((_%lp-hd202778202834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202777202831%_)))
                                (_%lp-tl202779202836%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202777202831%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd202778202834%_))
                                (let ((_%e202784202839%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd202778202834%_))))
                                  (let ((_%hd202785202842%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202784202839%_)))
                                        (_%tl202786202844%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202784202839%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202786202844%_))
                                        (let ((_%e202787202847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202786202844%_))))
                                          (let ((_%hd202788202850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202787202847%_)))
                                                (_%tl202789202852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202787202847%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202789202852%_))
                                                (_%loop202776202823%_
                                                 _%lp-tl202779202836%_
                                                 (cons _%hd202788202850%_
                                                       _%expr202780202828%_)
                                                 (cons _%hd202785202842%_
                                                       _%hd202781202829%_))
                                                (_%g202762202797%_
                                                 _%g202763202800%_))))
                                        (_%g202762202797%_
                                         _%g202763202800%_))))
                                (_%g202762202797%_ _%g202763202800%_))))
                        (let ((_%expr202782202855%_
                               (reverse _%expr202780202828%_))
                              (_%hd202783202856%_
                               (reverse _%hd202781202829%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202772202815%_))
                              (let ((_%e202790202858%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202772202815%_))))
                                (let ((_%hd202791202861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202790202858%_)))
                                      (_%tl202792202863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202790202858%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202792202863%_))
                                      ((lambda (_%g202764202866%_
                                                _%g202765202867%_
                                                _%g202766202868%_)
                                         (for-each
                                          (lambda (_%g202887202889%_)
                                            (gxc#compile-e__1
                                             _%self202759%_
                                             _%g202887202889%_))
                                          (let ((__tmp203760
                                                 (lambda (_%g202891202894%_
                                                          _%g202892202896%_)
                                                   (cons _%g202891202894%_
                                                         _%g202892202896%_)))
                                                (__tmp203759
                                                 (cons _%g202764202866%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp203760
                                             __tmp203759
                                             _%g202765202867%_))))
                                       _%hd202791202861%_
                                       _%expr202782202855%_
                                       _%hd202783202856%_)
                                      (_%g202762202797%_ _%g202763202800%_))))
                              (_%g202762202797%_ _%g202763202800%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop202776202823%_
                                                   _%target202773202818%_
                                                   '()
                                                   '()))
                                                (_%g202762202797%_
                                                 _%g202763202800%_)))))
                                      (_%g202762202797%_ _%g202763202800%_))))
                              (_%g202762202797%_ _%g202763202800%_))))
                      (_%g202762202797%_ _%g202763202800%_)))))
          (_%g202761202899%_ _%stx202760%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self202704%_ _%stx202705%_)
        (let* ((_%g202707202721%_
                (lambda (_%g202708202718%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202708202718%_))))
               (_%g202706202756%_
                (lambda (_%g202708202724%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202708202724%_))
                      (let ((_%e202711202726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202708202724%_))))
                        (let ((_%hd202712202729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202711202726%_)))
                              (_%tl202713202731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202711202726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202713202731%_))
                              (let ((_%e202714202734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202713202731%_))))
                                (let ((_%hd202715202737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202714202734%_)))
                                      (_%tl202716202739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202714202734%_))))
                                  ((lambda (_%g202709202742%_
                                            _%g202710202743%_)
                                     (gxc#compile-e__1
                                      _%self202704%_
                                      (last _%g202709202742%_)))
                                   _%tl202716202739%_
                                   _%hd202715202737%_)))
                              (_%g202707202721%_ _%g202708202724%_))))
                      (_%g202707202721%_ _%g202708202724%_)))))
          (_%g202706202756%_ _%stx202705%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self202636%_ _%stx202637%_)
        (let* ((_%g202639202656%_
                (lambda (_%g202640202653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202640202653%_))))
               (_%g202638202701%_
                (lambda (_%g202640202659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202640202659%_))
                      (let ((_%e202643202661%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202640202659%_))))
                        (let ((_%hd202644202664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202643202661%_)))
                              (_%tl202645202666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202643202661%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202645202666%_))
                              (let ((_%e202646202669%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202645202666%_))))
                                (let ((_%hd202647202672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202646202669%_)))
                                      (_%tl202648202674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202646202669%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202648202674%_))
                                      (let ((_%e202649202677%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202648202674%_))))
                                        (let ((_%hd202650202680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202649202677%_)))
                                              (_%tl202651202682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202649202677%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202651202682%_))
                                              ((lambda (_%g202641202685%_
                                                        _%g202642202686%_)
                                                 (gxc#compile-e__1
                                                  _%self202636%_
                                                  _%g202641202685%_))
                                               _%hd202650202680%_
                                               _%hd202647202672%_)
                                              (_%g202639202656%_
                                               _%g202640202659%_))))
                                      (_%g202639202656%_ _%g202640202659%_))))
                              (_%g202639202656%_ _%g202640202659%_))))
                      (_%g202639202656%_ _%g202640202659%_)))))
          (_%g202638202701%_ _%stx202637%_))))
    (define gxc#apply-operands
      (lambda (_%self202551%_ _%stx202552%_)
        (let* ((_%g202554202573%_
                (lambda (_%g202555202570%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202555202570%_))))
               (_%g202553202633%_
                (lambda (_%g202555202576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202555202576%_))
                      (let ((_%e202557202578%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202555202576%_))))
                        (let ((_%hd202558202581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202557202578%_)))
                              (_%tl202559202583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202557202578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202559202583%_))
                              (let ((_g203761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202559202583%_
                                        '0))))
                                (begin
                                  (let ((_g203762_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203761_)
                                               (##values-length _g203761_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203762_ 2)))
                                        (error "Context expects 2 values"
                                               _g203762_)))
                                  (let ((_%target202560202586%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g203761_ 0)))
                                        (_%tl202562202588%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g203761_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202562202588%_))
                                        (letrec ((_%loop202563202591%_
                                                  (lambda (_%hd202561202594%_
                                                           _%rands202567202596%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202561202594%_))
                                                        (let ((_%e202564202598%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202561202594%_))))
                  (let ((_%lp-hd202565202601%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202564202598%_)))
                        (_%lp-tl202566202603%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202564202598%_))))
                    (_%loop202563202591%_
                     _%lp-tl202566202603%_
                     (cons _%lp-hd202565202601%_ _%rands202567202596%_))))
                (let ((_%rands202568202606%_ (reverse _%rands202567202596%_)))
                  ((lambda (_%g202556202608%_)
                     (for-each
                      (lambda (_%g202621202623%_)
                        (gxc#compile-e__1 _%self202551%_ _%g202621202623%_))
                      (let ((__tmp203763
                             (lambda (_%g202625202628%_ _%g202626202630%_)
                               (cons _%g202625202628%_ _%g202626202630%_))))
                        (declare (not safe))
                        (foldr__0 __tmp203763 '() _%g202556202608%_))))
                   _%rands202568202606%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202563202591%_
                                           _%target202560202586%_
                                           '()))
                                        (_%g202554202573%_
                                         _%g202555202576%_)))))
                              (_%g202554202573%_ _%g202555202576%_))))
                      (_%g202554202573%_ _%g202555202576%_)))))
          (_%g202553202633%_ _%stx202552%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx202548%_ _%src-stx202549%_)
        (let ((__tmp203764
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx202549%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx202548%_ __tmp203764))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx202544%_ _%src-stx202545%_ _%ctx202546%_)
        (gxc#compile-e__1
         _%ctx202546%_
         (gxc#xform-wrap-source _%stx202544%_ _%src-stx202545%_))))
    (define gxc#xform-begin%
      (lambda (_%self202499%_ _%stx202500%_)
        (let* ((_%g202502202512%_
                (lambda (_%g202503202509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202503202509%_))))
               (_%g202501202541%_
                (lambda (_%g202503202515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202503202515%_))
                      (let ((_%e202505202517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202503202515%_))))
                        (let ((_%hd202506202520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202505202517%_)))
                              (_%tl202507202522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202505202517%_))))
                          ((lambda (_%g202504202525%_)
                             (let ((_%forms202539%_
                                    (map (lambda (_%g202534202536%_)
                                           (gxc#compile-e__1
                                            _%self202499%_
                                            _%g202534202536%_))
                                         _%g202504202525%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms202539%_)
                                _%stx202500%_)))
                           _%tl202507202522%_)))
                      (_%g202502202512%_ _%g202503202515%_)))))
          (_%g202501202541%_ _%stx202500%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self202453%_ _%stx202454%_)
        (let* ((_%g202456202466%_
                (lambda (_%g202457202463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202457202463%_))))
               (_%g202455202496%_
                (lambda (_%g202457202469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202457202469%_))
                      (let ((_%e202459202471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202457202469%_))))
                        (let ((_%hd202460202474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202459202471%_)))
                              (_%tl202461202476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202459202471%_))))
                          ((lambda (_%g202458202479%_)
                             (let ((__tmp203767
                                    (lambda ()
                                      (let ((_%forms202494%_
                                             (map (lambda (_%g202489202491%_)
                                                    (gxc#compile-e__1
                                                     _%self202453%_
                                                     _%g202489202491%_))
                                                  _%g202458202479%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms202494%_)
                                         _%stx202454%_))))
                                   (__tmp203765
                                    (let ((__tmp203766
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp203766 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp203767
                                gx#current-expander-phi
                                __tmp203765)))
                           _%tl202461202476%_)))
                      (_%g202456202466%_ _%g202457202469%_)))))
          (_%g202455202496%_ _%stx202454%_))))
    (define gxc#xform-module%
      (lambda (_%self202390%_ _%stx202391%_)
        (let* ((_%g202393202407%_
                (lambda (_%g202394202404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202394202404%_))))
               (_%g202392202450%_
                (lambda (_%g202394202410%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202394202410%_))
                      (let ((_%e202397202412%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202394202410%_))))
                        (let ((_%hd202398202415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202397202412%_)))
                              (_%tl202399202417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202397202412%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202399202417%_))
                              (let ((_%e202400202420%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202399202417%_))))
                                (let ((_%hd202401202423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202400202420%_)))
                                      (_%tl202402202425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202400202420%_))))
                                  ((lambda (_%g202395202428%_
                                            _%g202396202429%_)
                                     (let* ((_%ctx202442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g202396202429%_)))
                                            (_%code202444%_
                                             (##structure-ref
                                              _%ctx202442%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code202447%_
                                             (let ((__tmp203768
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self202390%_
                                                       _%code202444%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp203768
                                                gx#current-expander-context
                                                _%ctx202442%_))))
                                       (##structure-set!
                                        _%ctx202442%_
                                        _%code202447%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g202396202429%_
                                                    (cons _%code202447%_ '())))
                                        _%stx202391%_)))
                                   _%tl202402202425%_
                                   _%hd202401202423%_)))
                              (_%g202393202407%_ _%g202394202410%_))))
                      (_%g202393202407%_ _%g202394202410%_)))))
          (_%g202392202450%_ _%stx202391%_))))
    (define gxc#xform-define-values%
      (lambda (_%self202320%_ _%stx202321%_)
        (let* ((_%g202323202340%_
                (lambda (_%g202324202337%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202324202337%_))))
               (_%g202322202387%_
                (lambda (_%g202324202343%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202324202343%_))
                      (let ((_%e202327202345%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202324202343%_))))
                        (let ((_%hd202328202348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202327202345%_)))
                              (_%tl202329202350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202327202345%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202329202350%_))
                              (let ((_%e202330202353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202329202350%_))))
                                (let ((_%hd202331202356%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202330202353%_)))
                                      (_%tl202332202358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202330202353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202332202358%_))
                                      (let ((_%e202333202361%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202332202358%_))))
                                        (let ((_%hd202334202364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202333202361%_)))
                                              (_%tl202335202366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202333202361%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202335202366%_))
                                              ((lambda (_%g202325202369%_
                                                        _%g202326202370%_)
                                                 (let ((_%expr202385%_
                                                        (gxc#compile-e__1
                                                         _%self202320%_
                                                         _%g202325202369%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g202326202370%_
                                                                (cons _%expr202385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx202321%_)))
                                               _%hd202334202364%_
                                               _%hd202331202356%_)
                                              (_%g202323202340%_
                                               _%g202324202343%_))))
                                      (_%g202323202340%_ _%g202324202343%_))))
                              (_%g202323202340%_ _%g202324202343%_))))
                      (_%g202323202340%_ _%g202324202343%_)))))
          (_%g202322202387%_ _%stx202321%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self202249%_ _%stx202250%_)
        (let* ((_%g202252202269%_
                (lambda (_%g202253202266%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202253202266%_))))
               (_%g202251202317%_
                (lambda (_%g202253202272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202253202272%_))
                      (let ((_%e202256202274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202253202272%_))))
                        (let ((_%hd202257202277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202256202274%_)))
                              (_%tl202258202279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202256202274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202258202279%_))
                              (let ((_%e202259202282%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202258202279%_))))
                                (let ((_%hd202260202285%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202259202282%_)))
                                      (_%tl202261202287%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202259202282%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202261202287%_))
                                      (let ((_%e202262202290%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202261202287%_))))
                                        (let ((_%hd202263202293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202262202290%_)))
                                              (_%tl202264202295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202262202290%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202264202295%_))
                                              ((lambda (_%g202254202298%_
                                                        _%g202255202299%_)
                                                 (let ((__tmp203771
                                                        (lambda ()
                                                          (let ((_%expr202315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self202249%_ _%g202254202298%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g202255202299%_ (cons _%expr202315%_ '())))
                     _%stx202250%_))))
               (__tmp203769
                (let ((__tmp203770
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp203770 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp203771
                                                    gx#current-expander-phi
                                                    __tmp203769)))
                                               _%hd202263202293%_
                                               _%hd202260202285%_)
                                              (_%g202252202269%_
                                               _%g202253202272%_))))
                                      (_%g202252202269%_ _%g202253202272%_))))
                              (_%g202252202269%_ _%g202253202272%_))))
                      (_%g202252202269%_ _%g202253202272%_)))))
          (_%g202251202317%_ _%stx202250%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self202179%_ _%stx202180%_)
        (let* ((_%g202182202199%_
                (lambda (_%g202183202196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202183202196%_))))
               (_%g202181202246%_
                (lambda (_%g202183202202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202183202202%_))
                      (let ((_%e202186202204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202183202202%_))))
                        (let ((_%hd202187202207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202186202204%_)))
                              (_%tl202188202209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202186202204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202188202209%_))
                              (let ((_%e202189202212%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202188202209%_))))
                                (let ((_%hd202190202215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202189202212%_)))
                                      (_%tl202191202217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202189202212%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202191202217%_))
                                      (let ((_%e202192202220%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202191202217%_))))
                                        (let ((_%hd202193202223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202192202220%_)))
                                              (_%tl202194202225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202192202220%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202194202225%_))
                                              ((lambda (_%g202184202228%_
                                                        _%g202185202229%_)
                                                 (let ((_%expr202244%_
                                                        (gxc#compile-e__1
                                                         _%self202179%_
                                                         _%g202184202228%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g202185202229%_
                                                                (cons _%expr202244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx202180%_)))
                                               _%hd202193202223%_
                                               _%hd202190202215%_)
                                              (_%g202182202199%_
                                               _%g202183202202%_))))
                                      (_%g202182202199%_ _%g202183202202%_))))
                              (_%g202182202199%_ _%g202183202202%_))))
                      (_%g202182202199%_ _%g202183202202%_)))))
          (_%g202181202246%_ _%stx202180%_))))
    (define gxc#xform-lambda%
      (lambda (_%self202117%_ _%stx202118%_)
        (let* ((_%g202120202134%_
                (lambda (_%g202121202131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202121202131%_))))
               (_%g202119202176%_
                (lambda (_%g202121202137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202121202137%_))
                      (let ((_%e202124202139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202121202137%_))))
                        (let ((_%hd202125202142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202124202139%_)))
                              (_%tl202126202144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202124202139%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202126202144%_))
                              (let ((_%e202127202147%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202126202144%_))))
                                (let ((_%hd202128202150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202127202147%_)))
                                      (_%tl202129202152%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202127202147%_))))
                                  ((lambda (_%g202122202155%_
                                            _%g202123202156%_)
                                     (let ((__tmp203773
                                            (lambda ()
                                              (let ((_%body202174%_
                                                     (map (lambda (_%g202169202171%_)
                                                            (gxc#compile-e__1
                                                             _%self202117%_
                                                             _%g202169202171%_))
                                                          _%g202122202155%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g202123202156%_
                                                             _%body202174%_))
                                                 _%stx202118%_))))
                                           (__tmp203772
                                            (gxc#xform-let-locals
                                             _%g202123202156%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp203773
                                        gxc#current-compile-local-env
                                        __tmp203772)))
                                   _%tl202129202152%_
                                   _%hd202128202150%_)))
                              (_%g202120202134%_ _%g202121202137%_))))
                      (_%g202120202134%_ _%g202121202137%_)))))
          (_%g202119202176%_ _%stx202118%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self202025%_ _%stx202026%_)
        (letrec ((_%clause-e202028%_
                  (lambda (_%clause202069%_)
                    (let* ((_%g202071202082%_
                            (lambda (_%g202072202079%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g202072202079%_))))
                           (_%g202070202114%_
                            (lambda (_%g202072202085%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g202072202085%_))
                                  (let ((_%e202075202087%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g202072202085%_))))
                                    (let ((_%hd202076202090%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202075202087%_)))
                                          (_%tl202077202092%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202075202087%_))))
                                      ((lambda (_%g202073202095%_
                                                _%g202074202096%_)
                                         (let ((__tmp203775
                                                (lambda ()
                                                  (let ((_%body202112%_
                                                         (map (lambda (_%g202107202109%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self202025%_
                         _%g202107202109%_))
                      _%g202073202095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g202074202096%_
                                                          _%body202112%_))))
                                               (__tmp203774
                                                (gxc#xform-let-locals
                                                 _%g202074202096%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp203775
                                            gxc#current-compile-local-env
                                            __tmp203774)))
                                       _%tl202077202092%_
                                       _%hd202076202090%_)))
                                  (_%g202071202082%_ _%g202072202085%_)))))
                      (_%g202070202114%_ _%clause202069%_)))))
          (let* ((_%g202030202040%_
                  (lambda (_%g202031202037%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202031202037%_))))
                 (_%g202029202066%_
                  (lambda (_%g202031202043%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202031202043%_))
                        (let ((_%e202033202045%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202031202043%_))))
                          (let ((_%hd202034202048%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202033202045%_)))
                                (_%tl202035202050%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202033202045%_))))
                            ((lambda (_%g202032202053%_)
                               (let ((_%clauses202064%_
                                      (map _%clause-e202028%_
                                           _%g202032202053%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses202064%_)
                                  _%stx202026%_)))
                             _%tl202035202050%_)))
                        (_%g202030202040%_ _%g202031202043%_)))))
            (_%g202029202066%_ _%stx202026%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self201785%_ _%stx201786%_)
        (let* ((_%g201788201821%_
                (lambda (_%g201789201818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201789201818%_))))
               (_%g201787202022%_
                (lambda (_%g201789201824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201789201824%_))
                      (let ((_%e201794201826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201789201824%_))))
                        (let ((_%hd201795201829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201794201826%_)))
                              (_%tl201796201831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201794201826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201796201831%_))
                              (let ((_%e201797201834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201796201831%_))))
                                (let ((_%hd201798201837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201797201834%_)))
                                      (_%tl201799201839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201797201834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd201798201837%_))
                                      (let ((_g203776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd201798201837%_
                                                '0))))
                                        (begin
                                          (let ((_g203777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203776_)
                                                       (##values-length
                                                        _g203776_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203777_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203777_)))
                                          (let ((_%target201800201842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g203776_ 0)))
                                                (_%tl201802201844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g203776_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201802201844%_))
                                                (letrec ((_%loop201803201847%_
                                                          (lambda (_%hd201801201850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr201807201852%_
                           _%hd201808201853%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201801201850%_))
                        (let ((_%e201804201855%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201801201850%_))))
                          (let ((_%lp-hd201805201858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201804201855%_)))
                                (_%lp-tl201806201860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201804201855%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd201805201858%_))
                                (let ((_%e201811201863%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd201805201858%_))))
                                  (let ((_%hd201812201866%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201811201863%_)))
                                        (_%tl201813201868%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201811201863%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201813201868%_))
                                        (let ((_%e201814201871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201813201868%_))))
                                          (let ((_%hd201815201874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201814201871%_)))
                                                (_%tl201816201876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201814201871%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201816201876%_))
                                                (_%loop201803201847%_
                                                 _%lp-tl201806201860%_
                                                 (cons _%hd201815201874%_
                                                       _%expr201807201852%_)
                                                 (cons _%hd201812201866%_
                                                       _%hd201808201853%_))
                                                (_%g201788201821%_
                                                 _%g201789201824%_))))
                                        (_%g201788201821%_
                                         _%g201789201824%_))))
                                (_%g201788201821%_ _%g201789201824%_))))
                        (let ((_%expr201809201879%_
                               (reverse _%expr201807201852%_))
                              (_%hd201810201880%_
                               (reverse _%hd201808201853%_)))
                          ((lambda (_%g201790201882%_
                                    _%g201791201883%_
                                    _%g201792201884%_
                                    _%g201793201885%_)
                             (let* ((_%g201904201920%_
                                     (lambda (_%g201905201917%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g201905201917%_))))
                                    (_%g201903202008%_
                                     (lambda (_%g201905201923%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g201905201923%_))
                                           (let ((_g203778_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g201905201923%_
                                                     '0))))
                                             (begin
                                               (let ((_g203779_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g203778_)
                                                            (##values-length
                                                             _g203778_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g203779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g203779_)))
                                               (let ((_%target201907201925%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g203778_
                                                         0)))
                                                     (_%tl201909201927%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g203778_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl201909201927%_))
                                                     (letrec ((_%loop201910201930%_
                                                               (lambda (_%hd201908201933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr201914201935%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd201908201933%_))
                             (let ((_%e201911201937%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd201908201933%_))))
                               (let ((_%lp-hd201912201940%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e201911201937%_)))
                                     (_%lp-tl201913201942%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e201911201937%_))))
                                 (_%loop201910201930%_
                                  _%lp-tl201913201942%_
                                  (cons _%lp-hd201912201940%_
                                        _%expr201914201935%_))))
                             (let ((_%expr201915201945%_
                                    (reverse _%expr201914201935%_)))
                               ((lambda (_%g201906201947%_)
                                  (let ((__tmp203782
                                         (lambda ()
                                           (let* ((_%g201961201968%_
                                                   (lambda (_%g201962201965%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g201962201965%_))))
                                                  (_%g201960201994%_
                                                   (lambda (_%g201962201971%_)
                                                     ((lambda (_%g201963201973%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g201793201885%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g201906201947%_
                                  _%g201792201884%_))
                               (let ((__tmp203783
                                      (lambda (_%g201983201987%_
                                               _%g201984201989%_
                                               _%g201985201991%_)
                                        (cons (cons _%g201984201989%_
                                                    (cons _%g201983201987%_
                                                          '()))
                                              _%g201985201991%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp203783
                                  '()
                                  _%g201906201947%_
                                  _%g201792201884%_)))
                             _%g201963201973%_))
                 _%stx201786%_))
              _%g201962201971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g201960201994%_
                                              (map (lambda (_%g201996201998%_)
                                                     (gxc#compile-e__1
                                                      _%self201785%_
                                                      _%g201996201998%_))
                                                   _%g201790201882%_)))))
                                        (__tmp203780
                                         (gxc#xform-let-locals
                                          (let ((__tmp203781
                                                 (lambda (_%g202000202003%_
                                                          _%g202001202005%_)
                                                   (cons _%g202000202003%_
                                                         _%g202001202005%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp203781
                                             '()
                                             _%g201792201884%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp203782
                                     gxc#current-compile-local-env
                                     __tmp203780)))
                                _%expr201915201945%_))))))
               (_%loop201910201930%_ _%target201907201925%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201904201920%_
                                                      _%g201905201923%_)))))
                                           (_%g201904201920%_
                                            _%g201905201923%_)))))
                               (_%g201903202008%_
                                (map (lambda (_%g202010202012%_)
                                       (gxc#compile-e__1
                                        _%self201785%_
                                        _%g202010202012%_))
                                     (let ((__tmp203784
                                            (lambda (_%g202014202017%_
                                                     _%g202015202019%_)
                                              (cons _%g202014202017%_
                                                    _%g202015202019%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp203784
                                        '()
                                        _%g201791201883%_))))))
                           _%tl201799201839%_
                           _%expr201809201879%_
                           _%hd201810201880%_
                           _%hd201795201829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201803201847%_
                                                   _%target201800201842%_
                                                   '()
                                                   '()))
                                                (_%g201788201821%_
                                                 _%g201789201824%_)))))
                                      (_%g201788201821%_ _%g201789201824%_))))
                              (_%g201788201821%_ _%g201789201824%_))))
                      (_%g201788201821%_ _%g201789201824%_)))))
          (_%g201787202022%_ _%stx201786%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self201545%_ _%stx201546%_)
        (let* ((_%g201548201581%_
                (lambda (_%g201549201578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201549201578%_))))
               (_%g201547201782%_
                (lambda (_%g201549201584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201549201584%_))
                      (let ((_%e201554201586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201549201584%_))))
                        (let ((_%hd201555201589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201554201586%_)))
                              (_%tl201556201591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201554201586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201556201591%_))
                              (let ((_%e201557201594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201556201591%_))))
                                (let ((_%hd201558201597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201557201594%_)))
                                      (_%tl201559201599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201557201594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd201558201597%_))
                                      (let ((_g203785_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd201558201597%_
                                                '0))))
                                        (begin
                                          (let ((_g203786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203785_)
                                                       (##values-length
                                                        _g203785_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203786_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203786_)))
                                          (let ((_%target201560201602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g203785_ 0)))
                                                (_%tl201562201604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g203785_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201562201604%_))
                                                (letrec ((_%loop201563201607%_
                                                          (lambda (_%hd201561201610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr201567201612%_
                           _%hd201568201613%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201561201610%_))
                        (let ((_%e201564201615%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201561201610%_))))
                          (let ((_%lp-hd201565201618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201564201615%_)))
                                (_%lp-tl201566201620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201564201615%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd201565201618%_))
                                (let ((_%e201571201623%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd201565201618%_))))
                                  (let ((_%hd201572201626%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201571201623%_)))
                                        (_%tl201573201628%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201571201623%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201573201628%_))
                                        (let ((_%e201574201631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201573201628%_))))
                                          (let ((_%hd201575201634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201574201631%_)))
                                                (_%tl201576201636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201574201631%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201576201636%_))
                                                (_%loop201563201607%_
                                                 _%lp-tl201566201620%_
                                                 (cons _%hd201575201634%_
                                                       _%expr201567201612%_)
                                                 (cons _%hd201572201626%_
                                                       _%hd201568201613%_))
                                                (_%g201548201581%_
                                                 _%g201549201584%_))))
                                        (_%g201548201581%_
                                         _%g201549201584%_))))
                                (_%g201548201581%_ _%g201549201584%_))))
                        (let ((_%expr201569201639%_
                               (reverse _%expr201567201612%_))
                              (_%hd201570201640%_
                               (reverse _%hd201568201613%_)))
                          ((lambda (_%g201550201642%_
                                    _%g201551201643%_
                                    _%g201552201644%_
                                    _%g201553201645%_)
                             (let ((__tmp203789
                                    (lambda ()
                                      (let* ((_%g201665201681%_
                                              (lambda (_%g201666201678%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g201666201678%_))))
                                             (_%g201664201761%_
                                              (lambda (_%g201666201684%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g201666201684%_))
                                                    (let ((_g203790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g201666201684%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g203791_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g203790_)
                             (##values-length _g203790_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g203791_ 2)))
                      (error "Context expects 2 values" _g203791_)))
                (let ((_%target201668201686%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g203790_ 0)))
                      (_%tl201670201688%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g203790_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201670201688%_))
                      (letrec ((_%loop201671201691%_
                                (lambda (_%hd201669201694%_
                                         _%expr201675201696%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd201669201694%_))
                                      (let ((_%e201672201698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd201669201694%_))))
                                        (let ((_%lp-hd201673201701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201672201698%_)))
                                              (_%lp-tl201674201703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201672201698%_))))
                                          (_%loop201671201691%_
                                           _%lp-tl201674201703%_
                                           (cons _%lp-hd201673201701%_
                                                 _%expr201675201696%_))))
                                      (let ((_%expr201676201706%_
                                             (reverse _%expr201675201696%_)))
                                        ((lambda (_%g201667201708%_)
                                           (let* ((_%g201722201729%_
                                                   (lambda (_%g201723201726%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g201723201726%_))))
                                                  (_%g201721201754%_
                                                   (lambda (_%g201723201732%_)
                                                     ((lambda (_%g201724201734%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g201553201645%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g201667201708%_
                                  _%g201552201644%_))
                               (let ((__tmp203792
                                      (lambda (_%g201743201747%_
                                               _%g201744201749%_
                                               _%g201745201751%_)
                                        (cons (cons _%g201744201749%_
                                                    (cons _%g201743201747%_
                                                          '()))
                                              _%g201745201751%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp203792
                                  '()
                                  _%g201667201708%_
                                  _%g201552201644%_)))
                             _%g201724201734%_))
                 _%stx201546%_))
              _%g201723201732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g201721201754%_
                                              (map (lambda (_%g201756201758%_)
                                                     (gxc#compile-e__1
                                                      _%self201545%_
                                                      _%g201756201758%_))
                                                   _%g201550201642%_))))
                                         _%expr201676201706%_))))))
                        (_%loop201671201691%_ _%target201668201686%_ '()))
                      (_%g201665201681%_ _%g201666201684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g201665201681%_
                                                     _%g201666201684%_)))))
                                        (_%g201664201761%_
                                         (map (lambda (_%g201763201765%_)
                                                (gxc#compile-e__1
                                                 _%self201545%_
                                                 _%g201763201765%_))
                                              (let ((__tmp203793
                                                     (lambda (_%g201767201770%_
                                                              _%g201768201772%_)
                                                       (cons _%g201767201770%_
                                                             _%g201768201772%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp203793
                                                 '()
                                                 _%g201551201643%_)))))))
                                   (__tmp203787
                                    (gxc#xform-let-locals
                                     (let ((__tmp203788
                                            (lambda (_%g201774201777%_
                                                     _%g201775201779%_)
                                              (cons _%g201774201777%_
                                                    _%g201775201779%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp203788
                                        '()
                                        _%g201552201644%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp203789
                                gxc#current-compile-local-env
                                __tmp203787)))
                           _%tl201559201599%_
                           _%expr201569201639%_
                           _%hd201570201640%_
                           _%hd201555201589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201563201607%_
                                                   _%target201560201602%_
                                                   '()
                                                   '()))
                                                (_%g201548201581%_
                                                 _%g201549201584%_)))))
                                      (_%g201548201581%_ _%g201549201584%_))))
                              (_%g201548201581%_ _%g201549201584%_))))
                      (_%g201548201581%_ _%g201549201584%_)))))
          (_%g201547201782%_ _%stx201546%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings201412%_)
        (letrec ((_%flatten201414%_
                  (lambda (_%maybe-lst201472%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst201472%_))
                        (cons _%maybe-lst201472%_ '())
                        (let _%loop201474%_ ((_%rest201476%_
                                              _%maybe-lst201472%_)
                                             (_%result201477%_ '()))
                          (let* ((_%__stx203681203682%_ _%rest201476%_)
                                 (_%g201481201493%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx203681203682%_)))))
                            (let ((_%__kont203683203684%_
                                   (lambda (_%g201483201531%_
                                            _%g201484201532%_)
                                     (_%loop201474%_
                                      _%g201483201531%_
                                      (let ((__tmp203794
                                             (_%flatten201414%_
                                              _%g201484201532%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result201477%_
                                         __tmp203794)))))
                                  (_%__kont203685203686%_
                                   (lambda (_%g201488201505%_)
                                     (cons _%g201488201505%_
                                           _%result201477%_)))
                                  (_%__kont203687203688%_
                                   (lambda () _%result201477%_)))
                              (let ((_%g201479201518%_
                                     (lambda ()
                                       (let ((_%g201488201505%_
                                              _%__stx203681203682%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g201488201505%_))
                                             (_%__kont203685203686%_
                                              _%g201488201505%_)
                                             (_%__kont203687203688%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx203681203682%_))
                                    (let ((_%e201485201523%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx203681203682%_))))
                                      (let ((_%tl201487201528%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201485201523%_)))
                                            (_%hd201486201526%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201485201523%_))))
                                        (_%__kont203683203684%_
                                         _%tl201487201528%_
                                         _%hd201486201526%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g201479201518%_)))))))))))
          (let _%loop201416%_ ((_%rest201418%_
                                (_%flatten201414%_ _%bindings201412%_))
                               (_%locals201419%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest201420201431%_ _%rest201418%_)
                   (_%E201424201435%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest201420201431%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K201427201460%_
                     (lambda (_%rest201457%_ _%id201458%_)
                       (_%loop201416%_
                        _%rest201457%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id201458%_))
                              _%locals201419%_))))
                    (_%K201426201449%_
                     (lambda (_%id201447%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id201447%_))
                             _%locals201419%_)))
                    (_%K201425201440%_ (lambda () _%locals201419%_)))
                (let ((_%try-match201422201454%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest201420201431%_))
                             (let ((_%id201452%_ _%rest201420201431%_))
                               (_%K201426201449%_ _%id201452%_))
                             (_%K201425201440%_)))))
                  (if (pair? _%rest201420201431%_)
                      (let ((_%tl201429201465%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest201420201431%_)))
                            (_%hd201428201463%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest201420201431%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd201428201463%_))
                            (let ((_%id201468%_ _%hd201428201463%_)
                                  (_%rest201470%_ _%tl201429201465%_))
                              (_%K201427201460%_ _%rest201470%_ _%id201468%_))
                            (_%K201425201440%_)))
                      (_%try-match201422201454%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self201364%_ _%stx201365%_)
        (let* ((_%g201367201378%_
                (lambda (_%g201368201375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201368201375%_))))
               (_%g201366201409%_
                (lambda (_%g201368201381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201368201381%_))
                      (let ((_%e201371201383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201368201381%_))))
                        (let ((_%hd201372201386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201371201383%_)))
                              (_%tl201373201388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201371201383%_))))
                          ((lambda (_%g201369201391%_ _%g201370201392%_)
                             (let ((_%rands201407%_
                                    (map (lambda (_%g201402201404%_)
                                           (gxc#compile-e__1
                                            _%self201364%_
                                            _%g201402201404%_))
                                         _%g201369201391%_)))
                               (gxc#xform-wrap-source
                                (cons _%g201370201392%_ _%rands201407%_)
                                _%stx201365%_)))
                           _%tl201373201388%_
                           _%hd201372201386%_)))
                      (_%g201367201378%_ _%g201368201381%_)))))
          (_%g201366201409%_ _%stx201365%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self201294%_ _%stx201295%_)
        (let* ((_%g201297201314%_
                (lambda (_%g201298201311%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201298201311%_))))
               (_%g201296201361%_
                (lambda (_%g201298201317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201298201317%_))
                      (let ((_%e201301201319%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201298201317%_))))
                        (let ((_%hd201302201322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201301201319%_)))
                              (_%tl201303201324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201301201319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201303201324%_))
                              (let ((_%e201304201327%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201303201324%_))))
                                (let ((_%hd201305201330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201304201327%_)))
                                      (_%tl201306201332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201304201327%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201306201332%_))
                                      (let ((_%e201307201335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201306201332%_))))
                                        (let ((_%hd201308201338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201307201335%_)))
                                              (_%tl201309201340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201307201335%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201309201340%_))
                                              ((lambda (_%g201299201343%_
                                                        _%g201300201344%_)
                                                 (let ((_%expr201359%_
                                                        (gxc#compile-e__1
                                                         _%self201294%_
                                                         _%g201299201343%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g201300201344%_
                                                                (cons _%expr201359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx201295%_)))
                                               _%hd201308201338%_
                                               _%hd201305201330%_)
                                              (_%g201297201314%_
                                               _%g201298201317%_))))
                                      (_%g201297201314%_ _%g201298201317%_))))
                              (_%g201297201314%_ _%g201298201317%_))))
                      (_%g201297201314%_ _%g201298201317%_)))))
          (_%g201296201361%_ _%stx201295%_))))))
