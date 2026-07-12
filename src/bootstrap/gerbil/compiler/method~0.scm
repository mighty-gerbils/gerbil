(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1783878478)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx200989%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp201211
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx200989%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp201211))
            '#!void)
        (let* ((_%self200991%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e200993%_
                (let ((__tmp201212 (gxc#stx-car-e _%stx200989%_)))
                  (declare (not safe))
                  (method-ref _%self200991%_ __tmp201212))))
          (if _%$e200993%_
              (let ()
                (declare (not safe))
                (let ((_%$e200999%_ (gx#stx-source _%stx200989%_)))
                  (if _%$e200999%_
                      (call-with-parameters__1
                       (lambda () (_%$e200993%_ _%self200991%_ _%stx200989%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e200999%_ '()))
                             (let ((_%$e201006%_
                                    (gxc#current-compile-context)))
                               (if _%$e201006%_ _%$e201006%_ '()))))
                      (_%$e200993%_ _%self200991%_ _%stx200989%_))))
              (let ((__tmp201214 (gxc#stx-car-e _%stx200989%_))
                    (__tmp201213
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx200989%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self200991%_
                       __tmp201214
                       __tmp201213))))))
    (define gxc#compile-e__1
      (lambda (_%self201011%_ _%stx201012%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp201215
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx201012%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp201215))
            '#!void)
        (let ((_%$e201014%_
               (let ((__tmp201216 (gxc#stx-car-e _%stx201012%_)))
                 (declare (not safe))
                 (method-ref _%self201011%_ __tmp201216))))
          (if _%$e201014%_
              (let ()
                (declare (not safe))
                (let ((_%$e201020%_ (gx#stx-source _%stx201012%_)))
                  (if _%$e201020%_
                      (call-with-parameters__1
                       (lambda () (_%$e201014%_ _%self201011%_ _%stx201012%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e201020%_ '()))
                             (let ((_%$e201027%_
                                    (gxc#current-compile-context)))
                               (if _%$e201027%_ _%$e201027%_ '()))))
                      (_%$e201014%_ _%self201011%_ _%stx201012%_))))
              (let ((__tmp201218 (gxc#stx-car-e _%stx201012%_))
                    (__tmp201217
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx201012%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self201011%_
                       __tmp201218
                       __tmp201217))))))
    (define gxc#compile-e
      (lambda _g201219_
        (let ((_g201220_ (let () (declare (not safe)) (##length _g201219_))))
          (cond ((let () (declare (not safe)) (##fx= _g201220_ 1))
                 (apply gxc#compile-e__0 _g201219_))
                ((let () (declare (not safe)) (##fx= _g201220_ 2))
                 (apply gxc#compile-e__1 _g201219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g201219_))))))
    (define gxc#stx-car-e
      (lambda (_%stx200987%_)
        (let ((__tmp201221
               (car (let () (declare (not safe)) (gx#stx-e _%stx200987%_)))))
          (declare (not safe))
          (gx#stx-e __tmp201221))))
    (define gxc#void-method (lambda (_%self200984%_ _%stx200985%_) '#!void))
    (define gxc#false-method (lambda (_%self200981%_ _%stx200982%_) '#f))
    (define gxc#true-method (lambda (_%self200978%_ _%stx200979%_) '#t))
    (define gxc#identity-method
      (lambda (_%self200975%_ _%stx200976%_) _%stx200976%_))
    (define gxc#::void-expression::t
      (let ((__tmp201222 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp201222
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args200972%_
        (apply make-instance gxc#::void-expression::t _%$args200972%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp201223
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
        (__make-atomic-promise __tmp201223)))
    (define gxc#::void-special-form::t
      (let ((__tmp201224 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp201224
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args200968%_
        (apply make-instance gxc#::void-special-form::t _%$args200968%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp201225
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
                  '%#define-runtime
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#declare
                  gxc#void-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp201225)))
    (define gxc#::void::t
      (let ((__tmp201226
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp201226 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args200964%_
        (apply make-instance gxc#::void::t _%$args200964%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp201227
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp201227)))
    (define gxc#::false-expression::t
      (let ((__tmp201228 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp201228
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args200960%_
        (apply make-instance gxc#::false-expression::t _%$args200960%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp201229
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
        (__make-atomic-promise __tmp201229)))
    (define gxc#::false-special-form::t
      (let ((__tmp201230 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp201230
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args200956%_
        (apply make-instance gxc#::false-special-form::t _%$args200956%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp201231
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
                  '%#define-runtime
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#declare
                  gxc#false-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp201231)))
    (define gxc#::false::t
      (let ((__tmp201232
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp201232 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args200952%_
        (apply make-instance gxc#::false::t _%$args200952%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp201233
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp201233)))
    (define gxc#::identity-expression::t
      (let ((__tmp201234 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp201234
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args200948%_
        (apply make-instance gxc#::identity-expression::t _%$args200948%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp201235
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
        (__make-atomic-promise __tmp201235)))
    (define gxc#::identity-special-form::t
      (let ((__tmp201236 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp201236
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args200944%_
        (apply make-instance gxc#::identity-special-form::t _%$args200944%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp201237
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
                  '%#define-runtime
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#declare
                  gxc#identity-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp201237)))
    (define gxc#::identity::t
      (let ((__tmp201238
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp201238
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args200940%_
        (apply make-instance gxc#::identity::t _%$args200940%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp201239
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp201239)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp201240 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp201240
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args200936%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args200936%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp201241
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
        (__make-atomic-promise __tmp201241)))
    (define gxc#::basic-xform::t
      (let ((__tmp201242
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp201242
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args200932%_
        (apply make-instance gxc#::basic-xform::t _%$args200932%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp201243
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
        (__make-atomic-promise __tmp201243)))
    (define gxc#apply-begin%
      (lambda (_%self200888%_ _%stx200889%_)
        (let* ((_%$%g200891200901%_
                (lambda (_%$%g200892200898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200892200898%_))))
               (_%$%g200890200928%_
                (lambda (_%$%g200892200904%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200892200904%_))
                      (let ((_%$%e200894200906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200892200904%_))))
                        (let ((_%$%hd200895200909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200894200906%_)))
                              (_%$%tl200896200911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200894200906%_))))
                          (for-each
                           (lambda (_%$%g200923200925%_)
                             (gxc#compile-e__1
                              _%self200888%_
                              _%$%g200923200925%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl200896200911%_)))))
                      (_%$%g200891200901%_ _%$%g200892200904%_)))))
          (_%$%g200890200928%_ _%stx200889%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self200849%_ _%stx200850%_)
        (let* ((_%$%g200852200862%_
                (lambda (_%$%g200853200859%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200853200859%_))))
               (_%$%g200851200885%_
                (lambda (_%$%g200853200865%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200853200865%_))
                      (let ((_%$%e200855200867%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200853200865%_))))
                        (let ((_%$%hd200856200870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200855200867%_)))
                              (_%$%tl200857200872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200855200867%_))))
                          (gxc#compile-e__1
                           _%self200849%_
                           (last _%$%tl200857200872%_))))
                      (_%$%g200852200862%_ _%$%g200853200865%_)))))
          (_%$%g200851200885%_ _%stx200850%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self200845%_ _%stx200846%_)
        (let ((__tmp201246
               (lambda () (gxc#apply-begin% _%self200845%_ _%stx200846%_)))
              (__tmp201244
               (let ((__tmp201245
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp201245 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201246
           gx#current-expander-phi
           __tmp201244))))
    (define gxc#apply-module%
      (lambda (_%self200784%_ _%stx200785%_)
        (let* ((_%$%g200787200801%_
                (lambda (_%$%g200788200798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200788200798%_))))
               (_%$%g200786200842%_
                (lambda (_%$%g200788200804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200788200804%_))
                      (let ((_%$%e200791200806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200788200804%_))))
                        (let ((_%$%hd200792200809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200791200806%_)))
                              (_%$%tl200793200811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200791200806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200793200811%_))
                              (let ((_%$%e200794200814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200793200811%_))))
                                (let ((_%$%hd200795200817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200794200814%_)))
                                      (_%$%tl200796200819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200794200814%_))))
                                  (let* ((_%ctx200836%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd200795200817%_)))
                                         (_%ctx-stx200838%_
                                          (##structure-ref
                                           _%ctx200836%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp201247
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self200784%_
                                             _%ctx-stx200838%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp201247
                                     gx#current-expander-context
                                     _%ctx200836%_))))
                              (_%$%g200787200801%_ _%$%g200788200804%_))))
                      (_%$%g200787200801%_ _%$%g200788200804%_)))))
          (_%$%g200786200842%_ _%stx200785%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self200716%_ _%stx200717%_)
        (let* ((_%$%g200719200736%_
                (lambda (_%$%g200720200733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200720200733%_))))
               (_%$%g200718200781%_
                (lambda (_%$%g200720200739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200720200739%_))
                      (let ((_%$%e200723200741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200720200739%_))))
                        (let ((_%$%hd200724200744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200723200741%_)))
                              (_%$%tl200725200746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200723200741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200725200746%_))
                              (let ((_%$%e200726200749%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200725200746%_))))
                                (let ((_%$%hd200727200752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200726200749%_)))
                                      (_%$%tl200728200754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200726200749%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200728200754%_))
                                      (let ((_%$%e200729200757%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200728200754%_))))
                                        (let ((_%$%hd200730200760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200729200757%_)))
                                              (_%$%tl200731200762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200729200757%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200731200762%_))
                                              (gxc#compile-e__1
                                               _%self200716%_
                                               _%$%hd200730200760%_)
                                              (_%$%g200719200736%_
                                               _%$%g200720200739%_))))
                                      (_%$%g200719200736%_
                                       _%$%g200720200739%_))))
                              (_%$%g200719200736%_ _%$%g200720200739%_))))
                      (_%$%g200719200736%_ _%$%g200720200739%_)))))
          (_%$%g200718200781%_ _%stx200717%_))))
    (define gxc#apply-define-values%
      (lambda (_%self200648%_ _%stx200649%_)
        (let* ((_%$%g200651200668%_
                (lambda (_%$%g200652200665%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200652200665%_))))
               (_%$%g200650200713%_
                (lambda (_%$%g200652200671%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200652200671%_))
                      (let ((_%$%e200655200673%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200652200671%_))))
                        (let ((_%$%hd200656200676%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200655200673%_)))
                              (_%$%tl200657200678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200655200673%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200657200678%_))
                              (let ((_%$%e200658200681%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200657200678%_))))
                                (let ((_%$%hd200659200684%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200658200681%_)))
                                      (_%$%tl200660200686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200658200681%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200660200686%_))
                                      (let ((_%$%e200661200689%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200660200686%_))))
                                        (let ((_%$%hd200662200692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200661200689%_)))
                                              (_%$%tl200663200694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200661200689%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200663200694%_))
                                              (gxc#compile-e__1
                                               _%self200648%_
                                               _%$%hd200662200692%_)
                                              (_%$%g200651200668%_
                                               _%$%g200652200671%_))))
                                      (_%$%g200651200668%_
                                       _%$%g200652200671%_))))
                              (_%$%g200651200668%_ _%$%g200652200671%_))))
                      (_%$%g200651200668%_ _%$%g200652200671%_)))))
          (_%$%g200650200713%_ _%stx200649%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self200579%_ _%stx200580%_)
        (let* ((_%$%g200582200599%_
                (lambda (_%$%g200583200596%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200583200596%_))))
               (_%$%g200581200645%_
                (lambda (_%$%g200583200602%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200583200602%_))
                      (let ((_%$%e200586200604%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200583200602%_))))
                        (let ((_%$%hd200587200607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200586200604%_)))
                              (_%$%tl200588200609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200586200604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200588200609%_))
                              (let ((_%$%e200589200612%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200588200609%_))))
                                (let ((_%$%hd200590200615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200589200612%_)))
                                      (_%$%tl200591200617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200589200612%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200591200617%_))
                                      (let ((_%$%e200592200620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200591200617%_))))
                                        (let ((_%$%hd200593200623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200592200620%_)))
                                              (_%$%tl200594200625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200592200620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200594200625%_))
                                              (let ((__tmp201250
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self200579%_
                                                        _%$%hd200593200623%_)))
                                                    (__tmp201248
                                                     (let ((__tmp201249
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp201249
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp201250
                                                 gx#current-expander-phi
                                                 __tmp201248))
                                              (_%$%g200582200599%_
                                               _%$%g200583200602%_))))
                                      (_%$%g200582200599%_
                                       _%$%g200583200602%_))))
                              (_%$%g200582200599%_ _%$%g200583200602%_))))
                      (_%$%g200582200599%_ _%$%g200583200602%_)))))
          (_%$%g200581200645%_ _%stx200580%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self200511%_ _%stx200512%_)
        (let* ((_%$%g200514200531%_
                (lambda (_%$%g200515200528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200515200528%_))))
               (_%$%g200513200576%_
                (lambda (_%$%g200515200534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200515200534%_))
                      (let ((_%$%e200518200536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200515200534%_))))
                        (let ((_%$%hd200519200539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200518200536%_)))
                              (_%$%tl200520200541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200518200536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200520200541%_))
                              (let ((_%$%e200521200544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200520200541%_))))
                                (let ((_%$%hd200522200547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200521200544%_)))
                                      (_%$%tl200523200549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200521200544%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200523200549%_))
                                      (let ((_%$%e200524200552%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200523200549%_))))
                                        (let ((_%$%hd200525200555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200524200552%_)))
                                              (_%$%tl200526200557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200524200552%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200526200557%_))
                                              (gxc#compile-e__1
                                               _%self200511%_
                                               _%$%hd200525200555%_)
                                              (_%$%g200514200531%_
                                               _%$%g200515200534%_))))
                                      (_%$%g200514200531%_
                                       _%$%g200515200534%_))))
                              (_%$%g200514200531%_ _%$%g200515200534%_))))
                      (_%$%g200514200531%_ _%$%g200515200534%_)))))
          (_%$%g200513200576%_ _%stx200512%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self200397%_ _%stx200398%_)
        (let* ((_%$%g200400200428%_
                (lambda (_%$%g200401200425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200401200425%_))))
               (_%$%g200399200508%_
                (lambda (_%$%g200401200431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200401200431%_))
                      (let ((_%$%e200404200433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200401200431%_))))
                        (let ((_%$%hd200405200436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200404200433%_)))
                              (_%$%tl200406200438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200404200433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl200406200438%_))
                              (let ((_g201251_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl200406200438%_
                                        '0))))
                                (begin
                                  (let ((_g201252_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201251_)
                                               (##values-length _g201251_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201252_ 2)))
                                        (error "Context expects 2 values"
                                               _g201252_)))
                                  (let ((_%$%target200407200441%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g201251_ 0)))
                                        (_%$%tl200409200443%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g201251_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl200409200443%_))
                                        (letrec ((_%$%loop200410200446%_
                                                  (lambda (_%$%hd200408200449%_
                                                           _%$%body200414200451%_
                                                           _%$%hd200415200452%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd200408200449%_))
                                                        (let ((_%$%e200411200454%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd200408200449%_))))
                  (let ((_%$%lp-hd200412200457%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e200411200454%_)))
                        (_%$%lp-tl200413200459%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e200411200454%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd200412200457%_))
                        (let ((_%$%e200418200462%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd200412200457%_))))
                          (let ((_%$%hd200419200465%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e200418200462%_)))
                                (_%$%tl200420200467%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e200418200462%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl200420200467%_))
                                (let ((_%$%e200421200470%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl200420200467%_))))
                                  (let ((_%$%hd200422200473%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e200421200470%_)))
                                        (_%$%tl200423200475%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e200421200470%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl200423200475%_))
                                        (_%$%loop200410200446%_
                                         _%$%lp-tl200413200459%_
                                         (cons _%$%hd200422200473%_
                                               _%$%body200414200451%_)
                                         (cons _%$%hd200419200465%_
                                               _%$%hd200415200452%_))
                                        (_%$%g200400200428%_
                                         _%$%g200401200431%_))))
                                (_%$%g200400200428%_ _%$%g200401200431%_))))
                        (_%$%g200400200428%_ _%$%g200401200431%_))))
                (let ((_%$%body200416200478%_ (reverse _%$%body200414200451%_))
                      (_%$%hd200417200479%_ (reverse _%$%hd200415200452%_)))
                  (for-each
                   (lambda (_%$%g200496200498%_)
                     (gxc#compile-e__1 _%self200397%_ _%$%g200496200498%_))
                   (let ((__tmp201253
                          (lambda (_%$%g200500200503%_ _%$%g200501200505%_)
                            (cons _%$%g200500200503%_ _%$%g200501200505%_))))
                     (declare (not safe))
                     (foldr__0 __tmp201253 '() _%$%body200416200478%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop200410200446%_
                                           _%$%target200407200441%_
                                           '()
                                           '()))
                                        (_%$%g200400200428%_
                                         _%$%g200401200431%_)))))
                              (_%$%g200400200428%_ _%$%g200401200431%_))))
                      (_%$%g200400200428%_ _%$%g200401200431%_)))))
          (_%$%g200399200508%_ _%stx200398%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self200254%_ _%stx200255%_)
        (let* ((_%$%g200257200292%_
                (lambda (_%$%g200258200289%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200258200289%_))))
               (_%$%g200256200394%_
                (lambda (_%$%g200258200295%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200258200295%_))
                      (let ((_%$%e200262200297%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200258200295%_))))
                        (let ((_%$%hd200263200300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200262200297%_)))
                              (_%$%tl200264200302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200262200297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200264200302%_))
                              (let ((_%$%e200265200305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200264200302%_))))
                                (let ((_%$%hd200266200308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200265200305%_)))
                                      (_%$%tl200267200310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200265200305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd200266200308%_))
                                      (let ((_g201254_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd200266200308%_
                                                '0))))
                                        (begin
                                          (let ((_g201255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201254_)
                                                       (##values-length
                                                        _g201254_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201255_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201255_)))
                                          (let ((_%$%target200268200313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g201254_ 0)))
                                                (_%$%tl200270200315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g201254_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl200270200315%_))
                                                (letrec ((_%$%loop200271200318%_
                                                          (lambda (_%$%hd200269200321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr200275200323%_
                           _%$%hd200276200324%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd200269200321%_))
                        (let ((_%$%e200272200326%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd200269200321%_))))
                          (let ((_%$%lp-hd200273200329%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e200272200326%_)))
                                (_%$%lp-tl200274200331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e200272200326%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd200273200329%_))
                                (let ((_%$%e200279200334%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd200273200329%_))))
                                  (let ((_%$%hd200280200337%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e200279200334%_)))
                                        (_%$%tl200281200339%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e200279200334%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl200281200339%_))
                                        (let ((_%$%e200282200342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl200281200339%_))))
                                          (let ((_%$%hd200283200345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e200282200342%_)))
                                                (_%$%tl200284200347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e200282200342%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl200284200347%_))
                                                (_%$%loop200271200318%_
                                                 _%$%lp-tl200274200331%_
                                                 (cons _%$%hd200283200345%_
                                                       _%$%expr200275200323%_)
                                                 (cons _%$%hd200280200337%_
                                                       _%$%hd200276200324%_))
                                                (_%$%g200257200292%_
                                                 _%$%g200258200295%_))))
                                        (_%$%g200257200292%_
                                         _%$%g200258200295%_))))
                                (_%$%g200257200292%_ _%$%g200258200295%_))))
                        (let ((_%$%expr200277200350%_
                               (reverse _%$%expr200275200323%_))
                              (_%$%hd200278200351%_
                               (reverse _%$%hd200276200324%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200267200310%_))
                              (let ((_%$%e200285200353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200267200310%_))))
                                (let ((_%$%hd200286200356%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200285200353%_)))
                                      (_%$%tl200287200358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200285200353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200287200358%_))
                                      (for-each
                                       (lambda (_%$%g200382200384%_)
                                         (gxc#compile-e__1
                                          _%self200254%_
                                          _%$%g200382200384%_))
                                       (let ((__tmp201257
                                              (lambda (_%$%g200386200389%_
                                                       _%$%g200387200391%_)
                                                (cons _%$%g200386200389%_
                                                      _%$%g200387200391%_)))
                                             (__tmp201256
                                              (cons _%$%hd200286200356%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp201257
                                          __tmp201256
                                          _%$%expr200277200350%_)))
                                      (_%$%g200257200292%_
                                       _%$%g200258200295%_))))
                              (_%$%g200257200292%_ _%$%g200258200295%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop200271200318%_
                                                   _%$%target200268200313%_
                                                   '()
                                                   '()))
                                                (_%$%g200257200292%_
                                                 _%$%g200258200295%_)))))
                                      (_%$%g200257200292%_
                                       _%$%g200258200295%_))))
                              (_%$%g200257200292%_ _%$%g200258200295%_))))
                      (_%$%g200257200292%_ _%$%g200258200295%_)))))
          (_%$%g200256200394%_ _%stx200255%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self200199%_ _%stx200200%_)
        (let* ((_%$%g200202200216%_
                (lambda (_%$%g200203200213%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200203200213%_))))
               (_%$%g200201200251%_
                (lambda (_%$%g200203200219%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200203200219%_))
                      (let ((_%$%e200206200221%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200203200219%_))))
                        (let ((_%$%hd200207200224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200206200221%_)))
                              (_%$%tl200208200226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200206200221%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200208200226%_))
                              (let ((_%$%e200209200229%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200208200226%_))))
                                (let ((_%$%hd200210200232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200209200229%_)))
                                      (_%$%tl200211200234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200209200229%_))))
                                  (gxc#compile-e__1
                                   _%self200199%_
                                   (last _%$%tl200211200234%_))))
                              (_%$%g200202200216%_ _%$%g200203200219%_))))
                      (_%$%g200202200216%_ _%$%g200203200219%_)))))
          (_%$%g200201200251%_ _%stx200200%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self200131%_ _%stx200132%_)
        (let* ((_%$%g200134200151%_
                (lambda (_%$%g200135200148%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200135200148%_))))
               (_%$%g200133200196%_
                (lambda (_%$%g200135200154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200135200154%_))
                      (let ((_%$%e200138200156%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200135200154%_))))
                        (let ((_%$%hd200139200159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200138200156%_)))
                              (_%$%tl200140200161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200138200156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200140200161%_))
                              (let ((_%$%e200141200164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200140200161%_))))
                                (let ((_%$%hd200142200167%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200141200164%_)))
                                      (_%$%tl200143200169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200141200164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200143200169%_))
                                      (let ((_%$%e200144200172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200143200169%_))))
                                        (let ((_%$%hd200145200175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200144200172%_)))
                                              (_%$%tl200146200177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200144200172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200146200177%_))
                                              (gxc#compile-e__1
                                               _%self200131%_
                                               _%$%hd200145200175%_)
                                              (_%$%g200134200151%_
                                               _%$%g200135200154%_))))
                                      (_%$%g200134200151%_
                                       _%$%g200135200154%_))))
                              (_%$%g200134200151%_ _%$%g200135200154%_))))
                      (_%$%g200134200151%_ _%$%g200135200154%_)))))
          (_%$%g200133200196%_ _%stx200132%_))))
    (define gxc#apply-operands
      (lambda (_%self200046%_ _%stx200047%_)
        (let* ((_%$%g200049200068%_
                (lambda (_%$%g200050200065%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200050200065%_))))
               (_%$%g200048200128%_
                (lambda (_%$%g200050200071%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200050200071%_))
                      (let ((_%$%e200052200073%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200050200071%_))))
                        (let ((_%$%hd200053200076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200052200073%_)))
                              (_%$%tl200054200078%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200052200073%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl200054200078%_))
                              (let ((_g201258_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl200054200078%_
                                        '0))))
                                (begin
                                  (let ((_g201259_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201258_)
                                               (##values-length _g201258_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201259_ 2)))
                                        (error "Context expects 2 values"
                                               _g201259_)))
                                  (let ((_%$%target200055200081%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g201258_ 0)))
                                        (_%$%tl200057200083%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g201258_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl200057200083%_))
                                        (letrec ((_%$%loop200058200086%_
                                                  (lambda (_%$%hd200056200089%_
                                                           _%$%rands200062200091%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd200056200089%_))
                                                        (let ((_%$%e200059200093%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd200056200089%_))))
                  (let ((_%$%lp-hd200060200096%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e200059200093%_)))
                        (_%$%lp-tl200061200098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e200059200093%_))))
                    (_%$%loop200058200086%_
                     _%$%lp-tl200061200098%_
                     (cons _%$%lp-hd200060200096%_ _%$%rands200062200091%_))))
                (let ((_%$%rands200063200101%_
                       (reverse _%$%rands200062200091%_)))
                  (for-each
                   (lambda (_%$%g200116200118%_)
                     (gxc#compile-e__1 _%self200046%_ _%$%g200116200118%_))
                   (let ((__tmp201260
                          (lambda (_%$%g200120200123%_ _%$%g200121200125%_)
                            (cons _%$%g200120200123%_ _%$%g200121200125%_))))
                     (declare (not safe))
                     (foldr__0 __tmp201260 '() _%$%rands200063200101%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop200058200086%_
                                           _%$%target200055200081%_
                                           '()))
                                        (_%$%g200049200068%_
                                         _%$%g200050200071%_)))))
                              (_%$%g200049200068%_ _%$%g200050200071%_))))
                      (_%$%g200049200068%_ _%$%g200050200071%_)))))
          (_%$%g200048200128%_ _%stx200047%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx200043%_ _%src-stx200044%_)
        (let ((__tmp201261
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx200044%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx200043%_ __tmp201261))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx200039%_ _%src-stx200040%_ _%ctx200041%_)
        (gxc#compile-e__1
         _%ctx200041%_
         (gxc#xform-wrap-source _%stx200039%_ _%src-stx200040%_))))
    (define gxc#xform-begin%
      (lambda (_%self199994%_ _%stx199995%_)
        (let* ((_%$%g199997200007%_
                (lambda (_%$%g199998200004%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199998200004%_))))
               (_%$%g199996200036%_
                (lambda (_%$%g199998200010%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199998200010%_))
                      (let ((_%$%e200000200012%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199998200010%_))))
                        (let ((_%$%hd200001200015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200000200012%_)))
                              (_%$%tl200002200017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200000200012%_))))
                          (let ((_%forms200034%_
                                 (map (lambda (_%$%g200029200031%_)
                                        (gxc#compile-e__1
                                         _%self199994%_
                                         _%$%g200029200031%_))
                                      _%$%tl200002200017%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms200034%_)
                             _%stx199995%_))))
                      (_%$%g199997200007%_ _%$%g199998200010%_)))))
          (_%$%g199996200036%_ _%stx199995%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self199948%_ _%stx199949%_)
        (let* ((_%$%g199951199961%_
                (lambda (_%$%g199952199958%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199952199958%_))))
               (_%$%g199950199991%_
                (lambda (_%$%g199952199964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199952199964%_))
                      (let ((_%$%e199954199966%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199952199964%_))))
                        (let ((_%$%hd199955199969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199954199966%_)))
                              (_%$%tl199956199971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199954199966%_))))
                          (let ((__tmp201264
                                 (lambda ()
                                   (let ((_%forms199989%_
                                          (map (lambda (_%$%g199984199986%_)
                                                 (gxc#compile-e__1
                                                  _%self199948%_
                                                  _%$%g199984199986%_))
                                               _%$%tl199956199971%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms199989%_)
                                      _%stx199949%_))))
                                (__tmp201262
                                 (let ((__tmp201263
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp201263 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp201264
                             gx#current-expander-phi
                             __tmp201262))))
                      (_%$%g199951199961%_ _%$%g199952199964%_)))))
          (_%$%g199950199991%_ _%stx199949%_))))
    (define gxc#xform-module%
      (lambda (_%self199885%_ _%stx199886%_)
        (let* ((_%$%g199888199902%_
                (lambda (_%$%g199889199899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199889199899%_))))
               (_%$%g199887199945%_
                (lambda (_%$%g199889199905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199889199905%_))
                      (let ((_%$%e199892199907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199889199905%_))))
                        (let ((_%$%hd199893199910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199892199907%_)))
                              (_%$%tl199894199912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199892199907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199894199912%_))
                              (let ((_%$%e199895199915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199894199912%_))))
                                (let ((_%$%hd199896199918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199895199915%_)))
                                      (_%$%tl199897199920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199895199915%_))))
                                  (let* ((_%ctx199937%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd199896199918%_)))
                                         (_%code199939%_
                                          (##structure-ref
                                           _%ctx199937%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code199942%_
                                          (let ((__tmp201265
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self199885%_
                                                    _%code199939%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp201265
                                             gx#current-expander-context
                                             _%ctx199937%_))))
                                    (##structure-set!
                                     _%ctx199937%_
                                     _%code199942%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd199896199918%_
                                                 (cons _%code199942%_ '())))
                                     _%stx199886%_))))
                              (_%$%g199888199902%_ _%$%g199889199905%_))))
                      (_%$%g199888199902%_ _%$%g199889199905%_)))))
          (_%$%g199887199945%_ _%stx199886%_))))
    (define gxc#xform-define-values%
      (lambda (_%self199815%_ _%stx199816%_)
        (let* ((_%$%g199818199835%_
                (lambda (_%$%g199819199832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199819199832%_))))
               (_%$%g199817199882%_
                (lambda (_%$%g199819199838%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199819199838%_))
                      (let ((_%$%e199822199840%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199819199838%_))))
                        (let ((_%$%hd199823199843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199822199840%_)))
                              (_%$%tl199824199845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199822199840%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199824199845%_))
                              (let ((_%$%e199825199848%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199824199845%_))))
                                (let ((_%$%hd199826199851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199825199848%_)))
                                      (_%$%tl199827199853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199825199848%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199827199853%_))
                                      (let ((_%$%e199828199856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199827199853%_))))
                                        (let ((_%$%hd199829199859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199828199856%_)))
                                              (_%$%tl199830199861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199828199856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199830199861%_))
                                              (let ((_%expr199880%_
                                                     (gxc#compile-e__1
                                                      _%self199815%_
                                                      _%$%hd199829199859%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd199826199851%_
                                                             (cons _%expr199880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx199816%_))
                                              (_%$%g199818199835%_
                                               _%$%g199819199838%_))))
                                      (_%$%g199818199835%_
                                       _%$%g199819199838%_))))
                              (_%$%g199818199835%_ _%$%g199819199838%_))))
                      (_%$%g199818199835%_ _%$%g199819199838%_)))))
          (_%$%g199817199882%_ _%stx199816%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self199744%_ _%stx199745%_)
        (let* ((_%$%g199747199764%_
                (lambda (_%$%g199748199761%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199748199761%_))))
               (_%$%g199746199812%_
                (lambda (_%$%g199748199767%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199748199767%_))
                      (let ((_%$%e199751199769%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199748199767%_))))
                        (let ((_%$%hd199752199772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199751199769%_)))
                              (_%$%tl199753199774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199751199769%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199753199774%_))
                              (let ((_%$%e199754199777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199753199774%_))))
                                (let ((_%$%hd199755199780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199754199777%_)))
                                      (_%$%tl199756199782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199754199777%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199756199782%_))
                                      (let ((_%$%e199757199785%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199756199782%_))))
                                        (let ((_%$%hd199758199788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199757199785%_)))
                                              (_%$%tl199759199790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199757199785%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199759199790%_))
                                              (let ((__tmp201268
                                                     (lambda ()
                                                       (let ((_%expr199810%_
                                                              (gxc#compile-e__1
                                                               _%self199744%_
                                                               _%$%hd199758199788%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd199755199780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr199810%_ '())))
                  _%stx199745%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp201266
                                                     (let ((__tmp201267
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp201267
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp201268
                                                 gx#current-expander-phi
                                                 __tmp201266))
                                              (_%$%g199747199764%_
                                               _%$%g199748199767%_))))
                                      (_%$%g199747199764%_
                                       _%$%g199748199767%_))))
                              (_%$%g199747199764%_ _%$%g199748199767%_))))
                      (_%$%g199747199764%_ _%$%g199748199767%_)))))
          (_%$%g199746199812%_ _%stx199745%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self199674%_ _%stx199675%_)
        (let* ((_%$%g199677199694%_
                (lambda (_%$%g199678199691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199678199691%_))))
               (_%$%g199676199741%_
                (lambda (_%$%g199678199697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199678199697%_))
                      (let ((_%$%e199681199699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199678199697%_))))
                        (let ((_%$%hd199682199702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199681199699%_)))
                              (_%$%tl199683199704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199681199699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199683199704%_))
                              (let ((_%$%e199684199707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199683199704%_))))
                                (let ((_%$%hd199685199710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199684199707%_)))
                                      (_%$%tl199686199712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199684199707%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199686199712%_))
                                      (let ((_%$%e199687199715%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199686199712%_))))
                                        (let ((_%$%hd199688199718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199687199715%_)))
                                              (_%$%tl199689199720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199687199715%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199689199720%_))
                                              (let ((_%expr199739%_
                                                     (gxc#compile-e__1
                                                      _%self199674%_
                                                      _%$%hd199688199718%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd199685199710%_
                                                             (cons _%expr199739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx199675%_))
                                              (_%$%g199677199694%_
                                               _%$%g199678199697%_))))
                                      (_%$%g199677199694%_
                                       _%$%g199678199697%_))))
                              (_%$%g199677199694%_ _%$%g199678199697%_))))
                      (_%$%g199677199694%_ _%$%g199678199697%_)))))
          (_%$%g199676199741%_ _%stx199675%_))))
    (define gxc#xform-lambda%
      (lambda (_%self199612%_ _%stx199613%_)
        (let* ((_%$%g199615199629%_
                (lambda (_%$%g199616199626%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199616199626%_))))
               (_%$%g199614199671%_
                (lambda (_%$%g199616199632%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199616199632%_))
                      (let ((_%$%e199619199634%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199616199632%_))))
                        (let ((_%$%hd199620199637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199619199634%_)))
                              (_%$%tl199621199639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199619199634%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199621199639%_))
                              (let ((_%$%e199622199642%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199621199639%_))))
                                (let ((_%$%hd199623199645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199622199642%_)))
                                      (_%$%tl199624199647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199622199642%_))))
                                  (let ((__tmp201270
                                         (lambda ()
                                           (let ((_%body199669%_
                                                  (map (lambda (_%$%g199664199666%_)
                                                         (gxc#compile-e__1
                                                          _%self199612%_
                                                          _%$%g199664199666%_))
                                                       _%$%tl199624199647%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd199623199645%_
                                                          _%body199669%_))
                                              _%stx199613%_))))
                                        (__tmp201269
                                         (gxc#xform-let-locals
                                          _%$%hd199623199645%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp201270
                                     gxc#current-compile-local-env
                                     __tmp201269))))
                              (_%$%g199615199629%_ _%$%g199616199632%_))))
                      (_%$%g199615199629%_ _%$%g199616199632%_)))))
          (_%$%g199614199671%_ _%stx199613%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self199520%_ _%stx199521%_)
        (letrec ((_%clause-e199523%_
                  (lambda (_%clause199564%_)
                    (let* ((_%$%g199566199577%_
                            (lambda (_%$%g199567199574%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g199567199574%_))))
                           (_%$%g199565199609%_
                            (lambda (_%$%g199567199580%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g199567199580%_))
                                  (let ((_%$%e199570199582%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g199567199580%_))))
                                    (let ((_%$%hd199571199585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e199570199582%_)))
                                          (_%$%tl199572199587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e199570199582%_))))
                                      (let ((__tmp201272
                                             (lambda ()
                                               (let ((_%body199607%_
                                                      (map (lambda (_%$%g199602199604%_)
                                                             (gxc#compile-e__1
                                                              _%self199520%_
                                                              _%$%g199602199604%_))
                                                           _%$%tl199572199587%_)))
                                                 (cons _%$%hd199571199585%_
                                                       _%body199607%_))))
                                            (__tmp201271
                                             (gxc#xform-let-locals
                                              _%$%hd199571199585%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp201272
                                         gxc#current-compile-local-env
                                         __tmp201271))))
                                  (_%$%g199566199577%_ _%$%g199567199580%_)))))
                      (_%$%g199565199609%_ _%clause199564%_)))))
          (let* ((_%$%g199525199535%_
                  (lambda (_%$%g199526199532%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g199526199532%_))))
                 (_%$%g199524199561%_
                  (lambda (_%$%g199526199538%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g199526199538%_))
                        (let ((_%$%e199528199540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g199526199538%_))))
                          (let ((_%$%hd199529199543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199528199540%_)))
                                (_%$%tl199530199545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199528199540%_))))
                            (let ((_%clauses199559%_
                                   (map _%clause-e199523%_
                                        _%$%tl199530199545%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses199559%_)
                               _%stx199521%_))))
                        (_%$%g199525199535%_ _%$%g199526199538%_)))))
            (_%$%g199524199561%_ _%stx199521%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self199280%_ _%stx199281%_)
        (let* ((_%$%g199283199316%_
                (lambda (_%$%g199284199313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199284199313%_))))
               (_%$%g199282199517%_
                (lambda (_%$%g199284199319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199284199319%_))
                      (let ((_%$%e199289199321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199284199319%_))))
                        (let ((_%$%hd199290199324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199289199321%_)))
                              (_%$%tl199291199326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199289199321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199291199326%_))
                              (let ((_%$%e199292199329%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199291199326%_))))
                                (let ((_%$%hd199293199332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199292199329%_)))
                                      (_%$%tl199294199334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199292199329%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd199293199332%_))
                                      (let ((_g201273_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd199293199332%_
                                                '0))))
                                        (begin
                                          (let ((_g201274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201273_)
                                                       (##values-length
                                                        _g201273_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201274_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201274_)))
                                          (let ((_%$%target199295199337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g201273_ 0)))
                                                (_%$%tl199297199339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g201273_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199297199339%_))
                                                (letrec ((_%$%loop199298199342%_
                                                          (lambda (_%$%hd199296199345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr199302199347%_
                           _%$%hd199303199348%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199296199345%_))
                        (let ((_%$%e199299199350%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd199296199345%_))))
                          (let ((_%$%lp-hd199300199353%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199299199350%_)))
                                (_%$%lp-tl199301199355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199299199350%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd199300199353%_))
                                (let ((_%$%e199306199358%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd199300199353%_))))
                                  (let ((_%$%hd199307199361%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199306199358%_)))
                                        (_%$%tl199308199363%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199306199358%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl199308199363%_))
                                        (let ((_%$%e199309199366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl199308199363%_))))
                                          (let ((_%$%hd199310199369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e199309199366%_)))
                                                (_%$%tl199311199371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e199309199366%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199311199371%_))
                                                (_%$%loop199298199342%_
                                                 _%$%lp-tl199301199355%_
                                                 (cons _%$%hd199310199369%_
                                                       _%$%expr199302199347%_)
                                                 (cons _%$%hd199307199361%_
                                                       _%$%hd199303199348%_))
                                                (_%$%g199283199316%_
                                                 _%$%g199284199319%_))))
                                        (_%$%g199283199316%_
                                         _%$%g199284199319%_))))
                                (_%$%g199283199316%_ _%$%g199284199319%_))))
                        (let ((_%$%expr199304199374%_
                               (reverse _%$%expr199302199347%_))
                              (_%$%hd199305199375%_
                               (reverse _%$%hd199303199348%_)))
                          (let* ((_%$%g199399199415%_
                                  (lambda (_%$%g199400199412%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g199400199412%_))))
                                 (_%$%g199398199503%_
                                  (lambda (_%$%g199400199418%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g199400199418%_))
                                        (let ((_g201275_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g199400199418%_
                                                  '0))))
                                          (begin
                                            (let ((_g201276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201275_)
                                                         (##values-length
                                                          _g201275_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201276_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201276_)))
                                            (let ((_%$%target199402199420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201275_
                                                      0)))
                                                  (_%$%tl199404199422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201275_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl199404199422%_))
                                                  (letrec ((_%$%loop199405199425%_
                                                            (lambda (_%$%hd199403199428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr199409199430%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd199403199428%_))
                          (let ((_%$%e199406199432%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd199403199428%_))))
                            (let ((_%$%lp-hd199407199435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e199406199432%_)))
                                  (_%$%lp-tl199408199437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e199406199432%_))))
                              (_%$%loop199405199425%_
                               _%$%lp-tl199408199437%_
                               (cons _%$%lp-hd199407199435%_
                                     _%$%expr199409199430%_))))
                          (let ((_%$%expr199410199440%_
                                 (reverse _%$%expr199409199430%_)))
                            (let ((__tmp201279
                                   (lambda ()
                                     (let* ((_%$%g199456199463%_
                                             (lambda (_%$%g199457199460%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g199457199460%_))))
                                            (_%$%g199455199489%_
                                             (lambda (_%$%g199457199466%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd199290199324%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr199410199440%_
                         _%$%hd199305199375%_))
                      (let ((__tmp201280
                             (lambda (_%$%g199478199482%_
                                      _%$%g199479199484%_
                                      _%$%g199480199486%_)
                               (cons (cons _%$%g199479199484%_
                                           (cons _%$%g199478199482%_ '()))
                                     _%$%g199480199486%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp201280
                         '()
                         _%$%expr199410199440%_
                         _%$%hd199305199375%_)))
                    _%$%g199457199466%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx199281%_))))
                                       (_%$%g199455199489%_
                                        (map (lambda (_%$%g199491199493%_)
                                               (gxc#compile-e__1
                                                _%self199280%_
                                                _%$%g199491199493%_))
                                             _%$%tl199294199334%_)))))
                                  (__tmp201277
                                   (gxc#xform-let-locals
                                    (let ((__tmp201278
                                           (lambda (_%$%g199495199498%_
                                                    _%$%g199496199500%_)
                                             (cons _%$%g199495199498%_
                                                   _%$%g199496199500%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp201278
                                       '()
                                       _%$%hd199305199375%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp201279
                               gxc#current-compile-local-env
                               __tmp201277)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop199405199425%_
                                                     _%$%target199402199420%_
                                                     '()))
                                                  (_%$%g199399199415%_
                                                   _%$%g199400199418%_)))))
                                        (_%$%g199399199415%_
                                         _%$%g199400199418%_)))))
                            (_%$%g199398199503%_
                             (map (lambda (_%$%g199505199507%_)
                                    (gxc#compile-e__1
                                     _%self199280%_
                                     _%$%g199505199507%_))
                                  (let ((__tmp201281
                                         (lambda (_%$%g199509199512%_
                                                  _%$%g199510199514%_)
                                           (cons _%$%g199509199512%_
                                                 _%$%g199510199514%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp201281
                                     '()
                                     _%$%expr199304199374%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199298199342%_
                                                   _%$%target199295199337%_
                                                   '()
                                                   '()))
                                                (_%$%g199283199316%_
                                                 _%$%g199284199319%_)))))
                                      (_%$%g199283199316%_
                                       _%$%g199284199319%_))))
                              (_%$%g199283199316%_ _%$%g199284199319%_))))
                      (_%$%g199283199316%_ _%$%g199284199319%_)))))
          (_%$%g199282199517%_ _%stx199281%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self199040%_ _%stx199041%_)
        (let* ((_%$%g199043199076%_
                (lambda (_%$%g199044199073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199044199073%_))))
               (_%$%g199042199277%_
                (lambda (_%$%g199044199079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199044199079%_))
                      (let ((_%$%e199049199081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199044199079%_))))
                        (let ((_%$%hd199050199084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199049199081%_)))
                              (_%$%tl199051199086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199049199081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199051199086%_))
                              (let ((_%$%e199052199089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199051199086%_))))
                                (let ((_%$%hd199053199092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199052199089%_)))
                                      (_%$%tl199054199094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199052199089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd199053199092%_))
                                      (let ((_g201282_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd199053199092%_
                                                '0))))
                                        (begin
                                          (let ((_g201283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201282_)
                                                       (##values-length
                                                        _g201282_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201283_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201283_)))
                                          (let ((_%$%target199055199097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g201282_ 0)))
                                                (_%$%tl199057199099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g201282_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199057199099%_))
                                                (letrec ((_%$%loop199058199102%_
                                                          (lambda (_%$%hd199056199105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr199062199107%_
                           _%$%hd199063199108%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199056199105%_))
                        (let ((_%$%e199059199110%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd199056199105%_))))
                          (let ((_%$%lp-hd199060199113%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199059199110%_)))
                                (_%$%lp-tl199061199115%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199059199110%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd199060199113%_))
                                (let ((_%$%e199066199118%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd199060199113%_))))
                                  (let ((_%$%hd199067199121%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199066199118%_)))
                                        (_%$%tl199068199123%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199066199118%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl199068199123%_))
                                        (let ((_%$%e199069199126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl199068199123%_))))
                                          (let ((_%$%hd199070199129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e199069199126%_)))
                                                (_%$%tl199071199131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e199069199126%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199071199131%_))
                                                (_%$%loop199058199102%_
                                                 _%$%lp-tl199061199115%_
                                                 (cons _%$%hd199070199129%_
                                                       _%$%expr199062199107%_)
                                                 (cons _%$%hd199067199121%_
                                                       _%$%hd199063199108%_))
                                                (_%$%g199043199076%_
                                                 _%$%g199044199079%_))))
                                        (_%$%g199043199076%_
                                         _%$%g199044199079%_))))
                                (_%$%g199043199076%_ _%$%g199044199079%_))))
                        (let ((_%$%expr199064199134%_
                               (reverse _%$%expr199062199107%_))
                              (_%$%hd199065199135%_
                               (reverse _%$%hd199063199108%_)))
                          (let ((__tmp201286
                                 (lambda ()
                                   (let* ((_%$%g199160199176%_
                                           (lambda (_%$%g199161199173%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g199161199173%_))))
                                          (_%$%g199159199256%_
                                           (lambda (_%$%g199161199179%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g199161199179%_))
                                                 (let ((_g201287_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g199161199179%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g201288_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g201287_)
                          (##values-length _g201287_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g201288_ 2)))
                   (error "Context expects 2 values" _g201288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target199163199181%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g201287_
                                                               0)))
                                                           (_%$%tl199165199183%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g201287_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl199165199183%_))
                                                           (letrec ((_%$%loop199166199186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd199164199189%_
                                      _%$%expr199170199191%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd199164199189%_))
                                   (let ((_%$%e199167199193%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd199164199189%_))))
                                     (let ((_%$%lp-hd199168199196%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e199167199193%_)))
                                           (_%$%lp-tl199169199198%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e199167199193%_))))
                                       (_%$%loop199166199186%_
                                        _%$%lp-tl199169199198%_
                                        (cons _%$%lp-hd199168199196%_
                                              _%$%expr199170199191%_))))
                                   (let* ((_%$%expr199171199201%_
                                           (reverse _%$%expr199170199191%_))
                                          (_%$%g199217199224%_
                                           (lambda (_%$%g199218199221%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g199218199221%_))))
                                          (_%$%g199216199249%_
                                           (lambda (_%$%g199218199227%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd199050199084%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr199171199201%_
                                                               _%$%hd199065199135%_))
                                                            (let ((__tmp201289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g199238199242%_
                                    _%$%g199239199244%_
                                    _%$%g199240199246%_)
                             (cons (cons _%$%g199239199244%_
                                         (cons _%$%g199238199242%_ '()))
                                   _%$%g199240199246%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp201289
                       '()
                       _%$%expr199171199201%_
                       _%$%hd199065199135%_)))
                  _%$%g199218199227%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx199041%_))))
                                     (_%$%g199216199249%_
                                      (map (lambda (_%$%g199251199253%_)
                                             (gxc#compile-e__1
                                              _%self199040%_
                                              _%$%g199251199253%_))
                                           _%$%tl199054199094%_)))))))
                     (_%$%loop199166199186%_ _%$%target199163199181%_ '()))
                   (_%$%g199160199176%_ _%$%g199161199179%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g199160199176%_
                                                  _%$%g199161199179%_)))))
                                     (_%$%g199159199256%_
                                      (map (lambda (_%$%g199258199260%_)
                                             (gxc#compile-e__1
                                              _%self199040%_
                                              _%$%g199258199260%_))
                                           (let ((__tmp201290
                                                  (lambda (_%$%g199262199265%_
                                                           _%$%g199263199267%_)
                                                    (cons _%$%g199262199265%_
                                                          _%$%g199263199267%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp201290
                                              '()
                                              _%$%expr199064199134%_)))))))
                                (__tmp201284
                                 (gxc#xform-let-locals
                                  (let ((__tmp201285
                                         (lambda (_%$%g199269199272%_
                                                  _%$%g199270199274%_)
                                           (cons _%$%g199269199272%_
                                                 _%$%g199270199274%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp201285
                                     '()
                                     _%$%hd199065199135%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp201286
                             gxc#current-compile-local-env
                             __tmp201284)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199058199102%_
                                                   _%$%target199055199097%_
                                                   '()
                                                   '()))
                                                (_%$%g199043199076%_
                                                 _%$%g199044199079%_)))))
                                      (_%$%g199043199076%_
                                       _%$%g199044199079%_))))
                              (_%$%g199043199076%_ _%$%g199044199079%_))))
                      (_%$%g199043199076%_ _%$%g199044199079%_)))))
          (_%$%g199042199277%_ _%stx199041%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings198907%_)
        (letrec ((_%flatten198909%_
                  (lambda (_%maybe-lst198967%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst198967%_))
                        (cons _%maybe-lst198967%_ '())
                        (let _%loop198969%_ ((_%rest198971%_
                                              _%maybe-lst198967%_)
                                             (_%result198972%_ '()))
                          (let* ((_%__stx201176201177%_ _%rest198971%_)
                                 (_%$%g198976198988%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx201176201177%_)))))
                            (let ((_%__kont201178201179%_
                                   (lambda (_%$%g198978199026%_
                                            _%$%g198979199027%_)
                                     (_%loop198969%_
                                      _%$%g198978199026%_
                                      (let ((__tmp201291
                                             (_%flatten198909%_
                                              _%$%g198979199027%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result198972%_
                                         __tmp201291)))))
                                  (_%__kont201180201181%_
                                   (lambda (_%$%g198983199000%_)
                                     (cons _%$%g198983199000%_
                                           _%result198972%_)))
                                  (_%__kont201182201183%_
                                   (lambda () _%result198972%_)))
                              (let ((_%$%g198974199013%_
                                     (lambda ()
                                       (let ((_%$%g198983199000%_
                                              _%__stx201176201177%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g198983199000%_))
                                             (_%__kont201180201181%_
                                              _%$%g198983199000%_)
                                             (_%__kont201182201183%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx201176201177%_))
                                    (let ((_%$%e198980199018%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx201176201177%_))))
                                      (let ((_%$%tl198982199023%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198980199018%_)))
                                            (_%$%hd198981199021%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198980199018%_))))
                                        (_%__kont201178201179%_
                                         _%$%tl198982199023%_
                                         _%$%hd198981199021%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g198974199013%_)))))))))))
          (let _%loop198911%_ ((_%rest198913%_
                                (_%flatten198909%_ _%bindings198907%_))
                               (_%locals198914%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest198915198926%_ _%rest198913%_)
                   (_%$%E198919198930%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest198915198926%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K198922198955%_
                     (lambda (_%rest198952%_ _%id198953%_)
                       (_%loop198911%_
                        _%rest198952%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id198953%_))
                              _%locals198914%_))))
                    (_%$%K198921198944%_
                     (lambda (_%id198942%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id198942%_))
                             _%locals198914%_)))
                    (_%$%K198920198935%_ (lambda () _%locals198914%_)))
                (let ((_%$%try-match198917198949%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest198915198926%_))
                             (let ((_%id198947%_ _%$%rest198915198926%_))
                               (_%$%K198921198944%_ _%id198947%_))
                             (_%$%K198920198935%_)))))
                  (if (pair? _%$%rest198915198926%_)
                      (let ((_%$%tl198924198960%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest198915198926%_)))
                            (_%$%hd198923198958%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest198915198926%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd198923198958%_))
                            (let ((_%id198963%_ _%$%hd198923198958%_)
                                  (_%rest198965%_ _%$%tl198924198960%_))
                              (_%$%K198922198955%_
                               _%rest198965%_
                               _%id198963%_))
                            (_%$%K198920198935%_)))
                      (_%$%try-match198917198949%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self198859%_ _%stx198860%_)
        (let* ((_%$%g198862198873%_
                (lambda (_%$%g198863198870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198863198870%_))))
               (_%$%g198861198904%_
                (lambda (_%$%g198863198876%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198863198876%_))
                      (let ((_%$%e198866198878%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198863198876%_))))
                        (let ((_%$%hd198867198881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198866198878%_)))
                              (_%$%tl198868198883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198866198878%_))))
                          (let ((_%rands198902%_
                                 (map (lambda (_%$%g198897198899%_)
                                        (gxc#compile-e__1
                                         _%self198859%_
                                         _%$%g198897198899%_))
                                      _%$%tl198868198883%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd198867198881%_ _%rands198902%_)
                             _%stx198860%_))))
                      (_%$%g198862198873%_ _%$%g198863198876%_)))))
          (_%$%g198861198904%_ _%stx198860%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self198789%_ _%stx198790%_)
        (let* ((_%$%g198792198809%_
                (lambda (_%$%g198793198806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198793198806%_))))
               (_%$%g198791198856%_
                (lambda (_%$%g198793198812%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198793198812%_))
                      (let ((_%$%e198796198814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198793198812%_))))
                        (let ((_%$%hd198797198817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198796198814%_)))
                              (_%$%tl198798198819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198796198814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198798198819%_))
                              (let ((_%$%e198799198822%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198798198819%_))))
                                (let ((_%$%hd198800198825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198799198822%_)))
                                      (_%$%tl198801198827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198799198822%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198801198827%_))
                                      (let ((_%$%e198802198830%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl198801198827%_))))
                                        (let ((_%$%hd198803198833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198802198830%_)))
                                              (_%$%tl198804198835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198802198830%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl198804198835%_))
                                              (let ((_%expr198854%_
                                                     (gxc#compile-e__1
                                                      _%self198789%_
                                                      _%$%hd198803198833%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd198800198825%_
                                                             (cons _%expr198854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx198790%_))
                                              (_%$%g198792198809%_
                                               _%$%g198793198812%_))))
                                      (_%$%g198792198809%_
                                       _%$%g198793198812%_))))
                              (_%$%g198792198809%_ _%$%g198793198812%_))))
                      (_%$%g198792198809%_ _%$%g198793198812%_)))))
          (_%$%g198791198856%_ _%stx198790%_))))))
