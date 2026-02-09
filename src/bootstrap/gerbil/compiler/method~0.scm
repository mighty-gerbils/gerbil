(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770660767)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx192586%_)
        (let* ((_%self192588%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e192590%_
                (let ((__tmp192808 (gxc#stx-car-e _%stx192586%_)))
                  (declare (not safe))
                  (method-ref _%self192588%_ __tmp192808))))
          (if _%$e192590%_
              ((lambda (_%method192593%_)
                 (declare (not safe))
                 (let ((_%$e192596%_ (gx#stx-source _%stx192586%_)))
                   (if _%$e192596%_
                       ((lambda (_%source192599%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method192593%_ _%self192588%_ _%stx192586%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source192599%_ '()))
                                 (let ((_%$e192603%_
                                        (gxc#current-compile-context)))
                                   (if _%$e192603%_ _%$e192603%_ '())))))
                        _%$e192596%_)
                       (_%method192593%_ _%self192588%_ _%stx192586%_))))
               _%$e192590%_)
              (let ((__tmp192810 (gxc#stx-car-e _%stx192586%_))
                    (__tmp192809
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx192586%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self192588%_
                       __tmp192810
                       __tmp192809))))))
    (define gxc#compile-e__1
      (lambda (_%self192608%_ _%stx192609%_)
        (let ((_%$e192611%_
               (let ((__tmp192811 (gxc#stx-car-e _%stx192609%_)))
                 (declare (not safe))
                 (method-ref _%self192608%_ __tmp192811))))
          (if _%$e192611%_
              ((lambda (_%method192614%_)
                 (declare (not safe))
                 (let ((_%$e192617%_ (gx#stx-source _%stx192609%_)))
                   (if _%$e192617%_
                       ((lambda (_%source192620%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method192614%_ _%self192608%_ _%stx192609%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source192620%_ '()))
                                 (let ((_%$e192624%_
                                        (gxc#current-compile-context)))
                                   (if _%$e192624%_ _%$e192624%_ '())))))
                        _%$e192617%_)
                       (_%method192614%_ _%self192608%_ _%stx192609%_))))
               _%$e192611%_)
              (let ((__tmp192813 (gxc#stx-car-e _%stx192609%_))
                    (__tmp192812
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx192609%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self192608%_
                       __tmp192813
                       __tmp192812))))))
    (define gxc#compile-e
      (lambda _g192814_
        (let ((_g192815_ (let () (declare (not safe)) (##length _g192814_))))
          (cond ((let () (declare (not safe)) (##fx= _g192815_ 1))
                 (apply gxc#compile-e__0 _g192814_))
                ((let () (declare (not safe)) (##fx= _g192815_ 2))
                 (apply gxc#compile-e__1 _g192814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g192814_))))))
    (define gxc#stx-car-e
      (lambda (_%stx192584%_)
        (let ((__tmp192816
               (car (let () (declare (not safe)) (gx#stx-e _%stx192584%_)))))
          (declare (not safe))
          (gx#stx-e __tmp192816))))
    (define gxc#void-method (lambda (_%self192581%_ _%stx192582%_) '#!void))
    (define gxc#false-method (lambda (_%self192578%_ _%stx192579%_) '#f))
    (define gxc#true-method (lambda (_%self192575%_ _%stx192576%_) '#t))
    (define gxc#identity-method
      (lambda (_%self192572%_ _%stx192573%_) _%stx192573%_))
    (define gxc#::void-expression::t
      (let ((__tmp192817 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp192817
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args192569%_
        (apply make-instance gxc#::void-expression::t _%$args192569%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp192818
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
        (__make-atomic-promise __tmp192818)))
    (define gxc#::void-special-form::t
      (let ((__tmp192819 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp192819
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args192565%_
        (apply make-instance gxc#::void-special-form::t _%$args192565%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp192820
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
        (__make-atomic-promise __tmp192820)))
    (define gxc#::void::t
      (let ((__tmp192821
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp192821 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args192561%_
        (apply make-instance gxc#::void::t _%$args192561%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp192822
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp192822)))
    (define gxc#::false-expression::t
      (let ((__tmp192823 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp192823
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args192557%_
        (apply make-instance gxc#::false-expression::t _%$args192557%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp192824
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
        (__make-atomic-promise __tmp192824)))
    (define gxc#::false-special-form::t
      (let ((__tmp192825 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp192825
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args192553%_
        (apply make-instance gxc#::false-special-form::t _%$args192553%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp192826
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
        (__make-atomic-promise __tmp192826)))
    (define gxc#::false::t
      (let ((__tmp192827
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp192827 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args192549%_
        (apply make-instance gxc#::false::t _%$args192549%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp192828
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp192828)))
    (define gxc#::identity-expression::t
      (let ((__tmp192829 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp192829
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args192545%_
        (apply make-instance gxc#::identity-expression::t _%$args192545%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp192830
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
        (__make-atomic-promise __tmp192830)))
    (define gxc#::identity-special-form::t
      (let ((__tmp192831 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp192831
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args192541%_
        (apply make-instance gxc#::identity-special-form::t _%$args192541%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp192832
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
        (__make-atomic-promise __tmp192832)))
    (define gxc#::identity::t
      (let ((__tmp192833
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp192833
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args192537%_
        (apply make-instance gxc#::identity::t _%$args192537%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp192834
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp192834)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp192835 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp192835
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args192533%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args192533%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp192836
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
        (__make-atomic-promise __tmp192836)))
    (define gxc#::basic-xform::t
      (let ((__tmp192837
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp192837
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args192529%_
        (apply make-instance gxc#::basic-xform::t _%$args192529%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp192838
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
        (__make-atomic-promise __tmp192838)))
    (define gxc#apply-begin%
      (lambda (_%self192485%_ _%stx192486%_)
        (let* ((_%g192488192498%_
                (lambda (_%g192489192495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192489192495%_))))
               (_%g192487192525%_
                (lambda (_%g192489192501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192489192501%_))
                      (let ((_%e192491192503%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192489192501%_))))
                        (let ((_%hd192492192506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192491192503%_)))
                              (_%tl192493192508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192491192503%_))))
                          ((lambda (_%g192490192511%_)
                             (for-each
                              (lambda (_%g192520192522%_)
                                (gxc#compile-e__1
                                 _%self192485%_
                                 _%g192520192522%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g192490192511%_))))
                           _%tl192493192508%_)))
                      (_%g192488192498%_ _%g192489192501%_)))))
          (_%g192487192525%_ _%stx192486%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self192446%_ _%stx192447%_)
        (let* ((_%g192449192459%_
                (lambda (_%g192450192456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192450192456%_))))
               (_%g192448192482%_
                (lambda (_%g192450192462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192450192462%_))
                      (let ((_%e192452192464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192450192462%_))))
                        (let ((_%hd192453192467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192452192464%_)))
                              (_%tl192454192469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192452192464%_))))
                          ((lambda (_%g192451192472%_)
                             (gxc#compile-e__1
                              _%self192446%_
                              (last _%g192451192472%_)))
                           _%tl192454192469%_)))
                      (_%g192449192459%_ _%g192450192462%_)))))
          (_%g192448192482%_ _%stx192447%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self192442%_ _%stx192443%_)
        (let ((__tmp192841
               (lambda () (gxc#apply-begin% _%self192442%_ _%stx192443%_)))
              (__tmp192839
               (let ((__tmp192840
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp192840 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp192841
           gx#current-expander-phi
           __tmp192839))))
    (define gxc#apply-module%
      (lambda (_%self192381%_ _%stx192382%_)
        (let* ((_%g192384192398%_
                (lambda (_%g192385192395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192385192395%_))))
               (_%g192383192439%_
                (lambda (_%g192385192401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192385192401%_))
                      (let ((_%e192388192403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192385192401%_))))
                        (let ((_%hd192389192406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192388192403%_)))
                              (_%tl192390192408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192388192403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192390192408%_))
                              (let ((_%e192391192411%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192390192408%_))))
                                (let ((_%hd192392192414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192391192411%_)))
                                      (_%tl192393192416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192391192411%_))))
                                  ((lambda (_%g192386192419%_
                                            _%g192387192420%_)
                                     (let* ((_%ctx192433%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g192387192420%_)))
                                            (_%ctx-stx192435%_
                                             (##structure-ref
                                              _%ctx192433%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp192842
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self192381%_
                                                _%ctx-stx192435%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp192842
                                        gx#current-expander-context
                                        _%ctx192433%_)))
                                   _%tl192393192416%_
                                   _%hd192392192414%_)))
                              (_%g192384192398%_ _%g192385192401%_))))
                      (_%g192384192398%_ _%g192385192401%_)))))
          (_%g192383192439%_ _%stx192382%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self192313%_ _%stx192314%_)
        (let* ((_%g192316192333%_
                (lambda (_%g192317192330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192317192330%_))))
               (_%g192315192378%_
                (lambda (_%g192317192336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192317192336%_))
                      (let ((_%e192320192338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192317192336%_))))
                        (let ((_%hd192321192341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192320192338%_)))
                              (_%tl192322192343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192320192338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192322192343%_))
                              (let ((_%e192323192346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192322192343%_))))
                                (let ((_%hd192324192349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192323192346%_)))
                                      (_%tl192325192351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192323192346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192325192351%_))
                                      (let ((_%e192326192354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192325192351%_))))
                                        (let ((_%hd192327192357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192326192354%_)))
                                              (_%tl192328192359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192326192354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192328192359%_))
                                              ((lambda (_%g192318192362%_
                                                        _%g192319192363%_)
                                                 (gxc#compile-e__1
                                                  _%self192313%_
                                                  _%g192318192362%_))
                                               _%hd192327192357%_
                                               _%hd192324192349%_)
                                              (_%g192316192333%_
                                               _%g192317192336%_))))
                                      (_%g192316192333%_ _%g192317192336%_))))
                              (_%g192316192333%_ _%g192317192336%_))))
                      (_%g192316192333%_ _%g192317192336%_)))))
          (_%g192315192378%_ _%stx192314%_))))
    (define gxc#apply-define-values%
      (lambda (_%self192245%_ _%stx192246%_)
        (let* ((_%g192248192265%_
                (lambda (_%g192249192262%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192249192262%_))))
               (_%g192247192310%_
                (lambda (_%g192249192268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192249192268%_))
                      (let ((_%e192252192270%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192249192268%_))))
                        (let ((_%hd192253192273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192252192270%_)))
                              (_%tl192254192275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192252192270%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192254192275%_))
                              (let ((_%e192255192278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192254192275%_))))
                                (let ((_%hd192256192281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192255192278%_)))
                                      (_%tl192257192283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192255192278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192257192283%_))
                                      (let ((_%e192258192286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192257192283%_))))
                                        (let ((_%hd192259192289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192258192286%_)))
                                              (_%tl192260192291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192258192286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192260192291%_))
                                              ((lambda (_%g192250192294%_
                                                        _%g192251192295%_)
                                                 (gxc#compile-e__1
                                                  _%self192245%_
                                                  _%g192250192294%_))
                                               _%hd192259192289%_
                                               _%hd192256192281%_)
                                              (_%g192248192265%_
                                               _%g192249192268%_))))
                                      (_%g192248192265%_ _%g192249192268%_))))
                              (_%g192248192265%_ _%g192249192268%_))))
                      (_%g192248192265%_ _%g192249192268%_)))))
          (_%g192247192310%_ _%stx192246%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self192176%_ _%stx192177%_)
        (let* ((_%g192179192196%_
                (lambda (_%g192180192193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192180192193%_))))
               (_%g192178192242%_
                (lambda (_%g192180192199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192180192199%_))
                      (let ((_%e192183192201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192180192199%_))))
                        (let ((_%hd192184192204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192183192201%_)))
                              (_%tl192185192206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192183192201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192185192206%_))
                              (let ((_%e192186192209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192185192206%_))))
                                (let ((_%hd192187192212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192186192209%_)))
                                      (_%tl192188192214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192186192209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192188192214%_))
                                      (let ((_%e192189192217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192188192214%_))))
                                        (let ((_%hd192190192220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192189192217%_)))
                                              (_%tl192191192222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192189192217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192191192222%_))
                                              ((lambda (_%g192181192225%_
                                                        _%g192182192226%_)
                                                 (let ((__tmp192845
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self192176%_
                                                           _%g192181192225%_)))
                                                       (__tmp192843
                                                        (let ((__tmp192844
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp192844 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp192845
                                                    gx#current-expander-phi
                                                    __tmp192843)))
                                               _%hd192190192220%_
                                               _%hd192187192212%_)
                                              (_%g192179192196%_
                                               _%g192180192199%_))))
                                      (_%g192179192196%_ _%g192180192199%_))))
                              (_%g192179192196%_ _%g192180192199%_))))
                      (_%g192179192196%_ _%g192180192199%_)))))
          (_%g192178192242%_ _%stx192177%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self192108%_ _%stx192109%_)
        (let* ((_%g192111192128%_
                (lambda (_%g192112192125%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192112192125%_))))
               (_%g192110192173%_
                (lambda (_%g192112192131%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192112192131%_))
                      (let ((_%e192115192133%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192112192131%_))))
                        (let ((_%hd192116192136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192115192133%_)))
                              (_%tl192117192138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192115192133%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192117192138%_))
                              (let ((_%e192118192141%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192117192138%_))))
                                (let ((_%hd192119192144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192118192141%_)))
                                      (_%tl192120192146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192118192141%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192120192146%_))
                                      (let ((_%e192121192149%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192120192146%_))))
                                        (let ((_%hd192122192152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192121192149%_)))
                                              (_%tl192123192154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192121192149%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192123192154%_))
                                              ((lambda (_%g192113192157%_
                                                        _%g192114192158%_)
                                                 (gxc#compile-e__1
                                                  _%self192108%_
                                                  _%g192113192157%_))
                                               _%hd192122192152%_
                                               _%hd192119192144%_)
                                              (_%g192111192128%_
                                               _%g192112192131%_))))
                                      (_%g192111192128%_ _%g192112192131%_))))
                              (_%g192111192128%_ _%g192112192131%_))))
                      (_%g192111192128%_ _%g192112192131%_)))))
          (_%g192110192173%_ _%stx192109%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self191994%_ _%stx191995%_)
        (let* ((_%g191997192025%_
                (lambda (_%g191998192022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191998192022%_))))
               (_%g191996192105%_
                (lambda (_%g191998192028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191998192028%_))
                      (let ((_%e192001192030%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191998192028%_))))
                        (let ((_%hd192002192033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192001192030%_)))
                              (_%tl192003192035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192001192030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl192003192035%_))
                              (let ((_g192846_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl192003192035%_
                                        '0))))
                                (begin
                                  (let ((_g192847_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g192846_)
                                               (##values-length _g192846_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g192847_ 2)))
                                        (error "Context expects 2 values"
                                               _g192847_)))
                                  (let ((_%target192004192038%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g192846_ 0)))
                                        (_%tl192006192040%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g192846_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192006192040%_))
                                        (letrec ((_%loop192007192043%_
                                                  (lambda (_%hd192005192046%_
                                                           _%body192011192048%_
                                                           _%hd192012192049%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd192005192046%_))
                                                        (let ((_%e192008192051%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd192005192046%_))))
                  (let ((_%lp-hd192009192054%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192008192051%_)))
                        (_%lp-tl192010192056%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192008192051%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd192009192054%_))
                        (let ((_%e192015192059%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd192009192054%_))))
                          (let ((_%hd192016192062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192015192059%_)))
                                (_%tl192017192064%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192015192059%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl192017192064%_))
                                (let ((_%e192018192067%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl192017192064%_))))
                                  (let ((_%hd192019192070%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192018192067%_)))
                                        (_%tl192020192072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192018192067%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192020192072%_))
                                        (_%loop192007192043%_
                                         _%lp-tl192010192056%_
                                         (cons _%hd192019192070%_
                                               _%body192011192048%_)
                                         (cons _%hd192016192062%_
                                               _%hd192012192049%_))
                                        (_%g191997192025%_
                                         _%g191998192028%_))))
                                (_%g191997192025%_ _%g191998192028%_))))
                        (_%g191997192025%_ _%g191998192028%_))))
                (let ((_%body192013192075%_ (reverse _%body192011192048%_))
                      (_%hd192014192076%_ (reverse _%hd192012192049%_)))
                  ((lambda (_%g191999192078%_ _%g192000192079%_)
                     (for-each
                      (lambda (_%g192093192095%_)
                        (gxc#compile-e__1 _%self191994%_ _%g192093192095%_))
                      (let ((__tmp192848
                             (lambda (_%g192097192100%_ _%g192098192102%_)
                               (cons _%g192097192100%_ _%g192098192102%_))))
                        (declare (not safe))
                        (foldr__0 __tmp192848 '() _%g191999192078%_))))
                   _%body192013192075%_
                   _%hd192014192076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop192007192043%_
                                           _%target192004192038%_
                                           '()
                                           '()))
                                        (_%g191997192025%_
                                         _%g191998192028%_)))))
                              (_%g191997192025%_ _%g191998192028%_))))
                      (_%g191997192025%_ _%g191998192028%_)))))
          (_%g191996192105%_ _%stx191995%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self191851%_ _%stx191852%_)
        (let* ((_%g191854191889%_
                (lambda (_%g191855191886%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191855191886%_))))
               (_%g191853191991%_
                (lambda (_%g191855191892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191855191892%_))
                      (let ((_%e191859191894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191855191892%_))))
                        (let ((_%hd191860191897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191859191894%_)))
                              (_%tl191861191899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191859191894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191861191899%_))
                              (let ((_%e191862191902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191861191899%_))))
                                (let ((_%hd191863191905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191862191902%_)))
                                      (_%tl191864191907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191862191902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd191863191905%_))
                                      (let ((_g192849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd191863191905%_
                                                '0))))
                                        (begin
                                          (let ((_g192850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192849_)
                                                       (##values-length
                                                        _g192849_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192850_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192850_)))
                                          (let ((_%target191865191910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192849_ 0)))
                                                (_%tl191867191912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192849_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191867191912%_))
                                                (letrec ((_%loop191868191915%_
                                                          (lambda (_%hd191866191918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr191872191920%_
                           _%hd191873191921%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191866191918%_))
                        (let ((_%e191869191923%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd191866191918%_))))
                          (let ((_%lp-hd191870191926%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191869191923%_)))
                                (_%lp-tl191871191928%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191869191923%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd191870191926%_))
                                (let ((_%e191876191931%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd191870191926%_))))
                                  (let ((_%hd191877191934%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191876191931%_)))
                                        (_%tl191878191936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191876191931%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl191878191936%_))
                                        (let ((_%e191879191939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl191878191936%_))))
                                          (let ((_%hd191880191942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191879191939%_)))
                                                (_%tl191881191944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191879191939%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191881191944%_))
                                                (_%loop191868191915%_
                                                 _%lp-tl191871191928%_
                                                 (cons _%hd191880191942%_
                                                       _%expr191872191920%_)
                                                 (cons _%hd191877191934%_
                                                       _%hd191873191921%_))
                                                (_%g191854191889%_
                                                 _%g191855191892%_))))
                                        (_%g191854191889%_
                                         _%g191855191892%_))))
                                (_%g191854191889%_ _%g191855191892%_))))
                        (let ((_%expr191874191947%_
                               (reverse _%expr191872191920%_))
                              (_%hd191875191948%_
                               (reverse _%hd191873191921%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191864191907%_))
                              (let ((_%e191882191950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191864191907%_))))
                                (let ((_%hd191883191953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191882191950%_)))
                                      (_%tl191884191955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191882191950%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191884191955%_))
                                      ((lambda (_%g191856191958%_
                                                _%g191857191959%_
                                                _%g191858191960%_)
                                         (for-each
                                          (lambda (_%g191979191981%_)
                                            (gxc#compile-e__1
                                             _%self191851%_
                                             _%g191979191981%_))
                                          (let ((__tmp192852
                                                 (lambda (_%g191983191986%_
                                                          _%g191984191988%_)
                                                   (cons _%g191983191986%_
                                                         _%g191984191988%_)))
                                                (__tmp192851
                                                 (cons _%g191856191958%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp192852
                                             __tmp192851
                                             _%g191857191959%_))))
                                       _%hd191883191953%_
                                       _%expr191874191947%_
                                       _%hd191875191948%_)
                                      (_%g191854191889%_ _%g191855191892%_))))
                              (_%g191854191889%_ _%g191855191892%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop191868191915%_
                                                   _%target191865191910%_
                                                   '()
                                                   '()))
                                                (_%g191854191889%_
                                                 _%g191855191892%_)))))
                                      (_%g191854191889%_ _%g191855191892%_))))
                              (_%g191854191889%_ _%g191855191892%_))))
                      (_%g191854191889%_ _%g191855191892%_)))))
          (_%g191853191991%_ _%stx191852%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self191796%_ _%stx191797%_)
        (let* ((_%g191799191813%_
                (lambda (_%g191800191810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191800191810%_))))
               (_%g191798191848%_
                (lambda (_%g191800191816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191800191816%_))
                      (let ((_%e191803191818%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191800191816%_))))
                        (let ((_%hd191804191821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191803191818%_)))
                              (_%tl191805191823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191803191818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191805191823%_))
                              (let ((_%e191806191826%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191805191823%_))))
                                (let ((_%hd191807191829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191806191826%_)))
                                      (_%tl191808191831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191806191826%_))))
                                  ((lambda (_%g191801191834%_
                                            _%g191802191835%_)
                                     (gxc#compile-e__1
                                      _%self191796%_
                                      (last _%g191801191834%_)))
                                   _%tl191808191831%_
                                   _%hd191807191829%_)))
                              (_%g191799191813%_ _%g191800191816%_))))
                      (_%g191799191813%_ _%g191800191816%_)))))
          (_%g191798191848%_ _%stx191797%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self191728%_ _%stx191729%_)
        (let* ((_%g191731191748%_
                (lambda (_%g191732191745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191732191745%_))))
               (_%g191730191793%_
                (lambda (_%g191732191751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191732191751%_))
                      (let ((_%e191735191753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191732191751%_))))
                        (let ((_%hd191736191756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191735191753%_)))
                              (_%tl191737191758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191735191753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191737191758%_))
                              (let ((_%e191738191761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191737191758%_))))
                                (let ((_%hd191739191764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191738191761%_)))
                                      (_%tl191740191766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191738191761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191740191766%_))
                                      (let ((_%e191741191769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191740191766%_))))
                                        (let ((_%hd191742191772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191741191769%_)))
                                              (_%tl191743191774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191741191769%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191743191774%_))
                                              ((lambda (_%g191733191777%_
                                                        _%g191734191778%_)
                                                 (gxc#compile-e__1
                                                  _%self191728%_
                                                  _%g191733191777%_))
                                               _%hd191742191772%_
                                               _%hd191739191764%_)
                                              (_%g191731191748%_
                                               _%g191732191751%_))))
                                      (_%g191731191748%_ _%g191732191751%_))))
                              (_%g191731191748%_ _%g191732191751%_))))
                      (_%g191731191748%_ _%g191732191751%_)))))
          (_%g191730191793%_ _%stx191729%_))))
    (define gxc#apply-operands
      (lambda (_%self191643%_ _%stx191644%_)
        (let* ((_%g191646191665%_
                (lambda (_%g191647191662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191647191662%_))))
               (_%g191645191725%_
                (lambda (_%g191647191668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191647191668%_))
                      (let ((_%e191649191670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191647191668%_))))
                        (let ((_%hd191650191673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191649191670%_)))
                              (_%tl191651191675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191649191670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl191651191675%_))
                              (let ((_g192853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl191651191675%_
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
                                  (let ((_%target191652191678%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g192853_ 0)))
                                        (_%tl191654191680%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g192853_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191654191680%_))
                                        (letrec ((_%loop191655191683%_
                                                  (lambda (_%hd191653191686%_
                                                           _%rands191659191688%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd191653191686%_))
                                                        (let ((_%e191656191690%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd191653191686%_))))
                  (let ((_%lp-hd191657191693%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191656191690%_)))
                        (_%lp-tl191658191695%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191656191690%_))))
                    (_%loop191655191683%_
                     _%lp-tl191658191695%_
                     (cons _%lp-hd191657191693%_ _%rands191659191688%_))))
                (let ((_%rands191660191698%_ (reverse _%rands191659191688%_)))
                  ((lambda (_%g191648191700%_)
                     (for-each
                      (lambda (_%g191713191715%_)
                        (gxc#compile-e__1 _%self191643%_ _%g191713191715%_))
                      (let ((__tmp192855
                             (lambda (_%g191717191720%_ _%g191718191722%_)
                               (cons _%g191717191720%_ _%g191718191722%_))))
                        (declare (not safe))
                        (foldr__0 __tmp192855 '() _%g191648191700%_))))
                   _%rands191660191698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop191655191683%_
                                           _%target191652191678%_
                                           '()))
                                        (_%g191646191665%_
                                         _%g191647191668%_)))))
                              (_%g191646191665%_ _%g191647191668%_))))
                      (_%g191646191665%_ _%g191647191668%_)))))
          (_%g191645191725%_ _%stx191644%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx191640%_ _%src-stx191641%_)
        (let ((__tmp192856
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx191641%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx191640%_ __tmp192856))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx191636%_ _%src-stx191637%_ _%ctx191638%_)
        (gxc#compile-e__1
         _%ctx191638%_
         (gxc#xform-wrap-source _%stx191636%_ _%src-stx191637%_))))
    (define gxc#xform-begin%
      (lambda (_%self191591%_ _%stx191592%_)
        (let* ((_%g191594191604%_
                (lambda (_%g191595191601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191595191601%_))))
               (_%g191593191633%_
                (lambda (_%g191595191607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191595191607%_))
                      (let ((_%e191597191609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191595191607%_))))
                        (let ((_%hd191598191612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191597191609%_)))
                              (_%tl191599191614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191597191609%_))))
                          ((lambda (_%g191596191617%_)
                             (let ((_%forms191631%_
                                    (map (lambda (_%g191626191628%_)
                                           (gxc#compile-e__1
                                            _%self191591%_
                                            _%g191626191628%_))
                                         _%g191596191617%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms191631%_)
                                _%stx191592%_)))
                           _%tl191599191614%_)))
                      (_%g191594191604%_ _%g191595191607%_)))))
          (_%g191593191633%_ _%stx191592%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self191545%_ _%stx191546%_)
        (let* ((_%g191548191558%_
                (lambda (_%g191549191555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191549191555%_))))
               (_%g191547191588%_
                (lambda (_%g191549191561%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191549191561%_))
                      (let ((_%e191551191563%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191549191561%_))))
                        (let ((_%hd191552191566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191551191563%_)))
                              (_%tl191553191568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191551191563%_))))
                          ((lambda (_%g191550191571%_)
                             (let ((__tmp192859
                                    (lambda ()
                                      (let ((_%forms191586%_
                                             (map (lambda (_%g191581191583%_)
                                                    (gxc#compile-e__1
                                                     _%self191545%_
                                                     _%g191581191583%_))
                                                  _%g191550191571%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms191586%_)
                                         _%stx191546%_))))
                                   (__tmp192857
                                    (let ((__tmp192858
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp192858 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp192859
                                gx#current-expander-phi
                                __tmp192857)))
                           _%tl191553191568%_)))
                      (_%g191548191558%_ _%g191549191561%_)))))
          (_%g191547191588%_ _%stx191546%_))))
    (define gxc#xform-module%
      (lambda (_%self191482%_ _%stx191483%_)
        (let* ((_%g191485191499%_
                (lambda (_%g191486191496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191486191496%_))))
               (_%g191484191542%_
                (lambda (_%g191486191502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191486191502%_))
                      (let ((_%e191489191504%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191486191502%_))))
                        (let ((_%hd191490191507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191489191504%_)))
                              (_%tl191491191509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191489191504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191491191509%_))
                              (let ((_%e191492191512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191491191509%_))))
                                (let ((_%hd191493191515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191492191512%_)))
                                      (_%tl191494191517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191492191512%_))))
                                  ((lambda (_%g191487191520%_
                                            _%g191488191521%_)
                                     (let* ((_%ctx191534%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g191488191521%_)))
                                            (_%code191536%_
                                             (##structure-ref
                                              _%ctx191534%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code191539%_
                                             (let ((__tmp192860
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self191482%_
                                                       _%code191536%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp192860
                                                gx#current-expander-context
                                                _%ctx191534%_))))
                                       (##structure-set!
                                        _%ctx191534%_
                                        _%code191539%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g191488191521%_
                                                    (cons _%code191539%_ '())))
                                        _%stx191483%_)))
                                   _%tl191494191517%_
                                   _%hd191493191515%_)))
                              (_%g191485191499%_ _%g191486191502%_))))
                      (_%g191485191499%_ _%g191486191502%_)))))
          (_%g191484191542%_ _%stx191483%_))))
    (define gxc#xform-define-values%
      (lambda (_%self191412%_ _%stx191413%_)
        (let* ((_%g191415191432%_
                (lambda (_%g191416191429%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191416191429%_))))
               (_%g191414191479%_
                (lambda (_%g191416191435%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191416191435%_))
                      (let ((_%e191419191437%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191416191435%_))))
                        (let ((_%hd191420191440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191419191437%_)))
                              (_%tl191421191442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191419191437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191421191442%_))
                              (let ((_%e191422191445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191421191442%_))))
                                (let ((_%hd191423191448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191422191445%_)))
                                      (_%tl191424191450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191422191445%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191424191450%_))
                                      (let ((_%e191425191453%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191424191450%_))))
                                        (let ((_%hd191426191456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191425191453%_)))
                                              (_%tl191427191458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191425191453%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191427191458%_))
                                              ((lambda (_%g191417191461%_
                                                        _%g191418191462%_)
                                                 (let ((_%expr191477%_
                                                        (gxc#compile-e__1
                                                         _%self191412%_
                                                         _%g191417191461%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g191418191462%_
                                                                (cons _%expr191477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx191413%_)))
                                               _%hd191426191456%_
                                               _%hd191423191448%_)
                                              (_%g191415191432%_
                                               _%g191416191435%_))))
                                      (_%g191415191432%_ _%g191416191435%_))))
                              (_%g191415191432%_ _%g191416191435%_))))
                      (_%g191415191432%_ _%g191416191435%_)))))
          (_%g191414191479%_ _%stx191413%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self191341%_ _%stx191342%_)
        (let* ((_%g191344191361%_
                (lambda (_%g191345191358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191345191358%_))))
               (_%g191343191409%_
                (lambda (_%g191345191364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191345191364%_))
                      (let ((_%e191348191366%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191345191364%_))))
                        (let ((_%hd191349191369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191348191366%_)))
                              (_%tl191350191371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191348191366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191350191371%_))
                              (let ((_%e191351191374%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191350191371%_))))
                                (let ((_%hd191352191377%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191351191374%_)))
                                      (_%tl191353191379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191351191374%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191353191379%_))
                                      (let ((_%e191354191382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191353191379%_))))
                                        (let ((_%hd191355191385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191354191382%_)))
                                              (_%tl191356191387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191354191382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191356191387%_))
                                              ((lambda (_%g191346191390%_
                                                        _%g191347191391%_)
                                                 (let ((__tmp192863
                                                        (lambda ()
                                                          (let ((_%expr191407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self191341%_ _%g191346191390%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g191347191391%_ (cons _%expr191407%_ '())))
                     _%stx191342%_))))
               (__tmp192861
                (let ((__tmp192862
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp192862 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp192863
                                                    gx#current-expander-phi
                                                    __tmp192861)))
                                               _%hd191355191385%_
                                               _%hd191352191377%_)
                                              (_%g191344191361%_
                                               _%g191345191364%_))))
                                      (_%g191344191361%_ _%g191345191364%_))))
                              (_%g191344191361%_ _%g191345191364%_))))
                      (_%g191344191361%_ _%g191345191364%_)))))
          (_%g191343191409%_ _%stx191342%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self191271%_ _%stx191272%_)
        (let* ((_%g191274191291%_
                (lambda (_%g191275191288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191275191288%_))))
               (_%g191273191338%_
                (lambda (_%g191275191294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191275191294%_))
                      (let ((_%e191278191296%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191275191294%_))))
                        (let ((_%hd191279191299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191278191296%_)))
                              (_%tl191280191301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191278191296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191280191301%_))
                              (let ((_%e191281191304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191280191301%_))))
                                (let ((_%hd191282191307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191281191304%_)))
                                      (_%tl191283191309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191281191304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191283191309%_))
                                      (let ((_%e191284191312%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191283191309%_))))
                                        (let ((_%hd191285191315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191284191312%_)))
                                              (_%tl191286191317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191284191312%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191286191317%_))
                                              ((lambda (_%g191276191320%_
                                                        _%g191277191321%_)
                                                 (let ((_%expr191336%_
                                                        (gxc#compile-e__1
                                                         _%self191271%_
                                                         _%g191276191320%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g191277191321%_
                                                                (cons _%expr191336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx191272%_)))
                                               _%hd191285191315%_
                                               _%hd191282191307%_)
                                              (_%g191274191291%_
                                               _%g191275191294%_))))
                                      (_%g191274191291%_ _%g191275191294%_))))
                              (_%g191274191291%_ _%g191275191294%_))))
                      (_%g191274191291%_ _%g191275191294%_)))))
          (_%g191273191338%_ _%stx191272%_))))
    (define gxc#xform-lambda%
      (lambda (_%self191209%_ _%stx191210%_)
        (let* ((_%g191212191226%_
                (lambda (_%g191213191223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191213191223%_))))
               (_%g191211191268%_
                (lambda (_%g191213191229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191213191229%_))
                      (let ((_%e191216191231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191213191229%_))))
                        (let ((_%hd191217191234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191216191231%_)))
                              (_%tl191218191236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191216191231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191218191236%_))
                              (let ((_%e191219191239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191218191236%_))))
                                (let ((_%hd191220191242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191219191239%_)))
                                      (_%tl191221191244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191219191239%_))))
                                  ((lambda (_%g191214191247%_
                                            _%g191215191248%_)
                                     (let ((__tmp192865
                                            (lambda ()
                                              (let ((_%body191266%_
                                                     (map (lambda (_%g191261191263%_)
                                                            (gxc#compile-e__1
                                                             _%self191209%_
                                                             _%g191261191263%_))
                                                          _%g191214191247%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g191215191248%_
                                                             _%body191266%_))
                                                 _%stx191210%_))))
                                           (__tmp192864
                                            (gxc#xform-let-locals
                                             _%g191215191248%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp192865
                                        gxc#current-compile-local-env
                                        __tmp192864)))
                                   _%tl191221191244%_
                                   _%hd191220191242%_)))
                              (_%g191212191226%_ _%g191213191229%_))))
                      (_%g191212191226%_ _%g191213191229%_)))))
          (_%g191211191268%_ _%stx191210%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self191117%_ _%stx191118%_)
        (letrec ((_%clause-e191120%_
                  (lambda (_%clause191161%_)
                    (let* ((_%g191163191174%_
                            (lambda (_%g191164191171%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g191164191171%_))))
                           (_%g191162191206%_
                            (lambda (_%g191164191177%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g191164191177%_))
                                  (let ((_%e191167191179%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g191164191177%_))))
                                    (let ((_%hd191168191182%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191167191179%_)))
                                          (_%tl191169191184%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191167191179%_))))
                                      ((lambda (_%g191165191187%_
                                                _%g191166191188%_)
                                         (let ((__tmp192867
                                                (lambda ()
                                                  (let ((_%body191204%_
                                                         (map (lambda (_%g191199191201%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self191117%_
                         _%g191199191201%_))
                      _%g191165191187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g191166191188%_
                                                          _%body191204%_))))
                                               (__tmp192866
                                                (gxc#xform-let-locals
                                                 _%g191166191188%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp192867
                                            gxc#current-compile-local-env
                                            __tmp192866)))
                                       _%tl191169191184%_
                                       _%hd191168191182%_)))
                                  (_%g191163191174%_ _%g191164191177%_)))))
                      (_%g191162191206%_ _%clause191161%_)))))
          (let* ((_%g191122191132%_
                  (lambda (_%g191123191129%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g191123191129%_))))
                 (_%g191121191158%_
                  (lambda (_%g191123191135%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g191123191135%_))
                        (let ((_%e191125191137%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g191123191135%_))))
                          (let ((_%hd191126191140%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191125191137%_)))
                                (_%tl191127191142%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191125191137%_))))
                            ((lambda (_%g191124191145%_)
                               (let ((_%clauses191156%_
                                      (map _%clause-e191120%_
                                           _%g191124191145%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses191156%_)
                                  _%stx191118%_)))
                             _%tl191127191142%_)))
                        (_%g191122191132%_ _%g191123191135%_)))))
            (_%g191121191158%_ _%stx191118%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self190877%_ _%stx190878%_)
        (let* ((_%g190880190913%_
                (lambda (_%g190881190910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190881190910%_))))
               (_%g190879191114%_
                (lambda (_%g190881190916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190881190916%_))
                      (let ((_%e190886190918%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190881190916%_))))
                        (let ((_%hd190887190921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190886190918%_)))
                              (_%tl190888190923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190886190918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190888190923%_))
                              (let ((_%e190889190926%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190888190923%_))))
                                (let ((_%hd190890190929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190889190926%_)))
                                      (_%tl190891190931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190889190926%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd190890190929%_))
                                      (let ((_g192868_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd190890190929%_
                                                '0))))
                                        (begin
                                          (let ((_g192869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192868_)
                                                       (##values-length
                                                        _g192868_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192869_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192869_)))
                                          (let ((_%target190892190934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192868_ 0)))
                                                (_%tl190894190936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192868_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190894190936%_))
                                                (letrec ((_%loop190895190939%_
                                                          (lambda (_%hd190893190942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr190899190944%_
                           _%hd190900190945%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190893190942%_))
                        (let ((_%e190896190947%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd190893190942%_))))
                          (let ((_%lp-hd190897190950%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190896190947%_)))
                                (_%lp-tl190898190952%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190896190947%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd190897190950%_))
                                (let ((_%e190903190955%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd190897190950%_))))
                                  (let ((_%hd190904190958%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190903190955%_)))
                                        (_%tl190905190960%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190903190955%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl190905190960%_))
                                        (let ((_%e190906190963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl190905190960%_))))
                                          (let ((_%hd190907190966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190906190963%_)))
                                                (_%tl190908190968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190906190963%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190908190968%_))
                                                (_%loop190895190939%_
                                                 _%lp-tl190898190952%_
                                                 (cons _%hd190907190966%_
                                                       _%expr190899190944%_)
                                                 (cons _%hd190904190958%_
                                                       _%hd190900190945%_))
                                                (_%g190880190913%_
                                                 _%g190881190916%_))))
                                        (_%g190880190913%_
                                         _%g190881190916%_))))
                                (_%g190880190913%_ _%g190881190916%_))))
                        (let ((_%expr190901190971%_
                               (reverse _%expr190899190944%_))
                              (_%hd190902190972%_
                               (reverse _%hd190900190945%_)))
                          ((lambda (_%g190882190974%_
                                    _%g190883190975%_
                                    _%g190884190976%_
                                    _%g190885190977%_)
                             (let* ((_%g190996191012%_
                                     (lambda (_%g190997191009%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g190997191009%_))))
                                    (_%g190995191100%_
                                     (lambda (_%g190997191015%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g190997191015%_))
                                           (let ((_g192870_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g190997191015%_
                                                     '0))))
                                             (begin
                                               (let ((_g192871_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g192870_)
                                                            (##values-length
                                                             _g192870_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g192871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g192871_)))
                                               (let ((_%target190999191017%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g192870_
                                                         0)))
                                                     (_%tl191001191019%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g192870_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl191001191019%_))
                                                     (letrec ((_%loop191002191022%_
                                                               (lambda (_%hd191000191025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr191006191027%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd191000191025%_))
                             (let ((_%e191003191029%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd191000191025%_))))
                               (let ((_%lp-hd191004191032%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e191003191029%_)))
                                     (_%lp-tl191005191034%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e191003191029%_))))
                                 (_%loop191002191022%_
                                  _%lp-tl191005191034%_
                                  (cons _%lp-hd191004191032%_
                                        _%expr191006191027%_))))
                             (let ((_%expr191007191037%_
                                    (reverse _%expr191006191027%_)))
                               ((lambda (_%g190998191039%_)
                                  (let ((__tmp192874
                                         (lambda ()
                                           (let* ((_%g191053191060%_
                                                   (lambda (_%g191054191057%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g191054191057%_))))
                                                  (_%g191052191086%_
                                                   (lambda (_%g191054191063%_)
                                                     ((lambda (_%g191055191065%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g190885190977%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g190998191039%_
                                  _%g190884190976%_))
                               (let ((__tmp192875
                                      (lambda (_%g191075191079%_
                                               _%g191076191081%_
                                               _%g191077191083%_)
                                        (cons (cons _%g191076191081%_
                                                    (cons _%g191075191079%_
                                                          '()))
                                              _%g191077191083%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp192875
                                  '()
                                  _%g190998191039%_
                                  _%g190884190976%_)))
                             _%g191055191065%_))
                 _%stx190878%_))
              _%g191054191063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g191052191086%_
                                              (map (lambda (_%g191088191090%_)
                                                     (gxc#compile-e__1
                                                      _%self190877%_
                                                      _%g191088191090%_))
                                                   _%g190882190974%_)))))
                                        (__tmp192872
                                         (gxc#xform-let-locals
                                          (let ((__tmp192873
                                                 (lambda (_%g191092191095%_
                                                          _%g191093191097%_)
                                                   (cons _%g191092191095%_
                                                         _%g191093191097%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp192873
                                             '()
                                             _%g190884190976%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp192874
                                     gxc#current-compile-local-env
                                     __tmp192872)))
                                _%expr191007191037%_))))))
               (_%loop191002191022%_ _%target190999191017%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g190996191012%_
                                                      _%g190997191015%_)))))
                                           (_%g190996191012%_
                                            _%g190997191015%_)))))
                               (_%g190995191100%_
                                (map (lambda (_%g191102191104%_)
                                       (gxc#compile-e__1
                                        _%self190877%_
                                        _%g191102191104%_))
                                     (let ((__tmp192876
                                            (lambda (_%g191106191109%_
                                                     _%g191107191111%_)
                                              (cons _%g191106191109%_
                                                    _%g191107191111%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp192876
                                        '()
                                        _%g190883190975%_))))))
                           _%tl190891190931%_
                           _%expr190901190971%_
                           _%hd190902190972%_
                           _%hd190887190921%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190895190939%_
                                                   _%target190892190934%_
                                                   '()
                                                   '()))
                                                (_%g190880190913%_
                                                 _%g190881190916%_)))))
                                      (_%g190880190913%_ _%g190881190916%_))))
                              (_%g190880190913%_ _%g190881190916%_))))
                      (_%g190880190913%_ _%g190881190916%_)))))
          (_%g190879191114%_ _%stx190878%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self190637%_ _%stx190638%_)
        (let* ((_%g190640190673%_
                (lambda (_%g190641190670%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190641190670%_))))
               (_%g190639190874%_
                (lambda (_%g190641190676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190641190676%_))
                      (let ((_%e190646190678%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190641190676%_))))
                        (let ((_%hd190647190681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190646190678%_)))
                              (_%tl190648190683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190646190678%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190648190683%_))
                              (let ((_%e190649190686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190648190683%_))))
                                (let ((_%hd190650190689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190649190686%_)))
                                      (_%tl190651190691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190649190686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd190650190689%_))
                                      (let ((_g192877_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd190650190689%_
                                                '0))))
                                        (begin
                                          (let ((_g192878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192877_)
                                                       (##values-length
                                                        _g192877_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192878_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192878_)))
                                          (let ((_%target190652190694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192877_ 0)))
                                                (_%tl190654190696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192877_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190654190696%_))
                                                (letrec ((_%loop190655190699%_
                                                          (lambda (_%hd190653190702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr190659190704%_
                           _%hd190660190705%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190653190702%_))
                        (let ((_%e190656190707%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd190653190702%_))))
                          (let ((_%lp-hd190657190710%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190656190707%_)))
                                (_%lp-tl190658190712%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190656190707%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd190657190710%_))
                                (let ((_%e190663190715%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd190657190710%_))))
                                  (let ((_%hd190664190718%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190663190715%_)))
                                        (_%tl190665190720%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190663190715%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl190665190720%_))
                                        (let ((_%e190666190723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl190665190720%_))))
                                          (let ((_%hd190667190726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190666190723%_)))
                                                (_%tl190668190728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190666190723%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190668190728%_))
                                                (_%loop190655190699%_
                                                 _%lp-tl190658190712%_
                                                 (cons _%hd190667190726%_
                                                       _%expr190659190704%_)
                                                 (cons _%hd190664190718%_
                                                       _%hd190660190705%_))
                                                (_%g190640190673%_
                                                 _%g190641190676%_))))
                                        (_%g190640190673%_
                                         _%g190641190676%_))))
                                (_%g190640190673%_ _%g190641190676%_))))
                        (let ((_%expr190661190731%_
                               (reverse _%expr190659190704%_))
                              (_%hd190662190732%_
                               (reverse _%hd190660190705%_)))
                          ((lambda (_%g190642190734%_
                                    _%g190643190735%_
                                    _%g190644190736%_
                                    _%g190645190737%_)
                             (let ((__tmp192881
                                    (lambda ()
                                      (let* ((_%g190757190773%_
                                              (lambda (_%g190758190770%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g190758190770%_))))
                                             (_%g190756190853%_
                                              (lambda (_%g190758190776%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g190758190776%_))
                                                    (let ((_g192882_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g190758190776%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g192883_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g192882_)
                             (##values-length _g192882_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g192883_ 2)))
                      (error "Context expects 2 values" _g192883_)))
                (let ((_%target190760190778%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g192882_ 0)))
                      (_%tl190762190780%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g192882_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190762190780%_))
                      (letrec ((_%loop190763190783%_
                                (lambda (_%hd190761190786%_
                                         _%expr190767190788%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190761190786%_))
                                      (let ((_%e190764190790%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd190761190786%_))))
                                        (let ((_%lp-hd190765190793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190764190790%_)))
                                              (_%lp-tl190766190795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190764190790%_))))
                                          (_%loop190763190783%_
                                           _%lp-tl190766190795%_
                                           (cons _%lp-hd190765190793%_
                                                 _%expr190767190788%_))))
                                      (let ((_%expr190768190798%_
                                             (reverse _%expr190767190788%_)))
                                        ((lambda (_%g190759190800%_)
                                           (let* ((_%g190814190821%_
                                                   (lambda (_%g190815190818%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g190815190818%_))))
                                                  (_%g190813190846%_
                                                   (lambda (_%g190815190824%_)
                                                     ((lambda (_%g190816190826%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g190645190737%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g190759190800%_
                                  _%g190644190736%_))
                               (let ((__tmp192884
                                      (lambda (_%g190835190839%_
                                               _%g190836190841%_
                                               _%g190837190843%_)
                                        (cons (cons _%g190836190841%_
                                                    (cons _%g190835190839%_
                                                          '()))
                                              _%g190837190843%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp192884
                                  '()
                                  _%g190759190800%_
                                  _%g190644190736%_)))
                             _%g190816190826%_))
                 _%stx190638%_))
              _%g190815190824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g190813190846%_
                                              (map (lambda (_%g190848190850%_)
                                                     (gxc#compile-e__1
                                                      _%self190637%_
                                                      _%g190848190850%_))
                                                   _%g190642190734%_))))
                                         _%expr190768190798%_))))))
                        (_%loop190763190783%_ _%target190760190778%_ '()))
                      (_%g190757190773%_ _%g190758190776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g190757190773%_
                                                     _%g190758190776%_)))))
                                        (_%g190756190853%_
                                         (map (lambda (_%g190855190857%_)
                                                (gxc#compile-e__1
                                                 _%self190637%_
                                                 _%g190855190857%_))
                                              (let ((__tmp192885
                                                     (lambda (_%g190859190862%_
                                                              _%g190860190864%_)
                                                       (cons _%g190859190862%_
                                                             _%g190860190864%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp192885
                                                 '()
                                                 _%g190643190735%_)))))))
                                   (__tmp192879
                                    (gxc#xform-let-locals
                                     (let ((__tmp192880
                                            (lambda (_%g190866190869%_
                                                     _%g190867190871%_)
                                              (cons _%g190866190869%_
                                                    _%g190867190871%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp192880
                                        '()
                                        _%g190644190736%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp192881
                                gxc#current-compile-local-env
                                __tmp192879)))
                           _%tl190651190691%_
                           _%expr190661190731%_
                           _%hd190662190732%_
                           _%hd190647190681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190655190699%_
                                                   _%target190652190694%_
                                                   '()
                                                   '()))
                                                (_%g190640190673%_
                                                 _%g190641190676%_)))))
                                      (_%g190640190673%_ _%g190641190676%_))))
                              (_%g190640190673%_ _%g190641190676%_))))
                      (_%g190640190673%_ _%g190641190676%_)))))
          (_%g190639190874%_ _%stx190638%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings190504%_)
        (letrec ((_%flatten190506%_
                  (lambda (_%maybe-lst190564%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst190564%_))
                        (cons _%maybe-lst190564%_ '())
                        (let _%loop190566%_ ((_%rest190568%_
                                              _%maybe-lst190564%_)
                                             (_%result190569%_ '()))
                          (let* ((_%__stx192773192774%_ _%rest190568%_)
                                 (_%g190573190585%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx192773192774%_)))))
                            (let ((_%__kont192775192776%_
                                   (lambda (_%g190575190623%_
                                            _%g190576190624%_)
                                     (_%loop190566%_
                                      _%g190575190623%_
                                      (let ((__tmp192886
                                             (_%flatten190506%_
                                              _%g190576190624%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result190569%_
                                         __tmp192886)))))
                                  (_%__kont192777192778%_
                                   (lambda (_%g190580190597%_)
                                     (cons _%g190580190597%_
                                           _%result190569%_)))
                                  (_%__kont192779192780%_
                                   (lambda () _%result190569%_)))
                              (let ((_%g190571190610%_
                                     (lambda ()
                                       (let ((_%g190580190597%_
                                              _%__stx192773192774%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g190580190597%_))
                                             (_%__kont192777192778%_
                                              _%g190580190597%_)
                                             (_%__kont192779192780%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx192773192774%_))
                                    (let ((_%e190577190615%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx192773192774%_))))
                                      (let ((_%tl190579190620%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e190577190615%_)))
                                            (_%hd190578190618%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e190577190615%_))))
                                        (_%__kont192775192776%_
                                         _%tl190579190620%_
                                         _%hd190578190618%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g190571190610%_)))))))))))
          (let _%loop190508%_ ((_%rest190510%_
                                (_%flatten190506%_ _%bindings190504%_))
                               (_%locals190511%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest190512190523%_ _%rest190510%_)
                   (_%E190516190527%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest190512190523%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K190519190552%_
                     (lambda (_%rest190549%_ _%id190550%_)
                       (_%loop190508%_
                        _%rest190549%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id190550%_))
                              _%locals190511%_))))
                    (_%K190518190541%_
                     (lambda (_%id190539%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id190539%_))
                             _%locals190511%_)))
                    (_%K190517190532%_ (lambda () _%locals190511%_)))
                (let ((_%try-match190514190546%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest190512190523%_))
                             (let ((_%id190544%_ _%rest190512190523%_))
                               (_%K190518190541%_ _%id190544%_))
                             (_%K190517190532%_)))))
                  (if (pair? _%rest190512190523%_)
                      (let ((_%tl190521190557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest190512190523%_)))
                            (_%hd190520190555%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest190512190523%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd190520190555%_))
                            (let ((_%id190560%_ _%hd190520190555%_)
                                  (_%rest190562%_ _%tl190521190557%_))
                              (_%K190519190552%_ _%rest190562%_ _%id190560%_))
                            (_%K190517190532%_)))
                      (_%try-match190514190546%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self190456%_ _%stx190457%_)
        (let* ((_%g190459190470%_
                (lambda (_%g190460190467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190460190467%_))))
               (_%g190458190501%_
                (lambda (_%g190460190473%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190460190473%_))
                      (let ((_%e190463190475%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190460190473%_))))
                        (let ((_%hd190464190478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190463190475%_)))
                              (_%tl190465190480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190463190475%_))))
                          ((lambda (_%g190461190483%_ _%g190462190484%_)
                             (let ((_%rands190499%_
                                    (map (lambda (_%g190494190496%_)
                                           (gxc#compile-e__1
                                            _%self190456%_
                                            _%g190494190496%_))
                                         _%g190461190483%_)))
                               (gxc#xform-wrap-source
                                (cons _%g190462190484%_ _%rands190499%_)
                                _%stx190457%_)))
                           _%tl190465190480%_
                           _%hd190464190478%_)))
                      (_%g190459190470%_ _%g190460190473%_)))))
          (_%g190458190501%_ _%stx190457%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self190386%_ _%stx190387%_)
        (let* ((_%g190389190406%_
                (lambda (_%g190390190403%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190390190403%_))))
               (_%g190388190453%_
                (lambda (_%g190390190409%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190390190409%_))
                      (let ((_%e190393190411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190390190409%_))))
                        (let ((_%hd190394190414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190393190411%_)))
                              (_%tl190395190416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190393190411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190395190416%_))
                              (let ((_%e190396190419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190395190416%_))))
                                (let ((_%hd190397190422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190396190419%_)))
                                      (_%tl190398190424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190396190419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190398190424%_))
                                      (let ((_%e190399190427%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190398190424%_))))
                                        (let ((_%hd190400190430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190399190427%_)))
                                              (_%tl190401190432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190399190427%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190401190432%_))
                                              ((lambda (_%g190391190435%_
                                                        _%g190392190436%_)
                                                 (let ((_%expr190451%_
                                                        (gxc#compile-e__1
                                                         _%self190386%_
                                                         _%g190391190435%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g190392190436%_
                                                                (cons _%expr190451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx190387%_)))
                                               _%hd190400190430%_
                                               _%hd190397190422%_)
                                              (_%g190389190406%_
                                               _%g190390190409%_))))
                                      (_%g190389190406%_ _%g190390190409%_))))
                              (_%g190389190406%_ _%g190390190409%_))))
                      (_%g190389190406%_ _%g190390190409%_)))))
          (_%g190388190453%_ _%stx190387%_))))))
