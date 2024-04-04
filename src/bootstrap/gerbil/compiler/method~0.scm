(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712256087)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx134364%_)
        (let* ((_%self134366%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e134368%_
                (let ((__tmp134546
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx134364%_))))
                  (declare (not safe))
                  (method-ref _%self134366%_ __tmp134546))))
          (if _%$e134368%_
              ((lambda (_%method134371%_)
                 (declare (not safe))
                 (_%method134371%_ _%self134366%_ _%stx134364%_))
               _%$e134368%_)
              (let ((__tmp134548
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134364%_)))
                    (__tmp134547
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134364%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134366%_
                       __tmp134548
                       __tmp134547))))))
    (define gxc#compile-e__1
      (lambda (_%self134375%_ _%stx134376%_)
        (let ((_%$e134378%_
               (let ((__tmp134549
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx134376%_))))
                 (declare (not safe))
                 (method-ref _%self134375%_ __tmp134549))))
          (if _%$e134378%_
              ((lambda (_%method134381%_)
                 (declare (not safe))
                 (_%method134381%_ _%self134375%_ _%stx134376%_))
               _%$e134378%_)
              (let ((__tmp134551
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134376%_)))
                    (__tmp134550
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134376%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134375%_
                       __tmp134551
                       __tmp134550))))))
    (define gxc#compile-e
      (lambda _g134553_
        (let ((_g134552_ (let () (declare (not safe)) (##length _g134553_))))
          (cond ((let () (declare (not safe)) (##fx= _g134552_ 1))
                 (apply (lambda (_%stx134364%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx134364%_)))
                        _g134553_))
                ((let () (declare (not safe)) (##fx= _g134552_ 2))
                 (apply (lambda (_%self134375%_ _%stx134376%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self134375%_ _%stx134376%_)))
                        _g134553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134553_))))))
    (define gxc#stx-car-e
      (lambda (_%stx134362%_)
        (let ((__tmp134554
               (car (let () (declare (not safe)) (gx#stx-e _%stx134362%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134554))))
    (define gxc#void-method (lambda (_%self134359%_ _%stx134360%_) '#!void))
    (define gxc#false-method (lambda (_%self134356%_ _%stx134357%_) '#f))
    (define gxc#true-method (lambda (_%self134353%_ _%stx134354%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134350%_ _%stx134351%_) _%stx134351%_))
    (define gxc#::void-expression::t
      (let ((__tmp134555 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134555
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134347%_
        (apply make-instance gxc#::void-expression::t _%$args134347%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134556
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
        (__make-promise __tmp134556)))
    (define gxc#::void-special-form::t
      (let ((__tmp134557 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134557
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134343%_
        (apply make-instance gxc#::void-special-form::t _%$args134343%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134558
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
        (__make-promise __tmp134558)))
    (define gxc#::void::t
      (let ((__tmp134559
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp134559 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134339%_
        (apply make-instance gxc#::void::t _%$args134339%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134560
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134560)))
    (define gxc#::false-expression::t
      (let ((__tmp134561 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134561
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134335%_
        (apply make-instance gxc#::false-expression::t _%$args134335%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134562
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
        (__make-promise __tmp134562)))
    (define gxc#::false-special-form::t
      (let ((__tmp134563 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134563
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134331%_
        (apply make-instance gxc#::false-special-form::t _%$args134331%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134564
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
        (__make-promise __tmp134564)))
    (define gxc#::false::t
      (let ((__tmp134565
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp134565 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134327%_
        (apply make-instance gxc#::false::t _%$args134327%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134566
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134566)))
    (define gxc#::identity-expression::t
      (let ((__tmp134567 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134567
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134323%_
        (apply make-instance gxc#::identity-expression::t _%$args134323%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134568
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
        (__make-promise __tmp134568)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134569 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134569
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134319%_
        (apply make-instance gxc#::identity-special-form::t _%$args134319%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134570
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
        (__make-promise __tmp134570)))
    (define gxc#::identity::t
      (let ((__tmp134571
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134571
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134315%_
        (apply make-instance gxc#::identity::t _%$args134315%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134572
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134572)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134573 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134573
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134311%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134311%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134574
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
        (__make-promise __tmp134574)))
    (define gxc#::basic-xform::t
      (let ((__tmp134575
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134575
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134307%_
        (apply make-instance gxc#::basic-xform::t _%$args134307%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134576
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
        (__make-promise __tmp134576)))
    (define gxc#apply-begin%
      (lambda (_%self134263%_ _%stx134264%_)
        (let* ((_%g134266134276%_
                (lambda (_%g134267134273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134267134273%_))))
               (_%g134265134303%_
                (lambda (_%g134267134279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134267134279%_))
                      (let ((_%e134271134281%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134267134279%_))))
                        (let ((_%hd134270134284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134271134281%_)))
                              (_%tl134269134286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134271134281%_))))
                          ((lambda (_%L134289%_)
                             (for-each
                              (lambda (_%g134298134300%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self134263%_
                                   _%g134298134300%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134289%_))))
                           _%tl134269134286%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134266134276%_ _%g134267134279%_))))))
          (declare (not safe))
          (_%g134265134303%_ _%stx134264%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134224%_ _%stx134225%_)
        (let* ((_%g134227134237%_
                (lambda (_%g134228134234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134228134234%_))))
               (_%g134226134260%_
                (lambda (_%g134228134240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134228134240%_))
                      (let ((_%e134232134242%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134228134240%_))))
                        (let ((_%hd134231134245%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134232134242%_)))
                              (_%tl134230134247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134232134242%_))))
                          ((lambda (_%L134250%_)
                             (let ((__tmp134577 (last _%L134250%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self134224%_ __tmp134577)))
                           _%tl134230134247%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134227134237%_ _%g134228134240%_))))))
          (declare (not safe))
          (_%g134226134260%_ _%stx134225%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134220%_ _%stx134221%_)
        (let ((__tmp134580
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self134220%_ _%stx134221%_))))
              (__tmp134578
               (let ((__tmp134579
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134579 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134580
           gx#current-expander-phi
           __tmp134578))))
    (define gxc#apply-module%
      (lambda (_%self134159%_ _%stx134160%_)
        (let* ((_%g134162134176%_
                (lambda (_%g134163134173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134163134173%_))))
               (_%g134161134217%_
                (lambda (_%g134163134179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134163134179%_))
                      (let ((_%e134168134181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134163134179%_))))
                        (let ((_%hd134167134184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134168134181%_)))
                              (_%tl134166134186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134168134181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134166134186%_))
                              (let ((_%e134171134189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134166134186%_))))
                                (let ((_%hd134170134192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134171134189%_)))
                                      (_%tl134169134194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134171134189%_))))
                                  ((lambda (_%L134197%_ _%L134198%_)
                                     (let* ((_%ctx134211%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134198%_)))
                                            (_%ctx-stx134213%_
                                             (##structure-ref
                                              _%ctx134211%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp134581
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self134159%_
                                                  _%ctx-stx134213%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134581
                                        gx#current-expander-context
                                        _%ctx134211%_)))
                                   _%tl134169134194%_
                                   _%hd134170134192%_)))
                              (let ()
                                (declare (not safe))
                                (_%g134162134176%_ _%g134163134179%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134162134176%_ _%g134163134179%_))))))
          (declare (not safe))
          (_%g134161134217%_ _%stx134160%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self134091%_ _%stx134092%_)
        (let* ((_%g134094134111%_
                (lambda (_%g134095134108%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134095134108%_))))
               (_%g134093134156%_
                (lambda (_%g134095134114%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134095134114%_))
                      (let ((_%e134100134116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134095134114%_))))
                        (let ((_%hd134099134119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134100134116%_)))
                              (_%tl134098134121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134100134116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134098134121%_))
                              (let ((_%e134103134124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134098134121%_))))
                                (let ((_%hd134102134127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134103134124%_)))
                                      (_%tl134101134129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134103134124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134101134129%_))
                                      (let ((_%e134106134132%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134101134129%_))))
                                        (let ((_%hd134105134135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134106134132%_)))
                                              (_%tl134104134137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134106134132%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134104134137%_))
                                              ((lambda (_%L134140%_
                                                        _%L134141%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134091%_
                                                    _%L134140%_)))
                                               _%hd134105134135%_
                                               _%hd134102134127%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134094134111%_
                                                 _%g134095134114%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134094134111%_
                                         _%g134095134114%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134094134111%_ _%g134095134114%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134094134111%_ _%g134095134114%_))))))
          (declare (not safe))
          (_%g134093134156%_ _%stx134092%_))))
    (define gxc#apply-define-values%
      (lambda (_%self134023%_ _%stx134024%_)
        (let* ((_%g134026134043%_
                (lambda (_%g134027134040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134027134040%_))))
               (_%g134025134088%_
                (lambda (_%g134027134046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134027134046%_))
                      (let ((_%e134032134048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134027134046%_))))
                        (let ((_%hd134031134051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134032134048%_)))
                              (_%tl134030134053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134032134048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134030134053%_))
                              (let ((_%e134035134056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134030134053%_))))
                                (let ((_%hd134034134059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134035134056%_)))
                                      (_%tl134033134061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134035134056%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134033134061%_))
                                      (let ((_%e134038134064%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134033134061%_))))
                                        (let ((_%hd134037134067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134038134064%_)))
                                              (_%tl134036134069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134038134064%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134036134069%_))
                                              ((lambda (_%L134072%_
                                                        _%L134073%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134023%_
                                                    _%L134072%_)))
                                               _%hd134037134067%_
                                               _%hd134034134059%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134026134043%_
                                                 _%g134027134046%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134026134043%_
                                         _%g134027134046%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134026134043%_ _%g134027134046%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134026134043%_ _%g134027134046%_))))))
          (declare (not safe))
          (_%g134025134088%_ _%stx134024%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133954%_ _%stx133955%_)
        (let* ((_%g133957133974%_
                (lambda (_%g133958133971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133958133971%_))))
               (_%g133956134020%_
                (lambda (_%g133958133977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133958133977%_))
                      (let ((_%e133963133979%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133958133977%_))))
                        (let ((_%hd133962133982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133963133979%_)))
                              (_%tl133961133984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133963133979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133961133984%_))
                              (let ((_%e133966133987%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133961133984%_))))
                                (let ((_%hd133965133990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133966133987%_)))
                                      (_%tl133964133992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133966133987%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133964133992%_))
                                      (let ((_%e133969133995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133964133992%_))))
                                        (let ((_%hd133968133998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133969133995%_)))
                                              (_%tl133967134000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133969133995%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133967134000%_))
                                              ((lambda (_%L134003%_
                                                        _%L134004%_)
                                                 (let ((__tmp134584
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133954%_
                                                             _%L134003%_))))
                                                       (__tmp134582
                                                        (let ((__tmp134583
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134583 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134584
                                                    gx#current-expander-phi
                                                    __tmp134582)))
                                               _%hd133968133998%_
                                               _%hd133965133990%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133957133974%_
                                                 _%g133958133977%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133957133974%_
                                         _%g133958133977%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133957133974%_ _%g133958133977%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133957133974%_ _%g133958133977%_))))))
          (declare (not safe))
          (_%g133956134020%_ _%stx133955%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133886%_ _%stx133887%_)
        (let* ((_%g133889133906%_
                (lambda (_%g133890133903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133890133903%_))))
               (_%g133888133951%_
                (lambda (_%g133890133909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133890133909%_))
                      (let ((_%e133895133911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133890133909%_))))
                        (let ((_%hd133894133914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133895133911%_)))
                              (_%tl133893133916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133895133911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133893133916%_))
                              (let ((_%e133898133919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133893133916%_))))
                                (let ((_%hd133897133922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133898133919%_)))
                                      (_%tl133896133924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133898133919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133896133924%_))
                                      (let ((_%e133901133927%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133896133924%_))))
                                        (let ((_%hd133900133930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133901133927%_)))
                                              (_%tl133899133932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133901133927%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133899133932%_))
                                              ((lambda (_%L133935%_
                                                        _%L133936%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133886%_
                                                    _%L133935%_)))
                                               _%hd133900133930%_
                                               _%hd133897133922%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133889133906%_
                                                 _%g133890133909%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133889133906%_
                                         _%g133890133909%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133889133906%_ _%g133890133909%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133889133906%_ _%g133890133909%_))))))
          (declare (not safe))
          (_%g133888133951%_ _%stx133887%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133768%_ _%stx133769%_)
        (let* ((_%g133771133799%_
                (lambda (_%g133772133796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133772133796%_))))
               (_%g133770133883%_
                (lambda (_%g133772133802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133772133802%_))
                      (let ((_%e133777133804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133772133802%_))))
                        (let ((_%hd133776133807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133777133804%_)))
                              (_%tl133775133809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133777133804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133775133809%_))
                              (let ((_g134585_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133775133809%_
                                        '0))))
                                (begin
                                  (let ((_g134586_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134585_)
                                               (##vector-length _g134585_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134586_ 2)))
                                        (error "Context expects 2 values"
                                               _g134586_)))
                                  (let ((_%target133778133812%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134585_ 0)))
                                        (_%tl133780133814%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134585_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133780133814%_))
                                        (letrec ((_%loop133781133817%_
                                                  (lambda (_%hd133779133820%_
                                                           _%body133785133822%_
                                                           _%hd133786133824%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133779133820%_))
                                                        (let ((_%e133782133827%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133779133820%_))))
                  (let ((_%lp-hd133783133830%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133782133827%_)))
                        (_%lp-tl133784133832%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133782133827%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133783133830%_))
                        (let ((_%e133791133835%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133783133830%_))))
                          (let ((_%hd133790133838%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133791133835%_)))
                                (_%tl133789133840%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133791133835%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133789133840%_))
                                (let ((_%e133794133843%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133789133840%_))))
                                  (let ((_%hd133793133846%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133794133843%_)))
                                        (_%tl133792133848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133794133843%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133792133848%_))
                                        (let ((__tmp134588
                                               (cons _%hd133793133846%_
                                                     _%body133785133822%_))
                                              (__tmp134587
                                               (cons _%hd133790133838%_
                                                     _%hd133786133824%_)))
                                          (declare (not safe))
                                          (_%loop133781133817%_
                                           _%lp-tl133784133832%_
                                           __tmp134588
                                           __tmp134587))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133771133799%_
                                           _%g133772133802%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133771133799%_ _%g133772133802%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133771133799%_ _%g133772133802%_)))))
                (let ((_%body133787133851%_ (reverse _%body133785133822%_))
                      (_%hd133788133853%_ (reverse _%hd133786133824%_)))
                  ((lambda (_%L133856%_ _%L133857%_)
                     (for-each
                      (lambda (_%g133871133873%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133768%_ _%g133871133873%_)))
                      (let ((__tmp134589
                             (lambda (_%g133875133878%_ _%g133876133880%_)
                               (cons _%g133875133878%_ _%g133876133880%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134589 '() _%L133856%_))))
                   _%body133787133851%_
                   _%hd133788133853%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133781133817%_
                                             _%target133778133812%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133771133799%_
                                           _%g133772133802%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133771133799%_ _%g133772133802%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133771133799%_ _%g133772133802%_))))))
          (declare (not safe))
          (_%g133770133883%_ _%stx133769%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133621%_ _%stx133622%_)
        (let* ((_%g133624133659%_
                (lambda (_%g133625133656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133625133656%_))))
               (_%g133623133765%_
                (lambda (_%g133625133662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133625133662%_))
                      (let ((_%e133631133664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133625133662%_))))
                        (let ((_%hd133630133667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133631133664%_)))
                              (_%tl133629133669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133631133664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133629133669%_))
                              (let ((_%e133634133672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133629133669%_))))
                                (let ((_%hd133633133675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133634133672%_)))
                                      (_%tl133632133677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133634133672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133633133675%_))
                                      (let ((_g134590_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133633133675%_
                                                '0))))
                                        (begin
                                          (let ((_g134591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134590_)
                                                       (##vector-length
                                                        _g134590_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134591_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134591_)))
                                          (let ((_%target133635133680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134590_ 0)))
                                                (_%tl133637133682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134590_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133637133682%_))
                                                (letrec ((_%loop133638133685%_
                                                          (lambda (_%hd133636133688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133642133690%_
                           _%hd133643133692%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133636133688%_))
                        (let ((_%e133639133695%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133636133688%_))))
                          (let ((_%lp-hd133640133698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133639133695%_)))
                                (_%lp-tl133641133700%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133639133695%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133640133698%_))
                                (let ((_%e133648133703%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133640133698%_))))
                                  (let ((_%hd133647133706%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133648133703%_)))
                                        (_%tl133646133708%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133648133703%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133646133708%_))
                                        (let ((_%e133651133711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133646133708%_))))
                                          (let ((_%hd133650133714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133651133711%_)))
                                                (_%tl133649133716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133651133711%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133649133716%_))
                                                (let ((__tmp134593
                                                       (cons _%hd133650133714%_
                                                             _%expr133642133690%_))
                                                      (__tmp134592
                                                       (cons _%hd133647133706%_
                                                             _%hd133643133692%_)))
                                                  (declare (not safe))
                                                  (_%loop133638133685%_
                                                   _%lp-tl133641133700%_
                                                   __tmp134593
                                                   __tmp134592))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133624133659%_
                                                   _%g133625133662%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133624133659%_
                                           _%g133625133662%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133624133659%_ _%g133625133662%_)))))
                        (let ((_%expr133644133719%_
                               (reverse _%expr133642133690%_))
                              (_%hd133645133721%_
                               (reverse _%hd133643133692%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133632133677%_))
                              (let ((_%e133654133724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133632133677%_))))
                                (let ((_%hd133653133727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133654133724%_)))
                                      (_%tl133652133729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133654133724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133652133729%_))
                                      ((lambda (_%L133732%_
                                                _%L133733%_
                                                _%L133734%_)
                                         (for-each
                                          (lambda (_%g133753133755%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133621%_
                                               _%g133753133755%_)))
                                          (let ((__tmp134595
                                                 (lambda (_%g133757133760%_
                                                          _%g133758133762%_)
                                                   (cons _%g133757133760%_
                                                         _%g133758133762%_)))
                                                (__tmp134594
                                                 (cons _%L133732%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134595
                                             __tmp134594
                                             _%L133733%_))))
                                       _%hd133653133727%_
                                       _%expr133644133719%_
                                       _%hd133645133721%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133624133659%_
                                         _%g133625133662%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133624133659%_ _%g133625133662%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133638133685%_
                                                     _%target133635133680%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133624133659%_
                                                   _%g133625133662%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133624133659%_
                                         _%g133625133662%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133624133659%_ _%g133625133662%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133624133659%_ _%g133625133662%_))))))
          (declare (not safe))
          (_%g133623133765%_ _%stx133622%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133566%_ _%stx133567%_)
        (let* ((_%g133569133583%_
                (lambda (_%g133570133580%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133570133580%_))))
               (_%g133568133618%_
                (lambda (_%g133570133586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133570133586%_))
                      (let ((_%e133575133588%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133570133586%_))))
                        (let ((_%hd133574133591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133575133588%_)))
                              (_%tl133573133593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133575133588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133573133593%_))
                              (let ((_%e133578133596%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133573133593%_))))
                                (let ((_%hd133577133599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133578133596%_)))
                                      (_%tl133576133601%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133578133596%_))))
                                  ((lambda (_%L133604%_ _%L133605%_)
                                     (let ((__tmp134596 (last _%L133604%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self133566%_
                                        __tmp134596)))
                                   _%tl133576133601%_
                                   _%hd133577133599%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133569133583%_ _%g133570133586%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133569133583%_ _%g133570133586%_))))))
          (declare (not safe))
          (_%g133568133618%_ _%stx133567%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self133498%_ _%stx133499%_)
        (let* ((_%g133501133518%_
                (lambda (_%g133502133515%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133502133515%_))))
               (_%g133500133563%_
                (lambda (_%g133502133521%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133502133521%_))
                      (let ((_%e133507133523%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133502133521%_))))
                        (let ((_%hd133506133526%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133507133523%_)))
                              (_%tl133505133528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133507133523%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133505133528%_))
                              (let ((_%e133510133531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133505133528%_))))
                                (let ((_%hd133509133534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133510133531%_)))
                                      (_%tl133508133536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133510133531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133508133536%_))
                                      (let ((_%e133513133539%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133508133536%_))))
                                        (let ((_%hd133512133542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133513133539%_)))
                                              (_%tl133511133544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133513133539%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133511133544%_))
                                              ((lambda (_%L133547%_
                                                        _%L133548%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133498%_
                                                    _%L133547%_)))
                                               _%hd133512133542%_
                                               _%hd133509133534%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133501133518%_
                                                 _%g133502133521%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133501133518%_
                                         _%g133502133521%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133501133518%_ _%g133502133521%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133501133518%_ _%g133502133521%_))))))
          (declare (not safe))
          (_%g133500133563%_ _%stx133499%_))))
    (define gxc#apply-operands
      (lambda (_%self133411%_ _%stx133412%_)
        (let* ((_%g133414133433%_
                (lambda (_%g133415133430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133415133430%_))))
               (_%g133413133495%_
                (lambda (_%g133415133436%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133415133436%_))
                      (let ((_%e133419133438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133415133436%_))))
                        (let ((_%hd133418133441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133419133438%_)))
                              (_%tl133417133443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133419133438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133417133443%_))
                              (let ((_g134597_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133417133443%_
                                        '0))))
                                (begin
                                  (let ((_g134598_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134597_)
                                               (##vector-length _g134597_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134598_ 2)))
                                        (error "Context expects 2 values"
                                               _g134598_)))
                                  (let ((_%target133420133446%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134597_ 0)))
                                        (_%tl133422133448%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134597_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133422133448%_))
                                        (letrec ((_%loop133423133451%_
                                                  (lambda (_%hd133421133454%_
                                                           _%rands133427133456%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133421133454%_))
                                                        (let ((_%e133424133459%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133421133454%_))))
                  (let ((_%lp-hd133425133462%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133424133459%_)))
                        (_%lp-tl133426133464%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133424133459%_))))
                    (let ((__tmp134599
                           (cons _%lp-hd133425133462%_ _%rands133427133456%_)))
                      (declare (not safe))
                      (_%loop133423133451%_
                       _%lp-tl133426133464%_
                       __tmp134599))))
                (let ((_%rands133428133467%_ (reverse _%rands133427133456%_)))
                  ((lambda (_%L133470%_)
                     (for-each
                      (lambda (_%g133483133485%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133411%_ _%g133483133485%_)))
                      (let ((__tmp134600
                             (lambda (_%g133487133490%_ _%g133488133492%_)
                               (cons _%g133487133490%_ _%g133488133492%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134600 '() _%L133470%_))))
                   _%rands133428133467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133423133451%_
                                             _%target133420133446%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133414133433%_
                                           _%g133415133436%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133414133433%_ _%g133415133436%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133414133433%_ _%g133415133436%_))))))
          (declare (not safe))
          (_%g133413133495%_ _%stx133412%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx133408%_ _%src-stx133409%_)
        (let ((__tmp134601
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx133409%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx133408%_ __tmp134601))))
    (define gxc#xform-begin%
      (lambda (_%self133363%_ _%stx133364%_)
        (let* ((_%g133366133376%_
                (lambda (_%g133367133373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133367133373%_))))
               (_%g133365133405%_
                (lambda (_%g133367133379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133367133379%_))
                      (let ((_%e133371133381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133367133379%_))))
                        (let ((_%hd133370133384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133371133381%_)))
                              (_%tl133369133386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133371133381%_))))
                          ((lambda (_%L133389%_)
                             (let* ((_%forms133403%_
                                     (map (lambda (_%g133398133400%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133363%_
                                               _%g133398133400%_)))
                                          _%L133389%_))
                                    (__tmp134602
                                     (cons '%#begin _%forms133403%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134602
                                _%stx133364%_)))
                           _%tl133369133386%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133366133376%_ _%g133367133379%_))))))
          (declare (not safe))
          (_%g133365133405%_ _%stx133364%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133317%_ _%stx133318%_)
        (let* ((_%g133320133330%_
                (lambda (_%g133321133327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133321133327%_))))
               (_%g133319133360%_
                (lambda (_%g133321133333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133321133333%_))
                      (let ((_%e133325133335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133321133333%_))))
                        (let ((_%hd133324133338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133325133335%_)))
                              (_%tl133323133340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133325133335%_))))
                          ((lambda (_%L133343%_)
                             (let ((__tmp134605
                                    (lambda ()
                                      (let* ((_%forms133358%_
                                              (map (lambda (_%g133353133355%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self133317%_
                                                        _%g133353133355%_)))
                                                   _%L133343%_))
                                             (__tmp134606
                                              (cons '%#begin-syntax
                                                    _%forms133358%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134606
                                         _%stx133318%_))))
                                   (__tmp134603
                                    (let ((__tmp134604
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134604 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134605
                                gx#current-expander-phi
                                __tmp134603)))
                           _%tl133323133340%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133320133330%_ _%g133321133333%_))))))
          (declare (not safe))
          (_%g133319133360%_ _%stx133318%_))))
    (define gxc#xform-module%
      (lambda (_%self133254%_ _%stx133255%_)
        (let* ((_%g133257133271%_
                (lambda (_%g133258133268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133258133268%_))))
               (_%g133256133314%_
                (lambda (_%g133258133274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133258133274%_))
                      (let ((_%e133263133276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133258133274%_))))
                        (let ((_%hd133262133279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133263133276%_)))
                              (_%tl133261133281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133263133276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133261133281%_))
                              (let ((_%e133266133284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133261133281%_))))
                                (let ((_%hd133265133287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133266133284%_)))
                                      (_%tl133264133289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133266133284%_))))
                                  ((lambda (_%L133292%_ _%L133293%_)
                                     (let* ((_%ctx133306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133293%_)))
                                            (_%code133308%_
                                             (##structure-ref
                                              _%ctx133306%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133311%_
                                             (let ((__tmp134607
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self133254%_
                                                         _%code133308%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134607
                                                gx#current-expander-context
                                                _%ctx133306%_))))
                                       (##structure-set!
                                        _%ctx133306%_
                                        _%code133311%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134608
                                              (cons '%#module
                                                    (cons _%L133293%_
                                                          (cons _%code133311%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134608
                                          _%stx133255%_))))
                                   _%tl133264133289%_
                                   _%hd133265133287%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133257133271%_ _%g133258133274%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133257133271%_ _%g133258133274%_))))))
          (declare (not safe))
          (_%g133256133314%_ _%stx133255%_))))
    (define gxc#xform-define-values%
      (lambda (_%self133184%_ _%stx133185%_)
        (let* ((_%g133187133204%_
                (lambda (_%g133188133201%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133188133201%_))))
               (_%g133186133251%_
                (lambda (_%g133188133207%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133188133207%_))
                      (let ((_%e133193133209%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133188133207%_))))
                        (let ((_%hd133192133212%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133193133209%_)))
                              (_%tl133191133214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133193133209%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133191133214%_))
                              (let ((_%e133196133217%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133191133214%_))))
                                (let ((_%hd133195133220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133196133217%_)))
                                      (_%tl133194133222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133196133217%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133194133222%_))
                                      (let ((_%e133199133225%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133194133222%_))))
                                        (let ((_%hd133198133228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133199133225%_)))
                                              (_%tl133197133230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133199133225%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133197133230%_))
                                              ((lambda (_%L133233%_
                                                        _%L133234%_)
                                                 (let* ((_%expr133249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133184%_
                                                            _%L133233%_)))
                                                        (__tmp134609
                                                         (cons '%#define-values
                                                               (cons _%L133234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133249%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134609
                                                    _%stx133185%_)))
                                               _%hd133198133228%_
                                               _%hd133195133220%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133187133204%_
                                                 _%g133188133207%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133187133204%_
                                         _%g133188133207%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133187133204%_ _%g133188133207%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133187133204%_ _%g133188133207%_))))))
          (declare (not safe))
          (_%g133186133251%_ _%stx133185%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self133113%_ _%stx133114%_)
        (let* ((_%g133116133133%_
                (lambda (_%g133117133130%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133117133130%_))))
               (_%g133115133181%_
                (lambda (_%g133117133136%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133117133136%_))
                      (let ((_%e133122133138%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133117133136%_))))
                        (let ((_%hd133121133141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133122133138%_)))
                              (_%tl133120133143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133122133138%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133120133143%_))
                              (let ((_%e133125133146%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133120133143%_))))
                                (let ((_%hd133124133149%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133125133146%_)))
                                      (_%tl133123133151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133125133146%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133123133151%_))
                                      (let ((_%e133128133154%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133123133151%_))))
                                        (let ((_%hd133127133157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133128133154%_)))
                                              (_%tl133126133159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133128133154%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133126133159%_))
                                              ((lambda (_%L133162%_
                                                        _%L133163%_)
                                                 (let ((__tmp134612
                                                        (lambda ()
                                                          (let* ((_%expr133179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133113%_ _%L133162%_)))
                         (__tmp134613
                          (cons '%#define-syntax
                                (cons _%L133163%_ (cons _%expr133179%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134613 _%stx133114%_))))
               (__tmp134610
                (let ((__tmp134611
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134611 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134612
                                                    gx#current-expander-phi
                                                    __tmp134610)))
                                               _%hd133127133157%_
                                               _%hd133124133149%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133116133133%_
                                                 _%g133117133136%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133116133133%_
                                         _%g133117133136%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133116133133%_ _%g133117133136%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133116133133%_ _%g133117133136%_))))))
          (declare (not safe))
          (_%g133115133181%_ _%stx133114%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self133043%_ _%stx133044%_)
        (let* ((_%g133046133063%_
                (lambda (_%g133047133060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133047133060%_))))
               (_%g133045133110%_
                (lambda (_%g133047133066%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133047133066%_))
                      (let ((_%e133052133068%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133047133066%_))))
                        (let ((_%hd133051133071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133052133068%_)))
                              (_%tl133050133073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133052133068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133050133073%_))
                              (let ((_%e133055133076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133050133073%_))))
                                (let ((_%hd133054133079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133055133076%_)))
                                      (_%tl133053133081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133055133076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133053133081%_))
                                      (let ((_%e133058133084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133053133081%_))))
                                        (let ((_%hd133057133087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133058133084%_)))
                                              (_%tl133056133089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133058133084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133056133089%_))
                                              ((lambda (_%L133092%_
                                                        _%L133093%_)
                                                 (let* ((_%expr133108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133043%_
                                                            _%L133092%_)))
                                                        (__tmp134614
                                                         (cons '%#begin-annotation
                                                               (cons _%L133093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133108%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134614
                                                    _%stx133044%_)))
                                               _%hd133057133087%_
                                               _%hd133054133079%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133046133063%_
                                                 _%g133047133066%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133046133063%_
                                         _%g133047133066%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133046133063%_ _%g133047133066%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133046133063%_ _%g133047133066%_))))))
          (declare (not safe))
          (_%g133045133110%_ _%stx133044%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132981%_ _%stx132982%_)
        (let* ((_%g132984132998%_
                (lambda (_%g132985132995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132985132995%_))))
               (_%g132983133040%_
                (lambda (_%g132985133001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132985133001%_))
                      (let ((_%e132990133003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132985133001%_))))
                        (let ((_%hd132989133006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132990133003%_)))
                              (_%tl132988133008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132990133003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132988133008%_))
                              (let ((_%e132993133011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132988133008%_))))
                                (let ((_%hd132992133014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132993133011%_)))
                                      (_%tl132991133016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132993133011%_))))
                                  ((lambda (_%L133019%_ _%L133020%_)
                                     (let ((__tmp134617
                                            (lambda ()
                                              (let* ((_%body133038%_
                                                      (map (lambda (_%g133033133035%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132981%_ _%g133033133035%_)))
                   _%L133019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134618
                                                      (cons '%#lambda
                                                            (cons _%L133020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body133038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134618
                                                 _%stx132982%_))))
                                           (__tmp134615
                                            (let ((__tmp134616
                                                   (cons _%L133020%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134616))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134617
                                        gxc#current-compile-local-env
                                        __tmp134615)))
                                   _%tl132991133016%_
                                   _%hd132992133014%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132984132998%_ _%g132985133001%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132984132998%_ _%g132985133001%_))))))
          (declare (not safe))
          (_%g132983133040%_ _%stx132982%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132889%_ _%stx132890%_)
        (letrec ((_%clause-e132892%_
                  (lambda (_%clause132933%_)
                    (let* ((_%g132935132946%_
                            (lambda (_%g132936132943%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132936132943%_))))
                           (_%g132934132978%_
                            (lambda (_%g132936132949%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132936132949%_))
                                  (let ((_%e132941132951%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132936132949%_))))
                                    (let ((_%hd132940132954%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132941132951%_)))
                                          (_%tl132939132956%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132941132951%_))))
                                      ((lambda (_%L132959%_ _%L132960%_)
                                         (let ((__tmp134621
                                                (lambda ()
                                                  (let ((_%body132976%_
                                                         (map (lambda (_%g132971132973%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132889%_ _%g132971132973%_)))
                      _%L132959%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132960%_
                                                          _%body132976%_))))
                                               (__tmp134619
                                                (let ((__tmp134620
                                                       (cons _%L132960%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134620))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134621
                                            gxc#current-compile-local-env
                                            __tmp134619)))
                                       _%tl132939132956%_
                                       _%hd132940132954%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132935132946%_ _%g132936132949%_))))))
                      (declare (not safe))
                      (_%g132934132978%_ _%clause132933%_)))))
          (let* ((_%g132894132904%_
                  (lambda (_%g132895132901%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132895132901%_))))
                 (_%g132893132930%_
                  (lambda (_%g132895132907%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132895132907%_))
                        (let ((_%e132899132909%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132895132907%_))))
                          (let ((_%hd132898132912%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132899132909%_)))
                                (_%tl132897132914%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132899132909%_))))
                            ((lambda (_%L132917%_)
                               (let* ((_%clauses132928%_
                                       (map _%clause-e132892%_ _%L132917%_))
                                      (__tmp134622
                                       (cons '%#case-lambda
                                             _%clauses132928%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134622
                                  _%stx132890%_)))
                             _%tl132897132914%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132894132904%_ _%g132895132907%_))))))
            (declare (not safe))
            (_%g132893132930%_ _%stx132890%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132643%_ _%stx132644%_)
        (let* ((_%g132646132679%_
                (lambda (_%g132647132676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132647132676%_))))
               (_%g132645132886%_
                (lambda (_%g132647132682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132647132682%_))
                      (let ((_%e132654132684%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132647132682%_))))
                        (let ((_%hd132653132687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132654132684%_)))
                              (_%tl132652132689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132654132684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132652132689%_))
                              (let ((_%e132657132692%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132652132689%_))))
                                (let ((_%hd132656132695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132657132692%_)))
                                      (_%tl132655132697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132657132692%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132656132695%_))
                                      (let ((_g134623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132656132695%_
                                                '0))))
                                        (begin
                                          (let ((_g134624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134623_)
                                                       (##vector-length
                                                        _g134623_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134624_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134624_)))
                                          (let ((_%target132658132700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134623_ 0)))
                                                (_%tl132660132702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134623_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132660132702%_))
                                                (letrec ((_%loop132661132705%_
                                                          (lambda (_%hd132659132708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132665132710%_
                           _%hd132666132712%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132659132708%_))
                        (let ((_%e132662132715%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132659132708%_))))
                          (let ((_%lp-hd132663132718%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132662132715%_)))
                                (_%lp-tl132664132720%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132662132715%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132663132718%_))
                                (let ((_%e132671132723%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132663132718%_))))
                                  (let ((_%hd132670132726%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132671132723%_)))
                                        (_%tl132669132728%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132671132723%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132669132728%_))
                                        (let ((_%e132674132731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132669132728%_))))
                                          (let ((_%hd132673132734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132674132731%_)))
                                                (_%tl132672132736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132674132731%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132672132736%_))
                                                (let ((__tmp134626
                                                       (cons _%hd132673132734%_
                                                             _%expr132665132710%_))
                                                      (__tmp134625
                                                       (cons _%hd132670132726%_
                                                             _%hd132666132712%_)))
                                                  (declare (not safe))
                                                  (_%loop132661132705%_
                                                   _%lp-tl132664132720%_
                                                   __tmp134626
                                                   __tmp134625))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132646132679%_
                                                   _%g132647132682%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132646132679%_
                                           _%g132647132682%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132646132679%_ _%g132647132682%_)))))
                        (let ((_%expr132667132739%_
                               (reverse _%expr132665132710%_))
                              (_%hd132668132741%_
                               (reverse _%hd132666132712%_)))
                          ((lambda (_%L132744%_
                                    _%L132745%_
                                    _%L132746%_
                                    _%L132747%_)
                             (let* ((_%g132766132782%_
                                     (lambda (_%g132767132779%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132767132779%_))))
                                    (_%g132765132872%_
                                     (lambda (_%g132767132785%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132767132785%_))
                                           (let ((_g134627_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132767132785%_
                                                     '0))))
                                             (begin
                                               (let ((_g134628_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134627_)
                                                            (##vector-length
                                                             _g134627_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134628_)))
                                               (let ((_%target132769132787%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134627_
                                                         0)))
                                                     (_%tl132771132789%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134627_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132771132789%_))
                                                     (letrec ((_%loop132772132792%_
                                                               (lambda (_%hd132770132795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132776132797%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132770132795%_))
                             (let ((_%e132773132800%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132770132795%_))))
                               (let ((_%lp-hd132774132803%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132773132800%_)))
                                     (_%lp-tl132775132805%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132773132800%_))))
                                 (let ((__tmp134629
                                        (cons _%lp-hd132774132803%_
                                              _%expr132776132797%_)))
                                   (declare (not safe))
                                   (_%loop132772132792%_
                                    _%lp-tl132775132805%_
                                    __tmp134629))))
                             (let ((_%expr132777132808%_
                                    (reverse _%expr132776132797%_)))
                               ((lambda (_%L132811%_)
                                  (let ((__tmp134633
                                         (lambda ()
                                           (let* ((_%g132825132832%_
                                                   (lambda (_%g132826132829%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132826132829%_))))
                                                  (_%g132824132858%_
                                                   (lambda (_%g132826132835%_)
                                                     ((lambda (_%L132837%_)
                                                        (let ((__tmp134634
                                                               (cons _%L132747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L132811%_
                                        _%L132746%_))
                                     (let ((__tmp134635
                                            (lambda (_%g132847132851%_
                                                     _%g132848132853%_
                                                     _%g132849132855%_)
                                              (cons (cons _%g132848132853%_
                                                          (cons _%g132847132851%_
                                                                '()))
                                                    _%g132849132855%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp134635
                                        '()
                                        _%L132811%_
                                        _%L132746%_)))
                                   _%L132837%_))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp134634 _%stx132644%_)))
              _%g132826132835%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp134636
                                                   (map (lambda (_%g132860132862%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self132643%_
                                                             _%g132860132862%_)))
                                                        _%L132744%_)))
                                             (declare (not safe))
                                             (_%g132824132858%_ __tmp134636))))
                                        (__tmp134630
                                         (let ((__tmp134631
                                                (let ((__tmp134632
                                                       (lambda (_%g132864132867%_
                                                                _%g132865132869%_)
                                                         (cons _%g132864132867%_
                                                               _%g132865132869%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp134632
                                                   '()
                                                   _%L132746%_))))
                                           (declare (not safe))
                                           (gxc#xform-let-locals
                                            __tmp134631))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134633
                                     gxc#current-compile-local-env
                                     __tmp134630)))
                                _%expr132777132808%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132772132792%_ _%target132769132787%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132766132782%_
                                                        _%g132767132785%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132766132782%_
                                              _%g132767132785%_)))))
                                    (__tmp134637
                                     (map (lambda (_%g132874132876%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132643%_
                                               _%g132874132876%_)))
                                          (let ((__tmp134638
                                                 (lambda (_%g132878132881%_
                                                          _%g132879132883%_)
                                                   (cons _%g132878132881%_
                                                         _%g132879132883%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134638
                                             '()
                                             _%L132745%_)))))
                               (declare (not safe))
                               (_%g132765132872%_ __tmp134637)))
                           _%tl132655132697%_
                           _%expr132667132739%_
                           _%hd132668132741%_
                           _%hd132653132687%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132661132705%_
                                                     _%target132658132700%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132646132679%_
                                                   _%g132647132682%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132646132679%_
                                         _%g132647132682%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132646132679%_ _%g132647132682%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132646132679%_ _%g132647132682%_))))))
          (declare (not safe))
          (_%g132645132886%_ _%stx132644%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self132397%_ _%stx132398%_)
        (let* ((_%g132400132433%_
                (lambda (_%g132401132430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132401132430%_))))
               (_%g132399132640%_
                (lambda (_%g132401132436%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132401132436%_))
                      (let ((_%e132408132438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132401132436%_))))
                        (let ((_%hd132407132441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132408132438%_)))
                              (_%tl132406132443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132408132438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132406132443%_))
                              (let ((_%e132411132446%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132406132443%_))))
                                (let ((_%hd132410132449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132411132446%_)))
                                      (_%tl132409132451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132411132446%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132410132449%_))
                                      (let ((_g134639_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132410132449%_
                                                '0))))
                                        (begin
                                          (let ((_g134640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134639_)
                                                       (##vector-length
                                                        _g134639_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134640_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134640_)))
                                          (let ((_%target132412132454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134639_ 0)))
                                                (_%tl132414132456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134639_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132414132456%_))
                                                (letrec ((_%loop132415132459%_
                                                          (lambda (_%hd132413132462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132419132464%_
                           _%hd132420132466%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132413132462%_))
                        (let ((_%e132416132469%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132413132462%_))))
                          (let ((_%lp-hd132417132472%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132416132469%_)))
                                (_%lp-tl132418132474%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132416132469%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132417132472%_))
                                (let ((_%e132425132477%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132417132472%_))))
                                  (let ((_%hd132424132480%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132425132477%_)))
                                        (_%tl132423132482%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132425132477%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132423132482%_))
                                        (let ((_%e132428132485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132423132482%_))))
                                          (let ((_%hd132427132488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132428132485%_)))
                                                (_%tl132426132490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132428132485%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132426132490%_))
                                                (let ((__tmp134642
                                                       (cons _%hd132427132488%_
                                                             _%expr132419132464%_))
                                                      (__tmp134641
                                                       (cons _%hd132424132480%_
                                                             _%hd132420132466%_)))
                                                  (declare (not safe))
                                                  (_%loop132415132459%_
                                                   _%lp-tl132418132474%_
                                                   __tmp134642
                                                   __tmp134641))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132400132433%_
                                                   _%g132401132436%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132400132433%_
                                           _%g132401132436%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132400132433%_ _%g132401132436%_)))))
                        (let ((_%expr132421132493%_
                               (reverse _%expr132419132464%_))
                              (_%hd132422132495%_
                               (reverse _%hd132420132466%_)))
                          ((lambda (_%L132498%_
                                    _%L132499%_
                                    _%L132500%_
                                    _%L132501%_)
                             (let ((__tmp134646
                                    (lambda ()
                                      (let* ((_%g132521132537%_
                                              (lambda (_%g132522132534%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g132522132534%_))))
                                             (_%g132520132619%_
                                              (lambda (_%g132522132540%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g132522132540%_))
                                                    (let ((_g134647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g132522132540%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134648_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134647_)
                             (##vector-length _g134647_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134648_ 2)))
                      (error "Context expects 2 values" _g134648_)))
                (let ((_%target132524132542%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134647_ 0)))
                      (_%tl132526132544%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134647_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl132526132544%_))
                      (letrec ((_%loop132527132547%_
                                (lambda (_%hd132525132550%_
                                         _%expr132531132552%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd132525132550%_))
                                      (let ((_%e132528132555%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd132525132550%_))))
                                        (let ((_%lp-hd132529132558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132528132555%_)))
                                              (_%lp-tl132530132560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132528132555%_))))
                                          (let ((__tmp134649
                                                 (cons _%lp-hd132529132558%_
                                                       _%expr132531132552%_)))
                                            (declare (not safe))
                                            (_%loop132527132547%_
                                             _%lp-tl132530132560%_
                                             __tmp134649))))
                                      (let ((_%expr132532132563%_
                                             (reverse _%expr132531132552%_)))
                                        ((lambda (_%L132566%_)
                                           (let ()
                                             (let* ((_%g132580132587%_
                                                     (lambda (_%g132581132584%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132581132584%_))))
                                                    (_%g132579132612%_
                                                     (lambda (_%g132581132590%_)
                                                       ((lambda (_%L132592%_)
                                                          (let ((__tmp134650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L132501%_
                               (cons (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L132566%_
                                          _%L132500%_))
                                       (let ((__tmp134651
                                              (lambda (_%g132601132605%_
                                                       _%g132602132607%_
                                                       _%g132603132609%_)
                                                (cons (cons _%g132602132607%_
                                                            (cons _%g132601132605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g132603132609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp134651
                                          '()
                                          _%L132566%_
                                          _%L132500%_)))
                                     _%L132592%_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134650 _%stx132398%_)))
                _%g132581132590%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134652
                                                     (map (lambda (_%g132614132616%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132397%_
                                                               _%g132614132616%_)))
                                                          _%L132498%_)))
                                               (declare (not safe))
                                               (_%g132579132612%_
                                                __tmp134652))))
                                         _%expr132532132563%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop132527132547%_ _%target132524132542%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g132521132537%_ _%g132522132540%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g132521132537%_
                                                       _%g132522132540%_)))))
                                             (__tmp134653
                                              (map (lambda (_%g132621132623%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132397%_
                                                        _%g132621132623%_)))
                                                   (let ((__tmp134654
                                                          (lambda (_%g132625132628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132626132630%_)
                    (cons _%g132625132628%_ _%g132626132630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134654
                                                      '()
                                                      _%L132499%_)))))
                                        (declare (not safe))
                                        (_%g132520132619%_ __tmp134653))))
                                   (__tmp134643
                                    (let ((__tmp134644
                                           (let ((__tmp134645
                                                  (lambda (_%g132632132635%_
                                                           _%g132633132637%_)
                                                    (cons _%g132632132635%_
                                                          _%g132633132637%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134645
                                              '()
                                              _%L132500%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134644))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134646
                                gxc#current-compile-local-env
                                __tmp134643)))
                           _%tl132409132451%_
                           _%expr132421132493%_
                           _%hd132422132495%_
                           _%hd132407132441%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132415132459%_
                                                     _%target132412132454%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132400132433%_
                                                   _%g132401132436%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132400132433%_
                                         _%g132401132436%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132400132433%_ _%g132401132436%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132400132433%_ _%g132401132436%_))))))
          (declare (not safe))
          (_%g132399132640%_ _%stx132398%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132301%_)
        (let _%loop132303%_ ((_%rest132305%_ _%bindings132301%_)
                             (_%locals132306%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest132307132315%_ _%rest132305%_)
                 (_%else132309132323%_ (lambda () _%locals132306%_))
                 (_%K132311132385%_
                  (lambda (_%rest132326%_ _%bind132327%_)
                    (let _%loop-bind132329%_ ((_%bind132331%_ _%bind132327%_)
                                              (_%locals132332%_
                                               _%locals132306%_))
                      (let* ((_%bind132333132344%_ _%bind132331%_)
                             (_%E132337132348%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind132333132344%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K132340132373%_
                               (lambda (_%bind-rest132370%_ _%id132371%_)
                                 (let ((__tmp134655
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132371%_))
                                              _%locals132332%_)))
                                   (declare (not safe))
                                   (_%loop-bind132329%_
                                    _%bind-rest132370%_
                                    __tmp134655))))
                              (_%K132339132362%_
                               (lambda (_%id132360%_)
                                 (let ((__tmp134656
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132360%_))
                                              _%locals132332%_)))
                                   (declare (not safe))
                                   (_%loop132303%_
                                    _%rest132326%_
                                    __tmp134656))))
                              (_%K132338132353%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop132303%_
                                    _%rest132326%_
                                    _%locals132332%_)))))
                          (let ((_%try-match132335132367%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind132333132344%_))
                                       (let ((_%id132365%_
                                              _%bind132333132344%_))
                                         (declare (not safe))
                                         (_%K132339132362%_ _%id132365%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K132338132353%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind132333132344%_))
                                (let ((_%tl132342132378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind132333132344%_)))
                                      (_%hd132341132376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind132333132344%_))))
                                  (let ((_%id132381%_ _%hd132341132376%_)
                                        (_%bind-rest132383%_
                                         _%tl132342132378%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K132340132373%_
                                       _%bind-rest132383%_
                                       _%id132381%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match132335132367%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest132307132315%_))
                (let ((_%hd132312132388%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132307132315%_)))
                      (_%tl132313132390%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132307132315%_))))
                  (let* ((_%bind132393%_ _%hd132312132388%_)
                         (_%rest132395%_ _%tl132313132390%_))
                    (declare (not safe))
                    (_%K132311132385%_ _%rest132395%_ _%bind132393%_)))
                (let () (declare (not safe)) (_%else132309132323%_)))))))
    (define gxc#xform-operands
      (lambda (_%self132253%_ _%stx132254%_)
        (let* ((_%g132256132267%_
                (lambda (_%g132257132264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132257132264%_))))
               (_%g132255132298%_
                (lambda (_%g132257132270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132257132270%_))
                      (let ((_%e132262132272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132257132270%_))))
                        (let ((_%hd132261132275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132262132272%_)))
                              (_%tl132260132277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132262132272%_))))
                          ((lambda (_%L132280%_ _%L132281%_)
                             (let* ((_%rands132296%_
                                     (map (lambda (_%g132291132293%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132253%_
                                               _%g132291132293%_)))
                                          _%L132280%_))
                                    (__tmp134657
                                     (cons _%L132281%_ _%rands132296%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134657
                                _%stx132254%_)))
                           _%tl132260132277%_
                           _%hd132261132275%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132256132267%_ _%g132257132270%_))))))
          (declare (not safe))
          (_%g132255132298%_ _%stx132254%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self132183%_ _%stx132184%_)
        (let* ((_%g132186132203%_
                (lambda (_%g132187132200%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132187132200%_))))
               (_%g132185132250%_
                (lambda (_%g132187132206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132187132206%_))
                      (let ((_%e132192132208%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132187132206%_))))
                        (let ((_%hd132191132211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132192132208%_)))
                              (_%tl132190132213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132192132208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132190132213%_))
                              (let ((_%e132195132216%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132190132213%_))))
                                (let ((_%hd132194132219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132195132216%_)))
                                      (_%tl132193132221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132195132216%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132193132221%_))
                                      (let ((_%e132198132224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132193132221%_))))
                                        (let ((_%hd132197132227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132198132224%_)))
                                              (_%tl132196132229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132198132224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132196132229%_))
                                              ((lambda (_%L132232%_
                                                        _%L132233%_)
                                                 (let* ((_%expr132248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132183%_
                                                            _%L132232%_)))
                                                        (__tmp134658
                                                         (cons '%#set!
                                                               (cons _%L132233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132248%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134658
                                                    _%stx132184%_)))
                                               _%hd132197132227%_
                                               _%hd132194132219%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132186132203%_
                                                 _%g132187132206%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132186132203%_
                                         _%g132187132206%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132186132203%_ _%g132187132206%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132186132203%_ _%g132187132206%_))))))
          (declare (not safe))
          (_%g132185132250%_ _%stx132184%_))))))
