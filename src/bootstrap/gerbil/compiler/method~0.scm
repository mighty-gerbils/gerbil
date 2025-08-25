(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1756142920)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx144953%_)
        (let* ((_%self144955%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e144957%_
                (let ((__tmp145153 (gxc#stx-car-e _%stx144953%_)))
                  (declare (not safe))
                  (method-ref _%self144955%_ __tmp145153))))
          (if _%$e144957%_
              ((lambda (_%method144960%_)
                 (declare (not safe))
                 (_%method144960%_ _%self144955%_ _%stx144953%_))
               _%$e144957%_)
              (let ((__tmp145155 (gxc#stx-car-e _%stx144953%_))
                    (__tmp145154
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx144953%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self144955%_
                       __tmp145155
                       __tmp145154))))))
    (define gxc#compile-e__1
      (lambda (_%self144964%_ _%stx144965%_)
        (let ((_%$e144967%_
               (let ((__tmp145156 (gxc#stx-car-e _%stx144965%_)))
                 (declare (not safe))
                 (method-ref _%self144964%_ __tmp145156))))
          (if _%$e144967%_
              ((lambda (_%method144970%_)
                 (declare (not safe))
                 (_%method144970%_ _%self144964%_ _%stx144965%_))
               _%$e144967%_)
              (let ((__tmp145158 (gxc#stx-car-e _%stx144965%_))
                    (__tmp145157
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx144965%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self144964%_
                       __tmp145158
                       __tmp145157))))))
    (define gxc#compile-e
      (lambda _g145159_
        (let ((_g145160_ (let () (declare (not safe)) (##length _g145159_))))
          (cond ((let () (declare (not safe)) (##fx= _g145160_ 1))
                 (apply gxc#compile-e__0 _g145159_))
                ((let () (declare (not safe)) (##fx= _g145160_ 2))
                 (apply gxc#compile-e__1 _g145159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g145159_))))))
    (define gxc#stx-car-e
      (lambda (_%stx144951%_)
        (let ((__tmp145161
               (car (let () (declare (not safe)) (gx#stx-e _%stx144951%_)))))
          (declare (not safe))
          (gx#stx-e __tmp145161))))
    (define gxc#void-method (lambda (_%self144948%_ _%stx144949%_) '#!void))
    (define gxc#false-method (lambda (_%self144945%_ _%stx144946%_) '#f))
    (define gxc#true-method (lambda (_%self144942%_ _%stx144943%_) '#t))
    (define gxc#identity-method
      (lambda (_%self144939%_ _%stx144940%_) _%stx144940%_))
    (define gxc#::void-expression::t
      (let ((__tmp145162 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp145162
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args144936%_
        (apply make-instance gxc#::void-expression::t _%$args144936%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp145163
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
        (__make-promise __tmp145163)))
    (define gxc#::void-special-form::t
      (let ((__tmp145164 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp145164
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args144932%_
        (apply make-instance gxc#::void-special-form::t _%$args144932%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp145165
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
        (__make-promise __tmp145165)))
    (define gxc#::void::t
      (let ((__tmp145166
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp145166 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args144928%_
        (apply make-instance gxc#::void::t _%$args144928%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp145167
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp145167)))
    (define gxc#::false-expression::t
      (let ((__tmp145168 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp145168
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args144924%_
        (apply make-instance gxc#::false-expression::t _%$args144924%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp145169
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
        (__make-promise __tmp145169)))
    (define gxc#::false-special-form::t
      (let ((__tmp145170 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp145170
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args144920%_
        (apply make-instance gxc#::false-special-form::t _%$args144920%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp145171
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
        (__make-promise __tmp145171)))
    (define gxc#::false::t
      (let ((__tmp145172
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp145172 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args144916%_
        (apply make-instance gxc#::false::t _%$args144916%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp145173
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp145173)))
    (define gxc#::identity-expression::t
      (let ((__tmp145174 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp145174
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args144912%_
        (apply make-instance gxc#::identity-expression::t _%$args144912%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp145175
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
        (__make-promise __tmp145175)))
    (define gxc#::identity-special-form::t
      (let ((__tmp145176 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp145176
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args144908%_
        (apply make-instance gxc#::identity-special-form::t _%$args144908%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp145177
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
        (__make-promise __tmp145177)))
    (define gxc#::identity::t
      (let ((__tmp145178
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp145178
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args144904%_
        (apply make-instance gxc#::identity::t _%$args144904%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp145179
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp145179)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp145180 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp145180
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args144900%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args144900%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp145181
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
        (__make-promise __tmp145181)))
    (define gxc#::basic-xform::t
      (let ((__tmp145182
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp145182
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args144896%_
        (apply make-instance gxc#::basic-xform::t _%$args144896%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp145183
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
        (__make-promise __tmp145183)))
    (define gxc#apply-begin%
      (lambda (_%self144852%_ _%stx144853%_)
        (let* ((_%g144855144865%_
                (lambda (_%g144856144862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144856144862%_))))
               (_%g144854144892%_
                (lambda (_%g144856144868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144856144868%_))
                      (let ((_%e144858144870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144856144868%_))))
                        (let ((_%hd144859144873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144858144870%_)))
                              (_%tl144860144875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144858144870%_))))
                          ((lambda (_%L144878%_)
                             (for-each
                              (lambda (_%g144887144889%_)
                                (gxc#compile-e__1
                                 _%self144852%_
                                 _%g144887144889%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L144878%_))))
                           _%tl144860144875%_)))
                      (_%g144855144865%_ _%g144856144868%_)))))
          (_%g144854144892%_ _%stx144853%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self144813%_ _%stx144814%_)
        (let* ((_%g144816144826%_
                (lambda (_%g144817144823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144817144823%_))))
               (_%g144815144849%_
                (lambda (_%g144817144829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144817144829%_))
                      (let ((_%e144819144831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144817144829%_))))
                        (let ((_%hd144820144834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144819144831%_)))
                              (_%tl144821144836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144819144831%_))))
                          ((lambda (_%L144839%_)
                             (gxc#compile-e__1
                              _%self144813%_
                              (last _%L144839%_)))
                           _%tl144821144836%_)))
                      (_%g144816144826%_ _%g144817144829%_)))))
          (_%g144815144849%_ _%stx144814%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self144809%_ _%stx144810%_)
        (let ((__tmp145186
               (lambda () (gxc#apply-begin% _%self144809%_ _%stx144810%_)))
              (__tmp145184
               (let ((__tmp145185
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp145185 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp145186
           gx#current-expander-phi
           __tmp145184))))
    (define gxc#apply-module%
      (lambda (_%self144748%_ _%stx144749%_)
        (let* ((_%g144751144765%_
                (lambda (_%g144752144762%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144752144762%_))))
               (_%g144750144806%_
                (lambda (_%g144752144768%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144752144768%_))
                      (let ((_%e144755144770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144752144768%_))))
                        (let ((_%hd144756144773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144755144770%_)))
                              (_%tl144757144775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144755144770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144757144775%_))
                              (let ((_%e144758144778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144757144775%_))))
                                (let ((_%hd144759144781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144758144778%_)))
                                      (_%tl144760144783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144758144778%_))))
                                  ((lambda (_%L144786%_ _%L144787%_)
                                     (let* ((_%ctx144800%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L144787%_)))
                                            (_%ctx-stx144802%_
                                             (##structure-ref
                                              _%ctx144800%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp145187
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self144748%_
                                                _%ctx-stx144802%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp145187
                                        gx#current-expander-context
                                        _%ctx144800%_)))
                                   _%tl144760144783%_
                                   _%hd144759144781%_)))
                              (_%g144751144765%_ _%g144752144768%_))))
                      (_%g144751144765%_ _%g144752144768%_)))))
          (_%g144750144806%_ _%stx144749%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self144680%_ _%stx144681%_)
        (let* ((_%g144683144700%_
                (lambda (_%g144684144697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144684144697%_))))
               (_%g144682144745%_
                (lambda (_%g144684144703%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144684144703%_))
                      (let ((_%e144687144705%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144684144703%_))))
                        (let ((_%hd144688144708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144687144705%_)))
                              (_%tl144689144710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144687144705%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144689144710%_))
                              (let ((_%e144690144713%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144689144710%_))))
                                (let ((_%hd144691144716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144690144713%_)))
                                      (_%tl144692144718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144690144713%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144692144718%_))
                                      (let ((_%e144693144721%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144692144718%_))))
                                        (let ((_%hd144694144724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144693144721%_)))
                                              (_%tl144695144726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144693144721%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144695144726%_))
                                              ((lambda (_%L144729%_
                                                        _%L144730%_)
                                                 (gxc#compile-e__1
                                                  _%self144680%_
                                                  _%L144729%_))
                                               _%hd144694144724%_
                                               _%hd144691144716%_)
                                              (_%g144683144700%_
                                               _%g144684144703%_))))
                                      (_%g144683144700%_ _%g144684144703%_))))
                              (_%g144683144700%_ _%g144684144703%_))))
                      (_%g144683144700%_ _%g144684144703%_)))))
          (_%g144682144745%_ _%stx144681%_))))
    (define gxc#apply-define-values%
      (lambda (_%self144612%_ _%stx144613%_)
        (let* ((_%g144615144632%_
                (lambda (_%g144616144629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144616144629%_))))
               (_%g144614144677%_
                (lambda (_%g144616144635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144616144635%_))
                      (let ((_%e144619144637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144616144635%_))))
                        (let ((_%hd144620144640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144619144637%_)))
                              (_%tl144621144642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144619144637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144621144642%_))
                              (let ((_%e144622144645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144621144642%_))))
                                (let ((_%hd144623144648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144622144645%_)))
                                      (_%tl144624144650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144622144645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144624144650%_))
                                      (let ((_%e144625144653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144624144650%_))))
                                        (let ((_%hd144626144656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144625144653%_)))
                                              (_%tl144627144658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144625144653%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144627144658%_))
                                              ((lambda (_%L144661%_
                                                        _%L144662%_)
                                                 (gxc#compile-e__1
                                                  _%self144612%_
                                                  _%L144661%_))
                                               _%hd144626144656%_
                                               _%hd144623144648%_)
                                              (_%g144615144632%_
                                               _%g144616144635%_))))
                                      (_%g144615144632%_ _%g144616144635%_))))
                              (_%g144615144632%_ _%g144616144635%_))))
                      (_%g144615144632%_ _%g144616144635%_)))))
          (_%g144614144677%_ _%stx144613%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self144543%_ _%stx144544%_)
        (let* ((_%g144546144563%_
                (lambda (_%g144547144560%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144547144560%_))))
               (_%g144545144609%_
                (lambda (_%g144547144566%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144547144566%_))
                      (let ((_%e144550144568%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144547144566%_))))
                        (let ((_%hd144551144571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144550144568%_)))
                              (_%tl144552144573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144550144568%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144552144573%_))
                              (let ((_%e144553144576%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144552144573%_))))
                                (let ((_%hd144554144579%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144553144576%_)))
                                      (_%tl144555144581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144553144576%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144555144581%_))
                                      (let ((_%e144556144584%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144555144581%_))))
                                        (let ((_%hd144557144587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144556144584%_)))
                                              (_%tl144558144589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144556144584%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144558144589%_))
                                              ((lambda (_%L144592%_
                                                        _%L144593%_)
                                                 (let ((__tmp145190
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self144543%_
                                                           _%L144592%_)))
                                                       (__tmp145188
                                                        (let ((__tmp145189
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp145189 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp145190
                                                    gx#current-expander-phi
                                                    __tmp145188)))
                                               _%hd144557144587%_
                                               _%hd144554144579%_)
                                              (_%g144546144563%_
                                               _%g144547144566%_))))
                                      (_%g144546144563%_ _%g144547144566%_))))
                              (_%g144546144563%_ _%g144547144566%_))))
                      (_%g144546144563%_ _%g144547144566%_)))))
          (_%g144545144609%_ _%stx144544%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self144475%_ _%stx144476%_)
        (let* ((_%g144478144495%_
                (lambda (_%g144479144492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144479144492%_))))
               (_%g144477144540%_
                (lambda (_%g144479144498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144479144498%_))
                      (let ((_%e144482144500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144479144498%_))))
                        (let ((_%hd144483144503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144482144500%_)))
                              (_%tl144484144505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144482144500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144484144505%_))
                              (let ((_%e144485144508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144484144505%_))))
                                (let ((_%hd144486144511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144485144508%_)))
                                      (_%tl144487144513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144485144508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144487144513%_))
                                      (let ((_%e144488144516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144487144513%_))))
                                        (let ((_%hd144489144519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144488144516%_)))
                                              (_%tl144490144521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144488144516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144490144521%_))
                                              ((lambda (_%L144524%_
                                                        _%L144525%_)
                                                 (gxc#compile-e__1
                                                  _%self144475%_
                                                  _%L144524%_))
                                               _%hd144489144519%_
                                               _%hd144486144511%_)
                                              (_%g144478144495%_
                                               _%g144479144498%_))))
                                      (_%g144478144495%_ _%g144479144498%_))))
                              (_%g144478144495%_ _%g144479144498%_))))
                      (_%g144478144495%_ _%g144479144498%_)))))
          (_%g144477144540%_ _%stx144476%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self144357%_ _%stx144358%_)
        (let* ((_%g144360144388%_
                (lambda (_%g144361144385%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144361144385%_))))
               (_%g144359144472%_
                (lambda (_%g144361144391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144361144391%_))
                      (let ((_%e144364144393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144361144391%_))))
                        (let ((_%hd144365144396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144364144393%_)))
                              (_%tl144366144398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144364144393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl144366144398%_))
                              (let ((_g145191_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl144366144398%_
                                        '0))))
                                (begin
                                  (let ((_g145192_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g145191_)
                                               (##values-length _g145191_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g145192_ 2)))
                                        (error "Context expects 2 values"
                                               _g145192_)))
                                  (let ((_%target144367144401%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g145191_ 0)))
                                        (_%tl144369144403%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g145191_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144369144403%_))
                                        (letrec ((_%loop144370144406%_
                                                  (lambda (_%hd144368144409%_
                                                           _%body144374144411%_
                                                           _%hd144375144413%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd144368144409%_))
                                                        (let ((_%e144371144416%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd144368144409%_))))
                  (let ((_%lp-hd144372144419%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144371144416%_)))
                        (_%lp-tl144373144421%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144371144416%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd144372144419%_))
                        (let ((_%e144378144424%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd144372144419%_))))
                          (let ((_%hd144379144427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144378144424%_)))
                                (_%tl144380144429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144378144424%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144380144429%_))
                                (let ((_%e144381144432%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144380144429%_))))
                                  (let ((_%hd144382144435%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144381144432%_)))
                                        (_%tl144383144437%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144381144432%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144383144437%_))
                                        (_%loop144370144406%_
                                         _%lp-tl144373144421%_
                                         (cons _%hd144382144435%_
                                               _%body144374144411%_)
                                         (cons _%hd144379144427%_
                                               _%hd144375144413%_))
                                        (_%g144360144388%_
                                         _%g144361144391%_))))
                                (_%g144360144388%_ _%g144361144391%_))))
                        (_%g144360144388%_ _%g144361144391%_))))
                (let ((_%body144376144440%_ (reverse _%body144374144411%_))
                      (_%hd144377144442%_ (reverse _%hd144375144413%_)))
                  ((lambda (_%L144445%_ _%L144446%_)
                     (for-each
                      (lambda (_%g144460144462%_)
                        (gxc#compile-e__1 _%self144357%_ _%g144460144462%_))
                      (let ((__tmp145193
                             (lambda (_%g144464144467%_ _%g144465144469%_)
                               (cons _%g144464144467%_ _%g144465144469%_))))
                        (declare (not safe))
                        (__foldr1 __tmp145193 '() _%L144445%_))))
                   _%body144376144440%_
                   _%hd144377144442%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop144370144406%_
                                           _%target144367144401%_
                                           '()
                                           '()))
                                        (_%g144360144388%_
                                         _%g144361144391%_)))))
                              (_%g144360144388%_ _%g144361144391%_))))
                      (_%g144360144388%_ _%g144361144391%_)))))
          (_%g144359144472%_ _%stx144358%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self144210%_ _%stx144211%_)
        (let* ((_%g144213144248%_
                (lambda (_%g144214144245%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144214144245%_))))
               (_%g144212144354%_
                (lambda (_%g144214144251%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144214144251%_))
                      (let ((_%e144218144253%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144214144251%_))))
                        (let ((_%hd144219144256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144218144253%_)))
                              (_%tl144220144258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144218144253%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144220144258%_))
                              (let ((_%e144221144261%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144220144258%_))))
                                (let ((_%hd144222144264%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144221144261%_)))
                                      (_%tl144223144266%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144221144261%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144222144264%_))
                                      (let ((_g145194_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144222144264%_
                                                '0))))
                                        (begin
                                          (let ((_g145195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g145194_)
                                                       (##values-length
                                                        _g145194_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g145195_ 2)))
                                                (error "Context expects 2 values"
                                                       _g145195_)))
                                          (let ((_%target144224144269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g145194_ 0)))
                                                (_%tl144226144271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g145194_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144226144271%_))
                                                (letrec ((_%loop144227144274%_
                                                          (lambda (_%hd144225144277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144231144279%_
                           _%hd144232144281%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144225144277%_))
                        (let ((_%e144228144284%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144225144277%_))))
                          (let ((_%lp-hd144229144287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144228144284%_)))
                                (_%lp-tl144230144289%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144228144284%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144229144287%_))
                                (let ((_%e144235144292%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144229144287%_))))
                                  (let ((_%hd144236144295%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144235144292%_)))
                                        (_%tl144237144297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144235144292%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144237144297%_))
                                        (let ((_%e144238144300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144237144297%_))))
                                          (let ((_%hd144239144303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144238144300%_)))
                                                (_%tl144240144305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144238144300%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144240144305%_))
                                                (_%loop144227144274%_
                                                 _%lp-tl144230144289%_
                                                 (cons _%hd144239144303%_
                                                       _%expr144231144279%_)
                                                 (cons _%hd144236144295%_
                                                       _%hd144232144281%_))
                                                (_%g144213144248%_
                                                 _%g144214144251%_))))
                                        (_%g144213144248%_
                                         _%g144214144251%_))))
                                (_%g144213144248%_ _%g144214144251%_))))
                        (let ((_%expr144233144308%_
                               (reverse _%expr144231144279%_))
                              (_%hd144234144310%_
                               (reverse _%hd144232144281%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144223144266%_))
                              (let ((_%e144241144313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144223144266%_))))
                                (let ((_%hd144242144316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144241144313%_)))
                                      (_%tl144243144318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144241144313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl144243144318%_))
                                      ((lambda (_%L144321%_
                                                _%L144322%_
                                                _%L144323%_)
                                         (for-each
                                          (lambda (_%g144342144344%_)
                                            (gxc#compile-e__1
                                             _%self144210%_
                                             _%g144342144344%_))
                                          (let ((__tmp145197
                                                 (lambda (_%g144346144349%_
                                                          _%g144347144351%_)
                                                   (cons _%g144346144349%_
                                                         _%g144347144351%_)))
                                                (__tmp145196
                                                 (cons _%L144321%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145197
                                             __tmp145196
                                             _%L144322%_))))
                                       _%hd144242144316%_
                                       _%expr144233144308%_
                                       _%hd144234144310%_)
                                      (_%g144213144248%_ _%g144214144251%_))))
                              (_%g144213144248%_ _%g144214144251%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144227144274%_
                                                   _%target144224144269%_
                                                   '()
                                                   '()))
                                                (_%g144213144248%_
                                                 _%g144214144251%_)))))
                                      (_%g144213144248%_ _%g144214144251%_))))
                              (_%g144213144248%_ _%g144214144251%_))))
                      (_%g144213144248%_ _%g144214144251%_)))))
          (_%g144212144354%_ _%stx144211%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self144155%_ _%stx144156%_)
        (let* ((_%g144158144172%_
                (lambda (_%g144159144169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144159144169%_))))
               (_%g144157144207%_
                (lambda (_%g144159144175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144159144175%_))
                      (let ((_%e144162144177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144159144175%_))))
                        (let ((_%hd144163144180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144162144177%_)))
                              (_%tl144164144182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144162144177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144164144182%_))
                              (let ((_%e144165144185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144164144182%_))))
                                (let ((_%hd144166144188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144165144185%_)))
                                      (_%tl144167144190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144165144185%_))))
                                  ((lambda (_%L144193%_ _%L144194%_)
                                     (gxc#compile-e__1
                                      _%self144155%_
                                      (last _%L144193%_)))
                                   _%tl144167144190%_
                                   _%hd144166144188%_)))
                              (_%g144158144172%_ _%g144159144175%_))))
                      (_%g144158144172%_ _%g144159144175%_)))))
          (_%g144157144207%_ _%stx144156%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self144087%_ _%stx144088%_)
        (let* ((_%g144090144107%_
                (lambda (_%g144091144104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144091144104%_))))
               (_%g144089144152%_
                (lambda (_%g144091144110%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144091144110%_))
                      (let ((_%e144094144112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144091144110%_))))
                        (let ((_%hd144095144115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144094144112%_)))
                              (_%tl144096144117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144094144112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144096144117%_))
                              (let ((_%e144097144120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144096144117%_))))
                                (let ((_%hd144098144123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144097144120%_)))
                                      (_%tl144099144125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144097144120%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144099144125%_))
                                      (let ((_%e144100144128%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144099144125%_))))
                                        (let ((_%hd144101144131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144100144128%_)))
                                              (_%tl144102144133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144100144128%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144102144133%_))
                                              ((lambda (_%L144136%_
                                                        _%L144137%_)
                                                 (gxc#compile-e__1
                                                  _%self144087%_
                                                  _%L144136%_))
                                               _%hd144101144131%_
                                               _%hd144098144123%_)
                                              (_%g144090144107%_
                                               _%g144091144110%_))))
                                      (_%g144090144107%_ _%g144091144110%_))))
                              (_%g144090144107%_ _%g144091144110%_))))
                      (_%g144090144107%_ _%g144091144110%_)))))
          (_%g144089144152%_ _%stx144088%_))))
    (define gxc#apply-operands
      (lambda (_%self144000%_ _%stx144001%_)
        (let* ((_%g144003144022%_
                (lambda (_%g144004144019%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144004144019%_))))
               (_%g144002144084%_
                (lambda (_%g144004144025%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144004144025%_))
                      (let ((_%e144006144027%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144004144025%_))))
                        (let ((_%hd144007144030%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144006144027%_)))
                              (_%tl144008144032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144006144027%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl144008144032%_))
                              (let ((_g145198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl144008144032%_
                                        '0))))
                                (begin
                                  (let ((_g145199_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g145198_)
                                               (##values-length _g145198_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g145199_ 2)))
                                        (error "Context expects 2 values"
                                               _g145199_)))
                                  (let ((_%target144009144035%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g145198_ 0)))
                                        (_%tl144011144037%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g145198_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144011144037%_))
                                        (letrec ((_%loop144012144040%_
                                                  (lambda (_%hd144010144043%_
                                                           _%rands144016144045%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd144010144043%_))
                                                        (let ((_%e144013144048%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd144010144043%_))))
                  (let ((_%lp-hd144014144051%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144013144048%_)))
                        (_%lp-tl144015144053%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144013144048%_))))
                    (_%loop144012144040%_
                     _%lp-tl144015144053%_
                     (cons _%lp-hd144014144051%_ _%rands144016144045%_))))
                (let ((_%rands144017144056%_ (reverse _%rands144016144045%_)))
                  ((lambda (_%L144059%_)
                     (for-each
                      (lambda (_%g144072144074%_)
                        (gxc#compile-e__1 _%self144000%_ _%g144072144074%_))
                      (let ((__tmp145200
                             (lambda (_%g144076144079%_ _%g144077144081%_)
                               (cons _%g144076144079%_ _%g144077144081%_))))
                        (declare (not safe))
                        (__foldr1 __tmp145200 '() _%L144059%_))))
                   _%rands144017144056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop144012144040%_
                                           _%target144009144035%_
                                           '()))
                                        (_%g144003144022%_
                                         _%g144004144025%_)))))
                              (_%g144003144022%_ _%g144004144025%_))))
                      (_%g144003144022%_ _%g144004144025%_)))))
          (_%g144002144084%_ _%stx144001%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx143997%_ _%src-stx143998%_)
        (let ((__tmp145201
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx143998%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx143997%_ __tmp145201))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx143993%_ _%src-stx143994%_ _%ctx143995%_)
        (gxc#compile-e__1
         _%ctx143995%_
         (gxc#xform-wrap-source _%stx143993%_ _%src-stx143994%_))))
    (define gxc#xform-begin%
      (lambda (_%self143948%_ _%stx143949%_)
        (let* ((_%g143951143961%_
                (lambda (_%g143952143958%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143952143958%_))))
               (_%g143950143990%_
                (lambda (_%g143952143964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143952143964%_))
                      (let ((_%e143954143966%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143952143964%_))))
                        (let ((_%hd143955143969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143954143966%_)))
                              (_%tl143956143971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143954143966%_))))
                          ((lambda (_%L143974%_)
                             (let ((_%forms143988%_
                                    (map (lambda (_%g143983143985%_)
                                           (gxc#compile-e__1
                                            _%self143948%_
                                            _%g143983143985%_))
                                         _%L143974%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms143988%_)
                                _%stx143949%_)))
                           _%tl143956143971%_)))
                      (_%g143951143961%_ _%g143952143964%_)))))
          (_%g143950143990%_ _%stx143949%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self143902%_ _%stx143903%_)
        (let* ((_%g143905143915%_
                (lambda (_%g143906143912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143906143912%_))))
               (_%g143904143945%_
                (lambda (_%g143906143918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143906143918%_))
                      (let ((_%e143908143920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143906143918%_))))
                        (let ((_%hd143909143923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143908143920%_)))
                              (_%tl143910143925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143908143920%_))))
                          ((lambda (_%L143928%_)
                             (let ((__tmp145204
                                    (lambda ()
                                      (let ((_%forms143943%_
                                             (map (lambda (_%g143938143940%_)
                                                    (gxc#compile-e__1
                                                     _%self143902%_
                                                     _%g143938143940%_))
                                                  _%L143928%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms143943%_)
                                         _%stx143903%_))))
                                   (__tmp145202
                                    (let ((__tmp145203
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp145203 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp145204
                                gx#current-expander-phi
                                __tmp145202)))
                           _%tl143910143925%_)))
                      (_%g143905143915%_ _%g143906143918%_)))))
          (_%g143904143945%_ _%stx143903%_))))
    (define gxc#xform-module%
      (lambda (_%self143839%_ _%stx143840%_)
        (let* ((_%g143842143856%_
                (lambda (_%g143843143853%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143843143853%_))))
               (_%g143841143899%_
                (lambda (_%g143843143859%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143843143859%_))
                      (let ((_%e143846143861%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143843143859%_))))
                        (let ((_%hd143847143864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143846143861%_)))
                              (_%tl143848143866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143846143861%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143848143866%_))
                              (let ((_%e143849143869%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143848143866%_))))
                                (let ((_%hd143850143872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143849143869%_)))
                                      (_%tl143851143874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143849143869%_))))
                                  ((lambda (_%L143877%_ _%L143878%_)
                                     (let* ((_%ctx143891%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L143878%_)))
                                            (_%code143893%_
                                             (##structure-ref
                                              _%ctx143891%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code143896%_
                                             (let ((__tmp145205
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self143839%_
                                                       _%code143893%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp145205
                                                gx#current-expander-context
                                                _%ctx143891%_))))
                                       (##structure-set!
                                        _%ctx143891%_
                                        _%code143896%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L143878%_
                                                    (cons _%code143896%_ '())))
                                        _%stx143840%_)))
                                   _%tl143851143874%_
                                   _%hd143850143872%_)))
                              (_%g143842143856%_ _%g143843143859%_))))
                      (_%g143842143856%_ _%g143843143859%_)))))
          (_%g143841143899%_ _%stx143840%_))))
    (define gxc#xform-define-values%
      (lambda (_%self143769%_ _%stx143770%_)
        (let* ((_%g143772143789%_
                (lambda (_%g143773143786%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143773143786%_))))
               (_%g143771143836%_
                (lambda (_%g143773143792%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143773143792%_))
                      (let ((_%e143776143794%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143773143792%_))))
                        (let ((_%hd143777143797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143776143794%_)))
                              (_%tl143778143799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143776143794%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143778143799%_))
                              (let ((_%e143779143802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143778143799%_))))
                                (let ((_%hd143780143805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143779143802%_)))
                                      (_%tl143781143807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143779143802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143781143807%_))
                                      (let ((_%e143782143810%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143781143807%_))))
                                        (let ((_%hd143783143813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143782143810%_)))
                                              (_%tl143784143815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143782143810%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143784143815%_))
                                              ((lambda (_%L143818%_
                                                        _%L143819%_)
                                                 (let ((_%expr143834%_
                                                        (gxc#compile-e__1
                                                         _%self143769%_
                                                         _%L143818%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L143819%_
                                                                (cons _%expr143834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx143770%_)))
                                               _%hd143783143813%_
                                               _%hd143780143805%_)
                                              (_%g143772143789%_
                                               _%g143773143792%_))))
                                      (_%g143772143789%_ _%g143773143792%_))))
                              (_%g143772143789%_ _%g143773143792%_))))
                      (_%g143772143789%_ _%g143773143792%_)))))
          (_%g143771143836%_ _%stx143770%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self143698%_ _%stx143699%_)
        (let* ((_%g143701143718%_
                (lambda (_%g143702143715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143702143715%_))))
               (_%g143700143766%_
                (lambda (_%g143702143721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143702143721%_))
                      (let ((_%e143705143723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143702143721%_))))
                        (let ((_%hd143706143726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143705143723%_)))
                              (_%tl143707143728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143705143723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143707143728%_))
                              (let ((_%e143708143731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143707143728%_))))
                                (let ((_%hd143709143734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143708143731%_)))
                                      (_%tl143710143736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143708143731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143710143736%_))
                                      (let ((_%e143711143739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143710143736%_))))
                                        (let ((_%hd143712143742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143711143739%_)))
                                              (_%tl143713143744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143711143739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143713143744%_))
                                              ((lambda (_%L143747%_
                                                        _%L143748%_)
                                                 (let ((__tmp145208
                                                        (lambda ()
                                                          (let ((_%expr143764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self143698%_ _%L143747%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L143748%_ (cons _%expr143764%_ '())))
                     _%stx143699%_))))
               (__tmp145206
                (let ((__tmp145207
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp145207 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp145208
                                                    gx#current-expander-phi
                                                    __tmp145206)))
                                               _%hd143712143742%_
                                               _%hd143709143734%_)
                                              (_%g143701143718%_
                                               _%g143702143721%_))))
                                      (_%g143701143718%_ _%g143702143721%_))))
                              (_%g143701143718%_ _%g143702143721%_))))
                      (_%g143701143718%_ _%g143702143721%_)))))
          (_%g143700143766%_ _%stx143699%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self143628%_ _%stx143629%_)
        (let* ((_%g143631143648%_
                (lambda (_%g143632143645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143632143645%_))))
               (_%g143630143695%_
                (lambda (_%g143632143651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143632143651%_))
                      (let ((_%e143635143653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143632143651%_))))
                        (let ((_%hd143636143656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143635143653%_)))
                              (_%tl143637143658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143635143653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143637143658%_))
                              (let ((_%e143638143661%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143637143658%_))))
                                (let ((_%hd143639143664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143638143661%_)))
                                      (_%tl143640143666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143638143661%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143640143666%_))
                                      (let ((_%e143641143669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143640143666%_))))
                                        (let ((_%hd143642143672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143641143669%_)))
                                              (_%tl143643143674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143641143669%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143643143674%_))
                                              ((lambda (_%L143677%_
                                                        _%L143678%_)
                                                 (let ((_%expr143693%_
                                                        (gxc#compile-e__1
                                                         _%self143628%_
                                                         _%L143677%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L143678%_
                                                                (cons _%expr143693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx143629%_)))
                                               _%hd143642143672%_
                                               _%hd143639143664%_)
                                              (_%g143631143648%_
                                               _%g143632143651%_))))
                                      (_%g143631143648%_ _%g143632143651%_))))
                              (_%g143631143648%_ _%g143632143651%_))))
                      (_%g143631143648%_ _%g143632143651%_)))))
          (_%g143630143695%_ _%stx143629%_))))
    (define gxc#xform-lambda%
      (lambda (_%self143566%_ _%stx143567%_)
        (let* ((_%g143569143583%_
                (lambda (_%g143570143580%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143570143580%_))))
               (_%g143568143625%_
                (lambda (_%g143570143586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143570143586%_))
                      (let ((_%e143573143588%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143570143586%_))))
                        (let ((_%hd143574143591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143573143588%_)))
                              (_%tl143575143593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143573143588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143575143593%_))
                              (let ((_%e143576143596%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143575143593%_))))
                                (let ((_%hd143577143599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143576143596%_)))
                                      (_%tl143578143601%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143576143596%_))))
                                  ((lambda (_%L143604%_ _%L143605%_)
                                     (let ((__tmp145210
                                            (lambda ()
                                              (let ((_%body143623%_
                                                     (map (lambda (_%g143618143620%_)
                                                            (gxc#compile-e__1
                                                             _%self143566%_
                                                             _%g143618143620%_))
                                                          _%L143604%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L143605%_
                                                             _%body143623%_))
                                                 _%stx143567%_))))
                                           (__tmp145209
                                            (gxc#xform-let-locals
                                             _%L143605%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp145210
                                        gxc#current-compile-local-env
                                        __tmp145209)))
                                   _%tl143578143601%_
                                   _%hd143577143599%_)))
                              (_%g143569143583%_ _%g143570143586%_))))
                      (_%g143569143583%_ _%g143570143586%_)))))
          (_%g143568143625%_ _%stx143567%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self143474%_ _%stx143475%_)
        (letrec ((_%clause-e143477%_
                  (lambda (_%clause143518%_)
                    (let* ((_%g143520143531%_
                            (lambda (_%g143521143528%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g143521143528%_))))
                           (_%g143519143563%_
                            (lambda (_%g143521143534%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g143521143534%_))
                                  (let ((_%e143524143536%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g143521143534%_))))
                                    (let ((_%hd143525143539%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143524143536%_)))
                                          (_%tl143526143541%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143524143536%_))))
                                      ((lambda (_%L143544%_ _%L143545%_)
                                         (let ((__tmp145212
                                                (lambda ()
                                                  (let ((_%body143561%_
                                                         (map (lambda (_%g143556143558%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self143474%_
                         _%g143556143558%_))
                      _%L143544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L143545%_
                                                          _%body143561%_))))
                                               (__tmp145211
                                                (gxc#xform-let-locals
                                                 _%L143545%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp145212
                                            gxc#current-compile-local-env
                                            __tmp145211)))
                                       _%tl143526143541%_
                                       _%hd143525143539%_)))
                                  (_%g143520143531%_ _%g143521143534%_)))))
                      (_%g143519143563%_ _%clause143518%_)))))
          (let* ((_%g143479143489%_
                  (lambda (_%g143480143486%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143480143486%_))))
                 (_%g143478143515%_
                  (lambda (_%g143480143492%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143480143492%_))
                        (let ((_%e143482143494%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143480143492%_))))
                          (let ((_%hd143483143497%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143482143494%_)))
                                (_%tl143484143499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143482143494%_))))
                            ((lambda (_%L143502%_)
                               (let ((_%clauses143513%_
                                      (map _%clause-e143477%_ _%L143502%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses143513%_)
                                  _%stx143475%_)))
                             _%tl143484143499%_)))
                        (_%g143479143489%_ _%g143480143492%_)))))
            (_%g143478143515%_ _%stx143475%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self143228%_ _%stx143229%_)
        (let* ((_%g143231143264%_
                (lambda (_%g143232143261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143232143261%_))))
               (_%g143230143471%_
                (lambda (_%g143232143267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143232143267%_))
                      (let ((_%e143237143269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143232143267%_))))
                        (let ((_%hd143238143272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143237143269%_)))
                              (_%tl143239143274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143237143269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143239143274%_))
                              (let ((_%e143240143277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143239143274%_))))
                                (let ((_%hd143241143280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143240143277%_)))
                                      (_%tl143242143282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143240143277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143241143280%_))
                                      (let ((_g145213_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143241143280%_
                                                '0))))
                                        (begin
                                          (let ((_g145214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g145213_)
                                                       (##values-length
                                                        _g145213_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g145214_ 2)))
                                                (error "Context expects 2 values"
                                                       _g145214_)))
                                          (let ((_%target143243143285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g145213_ 0)))
                                                (_%tl143245143287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g145213_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143245143287%_))
                                                (letrec ((_%loop143246143290%_
                                                          (lambda (_%hd143244143293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr143250143295%_
                           _%hd143251143297%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143244143293%_))
                        (let ((_%e143247143300%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143244143293%_))))
                          (let ((_%lp-hd143248143303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143247143300%_)))
                                (_%lp-tl143249143305%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143247143300%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd143248143303%_))
                                (let ((_%e143254143308%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd143248143303%_))))
                                  (let ((_%hd143255143311%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143254143308%_)))
                                        (_%tl143256143313%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143254143308%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143256143313%_))
                                        (let ((_%e143257143316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143256143313%_))))
                                          (let ((_%hd143258143319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143257143316%_)))
                                                (_%tl143259143321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143257143316%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143259143321%_))
                                                (_%loop143246143290%_
                                                 _%lp-tl143249143305%_
                                                 (cons _%hd143258143319%_
                                                       _%expr143250143295%_)
                                                 (cons _%hd143255143311%_
                                                       _%hd143251143297%_))
                                                (_%g143231143264%_
                                                 _%g143232143267%_))))
                                        (_%g143231143264%_
                                         _%g143232143267%_))))
                                (_%g143231143264%_ _%g143232143267%_))))
                        (let ((_%expr143252143324%_
                               (reverse _%expr143250143295%_))
                              (_%hd143253143326%_
                               (reverse _%hd143251143297%_)))
                          ((lambda (_%L143329%_
                                    _%L143330%_
                                    _%L143331%_
                                    _%L143332%_)
                             (let* ((_%g143351143367%_
                                     (lambda (_%g143352143364%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g143352143364%_))))
                                    (_%g143350143457%_
                                     (lambda (_%g143352143370%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g143352143370%_))
                                           (let ((_g145215_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g143352143370%_
                                                     '0))))
                                             (begin
                                               (let ((_g145216_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g145215_)
                                                            (##values-length
                                                             _g145215_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g145216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g145216_)))
                                               (let ((_%target143354143372%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g145215_
                                                         0)))
                                                     (_%tl143356143374%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g145215_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl143356143374%_))
                                                     (letrec ((_%loop143357143377%_
                                                               (lambda (_%hd143355143380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr143361143382%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd143355143380%_))
                             (let ((_%e143358143385%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd143355143380%_))))
                               (let ((_%lp-hd143359143388%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e143358143385%_)))
                                     (_%lp-tl143360143390%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e143358143385%_))))
                                 (_%loop143357143377%_
                                  _%lp-tl143360143390%_
                                  (cons _%lp-hd143359143388%_
                                        _%expr143361143382%_))))
                             (let ((_%expr143362143393%_
                                    (reverse _%expr143361143382%_)))
                               ((lambda (_%L143396%_)
                                  (let ((__tmp145219
                                         (lambda ()
                                           (let* ((_%g143410143417%_
                                                   (lambda (_%g143411143414%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g143411143414%_))))
                                                  (_%g143409143443%_
                                                   (lambda (_%g143411143420%_)
                                                     ((lambda (_%L143422%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L143332%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L143396%_
                                  _%L143331%_))
                               (let ((__tmp145220
                                      (lambda (_%g143432143436%_
                                               _%g143433143438%_
                                               _%g143434143440%_)
                                        (cons (cons _%g143433143438%_
                                                    (cons _%g143432143436%_
                                                          '()))
                                              _%g143434143440%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp145220
                                  '()
                                  _%L143396%_
                                  _%L143331%_)))
                             _%L143422%_))
                 _%stx143229%_))
              _%g143411143420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g143409143443%_
                                              (map (lambda (_%g143445143447%_)
                                                     (gxc#compile-e__1
                                                      _%self143228%_
                                                      _%g143445143447%_))
                                                   _%L143329%_)))))
                                        (__tmp145217
                                         (gxc#xform-let-locals
                                          (let ((__tmp145218
                                                 (lambda (_%g143449143452%_
                                                          _%g143450143454%_)
                                                   (cons _%g143449143452%_
                                                         _%g143450143454%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145218
                                             '()
                                             _%L143331%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp145219
                                     gxc#current-compile-local-env
                                     __tmp145217)))
                                _%expr143362143393%_))))))
               (_%loop143357143377%_ _%target143354143372%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g143351143367%_
                                                      _%g143352143370%_)))))
                                           (_%g143351143367%_
                                            _%g143352143370%_)))))
                               (_%g143350143457%_
                                (map (lambda (_%g143459143461%_)
                                       (gxc#compile-e__1
                                        _%self143228%_
                                        _%g143459143461%_))
                                     (let ((__tmp145221
                                            (lambda (_%g143463143466%_
                                                     _%g143464143468%_)
                                              (cons _%g143463143466%_
                                                    _%g143464143468%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp145221
                                        '()
                                        _%L143330%_))))))
                           _%tl143242143282%_
                           _%expr143252143324%_
                           _%hd143253143326%_
                           _%hd143238143272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop143246143290%_
                                                   _%target143243143285%_
                                                   '()
                                                   '()))
                                                (_%g143231143264%_
                                                 _%g143232143267%_)))))
                                      (_%g143231143264%_ _%g143232143267%_))))
                              (_%g143231143264%_ _%g143232143267%_))))
                      (_%g143231143264%_ _%g143232143267%_)))))
          (_%g143230143471%_ _%stx143229%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self142982%_ _%stx142983%_)
        (let* ((_%g142985143018%_
                (lambda (_%g142986143015%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142986143015%_))))
               (_%g142984143225%_
                (lambda (_%g142986143021%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142986143021%_))
                      (let ((_%e142991143023%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142986143021%_))))
                        (let ((_%hd142992143026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142991143023%_)))
                              (_%tl142993143028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142991143023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142993143028%_))
                              (let ((_%e142994143031%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142993143028%_))))
                                (let ((_%hd142995143034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142994143031%_)))
                                      (_%tl142996143036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142994143031%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142995143034%_))
                                      (let ((_g145222_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142995143034%_
                                                '0))))
                                        (begin
                                          (let ((_g145223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g145222_)
                                                       (##values-length
                                                        _g145222_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g145223_ 2)))
                                                (error "Context expects 2 values"
                                                       _g145223_)))
                                          (let ((_%target142997143039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g145222_ 0)))
                                                (_%tl142999143041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g145222_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142999143041%_))
                                                (letrec ((_%loop143000143044%_
                                                          (lambda (_%hd142998143047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr143004143049%_
                           _%hd143005143051%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142998143047%_))
                        (let ((_%e143001143054%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142998143047%_))))
                          (let ((_%lp-hd143002143057%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143001143054%_)))
                                (_%lp-tl143003143059%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143001143054%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd143002143057%_))
                                (let ((_%e143008143062%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd143002143057%_))))
                                  (let ((_%hd143009143065%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143008143062%_)))
                                        (_%tl143010143067%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143008143062%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143010143067%_))
                                        (let ((_%e143011143070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143010143067%_))))
                                          (let ((_%hd143012143073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143011143070%_)))
                                                (_%tl143013143075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143011143070%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143013143075%_))
                                                (_%loop143000143044%_
                                                 _%lp-tl143003143059%_
                                                 (cons _%hd143012143073%_
                                                       _%expr143004143049%_)
                                                 (cons _%hd143009143065%_
                                                       _%hd143005143051%_))
                                                (_%g142985143018%_
                                                 _%g142986143021%_))))
                                        (_%g142985143018%_
                                         _%g142986143021%_))))
                                (_%g142985143018%_ _%g142986143021%_))))
                        (let ((_%expr143006143078%_
                               (reverse _%expr143004143049%_))
                              (_%hd143007143080%_
                               (reverse _%hd143005143051%_)))
                          ((lambda (_%L143083%_
                                    _%L143084%_
                                    _%L143085%_
                                    _%L143086%_)
                             (let ((__tmp145226
                                    (lambda ()
                                      (let* ((_%g143106143122%_
                                              (lambda (_%g143107143119%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g143107143119%_))))
                                             (_%g143105143204%_
                                              (lambda (_%g143107143125%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g143107143125%_))
                                                    (let ((_g145227_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g143107143125%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g145228_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g145227_)
                             (##values-length _g145227_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g145228_ 2)))
                      (error "Context expects 2 values" _g145228_)))
                (let ((_%target143109143127%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g145227_ 0)))
                      (_%tl143111143129%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g145227_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143111143129%_))
                      (letrec ((_%loop143112143132%_
                                (lambda (_%hd143110143135%_
                                         _%expr143116143137%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143110143135%_))
                                      (let ((_%e143113143140%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd143110143135%_))))
                                        (let ((_%lp-hd143114143143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143113143140%_)))
                                              (_%lp-tl143115143145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143113143140%_))))
                                          (_%loop143112143132%_
                                           _%lp-tl143115143145%_
                                           (cons _%lp-hd143114143143%_
                                                 _%expr143116143137%_))))
                                      (let ((_%expr143117143148%_
                                             (reverse _%expr143116143137%_)))
                                        ((lambda (_%L143151%_)
                                           (let* ((_%g143165143172%_
                                                   (lambda (_%g143166143169%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g143166143169%_))))
                                                  (_%g143164143197%_
                                                   (lambda (_%g143166143175%_)
                                                     ((lambda (_%L143177%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L143086%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L143151%_
                                  _%L143085%_))
                               (let ((__tmp145229
                                      (lambda (_%g143186143190%_
                                               _%g143187143192%_
                                               _%g143188143194%_)
                                        (cons (cons _%g143187143192%_
                                                    (cons _%g143186143190%_
                                                          '()))
                                              _%g143188143194%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp145229
                                  '()
                                  _%L143151%_
                                  _%L143085%_)))
                             _%L143177%_))
                 _%stx142983%_))
              _%g143166143175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g143164143197%_
                                              (map (lambda (_%g143199143201%_)
                                                     (gxc#compile-e__1
                                                      _%self142982%_
                                                      _%g143199143201%_))
                                                   _%L143083%_))))
                                         _%expr143117143148%_))))))
                        (_%loop143112143132%_ _%target143109143127%_ '()))
                      (_%g143106143122%_ _%g143107143125%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g143106143122%_
                                                     _%g143107143125%_)))))
                                        (_%g143105143204%_
                                         (map (lambda (_%g143206143208%_)
                                                (gxc#compile-e__1
                                                 _%self142982%_
                                                 _%g143206143208%_))
                                              (let ((__tmp145230
                                                     (lambda (_%g143210143213%_
                                                              _%g143211143215%_)
                                                       (cons _%g143210143213%_
                                                             _%g143211143215%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp145230
                                                 '()
                                                 _%L143084%_)))))))
                                   (__tmp145224
                                    (gxc#xform-let-locals
                                     (let ((__tmp145225
                                            (lambda (_%g143217143220%_
                                                     _%g143218143222%_)
                                              (cons _%g143217143220%_
                                                    _%g143218143222%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp145225
                                        '()
                                        _%L143085%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp145226
                                gxc#current-compile-local-env
                                __tmp145224)))
                           _%tl142996143036%_
                           _%expr143006143078%_
                           _%hd143007143080%_
                           _%hd142992143026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop143000143044%_
                                                   _%target142997143039%_
                                                   '()
                                                   '()))
                                                (_%g142985143018%_
                                                 _%g142986143021%_)))))
                                      (_%g142985143018%_ _%g142986143021%_))))
                              (_%g142985143018%_ _%g142986143021%_))))
                      (_%g142985143018%_ _%g142986143021%_)))))
          (_%g142984143225%_ _%stx142983%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings142849%_)
        (letrec ((_%flatten142851%_
                  (lambda (_%maybe-lst142909%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst142909%_))
                        (cons _%maybe-lst142909%_ '())
                        (let _%loop142911%_ ((_%rest142913%_
                                              _%maybe-lst142909%_)
                                             (_%result142914%_ '()))
                          (let* ((_%__stx145118145119%_ _%rest142913%_)
                                 (_%g142918142930%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx145118145119%_)))))
                            (let ((_%__kont145120145121%_
                                   (lambda (_%L142968%_ _%L142969%_)
                                     (_%loop142911%_
                                      _%L142968%_
                                      (let ((__tmp145231
                                             (_%flatten142851%_ _%L142969%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result142914%_
                                         __tmp145231)))))
                                  (_%__kont145122145123%_
                                   (lambda (_%L142942%_)
                                     (cons _%L142942%_ _%result142914%_)))
                                  (_%__kont145124145125%_
                                   (lambda () _%result142914%_)))
                              (let ((_%g142916142955%_
                                     (lambda ()
                                       (let ((_%L142942%_
                                              _%__stx145118145119%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142942%_))
                                             (_%__kont145122145123%_
                                              _%L142942%_)
                                             (_%__kont145124145125%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx145118145119%_))
                                    (let ((_%e142922142960%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx145118145119%_))))
                                      (let ((_%tl142924142965%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142922142960%_)))
                                            (_%hd142923142963%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142922142960%_))))
                                        (_%__kont145120145121%_
                                         _%tl142924142965%_
                                         _%hd142923142963%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142916142955%_)))))))))))
          (let _%loop142853%_ ((_%rest142855%_
                                (_%flatten142851%_ _%bindings142849%_))
                               (_%locals142856%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest142857142868%_ _%rest142855%_)
                   (_%E142861142872%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest142857142868%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K142864142897%_
                     (lambda (_%rest142894%_ _%id142895%_)
                       (_%loop142853%_
                        _%rest142894%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id142895%_))
                              _%locals142856%_))))
                    (_%K142863142886%_
                     (lambda (_%id142884%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id142884%_))
                             _%locals142856%_)))
                    (_%K142862142877%_ (lambda () _%locals142856%_)))
                (let ((_%try-match142859142891%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest142857142868%_))
                             (let ((_%id142889%_ _%rest142857142868%_))
                               (_%K142863142886%_ _%id142889%_))
                             (_%K142862142877%_)))))
                  (if (pair? _%rest142857142868%_)
                      (let ((_%tl142866142902%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest142857142868%_)))
                            (_%hd142865142900%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest142857142868%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd142865142900%_))
                            (let ((_%id142905%_ _%hd142865142900%_)
                                  (_%rest142907%_ _%tl142866142902%_))
                              (_%K142864142897%_ _%rest142907%_ _%id142905%_))
                            (_%K142862142877%_)))
                      (_%try-match142859142891%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self142801%_ _%stx142802%_)
        (let* ((_%g142804142815%_
                (lambda (_%g142805142812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142805142812%_))))
               (_%g142803142846%_
                (lambda (_%g142805142818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142805142818%_))
                      (let ((_%e142808142820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142805142818%_))))
                        (let ((_%hd142809142823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142808142820%_)))
                              (_%tl142810142825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142808142820%_))))
                          ((lambda (_%L142828%_ _%L142829%_)
                             (let ((_%rands142844%_
                                    (map (lambda (_%g142839142841%_)
                                           (gxc#compile-e__1
                                            _%self142801%_
                                            _%g142839142841%_))
                                         _%L142828%_)))
                               (gxc#xform-wrap-source
                                (cons _%L142829%_ _%rands142844%_)
                                _%stx142802%_)))
                           _%tl142810142825%_
                           _%hd142809142823%_)))
                      (_%g142804142815%_ _%g142805142818%_)))))
          (_%g142803142846%_ _%stx142802%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self142731%_ _%stx142732%_)
        (let* ((_%g142734142751%_
                (lambda (_%g142735142748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142735142748%_))))
               (_%g142733142798%_
                (lambda (_%g142735142754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142735142754%_))
                      (let ((_%e142738142756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142735142754%_))))
                        (let ((_%hd142739142759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142738142756%_)))
                              (_%tl142740142761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142738142756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142740142761%_))
                              (let ((_%e142741142764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142740142761%_))))
                                (let ((_%hd142742142767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142741142764%_)))
                                      (_%tl142743142769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142741142764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142743142769%_))
                                      (let ((_%e142744142772%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142743142769%_))))
                                        (let ((_%hd142745142775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142744142772%_)))
                                              (_%tl142746142777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142744142772%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142746142777%_))
                                              ((lambda (_%L142780%_
                                                        _%L142781%_)
                                                 (let ((_%expr142796%_
                                                        (gxc#compile-e__1
                                                         _%self142731%_
                                                         _%L142780%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L142781%_
                                                                (cons _%expr142796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx142732%_)))
                                               _%hd142745142775%_
                                               _%hd142742142767%_)
                                              (_%g142734142751%_
                                               _%g142735142754%_))))
                                      (_%g142734142751%_ _%g142735142754%_))))
                              (_%g142734142751%_ _%g142735142754%_))))
                      (_%g142734142751%_ _%g142735142754%_)))))
          (_%g142733142798%_ _%stx142732%_))))))
