(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712696214)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx134427%_)
        (let* ((_%self134429%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e134431%_
                (let ((__tmp134609
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx134427%_))))
                  (declare (not safe))
                  (method-ref _%self134429%_ __tmp134609))))
          (if _%$e134431%_
              ((lambda (_%method134434%_)
                 (declare (not safe))
                 (_%method134434%_ _%self134429%_ _%stx134427%_))
               _%$e134431%_)
              (let ((__tmp134611
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134427%_)))
                    (__tmp134610
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134427%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134429%_
                       __tmp134611
                       __tmp134610))))))
    (define gxc#compile-e__1
      (lambda (_%self134438%_ _%stx134439%_)
        (let ((_%$e134441%_
               (let ((__tmp134612
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx134439%_))))
                 (declare (not safe))
                 (method-ref _%self134438%_ __tmp134612))))
          (if _%$e134441%_
              ((lambda (_%method134444%_)
                 (declare (not safe))
                 (_%method134444%_ _%self134438%_ _%stx134439%_))
               _%$e134441%_)
              (let ((__tmp134614
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134439%_)))
                    (__tmp134613
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134439%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134438%_
                       __tmp134614
                       __tmp134613))))))
    (define gxc#compile-e
      (lambda _g134616_
        (let ((_g134615_ (let () (declare (not safe)) (##length _g134616_))))
          (cond ((let () (declare (not safe)) (##fx= _g134615_ 1))
                 (apply (lambda (_%stx134427%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx134427%_)))
                        _g134616_))
                ((let () (declare (not safe)) (##fx= _g134615_ 2))
                 (apply (lambda (_%self134438%_ _%stx134439%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self134438%_ _%stx134439%_)))
                        _g134616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134616_))))))
    (define gxc#stx-car-e
      (lambda (_%stx134425%_)
        (let ((__tmp134617
               (car (let () (declare (not safe)) (gx#stx-e _%stx134425%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134617))))
    (define gxc#void-method (lambda (_%self134422%_ _%stx134423%_) '#!void))
    (define gxc#false-method (lambda (_%self134419%_ _%stx134420%_) '#f))
    (define gxc#true-method (lambda (_%self134416%_ _%stx134417%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134413%_ _%stx134414%_) _%stx134414%_))
    (define gxc#::void-expression::t
      (let ((__tmp134618 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134618
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134410%_
        (apply make-instance gxc#::void-expression::t _%$args134410%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134619
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
        (__make-promise __tmp134619)))
    (define gxc#::void-special-form::t
      (let ((__tmp134620 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134620
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134406%_
        (apply make-instance gxc#::void-special-form::t _%$args134406%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134621
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
        (__make-promise __tmp134621)))
    (define gxc#::void::t
      (let ((__tmp134622
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp134622 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134402%_
        (apply make-instance gxc#::void::t _%$args134402%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134623
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134623)))
    (define gxc#::false-expression::t
      (let ((__tmp134624 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134624
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134398%_
        (apply make-instance gxc#::false-expression::t _%$args134398%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134625
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
        (__make-promise __tmp134625)))
    (define gxc#::false-special-form::t
      (let ((__tmp134626 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134626
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134394%_
        (apply make-instance gxc#::false-special-form::t _%$args134394%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134627
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
        (__make-promise __tmp134627)))
    (define gxc#::false::t
      (let ((__tmp134628
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp134628 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134390%_
        (apply make-instance gxc#::false::t _%$args134390%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134629
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134629)))
    (define gxc#::identity-expression::t
      (let ((__tmp134630 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134630
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134386%_
        (apply make-instance gxc#::identity-expression::t _%$args134386%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134631
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
        (__make-promise __tmp134631)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134632 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134632
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134382%_
        (apply make-instance gxc#::identity-special-form::t _%$args134382%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134633
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
        (__make-promise __tmp134633)))
    (define gxc#::identity::t
      (let ((__tmp134634
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134634
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134378%_
        (apply make-instance gxc#::identity::t _%$args134378%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134635
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134635)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134636 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134636
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134374%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134374%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134637
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
        (__make-promise __tmp134637)))
    (define gxc#::basic-xform::t
      (let ((__tmp134638
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134638
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134370%_
        (apply make-instance gxc#::basic-xform::t _%$args134370%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134639
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
        (__make-promise __tmp134639)))
    (define gxc#apply-begin%
      (lambda (_%self134326%_ _%stx134327%_)
        (let* ((_%g134329134339%_
                (lambda (_%g134330134336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134330134336%_))))
               (_%g134328134366%_
                (lambda (_%g134330134342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134330134342%_))
                      (let ((_%e134334134344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134330134342%_))))
                        (let ((_%hd134333134347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134334134344%_)))
                              (_%tl134332134349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134334134344%_))))
                          ((lambda (_%L134352%_)
                             (for-each
                              (lambda (_%g134361134363%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self134326%_
                                   _%g134361134363%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134352%_))))
                           _%tl134332134349%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134329134339%_ _%g134330134342%_))))))
          (declare (not safe))
          (_%g134328134366%_ _%stx134327%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134287%_ _%stx134288%_)
        (let* ((_%g134290134300%_
                (lambda (_%g134291134297%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134291134297%_))))
               (_%g134289134323%_
                (lambda (_%g134291134303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134291134303%_))
                      (let ((_%e134295134305%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134291134303%_))))
                        (let ((_%hd134294134308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134295134305%_)))
                              (_%tl134293134310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134295134305%_))))
                          ((lambda (_%L134313%_)
                             (let ((__tmp134640 (last _%L134313%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self134287%_ __tmp134640)))
                           _%tl134293134310%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134290134300%_ _%g134291134303%_))))))
          (declare (not safe))
          (_%g134289134323%_ _%stx134288%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134283%_ _%stx134284%_)
        (let ((__tmp134643
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self134283%_ _%stx134284%_))))
              (__tmp134641
               (let ((__tmp134642
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134642 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134643
           gx#current-expander-phi
           __tmp134641))))
    (define gxc#apply-module%
      (lambda (_%self134222%_ _%stx134223%_)
        (let* ((_%g134225134239%_
                (lambda (_%g134226134236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134226134236%_))))
               (_%g134224134280%_
                (lambda (_%g134226134242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134226134242%_))
                      (let ((_%e134231134244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134226134242%_))))
                        (let ((_%hd134230134247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134231134244%_)))
                              (_%tl134229134249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134231134244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134229134249%_))
                              (let ((_%e134234134252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134229134249%_))))
                                (let ((_%hd134233134255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134234134252%_)))
                                      (_%tl134232134257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134234134252%_))))
                                  ((lambda (_%L134260%_ _%L134261%_)
                                     (let* ((_%ctx134274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134261%_)))
                                            (_%ctx-stx134276%_
                                             (##structure-ref
                                              _%ctx134274%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp134644
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self134222%_
                                                  _%ctx-stx134276%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134644
                                        gx#current-expander-context
                                        _%ctx134274%_)))
                                   _%tl134232134257%_
                                   _%hd134233134255%_)))
                              (let ()
                                (declare (not safe))
                                (_%g134225134239%_ _%g134226134242%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134225134239%_ _%g134226134242%_))))))
          (declare (not safe))
          (_%g134224134280%_ _%stx134223%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self134154%_ _%stx134155%_)
        (let* ((_%g134157134174%_
                (lambda (_%g134158134171%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134158134171%_))))
               (_%g134156134219%_
                (lambda (_%g134158134177%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134158134177%_))
                      (let ((_%e134163134179%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134158134177%_))))
                        (let ((_%hd134162134182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134163134179%_)))
                              (_%tl134161134184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134163134179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134161134184%_))
                              (let ((_%e134166134187%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134161134184%_))))
                                (let ((_%hd134165134190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134166134187%_)))
                                      (_%tl134164134192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134166134187%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134164134192%_))
                                      (let ((_%e134169134195%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134164134192%_))))
                                        (let ((_%hd134168134198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134169134195%_)))
                                              (_%tl134167134200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134169134195%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134167134200%_))
                                              ((lambda (_%L134203%_
                                                        _%L134204%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134154%_
                                                    _%L134203%_)))
                                               _%hd134168134198%_
                                               _%hd134165134190%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134157134174%_
                                                 _%g134158134177%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134157134174%_
                                         _%g134158134177%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134157134174%_ _%g134158134177%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134157134174%_ _%g134158134177%_))))))
          (declare (not safe))
          (_%g134156134219%_ _%stx134155%_))))
    (define gxc#apply-define-values%
      (lambda (_%self134086%_ _%stx134087%_)
        (let* ((_%g134089134106%_
                (lambda (_%g134090134103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134090134103%_))))
               (_%g134088134151%_
                (lambda (_%g134090134109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134090134109%_))
                      (let ((_%e134095134111%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134090134109%_))))
                        (let ((_%hd134094134114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134095134111%_)))
                              (_%tl134093134116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134095134111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134093134116%_))
                              (let ((_%e134098134119%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134093134116%_))))
                                (let ((_%hd134097134122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134098134119%_)))
                                      (_%tl134096134124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134098134119%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134096134124%_))
                                      (let ((_%e134101134127%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134096134124%_))))
                                        (let ((_%hd134100134130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134101134127%_)))
                                              (_%tl134099134132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134101134127%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134099134132%_))
                                              ((lambda (_%L134135%_
                                                        _%L134136%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134086%_
                                                    _%L134135%_)))
                                               _%hd134100134130%_
                                               _%hd134097134122%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134089134106%_
                                                 _%g134090134109%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134089134106%_
                                         _%g134090134109%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134089134106%_ _%g134090134109%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134089134106%_ _%g134090134109%_))))))
          (declare (not safe))
          (_%g134088134151%_ _%stx134087%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self134017%_ _%stx134018%_)
        (let* ((_%g134020134037%_
                (lambda (_%g134021134034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134021134034%_))))
               (_%g134019134083%_
                (lambda (_%g134021134040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134021134040%_))
                      (let ((_%e134026134042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134021134040%_))))
                        (let ((_%hd134025134045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134026134042%_)))
                              (_%tl134024134047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134026134042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134024134047%_))
                              (let ((_%e134029134050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134024134047%_))))
                                (let ((_%hd134028134053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134029134050%_)))
                                      (_%tl134027134055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134029134050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134027134055%_))
                                      (let ((_%e134032134058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134027134055%_))))
                                        (let ((_%hd134031134061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134032134058%_)))
                                              (_%tl134030134063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134032134058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134030134063%_))
                                              ((lambda (_%L134066%_
                                                        _%L134067%_)
                                                 (let ((__tmp134647
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self134017%_
                                                             _%L134066%_))))
                                                       (__tmp134645
                                                        (let ((__tmp134646
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134646 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134647
                                                    gx#current-expander-phi
                                                    __tmp134645)))
                                               _%hd134031134061%_
                                               _%hd134028134053%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134020134037%_
                                                 _%g134021134040%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134020134037%_
                                         _%g134021134040%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134020134037%_ _%g134021134040%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134020134037%_ _%g134021134040%_))))))
          (declare (not safe))
          (_%g134019134083%_ _%stx134018%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133949%_ _%stx133950%_)
        (let* ((_%g133952133969%_
                (lambda (_%g133953133966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133953133966%_))))
               (_%g133951134014%_
                (lambda (_%g133953133972%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133953133972%_))
                      (let ((_%e133958133974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133953133972%_))))
                        (let ((_%hd133957133977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133958133974%_)))
                              (_%tl133956133979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133958133974%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133956133979%_))
                              (let ((_%e133961133982%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133956133979%_))))
                                (let ((_%hd133960133985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133961133982%_)))
                                      (_%tl133959133987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133961133982%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133959133987%_))
                                      (let ((_%e133964133990%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133959133987%_))))
                                        (let ((_%hd133963133993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133964133990%_)))
                                              (_%tl133962133995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133964133990%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133962133995%_))
                                              ((lambda (_%L133998%_
                                                        _%L133999%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133949%_
                                                    _%L133998%_)))
                                               _%hd133963133993%_
                                               _%hd133960133985%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133952133969%_
                                                 _%g133953133972%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133952133969%_
                                         _%g133953133972%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133952133969%_ _%g133953133972%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133952133969%_ _%g133953133972%_))))))
          (declare (not safe))
          (_%g133951134014%_ _%stx133950%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133831%_ _%stx133832%_)
        (let* ((_%g133834133862%_
                (lambda (_%g133835133859%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133835133859%_))))
               (_%g133833133946%_
                (lambda (_%g133835133865%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133835133865%_))
                      (let ((_%e133840133867%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133835133865%_))))
                        (let ((_%hd133839133870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133840133867%_)))
                              (_%tl133838133872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133840133867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133838133872%_))
                              (let ((_g134648_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133838133872%_
                                        '0))))
                                (begin
                                  (let ((_g134649_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134648_)
                                               (##vector-length _g134648_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134649_ 2)))
                                        (error "Context expects 2 values"
                                               _g134649_)))
                                  (let ((_%target133841133875%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134648_ 0)))
                                        (_%tl133843133877%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134648_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133843133877%_))
                                        (letrec ((_%loop133844133880%_
                                                  (lambda (_%hd133842133883%_
                                                           _%body133848133885%_
                                                           _%hd133849133887%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133842133883%_))
                                                        (let ((_%e133845133890%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133842133883%_))))
                  (let ((_%lp-hd133846133893%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133845133890%_)))
                        (_%lp-tl133847133895%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133845133890%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133846133893%_))
                        (let ((_%e133854133898%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133846133893%_))))
                          (let ((_%hd133853133901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133854133898%_)))
                                (_%tl133852133903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133854133898%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133852133903%_))
                                (let ((_%e133857133906%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133852133903%_))))
                                  (let ((_%hd133856133909%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133857133906%_)))
                                        (_%tl133855133911%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133857133906%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133855133911%_))
                                        (let ((__tmp134651
                                               (cons _%hd133856133909%_
                                                     _%body133848133885%_))
                                              (__tmp134650
                                               (cons _%hd133853133901%_
                                                     _%hd133849133887%_)))
                                          (declare (not safe))
                                          (_%loop133844133880%_
                                           _%lp-tl133847133895%_
                                           __tmp134651
                                           __tmp134650))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133834133862%_
                                           _%g133835133865%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133834133862%_ _%g133835133865%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133834133862%_ _%g133835133865%_)))))
                (let ((_%body133850133914%_ (reverse _%body133848133885%_))
                      (_%hd133851133916%_ (reverse _%hd133849133887%_)))
                  ((lambda (_%L133919%_ _%L133920%_)
                     (for-each
                      (lambda (_%g133934133936%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133831%_ _%g133934133936%_)))
                      (let ((__tmp134652
                             (lambda (_%g133938133941%_ _%g133939133943%_)
                               (cons _%g133938133941%_ _%g133939133943%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134652 '() _%L133919%_))))
                   _%body133850133914%_
                   _%hd133851133916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133844133880%_
                                             _%target133841133875%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133834133862%_
                                           _%g133835133865%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133834133862%_ _%g133835133865%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133834133862%_ _%g133835133865%_))))))
          (declare (not safe))
          (_%g133833133946%_ _%stx133832%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133684%_ _%stx133685%_)
        (let* ((_%g133687133722%_
                (lambda (_%g133688133719%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133688133719%_))))
               (_%g133686133828%_
                (lambda (_%g133688133725%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133688133725%_))
                      (let ((_%e133694133727%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133688133725%_))))
                        (let ((_%hd133693133730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133694133727%_)))
                              (_%tl133692133732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133694133727%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133692133732%_))
                              (let ((_%e133697133735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133692133732%_))))
                                (let ((_%hd133696133738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133697133735%_)))
                                      (_%tl133695133740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133697133735%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133696133738%_))
                                      (let ((_g134653_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133696133738%_
                                                '0))))
                                        (begin
                                          (let ((_g134654_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134653_)
                                                       (##vector-length
                                                        _g134653_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134654_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134654_)))
                                          (let ((_%target133698133743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134653_ 0)))
                                                (_%tl133700133745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134653_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133700133745%_))
                                                (letrec ((_%loop133701133748%_
                                                          (lambda (_%hd133699133751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133705133753%_
                           _%hd133706133755%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133699133751%_))
                        (let ((_%e133702133758%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133699133751%_))))
                          (let ((_%lp-hd133703133761%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133702133758%_)))
                                (_%lp-tl133704133763%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133702133758%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133703133761%_))
                                (let ((_%e133711133766%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133703133761%_))))
                                  (let ((_%hd133710133769%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133711133766%_)))
                                        (_%tl133709133771%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133711133766%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133709133771%_))
                                        (let ((_%e133714133774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133709133771%_))))
                                          (let ((_%hd133713133777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133714133774%_)))
                                                (_%tl133712133779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133714133774%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133712133779%_))
                                                (let ((__tmp134656
                                                       (cons _%hd133713133777%_
                                                             _%expr133705133753%_))
                                                      (__tmp134655
                                                       (cons _%hd133710133769%_
                                                             _%hd133706133755%_)))
                                                  (declare (not safe))
                                                  (_%loop133701133748%_
                                                   _%lp-tl133704133763%_
                                                   __tmp134656
                                                   __tmp134655))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133687133722%_
                                                   _%g133688133725%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133687133722%_
                                           _%g133688133725%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133687133722%_ _%g133688133725%_)))))
                        (let ((_%expr133707133782%_
                               (reverse _%expr133705133753%_))
                              (_%hd133708133784%_
                               (reverse _%hd133706133755%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133695133740%_))
                              (let ((_%e133717133787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133695133740%_))))
                                (let ((_%hd133716133790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133717133787%_)))
                                      (_%tl133715133792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133717133787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133715133792%_))
                                      ((lambda (_%L133795%_
                                                _%L133796%_
                                                _%L133797%_)
                                         (for-each
                                          (lambda (_%g133816133818%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133684%_
                                               _%g133816133818%_)))
                                          (let ((__tmp134658
                                                 (lambda (_%g133820133823%_
                                                          _%g133821133825%_)
                                                   (cons _%g133820133823%_
                                                         _%g133821133825%_)))
                                                (__tmp134657
                                                 (cons _%L133795%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134658
                                             __tmp134657
                                             _%L133796%_))))
                                       _%hd133716133790%_
                                       _%expr133707133782%_
                                       _%hd133708133784%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133687133722%_
                                         _%g133688133725%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133687133722%_ _%g133688133725%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133701133748%_
                                                     _%target133698133743%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133687133722%_
                                                   _%g133688133725%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133687133722%_
                                         _%g133688133725%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133687133722%_ _%g133688133725%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133687133722%_ _%g133688133725%_))))))
          (declare (not safe))
          (_%g133686133828%_ _%stx133685%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133629%_ _%stx133630%_)
        (let* ((_%g133632133646%_
                (lambda (_%g133633133643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133633133643%_))))
               (_%g133631133681%_
                (lambda (_%g133633133649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133633133649%_))
                      (let ((_%e133638133651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133633133649%_))))
                        (let ((_%hd133637133654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133638133651%_)))
                              (_%tl133636133656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133638133651%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133636133656%_))
                              (let ((_%e133641133659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133636133656%_))))
                                (let ((_%hd133640133662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133641133659%_)))
                                      (_%tl133639133664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133641133659%_))))
                                  ((lambda (_%L133667%_ _%L133668%_)
                                     (let ((__tmp134659 (last _%L133667%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self133629%_
                                        __tmp134659)))
                                   _%tl133639133664%_
                                   _%hd133640133662%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133632133646%_ _%g133633133649%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133632133646%_ _%g133633133649%_))))))
          (declare (not safe))
          (_%g133631133681%_ _%stx133630%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self133561%_ _%stx133562%_)
        (let* ((_%g133564133581%_
                (lambda (_%g133565133578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133565133578%_))))
               (_%g133563133626%_
                (lambda (_%g133565133584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133565133584%_))
                      (let ((_%e133570133586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133565133584%_))))
                        (let ((_%hd133569133589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133570133586%_)))
                              (_%tl133568133591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133570133586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133568133591%_))
                              (let ((_%e133573133594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133568133591%_))))
                                (let ((_%hd133572133597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133573133594%_)))
                                      (_%tl133571133599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133573133594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133571133599%_))
                                      (let ((_%e133576133602%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133571133599%_))))
                                        (let ((_%hd133575133605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133576133602%_)))
                                              (_%tl133574133607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133576133602%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133574133607%_))
                                              ((lambda (_%L133610%_
                                                        _%L133611%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133561%_
                                                    _%L133610%_)))
                                               _%hd133575133605%_
                                               _%hd133572133597%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133564133581%_
                                                 _%g133565133584%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133564133581%_
                                         _%g133565133584%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133564133581%_ _%g133565133584%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133564133581%_ _%g133565133584%_))))))
          (declare (not safe))
          (_%g133563133626%_ _%stx133562%_))))
    (define gxc#apply-operands
      (lambda (_%self133474%_ _%stx133475%_)
        (let* ((_%g133477133496%_
                (lambda (_%g133478133493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133478133493%_))))
               (_%g133476133558%_
                (lambda (_%g133478133499%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133478133499%_))
                      (let ((_%e133482133501%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133478133499%_))))
                        (let ((_%hd133481133504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133482133501%_)))
                              (_%tl133480133506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133482133501%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133480133506%_))
                              (let ((_g134660_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133480133506%_
                                        '0))))
                                (begin
                                  (let ((_g134661_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134660_)
                                               (##vector-length _g134660_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134661_ 2)))
                                        (error "Context expects 2 values"
                                               _g134661_)))
                                  (let ((_%target133483133509%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134660_ 0)))
                                        (_%tl133485133511%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134660_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133485133511%_))
                                        (letrec ((_%loop133486133514%_
                                                  (lambda (_%hd133484133517%_
                                                           _%rands133490133519%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133484133517%_))
                                                        (let ((_%e133487133522%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133484133517%_))))
                  (let ((_%lp-hd133488133525%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133487133522%_)))
                        (_%lp-tl133489133527%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133487133522%_))))
                    (let ((__tmp134662
                           (cons _%lp-hd133488133525%_ _%rands133490133519%_)))
                      (declare (not safe))
                      (_%loop133486133514%_
                       _%lp-tl133489133527%_
                       __tmp134662))))
                (let ((_%rands133491133530%_ (reverse _%rands133490133519%_)))
                  ((lambda (_%L133533%_)
                     (for-each
                      (lambda (_%g133546133548%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133474%_ _%g133546133548%_)))
                      (let ((__tmp134663
                             (lambda (_%g133550133553%_ _%g133551133555%_)
                               (cons _%g133550133553%_ _%g133551133555%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134663 '() _%L133533%_))))
                   _%rands133491133530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133486133514%_
                                             _%target133483133509%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133477133496%_
                                           _%g133478133499%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133477133496%_ _%g133478133499%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133477133496%_ _%g133478133499%_))))))
          (declare (not safe))
          (_%g133476133558%_ _%stx133475%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx133471%_ _%src-stx133472%_)
        (let ((__tmp134664
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx133472%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx133471%_ __tmp134664))))
    (define gxc#xform-begin%
      (lambda (_%self133426%_ _%stx133427%_)
        (let* ((_%g133429133439%_
                (lambda (_%g133430133436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133430133436%_))))
               (_%g133428133468%_
                (lambda (_%g133430133442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133430133442%_))
                      (let ((_%e133434133444%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133430133442%_))))
                        (let ((_%hd133433133447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133434133444%_)))
                              (_%tl133432133449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133434133444%_))))
                          ((lambda (_%L133452%_)
                             (let* ((_%forms133466%_
                                     (map (lambda (_%g133461133463%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133426%_
                                               _%g133461133463%_)))
                                          _%L133452%_))
                                    (__tmp134665
                                     (cons '%#begin _%forms133466%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134665
                                _%stx133427%_)))
                           _%tl133432133449%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133429133439%_ _%g133430133442%_))))))
          (declare (not safe))
          (_%g133428133468%_ _%stx133427%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133380%_ _%stx133381%_)
        (let* ((_%g133383133393%_
                (lambda (_%g133384133390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133384133390%_))))
               (_%g133382133423%_
                (lambda (_%g133384133396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133384133396%_))
                      (let ((_%e133388133398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133384133396%_))))
                        (let ((_%hd133387133401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133388133398%_)))
                              (_%tl133386133403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133388133398%_))))
                          ((lambda (_%L133406%_)
                             (let ((__tmp134668
                                    (lambda ()
                                      (let* ((_%forms133421%_
                                              (map (lambda (_%g133416133418%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self133380%_
                                                        _%g133416133418%_)))
                                                   _%L133406%_))
                                             (__tmp134669
                                              (cons '%#begin-syntax
                                                    _%forms133421%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134669
                                         _%stx133381%_))))
                                   (__tmp134666
                                    (let ((__tmp134667
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134667 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134668
                                gx#current-expander-phi
                                __tmp134666)))
                           _%tl133386133403%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133383133393%_ _%g133384133396%_))))))
          (declare (not safe))
          (_%g133382133423%_ _%stx133381%_))))
    (define gxc#xform-module%
      (lambda (_%self133317%_ _%stx133318%_)
        (let* ((_%g133320133334%_
                (lambda (_%g133321133331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133321133331%_))))
               (_%g133319133377%_
                (lambda (_%g133321133337%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133321133337%_))
                      (let ((_%e133326133339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133321133337%_))))
                        (let ((_%hd133325133342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133326133339%_)))
                              (_%tl133324133344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133326133339%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133324133344%_))
                              (let ((_%e133329133347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133324133344%_))))
                                (let ((_%hd133328133350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133329133347%_)))
                                      (_%tl133327133352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133329133347%_))))
                                  ((lambda (_%L133355%_ _%L133356%_)
                                     (let* ((_%ctx133369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133356%_)))
                                            (_%code133371%_
                                             (##structure-ref
                                              _%ctx133369%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133374%_
                                             (let ((__tmp134670
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self133317%_
                                                         _%code133371%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134670
                                                gx#current-expander-context
                                                _%ctx133369%_))))
                                       (##structure-set!
                                        _%ctx133369%_
                                        _%code133374%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134671
                                              (cons '%#module
                                                    (cons _%L133356%_
                                                          (cons _%code133374%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134671
                                          _%stx133318%_))))
                                   _%tl133327133352%_
                                   _%hd133328133350%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133320133334%_ _%g133321133337%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133320133334%_ _%g133321133337%_))))))
          (declare (not safe))
          (_%g133319133377%_ _%stx133318%_))))
    (define gxc#xform-define-values%
      (lambda (_%self133247%_ _%stx133248%_)
        (let* ((_%g133250133267%_
                (lambda (_%g133251133264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133251133264%_))))
               (_%g133249133314%_
                (lambda (_%g133251133270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133251133270%_))
                      (let ((_%e133256133272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133251133270%_))))
                        (let ((_%hd133255133275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133256133272%_)))
                              (_%tl133254133277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133256133272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133254133277%_))
                              (let ((_%e133259133280%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133254133277%_))))
                                (let ((_%hd133258133283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133259133280%_)))
                                      (_%tl133257133285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133259133280%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133257133285%_))
                                      (let ((_%e133262133288%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133257133285%_))))
                                        (let ((_%hd133261133291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133262133288%_)))
                                              (_%tl133260133293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133262133288%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133260133293%_))
                                              ((lambda (_%L133296%_
                                                        _%L133297%_)
                                                 (let* ((_%expr133312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133247%_
                                                            _%L133296%_)))
                                                        (__tmp134672
                                                         (cons '%#define-values
                                                               (cons _%L133297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133312%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134672
                                                    _%stx133248%_)))
                                               _%hd133261133291%_
                                               _%hd133258133283%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133250133267%_
                                                 _%g133251133270%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133250133267%_
                                         _%g133251133270%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133250133267%_ _%g133251133270%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133250133267%_ _%g133251133270%_))))))
          (declare (not safe))
          (_%g133249133314%_ _%stx133248%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self133176%_ _%stx133177%_)
        (let* ((_%g133179133196%_
                (lambda (_%g133180133193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133180133193%_))))
               (_%g133178133244%_
                (lambda (_%g133180133199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133180133199%_))
                      (let ((_%e133185133201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133180133199%_))))
                        (let ((_%hd133184133204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133185133201%_)))
                              (_%tl133183133206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133185133201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133183133206%_))
                              (let ((_%e133188133209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133183133206%_))))
                                (let ((_%hd133187133212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133188133209%_)))
                                      (_%tl133186133214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133188133209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133186133214%_))
                                      (let ((_%e133191133217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133186133214%_))))
                                        (let ((_%hd133190133220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133191133217%_)))
                                              (_%tl133189133222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133191133217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133189133222%_))
                                              ((lambda (_%L133225%_
                                                        _%L133226%_)
                                                 (let ((__tmp134675
                                                        (lambda ()
                                                          (let* ((_%expr133242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133176%_ _%L133225%_)))
                         (__tmp134676
                          (cons '%#define-syntax
                                (cons _%L133226%_ (cons _%expr133242%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134676 _%stx133177%_))))
               (__tmp134673
                (let ((__tmp134674
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134674 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134675
                                                    gx#current-expander-phi
                                                    __tmp134673)))
                                               _%hd133190133220%_
                                               _%hd133187133212%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133179133196%_
                                                 _%g133180133199%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133179133196%_
                                         _%g133180133199%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133179133196%_ _%g133180133199%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133179133196%_ _%g133180133199%_))))))
          (declare (not safe))
          (_%g133178133244%_ _%stx133177%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self133106%_ _%stx133107%_)
        (let* ((_%g133109133126%_
                (lambda (_%g133110133123%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133110133123%_))))
               (_%g133108133173%_
                (lambda (_%g133110133129%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133110133129%_))
                      (let ((_%e133115133131%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133110133129%_))))
                        (let ((_%hd133114133134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133115133131%_)))
                              (_%tl133113133136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133115133131%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133113133136%_))
                              (let ((_%e133118133139%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133113133136%_))))
                                (let ((_%hd133117133142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133118133139%_)))
                                      (_%tl133116133144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133118133139%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133116133144%_))
                                      (let ((_%e133121133147%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133116133144%_))))
                                        (let ((_%hd133120133150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133121133147%_)))
                                              (_%tl133119133152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133121133147%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133119133152%_))
                                              ((lambda (_%L133155%_
                                                        _%L133156%_)
                                                 (let* ((_%expr133171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133106%_
                                                            _%L133155%_)))
                                                        (__tmp134677
                                                         (cons '%#begin-annotation
                                                               (cons _%L133156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133171%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134677
                                                    _%stx133107%_)))
                                               _%hd133120133150%_
                                               _%hd133117133142%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133109133126%_
                                                 _%g133110133129%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133109133126%_
                                         _%g133110133129%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133109133126%_ _%g133110133129%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133109133126%_ _%g133110133129%_))))))
          (declare (not safe))
          (_%g133108133173%_ _%stx133107%_))))
    (define gxc#xform-lambda%
      (lambda (_%self133044%_ _%stx133045%_)
        (let* ((_%g133047133061%_
                (lambda (_%g133048133058%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133048133058%_))))
               (_%g133046133103%_
                (lambda (_%g133048133064%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133048133064%_))
                      (let ((_%e133053133066%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133048133064%_))))
                        (let ((_%hd133052133069%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133053133066%_)))
                              (_%tl133051133071%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133053133066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133051133071%_))
                              (let ((_%e133056133074%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133051133071%_))))
                                (let ((_%hd133055133077%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133056133074%_)))
                                      (_%tl133054133079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133056133074%_))))
                                  ((lambda (_%L133082%_ _%L133083%_)
                                     (let ((__tmp134680
                                            (lambda ()
                                              (let* ((_%body133101%_
                                                      (map (lambda (_%g133096133098%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self133044%_ _%g133096133098%_)))
                   _%L133082%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134681
                                                      (cons '%#lambda
                                                            (cons _%L133083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body133101%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134681
                                                 _%stx133045%_))))
                                           (__tmp134678
                                            (let ((__tmp134679
                                                   (cons _%L133083%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134679))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134680
                                        gxc#current-compile-local-env
                                        __tmp134678)))
                                   _%tl133054133079%_
                                   _%hd133055133077%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133047133061%_ _%g133048133064%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133047133061%_ _%g133048133064%_))))))
          (declare (not safe))
          (_%g133046133103%_ _%stx133045%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132952%_ _%stx132953%_)
        (letrec ((_%clause-e132955%_
                  (lambda (_%clause132996%_)
                    (let* ((_%g132998133009%_
                            (lambda (_%g132999133006%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132999133006%_))))
                           (_%g132997133041%_
                            (lambda (_%g132999133012%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132999133012%_))
                                  (let ((_%e133004133014%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132999133012%_))))
                                    (let ((_%hd133003133017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e133004133014%_)))
                                          (_%tl133002133019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e133004133014%_))))
                                      ((lambda (_%L133022%_ _%L133023%_)
                                         (let ((__tmp134684
                                                (lambda ()
                                                  (let ((_%body133039%_
                                                         (map (lambda (_%g133034133036%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132952%_ _%g133034133036%_)))
                      _%L133022%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L133023%_
                                                          _%body133039%_))))
                                               (__tmp134682
                                                (let ((__tmp134683
                                                       (cons _%L133023%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134683))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134684
                                            gxc#current-compile-local-env
                                            __tmp134682)))
                                       _%tl133002133019%_
                                       _%hd133003133017%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132998133009%_ _%g132999133012%_))))))
                      (declare (not safe))
                      (_%g132997133041%_ _%clause132996%_)))))
          (let* ((_%g132957132967%_
                  (lambda (_%g132958132964%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132958132964%_))))
                 (_%g132956132993%_
                  (lambda (_%g132958132970%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132958132970%_))
                        (let ((_%e132962132972%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132958132970%_))))
                          (let ((_%hd132961132975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132962132972%_)))
                                (_%tl132960132977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132962132972%_))))
                            ((lambda (_%L132980%_)
                               (let* ((_%clauses132991%_
                                       (map _%clause-e132955%_ _%L132980%_))
                                      (__tmp134685
                                       (cons '%#case-lambda
                                             _%clauses132991%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134685
                                  _%stx132953%_)))
                             _%tl132960132977%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132957132967%_ _%g132958132970%_))))))
            (declare (not safe))
            (_%g132956132993%_ _%stx132953%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132706%_ _%stx132707%_)
        (let* ((_%g132709132742%_
                (lambda (_%g132710132739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132710132739%_))))
               (_%g132708132949%_
                (lambda (_%g132710132745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132710132745%_))
                      (let ((_%e132717132747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132710132745%_))))
                        (let ((_%hd132716132750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132717132747%_)))
                              (_%tl132715132752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132717132747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132715132752%_))
                              (let ((_%e132720132755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132715132752%_))))
                                (let ((_%hd132719132758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132720132755%_)))
                                      (_%tl132718132760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132720132755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132719132758%_))
                                      (let ((_g134686_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132719132758%_
                                                '0))))
                                        (begin
                                          (let ((_g134687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134686_)
                                                       (##vector-length
                                                        _g134686_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134687_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134687_)))
                                          (let ((_%target132721132763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134686_ 0)))
                                                (_%tl132723132765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134686_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132723132765%_))
                                                (letrec ((_%loop132724132768%_
                                                          (lambda (_%hd132722132771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132728132773%_
                           _%hd132729132775%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132722132771%_))
                        (let ((_%e132725132778%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132722132771%_))))
                          (let ((_%lp-hd132726132781%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132725132778%_)))
                                (_%lp-tl132727132783%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132725132778%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132726132781%_))
                                (let ((_%e132734132786%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132726132781%_))))
                                  (let ((_%hd132733132789%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132734132786%_)))
                                        (_%tl132732132791%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132734132786%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132732132791%_))
                                        (let ((_%e132737132794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132732132791%_))))
                                          (let ((_%hd132736132797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132737132794%_)))
                                                (_%tl132735132799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132737132794%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132735132799%_))
                                                (let ((__tmp134689
                                                       (cons _%hd132736132797%_
                                                             _%expr132728132773%_))
                                                      (__tmp134688
                                                       (cons _%hd132733132789%_
                                                             _%hd132729132775%_)))
                                                  (declare (not safe))
                                                  (_%loop132724132768%_
                                                   _%lp-tl132727132783%_
                                                   __tmp134689
                                                   __tmp134688))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132709132742%_
                                                   _%g132710132745%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132709132742%_
                                           _%g132710132745%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132709132742%_ _%g132710132745%_)))))
                        (let ((_%expr132730132802%_
                               (reverse _%expr132728132773%_))
                              (_%hd132731132804%_
                               (reverse _%hd132729132775%_)))
                          ((lambda (_%L132807%_
                                    _%L132808%_
                                    _%L132809%_
                                    _%L132810%_)
                             (let* ((_%g132829132845%_
                                     (lambda (_%g132830132842%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132830132842%_))))
                                    (_%g132828132935%_
                                     (lambda (_%g132830132848%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132830132848%_))
                                           (let ((_g134690_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132830132848%_
                                                     '0))))
                                             (begin
                                               (let ((_g134691_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134690_)
                                                            (##vector-length
                                                             _g134690_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134691_)))
                                               (let ((_%target132832132850%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134690_
                                                         0)))
                                                     (_%tl132834132852%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134690_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132834132852%_))
                                                     (letrec ((_%loop132835132855%_
                                                               (lambda (_%hd132833132858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132839132860%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132833132858%_))
                             (let ((_%e132836132863%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132833132858%_))))
                               (let ((_%lp-hd132837132866%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132836132863%_)))
                                     (_%lp-tl132838132868%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132836132863%_))))
                                 (let ((__tmp134692
                                        (cons _%lp-hd132837132866%_
                                              _%expr132839132860%_)))
                                   (declare (not safe))
                                   (_%loop132835132855%_
                                    _%lp-tl132838132868%_
                                    __tmp134692))))
                             (let ((_%expr132840132871%_
                                    (reverse _%expr132839132860%_)))
                               ((lambda (_%L132874%_)
                                  (let ((__tmp134696
                                         (lambda ()
                                           (let* ((_%g132888132895%_
                                                   (lambda (_%g132889132892%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132889132892%_))))
                                                  (_%g132887132921%_
                                                   (lambda (_%g132889132898%_)
                                                     ((lambda (_%L132900%_)
                                                        (let ((__tmp134697
                                                               (cons _%L132810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L132874%_
                                        _%L132809%_))
                                     (let ((__tmp134698
                                            (lambda (_%g132910132914%_
                                                     _%g132911132916%_
                                                     _%g132912132918%_)
                                              (cons (cons _%g132911132916%_
                                                          (cons _%g132910132914%_
                                                                '()))
                                                    _%g132912132918%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp134698
                                        '()
                                        _%L132874%_
                                        _%L132809%_)))
                                   _%L132900%_))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp134697 _%stx132707%_)))
              _%g132889132898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp134699
                                                   (map (lambda (_%g132923132925%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self132706%_
                                                             _%g132923132925%_)))
                                                        _%L132807%_)))
                                             (declare (not safe))
                                             (_%g132887132921%_ __tmp134699))))
                                        (__tmp134693
                                         (let ((__tmp134694
                                                (let ((__tmp134695
                                                       (lambda (_%g132927132930%_
                                                                _%g132928132932%_)
                                                         (cons _%g132927132930%_
                                                               _%g132928132932%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp134695
                                                   '()
                                                   _%L132809%_))))
                                           (declare (not safe))
                                           (gxc#xform-let-locals
                                            __tmp134694))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134696
                                     gxc#current-compile-local-env
                                     __tmp134693)))
                                _%expr132840132871%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132835132855%_ _%target132832132850%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132829132845%_
                                                        _%g132830132848%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132829132845%_
                                              _%g132830132848%_)))))
                                    (__tmp134700
                                     (map (lambda (_%g132937132939%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132706%_
                                               _%g132937132939%_)))
                                          (let ((__tmp134701
                                                 (lambda (_%g132941132944%_
                                                          _%g132942132946%_)
                                                   (cons _%g132941132944%_
                                                         _%g132942132946%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134701
                                             '()
                                             _%L132808%_)))))
                               (declare (not safe))
                               (_%g132828132935%_ __tmp134700)))
                           _%tl132718132760%_
                           _%expr132730132802%_
                           _%hd132731132804%_
                           _%hd132716132750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132724132768%_
                                                     _%target132721132763%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132709132742%_
                                                   _%g132710132745%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132709132742%_
                                         _%g132710132745%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132709132742%_ _%g132710132745%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132709132742%_ _%g132710132745%_))))))
          (declare (not safe))
          (_%g132708132949%_ _%stx132707%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self132460%_ _%stx132461%_)
        (let* ((_%g132463132496%_
                (lambda (_%g132464132493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132464132493%_))))
               (_%g132462132703%_
                (lambda (_%g132464132499%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132464132499%_))
                      (let ((_%e132471132501%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132464132499%_))))
                        (let ((_%hd132470132504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132471132501%_)))
                              (_%tl132469132506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132471132501%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132469132506%_))
                              (let ((_%e132474132509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132469132506%_))))
                                (let ((_%hd132473132512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132474132509%_)))
                                      (_%tl132472132514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132474132509%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132473132512%_))
                                      (let ((_g134702_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132473132512%_
                                                '0))))
                                        (begin
                                          (let ((_g134703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134702_)
                                                       (##vector-length
                                                        _g134702_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134703_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134703_)))
                                          (let ((_%target132475132517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134702_ 0)))
                                                (_%tl132477132519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134702_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132477132519%_))
                                                (letrec ((_%loop132478132522%_
                                                          (lambda (_%hd132476132525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132482132527%_
                           _%hd132483132529%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132476132525%_))
                        (let ((_%e132479132532%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132476132525%_))))
                          (let ((_%lp-hd132480132535%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132479132532%_)))
                                (_%lp-tl132481132537%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132479132532%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132480132535%_))
                                (let ((_%e132488132540%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132480132535%_))))
                                  (let ((_%hd132487132543%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132488132540%_)))
                                        (_%tl132486132545%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132488132540%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132486132545%_))
                                        (let ((_%e132491132548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132486132545%_))))
                                          (let ((_%hd132490132551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132491132548%_)))
                                                (_%tl132489132553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132491132548%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132489132553%_))
                                                (let ((__tmp134705
                                                       (cons _%hd132490132551%_
                                                             _%expr132482132527%_))
                                                      (__tmp134704
                                                       (cons _%hd132487132543%_
                                                             _%hd132483132529%_)))
                                                  (declare (not safe))
                                                  (_%loop132478132522%_
                                                   _%lp-tl132481132537%_
                                                   __tmp134705
                                                   __tmp134704))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132463132496%_
                                                   _%g132464132499%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132463132496%_
                                           _%g132464132499%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132463132496%_ _%g132464132499%_)))))
                        (let ((_%expr132484132556%_
                               (reverse _%expr132482132527%_))
                              (_%hd132485132558%_
                               (reverse _%hd132483132529%_)))
                          ((lambda (_%L132561%_
                                    _%L132562%_
                                    _%L132563%_
                                    _%L132564%_)
                             (let ((__tmp134709
                                    (lambda ()
                                      (let* ((_%g132584132600%_
                                              (lambda (_%g132585132597%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g132585132597%_))))
                                             (_%g132583132682%_
                                              (lambda (_%g132585132603%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g132585132603%_))
                                                    (let ((_g134710_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g132585132603%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134711_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134710_)
                             (##vector-length _g134710_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134711_ 2)))
                      (error "Context expects 2 values" _g134711_)))
                (let ((_%target132587132605%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134710_ 0)))
                      (_%tl132589132607%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134710_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl132589132607%_))
                      (letrec ((_%loop132590132610%_
                                (lambda (_%hd132588132613%_
                                         _%expr132594132615%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd132588132613%_))
                                      (let ((_%e132591132618%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd132588132613%_))))
                                        (let ((_%lp-hd132592132621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132591132618%_)))
                                              (_%lp-tl132593132623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132591132618%_))))
                                          (let ((__tmp134712
                                                 (cons _%lp-hd132592132621%_
                                                       _%expr132594132615%_)))
                                            (declare (not safe))
                                            (_%loop132590132610%_
                                             _%lp-tl132593132623%_
                                             __tmp134712))))
                                      (let ((_%expr132595132626%_
                                             (reverse _%expr132594132615%_)))
                                        ((lambda (_%L132629%_)
                                           (let ()
                                             (let* ((_%g132643132650%_
                                                     (lambda (_%g132644132647%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132644132647%_))))
                                                    (_%g132642132675%_
                                                     (lambda (_%g132644132653%_)
                                                       ((lambda (_%L132655%_)
                                                          (let ((__tmp134713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L132564%_
                               (cons (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L132629%_
                                          _%L132563%_))
                                       (let ((__tmp134714
                                              (lambda (_%g132664132668%_
                                                       _%g132665132670%_
                                                       _%g132666132672%_)
                                                (cons (cons _%g132665132670%_
                                                            (cons _%g132664132668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g132666132672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp134714
                                          '()
                                          _%L132629%_
                                          _%L132563%_)))
                                     _%L132655%_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134713 _%stx132461%_)))
                _%g132644132653%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134715
                                                     (map (lambda (_%g132677132679%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132460%_
                                                               _%g132677132679%_)))
                                                          _%L132561%_)))
                                               (declare (not safe))
                                               (_%g132642132675%_
                                                __tmp134715))))
                                         _%expr132595132626%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop132590132610%_ _%target132587132605%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g132584132600%_ _%g132585132603%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g132584132600%_
                                                       _%g132585132603%_)))))
                                             (__tmp134716
                                              (map (lambda (_%g132684132686%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132460%_
                                                        _%g132684132686%_)))
                                                   (let ((__tmp134717
                                                          (lambda (_%g132688132691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132689132693%_)
                    (cons _%g132688132691%_ _%g132689132693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134717
                                                      '()
                                                      _%L132562%_)))))
                                        (declare (not safe))
                                        (_%g132583132682%_ __tmp134716))))
                                   (__tmp134706
                                    (let ((__tmp134707
                                           (let ((__tmp134708
                                                  (lambda (_%g132695132698%_
                                                           _%g132696132700%_)
                                                    (cons _%g132695132698%_
                                                          _%g132696132700%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134708
                                              '()
                                              _%L132563%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134707))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134709
                                gxc#current-compile-local-env
                                __tmp134706)))
                           _%tl132472132514%_
                           _%expr132484132556%_
                           _%hd132485132558%_
                           _%hd132470132504%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132478132522%_
                                                     _%target132475132517%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132463132496%_
                                                   _%g132464132499%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132463132496%_
                                         _%g132464132499%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132463132496%_ _%g132464132499%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132463132496%_ _%g132464132499%_))))))
          (declare (not safe))
          (_%g132462132703%_ _%stx132461%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132364%_)
        (let _%loop132366%_ ((_%rest132368%_ _%bindings132364%_)
                             (_%locals132369%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest132370132378%_ _%rest132368%_)
                 (_%else132372132386%_ (lambda () _%locals132369%_))
                 (_%K132374132448%_
                  (lambda (_%rest132389%_ _%bind132390%_)
                    (let _%loop-bind132392%_ ((_%bind132394%_ _%bind132390%_)
                                              (_%locals132395%_
                                               _%locals132369%_))
                      (let* ((_%bind132396132407%_ _%bind132394%_)
                             (_%E132400132411%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind132396132407%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K132403132436%_
                               (lambda (_%bind-rest132433%_ _%id132434%_)
                                 (let ((__tmp134718
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132434%_))
                                              _%locals132395%_)))
                                   (declare (not safe))
                                   (_%loop-bind132392%_
                                    _%bind-rest132433%_
                                    __tmp134718))))
                              (_%K132402132425%_
                               (lambda (_%id132423%_)
                                 (let ((__tmp134719
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132423%_))
                                              _%locals132395%_)))
                                   (declare (not safe))
                                   (_%loop132366%_
                                    _%rest132389%_
                                    __tmp134719))))
                              (_%K132401132416%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop132366%_
                                    _%rest132389%_
                                    _%locals132395%_)))))
                          (let ((_%try-match132398132430%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind132396132407%_))
                                       (let ((_%id132428%_
                                              _%bind132396132407%_))
                                         (declare (not safe))
                                         (_%K132402132425%_ _%id132428%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K132401132416%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind132396132407%_))
                                (let ((_%tl132405132441%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind132396132407%_)))
                                      (_%hd132404132439%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind132396132407%_))))
                                  (let ((_%id132444%_ _%hd132404132439%_)
                                        (_%bind-rest132446%_
                                         _%tl132405132441%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K132403132436%_
                                       _%bind-rest132446%_
                                       _%id132444%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match132398132430%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest132370132378%_))
                (let ((_%hd132375132451%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132370132378%_)))
                      (_%tl132376132453%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132370132378%_))))
                  (let* ((_%bind132456%_ _%hd132375132451%_)
                         (_%rest132458%_ _%tl132376132453%_))
                    (declare (not safe))
                    (_%K132374132448%_ _%rest132458%_ _%bind132456%_)))
                (let () (declare (not safe)) (_%else132372132386%_)))))))
    (define gxc#xform-operands
      (lambda (_%self132316%_ _%stx132317%_)
        (let* ((_%g132319132330%_
                (lambda (_%g132320132327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132320132327%_))))
               (_%g132318132361%_
                (lambda (_%g132320132333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132320132333%_))
                      (let ((_%e132325132335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132320132333%_))))
                        (let ((_%hd132324132338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132325132335%_)))
                              (_%tl132323132340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132325132335%_))))
                          ((lambda (_%L132343%_ _%L132344%_)
                             (let* ((_%rands132359%_
                                     (map (lambda (_%g132354132356%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132316%_
                                               _%g132354132356%_)))
                                          _%L132343%_))
                                    (__tmp134720
                                     (cons _%L132344%_ _%rands132359%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134720
                                _%stx132317%_)))
                           _%tl132323132340%_
                           _%hd132324132338%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132319132330%_ _%g132320132333%_))))))
          (declare (not safe))
          (_%g132318132361%_ _%stx132317%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self132246%_ _%stx132247%_)
        (let* ((_%g132249132266%_
                (lambda (_%g132250132263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132250132263%_))))
               (_%g132248132313%_
                (lambda (_%g132250132269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132250132269%_))
                      (let ((_%e132255132271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132250132269%_))))
                        (let ((_%hd132254132274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132255132271%_)))
                              (_%tl132253132276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132255132271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132253132276%_))
                              (let ((_%e132258132279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132253132276%_))))
                                (let ((_%hd132257132282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132258132279%_)))
                                      (_%tl132256132284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132258132279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132256132284%_))
                                      (let ((_%e132261132287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132256132284%_))))
                                        (let ((_%hd132260132290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132261132287%_)))
                                              (_%tl132259132292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132261132287%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132259132292%_))
                                              ((lambda (_%L132295%_
                                                        _%L132296%_)
                                                 (let* ((_%expr132311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132246%_
                                                            _%L132295%_)))
                                                        (__tmp134721
                                                         (cons '%#set!
                                                               (cons _%L132296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132311%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134721
                                                    _%stx132247%_)))
                                               _%hd132260132290%_
                                               _%hd132257132282%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132249132266%_
                                                 _%g132250132269%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132249132266%_
                                         _%g132250132269%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132249132266%_ _%g132250132269%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132249132266%_ _%g132250132269%_))))))
          (declare (not safe))
          (_%g132248132313%_ _%stx132247%_))))))
