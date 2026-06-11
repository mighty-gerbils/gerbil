(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1781138356)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx196953%_)
        (let* ((_%self196955%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e196957%_
                (let ((__tmp197175 (gxc#stx-car-e _%stx196953%_)))
                  (declare (not safe))
                  (method-ref _%self196955%_ __tmp197175))))
          (if _%$e196957%_
              (let ()
                (declare (not safe))
                (let ((_%$e196963%_ (gx#stx-source _%stx196953%_)))
                  (if _%$e196963%_
                      (call-with-parameters__1
                       (lambda () (_%$e196957%_ _%self196955%_ _%stx196953%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e196963%_ '()))
                             (let ((_%$e196970%_
                                    (gxc#current-compile-context)))
                               (if _%$e196970%_ _%$e196970%_ '()))))
                      (_%$e196957%_ _%self196955%_ _%stx196953%_))))
              (let ((__tmp197177 (gxc#stx-car-e _%stx196953%_))
                    (__tmp197176
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx196953%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self196955%_
                       __tmp197177
                       __tmp197176))))))
    (define gxc#compile-e__1
      (lambda (_%self196975%_ _%stx196976%_)
        (let ((_%$e196978%_
               (let ((__tmp197178 (gxc#stx-car-e _%stx196976%_)))
                 (declare (not safe))
                 (method-ref _%self196975%_ __tmp197178))))
          (if _%$e196978%_
              (let ()
                (declare (not safe))
                (let ((_%$e196984%_ (gx#stx-source _%stx196976%_)))
                  (if _%$e196984%_
                      (call-with-parameters__1
                       (lambda () (_%$e196978%_ _%self196975%_ _%stx196976%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e196984%_ '()))
                             (let ((_%$e196991%_
                                    (gxc#current-compile-context)))
                               (if _%$e196991%_ _%$e196991%_ '()))))
                      (_%$e196978%_ _%self196975%_ _%stx196976%_))))
              (let ((__tmp197180 (gxc#stx-car-e _%stx196976%_))
                    (__tmp197179
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx196976%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self196975%_
                       __tmp197180
                       __tmp197179))))))
    (define gxc#compile-e
      (lambda _g197181_
        (let ((_g197182_ (let () (declare (not safe)) (##length _g197181_))))
          (cond ((let () (declare (not safe)) (##fx= _g197182_ 1))
                 (apply gxc#compile-e__0 _g197181_))
                ((let () (declare (not safe)) (##fx= _g197182_ 2))
                 (apply gxc#compile-e__1 _g197181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g197181_))))))
    (define gxc#stx-car-e
      (lambda (_%stx196951%_)
        (let ((__tmp197183
               (car (let () (declare (not safe)) (gx#stx-e _%stx196951%_)))))
          (declare (not safe))
          (gx#stx-e __tmp197183))))
    (define gxc#void-method (lambda (_%self196948%_ _%stx196949%_) '#!void))
    (define gxc#false-method (lambda (_%self196945%_ _%stx196946%_) '#f))
    (define gxc#true-method (lambda (_%self196942%_ _%stx196943%_) '#t))
    (define gxc#identity-method
      (lambda (_%self196939%_ _%stx196940%_) _%stx196940%_))
    (define gxc#::void-expression::t
      (let ((__tmp197184 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp197184
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args196936%_
        (apply make-instance gxc#::void-expression::t _%$args196936%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp197185
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
        (__make-atomic-promise __tmp197185)))
    (define gxc#::void-special-form::t
      (let ((__tmp197186 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp197186
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args196932%_
        (apply make-instance gxc#::void-special-form::t _%$args196932%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp197187
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
        (__make-atomic-promise __tmp197187)))
    (define gxc#::void::t
      (let ((__tmp197188
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp197188 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args196928%_
        (apply make-instance gxc#::void::t _%$args196928%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp197189
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp197189)))
    (define gxc#::false-expression::t
      (let ((__tmp197190 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp197190
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args196924%_
        (apply make-instance gxc#::false-expression::t _%$args196924%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp197191
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
        (__make-atomic-promise __tmp197191)))
    (define gxc#::false-special-form::t
      (let ((__tmp197192 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp197192
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args196920%_
        (apply make-instance gxc#::false-special-form::t _%$args196920%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp197193
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
        (__make-atomic-promise __tmp197193)))
    (define gxc#::false::t
      (let ((__tmp197194
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp197194 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args196916%_
        (apply make-instance gxc#::false::t _%$args196916%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp197195
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp197195)))
    (define gxc#::identity-expression::t
      (let ((__tmp197196 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp197196
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args196912%_
        (apply make-instance gxc#::identity-expression::t _%$args196912%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp197197
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
        (__make-atomic-promise __tmp197197)))
    (define gxc#::identity-special-form::t
      (let ((__tmp197198 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp197198
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args196908%_
        (apply make-instance gxc#::identity-special-form::t _%$args196908%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp197199
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
        (__make-atomic-promise __tmp197199)))
    (define gxc#::identity::t
      (let ((__tmp197200
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp197200
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args196904%_
        (apply make-instance gxc#::identity::t _%$args196904%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp197201
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp197201)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp197202 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp197202
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args196900%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args196900%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp197203
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
        (__make-atomic-promise __tmp197203)))
    (define gxc#::basic-xform::t
      (let ((__tmp197204
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp197204
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args196896%_
        (apply make-instance gxc#::basic-xform::t _%$args196896%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp197205
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
        (__make-atomic-promise __tmp197205)))
    (define gxc#apply-begin%
      (lambda (_%self196852%_ _%stx196853%_)
        (let* ((_%$%g196855196865%_
                (lambda (_%$%g196856196862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196856196862%_))))
               (_%$%g196854196892%_
                (lambda (_%$%g196856196868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196856196868%_))
                      (let ((_%$%e196858196870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196856196868%_))))
                        (let ((_%$%hd196859196873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196858196870%_)))
                              (_%$%tl196860196875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196858196870%_))))
                          (for-each
                           (lambda (_%$%g196887196889%_)
                             (gxc#compile-e__1
                              _%self196852%_
                              _%$%g196887196889%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl196860196875%_)))))
                      (_%$%g196855196865%_ _%$%g196856196868%_)))))
          (_%$%g196854196892%_ _%stx196853%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self196813%_ _%stx196814%_)
        (let* ((_%$%g196816196826%_
                (lambda (_%$%g196817196823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196817196823%_))))
               (_%$%g196815196849%_
                (lambda (_%$%g196817196829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196817196829%_))
                      (let ((_%$%e196819196831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196817196829%_))))
                        (let ((_%$%hd196820196834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196819196831%_)))
                              (_%$%tl196821196836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196819196831%_))))
                          (gxc#compile-e__1
                           _%self196813%_
                           (last _%$%tl196821196836%_))))
                      (_%$%g196816196826%_ _%$%g196817196829%_)))))
          (_%$%g196815196849%_ _%stx196814%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self196809%_ _%stx196810%_)
        (let ((__tmp197208
               (lambda () (gxc#apply-begin% _%self196809%_ _%stx196810%_)))
              (__tmp197206
               (let ((__tmp197207
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp197207 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp197208
           gx#current-expander-phi
           __tmp197206))))
    (define gxc#apply-module%
      (lambda (_%self196748%_ _%stx196749%_)
        (let* ((_%$%g196751196765%_
                (lambda (_%$%g196752196762%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196752196762%_))))
               (_%$%g196750196806%_
                (lambda (_%$%g196752196768%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196752196768%_))
                      (let ((_%$%e196755196770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196752196768%_))))
                        (let ((_%$%hd196756196773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196755196770%_)))
                              (_%$%tl196757196775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196755196770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196757196775%_))
                              (let ((_%$%e196758196778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196757196775%_))))
                                (let ((_%$%hd196759196781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196758196778%_)))
                                      (_%$%tl196760196783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196758196778%_))))
                                  (let* ((_%ctx196800%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd196759196781%_)))
                                         (_%ctx-stx196802%_
                                          (##structure-ref
                                           _%ctx196800%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp197209
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self196748%_
                                             _%ctx-stx196802%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp197209
                                     gx#current-expander-context
                                     _%ctx196800%_))))
                              (_%$%g196751196765%_ _%$%g196752196768%_))))
                      (_%$%g196751196765%_ _%$%g196752196768%_)))))
          (_%$%g196750196806%_ _%stx196749%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self196680%_ _%stx196681%_)
        (let* ((_%$%g196683196700%_
                (lambda (_%$%g196684196697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196684196697%_))))
               (_%$%g196682196745%_
                (lambda (_%$%g196684196703%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196684196703%_))
                      (let ((_%$%e196687196705%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196684196703%_))))
                        (let ((_%$%hd196688196708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196687196705%_)))
                              (_%$%tl196689196710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196687196705%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196689196710%_))
                              (let ((_%$%e196690196713%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196689196710%_))))
                                (let ((_%$%hd196691196716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196690196713%_)))
                                      (_%$%tl196692196718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196690196713%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl196692196718%_))
                                      (let ((_%$%e196693196721%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl196692196718%_))))
                                        (let ((_%$%hd196694196724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e196693196721%_)))
                                              (_%$%tl196695196726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e196693196721%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl196695196726%_))
                                              (gxc#compile-e__1
                                               _%self196680%_
                                               _%$%hd196694196724%_)
                                              (_%$%g196683196700%_
                                               _%$%g196684196703%_))))
                                      (_%$%g196683196700%_
                                       _%$%g196684196703%_))))
                              (_%$%g196683196700%_ _%$%g196684196703%_))))
                      (_%$%g196683196700%_ _%$%g196684196703%_)))))
          (_%$%g196682196745%_ _%stx196681%_))))
    (define gxc#apply-define-values%
      (lambda (_%self196612%_ _%stx196613%_)
        (let* ((_%$%g196615196632%_
                (lambda (_%$%g196616196629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196616196629%_))))
               (_%$%g196614196677%_
                (lambda (_%$%g196616196635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196616196635%_))
                      (let ((_%$%e196619196637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196616196635%_))))
                        (let ((_%$%hd196620196640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196619196637%_)))
                              (_%$%tl196621196642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196619196637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196621196642%_))
                              (let ((_%$%e196622196645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196621196642%_))))
                                (let ((_%$%hd196623196648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196622196645%_)))
                                      (_%$%tl196624196650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196622196645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl196624196650%_))
                                      (let ((_%$%e196625196653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl196624196650%_))))
                                        (let ((_%$%hd196626196656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e196625196653%_)))
                                              (_%$%tl196627196658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e196625196653%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl196627196658%_))
                                              (gxc#compile-e__1
                                               _%self196612%_
                                               _%$%hd196626196656%_)
                                              (_%$%g196615196632%_
                                               _%$%g196616196635%_))))
                                      (_%$%g196615196632%_
                                       _%$%g196616196635%_))))
                              (_%$%g196615196632%_ _%$%g196616196635%_))))
                      (_%$%g196615196632%_ _%$%g196616196635%_)))))
          (_%$%g196614196677%_ _%stx196613%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self196543%_ _%stx196544%_)
        (let* ((_%$%g196546196563%_
                (lambda (_%$%g196547196560%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196547196560%_))))
               (_%$%g196545196609%_
                (lambda (_%$%g196547196566%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196547196566%_))
                      (let ((_%$%e196550196568%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196547196566%_))))
                        (let ((_%$%hd196551196571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196550196568%_)))
                              (_%$%tl196552196573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196550196568%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196552196573%_))
                              (let ((_%$%e196553196576%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196552196573%_))))
                                (let ((_%$%hd196554196579%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196553196576%_)))
                                      (_%$%tl196555196581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196553196576%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl196555196581%_))
                                      (let ((_%$%e196556196584%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl196555196581%_))))
                                        (let ((_%$%hd196557196587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e196556196584%_)))
                                              (_%$%tl196558196589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e196556196584%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl196558196589%_))
                                              (let ((__tmp197212
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self196543%_
                                                        _%$%hd196557196587%_)))
                                                    (__tmp197210
                                                     (let ((__tmp197211
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp197211
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp197212
                                                 gx#current-expander-phi
                                                 __tmp197210))
                                              (_%$%g196546196563%_
                                               _%$%g196547196566%_))))
                                      (_%$%g196546196563%_
                                       _%$%g196547196566%_))))
                              (_%$%g196546196563%_ _%$%g196547196566%_))))
                      (_%$%g196546196563%_ _%$%g196547196566%_)))))
          (_%$%g196545196609%_ _%stx196544%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self196475%_ _%stx196476%_)
        (let* ((_%$%g196478196495%_
                (lambda (_%$%g196479196492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196479196492%_))))
               (_%$%g196477196540%_
                (lambda (_%$%g196479196498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196479196498%_))
                      (let ((_%$%e196482196500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196479196498%_))))
                        (let ((_%$%hd196483196503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196482196500%_)))
                              (_%$%tl196484196505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196482196500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196484196505%_))
                              (let ((_%$%e196485196508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196484196505%_))))
                                (let ((_%$%hd196486196511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196485196508%_)))
                                      (_%$%tl196487196513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196485196508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl196487196513%_))
                                      (let ((_%$%e196488196516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl196487196513%_))))
                                        (let ((_%$%hd196489196519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e196488196516%_)))
                                              (_%$%tl196490196521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e196488196516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl196490196521%_))
                                              (gxc#compile-e__1
                                               _%self196475%_
                                               _%$%hd196489196519%_)
                                              (_%$%g196478196495%_
                                               _%$%g196479196498%_))))
                                      (_%$%g196478196495%_
                                       _%$%g196479196498%_))))
                              (_%$%g196478196495%_ _%$%g196479196498%_))))
                      (_%$%g196478196495%_ _%$%g196479196498%_)))))
          (_%$%g196477196540%_ _%stx196476%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self196361%_ _%stx196362%_)
        (let* ((_%$%g196364196392%_
                (lambda (_%$%g196365196389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196365196389%_))))
               (_%$%g196363196472%_
                (lambda (_%$%g196365196395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196365196395%_))
                      (let ((_%$%e196368196397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196365196395%_))))
                        (let ((_%$%hd196369196400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196368196397%_)))
                              (_%$%tl196370196402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196368196397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl196370196402%_))
                              (let ((_g197213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl196370196402%_
                                        '0))))
                                (begin
                                  (let ((_g197214_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g197213_)
                                               (##values-length _g197213_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g197214_ 2)))
                                        (error "Context expects 2 values"
                                               _g197214_)))
                                  (let ((_%$%target196371196405%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g197213_ 0)))
                                        (_%$%tl196373196407%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g197213_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl196373196407%_))
                                        (letrec ((_%$%loop196374196410%_
                                                  (lambda (_%$%hd196372196413%_
                                                           _%$%body196378196415%_
                                                           _%$%hd196379196416%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd196372196413%_))
                                                        (let ((_%$%e196375196418%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd196372196413%_))))
                  (let ((_%$%lp-hd196376196421%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e196375196418%_)))
                        (_%$%lp-tl196377196423%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e196375196418%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd196376196421%_))
                        (let ((_%$%e196382196426%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd196376196421%_))))
                          (let ((_%$%hd196383196429%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e196382196426%_)))
                                (_%$%tl196384196431%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e196382196426%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl196384196431%_))
                                (let ((_%$%e196385196434%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl196384196431%_))))
                                  (let ((_%$%hd196386196437%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e196385196434%_)))
                                        (_%$%tl196387196439%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e196385196434%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl196387196439%_))
                                        (_%$%loop196374196410%_
                                         _%$%lp-tl196377196423%_
                                         (cons _%$%hd196386196437%_
                                               _%$%body196378196415%_)
                                         (cons _%$%hd196383196429%_
                                               _%$%hd196379196416%_))
                                        (_%$%g196364196392%_
                                         _%$%g196365196395%_))))
                                (_%$%g196364196392%_ _%$%g196365196395%_))))
                        (_%$%g196364196392%_ _%$%g196365196395%_))))
                (let ((_%$%body196380196442%_ (reverse _%$%body196378196415%_))
                      (_%$%hd196381196443%_ (reverse _%$%hd196379196416%_)))
                  (for-each
                   (lambda (_%$%g196460196462%_)
                     (gxc#compile-e__1 _%self196361%_ _%$%g196460196462%_))
                   (let ((__tmp197215
                          (lambda (_%$%g196464196467%_ _%$%g196465196469%_)
                            (cons _%$%g196464196467%_ _%$%g196465196469%_))))
                     (declare (not safe))
                     (foldr__0 __tmp197215 '() _%$%body196380196442%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop196374196410%_
                                           _%$%target196371196405%_
                                           '()
                                           '()))
                                        (_%$%g196364196392%_
                                         _%$%g196365196395%_)))))
                              (_%$%g196364196392%_ _%$%g196365196395%_))))
                      (_%$%g196364196392%_ _%$%g196365196395%_)))))
          (_%$%g196363196472%_ _%stx196362%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self196218%_ _%stx196219%_)
        (let* ((_%$%g196221196256%_
                (lambda (_%$%g196222196253%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196222196253%_))))
               (_%$%g196220196358%_
                (lambda (_%$%g196222196259%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196222196259%_))
                      (let ((_%$%e196226196261%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196222196259%_))))
                        (let ((_%$%hd196227196264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196226196261%_)))
                              (_%$%tl196228196266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196226196261%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196228196266%_))
                              (let ((_%$%e196229196269%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196228196266%_))))
                                (let ((_%$%hd196230196272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196229196269%_)))
                                      (_%$%tl196231196274%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196229196269%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd196230196272%_))
                                      (let ((_g197216_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd196230196272%_
                                                '0))))
                                        (begin
                                          (let ((_g197217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g197216_)
                                                       (##values-length
                                                        _g197216_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g197217_ 2)))
                                                (error "Context expects 2 values"
                                                       _g197217_)))
                                          (let ((_%$%target196232196277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g197216_ 0)))
                                                (_%$%tl196234196279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g197216_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl196234196279%_))
                                                (letrec ((_%$%loop196235196282%_
                                                          (lambda (_%$%hd196233196285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr196239196287%_
                           _%$%hd196240196288%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd196233196285%_))
                        (let ((_%$%e196236196290%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd196233196285%_))))
                          (let ((_%$%lp-hd196237196293%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e196236196290%_)))
                                (_%$%lp-tl196238196295%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e196236196290%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd196237196293%_))
                                (let ((_%$%e196243196298%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd196237196293%_))))
                                  (let ((_%$%hd196244196301%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e196243196298%_)))
                                        (_%$%tl196245196303%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e196243196298%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl196245196303%_))
                                        (let ((_%$%e196246196306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl196245196303%_))))
                                          (let ((_%$%hd196247196309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e196246196306%_)))
                                                (_%$%tl196248196311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e196246196306%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl196248196311%_))
                                                (_%$%loop196235196282%_
                                                 _%$%lp-tl196238196295%_
                                                 (cons _%$%hd196247196309%_
                                                       _%$%expr196239196287%_)
                                                 (cons _%$%hd196244196301%_
                                                       _%$%hd196240196288%_))
                                                (_%$%g196221196256%_
                                                 _%$%g196222196259%_))))
                                        (_%$%g196221196256%_
                                         _%$%g196222196259%_))))
                                (_%$%g196221196256%_ _%$%g196222196259%_))))
                        (let ((_%$%expr196241196314%_
                               (reverse _%$%expr196239196287%_))
                              (_%$%hd196242196315%_
                               (reverse _%$%hd196240196288%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196231196274%_))
                              (let ((_%$%e196249196317%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196231196274%_))))
                                (let ((_%$%hd196250196320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196249196317%_)))
                                      (_%$%tl196251196322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196249196317%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl196251196322%_))
                                      (for-each
                                       (lambda (_%$%g196346196348%_)
                                         (gxc#compile-e__1
                                          _%self196218%_
                                          _%$%g196346196348%_))
                                       (let ((__tmp197219
                                              (lambda (_%$%g196350196353%_
                                                       _%$%g196351196355%_)
                                                (cons _%$%g196350196353%_
                                                      _%$%g196351196355%_)))
                                             (__tmp197218
                                              (cons _%$%hd196250196320%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp197219
                                          __tmp197218
                                          _%$%expr196241196314%_)))
                                      (_%$%g196221196256%_
                                       _%$%g196222196259%_))))
                              (_%$%g196221196256%_ _%$%g196222196259%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop196235196282%_
                                                   _%$%target196232196277%_
                                                   '()
                                                   '()))
                                                (_%$%g196221196256%_
                                                 _%$%g196222196259%_)))))
                                      (_%$%g196221196256%_
                                       _%$%g196222196259%_))))
                              (_%$%g196221196256%_ _%$%g196222196259%_))))
                      (_%$%g196221196256%_ _%$%g196222196259%_)))))
          (_%$%g196220196358%_ _%stx196219%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self196163%_ _%stx196164%_)
        (let* ((_%$%g196166196180%_
                (lambda (_%$%g196167196177%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196167196177%_))))
               (_%$%g196165196215%_
                (lambda (_%$%g196167196183%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196167196183%_))
                      (let ((_%$%e196170196185%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196167196183%_))))
                        (let ((_%$%hd196171196188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196170196185%_)))
                              (_%$%tl196172196190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196170196185%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196172196190%_))
                              (let ((_%$%e196173196193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196172196190%_))))
                                (let ((_%$%hd196174196196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196173196193%_)))
                                      (_%$%tl196175196198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196173196193%_))))
                                  (gxc#compile-e__1
                                   _%self196163%_
                                   (last _%$%tl196175196198%_))))
                              (_%$%g196166196180%_ _%$%g196167196183%_))))
                      (_%$%g196166196180%_ _%$%g196167196183%_)))))
          (_%$%g196165196215%_ _%stx196164%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self196095%_ _%stx196096%_)
        (let* ((_%$%g196098196115%_
                (lambda (_%$%g196099196112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196099196112%_))))
               (_%$%g196097196160%_
                (lambda (_%$%g196099196118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196099196118%_))
                      (let ((_%$%e196102196120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196099196118%_))))
                        (let ((_%$%hd196103196123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196102196120%_)))
                              (_%$%tl196104196125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196102196120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196104196125%_))
                              (let ((_%$%e196105196128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl196104196125%_))))
                                (let ((_%$%hd196106196131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196105196128%_)))
                                      (_%$%tl196107196133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196105196128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl196107196133%_))
                                      (let ((_%$%e196108196136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl196107196133%_))))
                                        (let ((_%$%hd196109196139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e196108196136%_)))
                                              (_%$%tl196110196141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e196108196136%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl196110196141%_))
                                              (gxc#compile-e__1
                                               _%self196095%_
                                               _%$%hd196109196139%_)
                                              (_%$%g196098196115%_
                                               _%$%g196099196118%_))))
                                      (_%$%g196098196115%_
                                       _%$%g196099196118%_))))
                              (_%$%g196098196115%_ _%$%g196099196118%_))))
                      (_%$%g196098196115%_ _%$%g196099196118%_)))))
          (_%$%g196097196160%_ _%stx196096%_))))
    (define gxc#apply-operands
      (lambda (_%self196010%_ _%stx196011%_)
        (let* ((_%$%g196013196032%_
                (lambda (_%$%g196014196029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196014196029%_))))
               (_%$%g196012196092%_
                (lambda (_%$%g196014196035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196014196035%_))
                      (let ((_%$%e196016196037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g196014196035%_))))
                        (let ((_%$%hd196017196040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196016196037%_)))
                              (_%$%tl196018196042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196016196037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl196018196042%_))
                              (let ((_g197220_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl196018196042%_
                                        '0))))
                                (begin
                                  (let ((_g197221_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g197220_)
                                               (##values-length _g197220_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g197221_ 2)))
                                        (error "Context expects 2 values"
                                               _g197221_)))
                                  (let ((_%$%target196019196045%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g197220_ 0)))
                                        (_%$%tl196021196047%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g197220_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl196021196047%_))
                                        (letrec ((_%$%loop196022196050%_
                                                  (lambda (_%$%hd196020196053%_
                                                           _%$%rands196026196055%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd196020196053%_))
                                                        (let ((_%$%e196023196057%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd196020196053%_))))
                  (let ((_%$%lp-hd196024196060%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e196023196057%_)))
                        (_%$%lp-tl196025196062%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e196023196057%_))))
                    (_%$%loop196022196050%_
                     _%$%lp-tl196025196062%_
                     (cons _%$%lp-hd196024196060%_ _%$%rands196026196055%_))))
                (let ((_%$%rands196027196065%_
                       (reverse _%$%rands196026196055%_)))
                  (for-each
                   (lambda (_%$%g196080196082%_)
                     (gxc#compile-e__1 _%self196010%_ _%$%g196080196082%_))
                   (let ((__tmp197222
                          (lambda (_%$%g196084196087%_ _%$%g196085196089%_)
                            (cons _%$%g196084196087%_ _%$%g196085196089%_))))
                     (declare (not safe))
                     (foldr__0 __tmp197222 '() _%$%rands196027196065%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop196022196050%_
                                           _%$%target196019196045%_
                                           '()))
                                        (_%$%g196013196032%_
                                         _%$%g196014196035%_)))))
                              (_%$%g196013196032%_ _%$%g196014196035%_))))
                      (_%$%g196013196032%_ _%$%g196014196035%_)))))
          (_%$%g196012196092%_ _%stx196011%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx196007%_ _%src-stx196008%_)
        (let ((__tmp197223
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx196008%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx196007%_ __tmp197223))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx196003%_ _%src-stx196004%_ _%ctx196005%_)
        (gxc#compile-e__1
         _%ctx196005%_
         (gxc#xform-wrap-source _%stx196003%_ _%src-stx196004%_))))
    (define gxc#xform-begin%
      (lambda (_%self195958%_ _%stx195959%_)
        (let* ((_%$%g195961195971%_
                (lambda (_%$%g195962195968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195962195968%_))))
               (_%$%g195960196000%_
                (lambda (_%$%g195962195974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195962195974%_))
                      (let ((_%$%e195964195976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195962195974%_))))
                        (let ((_%$%hd195965195979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195964195976%_)))
                              (_%$%tl195966195981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195964195976%_))))
                          (let ((_%forms195998%_
                                 (map (lambda (_%$%g195993195995%_)
                                        (gxc#compile-e__1
                                         _%self195958%_
                                         _%$%g195993195995%_))
                                      _%$%tl195966195981%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms195998%_)
                             _%stx195959%_))))
                      (_%$%g195961195971%_ _%$%g195962195974%_)))))
          (_%$%g195960196000%_ _%stx195959%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self195912%_ _%stx195913%_)
        (let* ((_%$%g195915195925%_
                (lambda (_%$%g195916195922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195916195922%_))))
               (_%$%g195914195955%_
                (lambda (_%$%g195916195928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195916195928%_))
                      (let ((_%$%e195918195930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195916195928%_))))
                        (let ((_%$%hd195919195933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195918195930%_)))
                              (_%$%tl195920195935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195918195930%_))))
                          (let ((__tmp197226
                                 (lambda ()
                                   (let ((_%forms195953%_
                                          (map (lambda (_%$%g195948195950%_)
                                                 (gxc#compile-e__1
                                                  _%self195912%_
                                                  _%$%g195948195950%_))
                                               _%$%tl195920195935%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms195953%_)
                                      _%stx195913%_))))
                                (__tmp197224
                                 (let ((__tmp197225
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp197225 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp197226
                             gx#current-expander-phi
                             __tmp197224))))
                      (_%$%g195915195925%_ _%$%g195916195928%_)))))
          (_%$%g195914195955%_ _%stx195913%_))))
    (define gxc#xform-module%
      (lambda (_%self195849%_ _%stx195850%_)
        (let* ((_%$%g195852195866%_
                (lambda (_%$%g195853195863%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195853195863%_))))
               (_%$%g195851195909%_
                (lambda (_%$%g195853195869%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195853195869%_))
                      (let ((_%$%e195856195871%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195853195869%_))))
                        (let ((_%$%hd195857195874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195856195871%_)))
                              (_%$%tl195858195876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195856195871%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195858195876%_))
                              (let ((_%$%e195859195879%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl195858195876%_))))
                                (let ((_%$%hd195860195882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195859195879%_)))
                                      (_%$%tl195861195884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195859195879%_))))
                                  (let* ((_%ctx195901%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd195860195882%_)))
                                         (_%code195903%_
                                          (##structure-ref
                                           _%ctx195901%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code195906%_
                                          (let ((__tmp197227
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self195849%_
                                                    _%code195903%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp197227
                                             gx#current-expander-context
                                             _%ctx195901%_))))
                                    (##structure-set!
                                     _%ctx195901%_
                                     _%code195906%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd195860195882%_
                                                 (cons _%code195906%_ '())))
                                     _%stx195850%_))))
                              (_%$%g195852195866%_ _%$%g195853195869%_))))
                      (_%$%g195852195866%_ _%$%g195853195869%_)))))
          (_%$%g195851195909%_ _%stx195850%_))))
    (define gxc#xform-define-values%
      (lambda (_%self195779%_ _%stx195780%_)
        (let* ((_%$%g195782195799%_
                (lambda (_%$%g195783195796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195783195796%_))))
               (_%$%g195781195846%_
                (lambda (_%$%g195783195802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195783195802%_))
                      (let ((_%$%e195786195804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195783195802%_))))
                        (let ((_%$%hd195787195807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195786195804%_)))
                              (_%$%tl195788195809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195786195804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195788195809%_))
                              (let ((_%$%e195789195812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl195788195809%_))))
                                (let ((_%$%hd195790195815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195789195812%_)))
                                      (_%$%tl195791195817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195789195812%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl195791195817%_))
                                      (let ((_%$%e195792195820%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl195791195817%_))))
                                        (let ((_%$%hd195793195823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e195792195820%_)))
                                              (_%$%tl195794195825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e195792195820%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl195794195825%_))
                                              (let ((_%expr195844%_
                                                     (gxc#compile-e__1
                                                      _%self195779%_
                                                      _%$%hd195793195823%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd195790195815%_
                                                             (cons _%expr195844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx195780%_))
                                              (_%$%g195782195799%_
                                               _%$%g195783195802%_))))
                                      (_%$%g195782195799%_
                                       _%$%g195783195802%_))))
                              (_%$%g195782195799%_ _%$%g195783195802%_))))
                      (_%$%g195782195799%_ _%$%g195783195802%_)))))
          (_%$%g195781195846%_ _%stx195780%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self195708%_ _%stx195709%_)
        (let* ((_%$%g195711195728%_
                (lambda (_%$%g195712195725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195712195725%_))))
               (_%$%g195710195776%_
                (lambda (_%$%g195712195731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195712195731%_))
                      (let ((_%$%e195715195733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195712195731%_))))
                        (let ((_%$%hd195716195736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195715195733%_)))
                              (_%$%tl195717195738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195715195733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195717195738%_))
                              (let ((_%$%e195718195741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl195717195738%_))))
                                (let ((_%$%hd195719195744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195718195741%_)))
                                      (_%$%tl195720195746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195718195741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl195720195746%_))
                                      (let ((_%$%e195721195749%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl195720195746%_))))
                                        (let ((_%$%hd195722195752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e195721195749%_)))
                                              (_%$%tl195723195754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e195721195749%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl195723195754%_))
                                              (let ((__tmp197230
                                                     (lambda ()
                                                       (let ((_%expr195774%_
                                                              (gxc#compile-e__1
                                                               _%self195708%_
                                                               _%$%hd195722195752%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd195719195744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr195774%_ '())))
                  _%stx195709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp197228
                                                     (let ((__tmp197229
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp197229
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp197230
                                                 gx#current-expander-phi
                                                 __tmp197228))
                                              (_%$%g195711195728%_
                                               _%$%g195712195731%_))))
                                      (_%$%g195711195728%_
                                       _%$%g195712195731%_))))
                              (_%$%g195711195728%_ _%$%g195712195731%_))))
                      (_%$%g195711195728%_ _%$%g195712195731%_)))))
          (_%$%g195710195776%_ _%stx195709%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self195638%_ _%stx195639%_)
        (let* ((_%$%g195641195658%_
                (lambda (_%$%g195642195655%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195642195655%_))))
               (_%$%g195640195705%_
                (lambda (_%$%g195642195661%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195642195661%_))
                      (let ((_%$%e195645195663%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195642195661%_))))
                        (let ((_%$%hd195646195666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195645195663%_)))
                              (_%$%tl195647195668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195645195663%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195647195668%_))
                              (let ((_%$%e195648195671%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl195647195668%_))))
                                (let ((_%$%hd195649195674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195648195671%_)))
                                      (_%$%tl195650195676%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195648195671%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl195650195676%_))
                                      (let ((_%$%e195651195679%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl195650195676%_))))
                                        (let ((_%$%hd195652195682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e195651195679%_)))
                                              (_%$%tl195653195684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e195651195679%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl195653195684%_))
                                              (let ((_%expr195703%_
                                                     (gxc#compile-e__1
                                                      _%self195638%_
                                                      _%$%hd195652195682%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd195649195674%_
                                                             (cons _%expr195703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx195639%_))
                                              (_%$%g195641195658%_
                                               _%$%g195642195661%_))))
                                      (_%$%g195641195658%_
                                       _%$%g195642195661%_))))
                              (_%$%g195641195658%_ _%$%g195642195661%_))))
                      (_%$%g195641195658%_ _%$%g195642195661%_)))))
          (_%$%g195640195705%_ _%stx195639%_))))
    (define gxc#xform-lambda%
      (lambda (_%self195576%_ _%stx195577%_)
        (let* ((_%$%g195579195593%_
                (lambda (_%$%g195580195590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195580195590%_))))
               (_%$%g195578195635%_
                (lambda (_%$%g195580195596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195580195596%_))
                      (let ((_%$%e195583195598%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195580195596%_))))
                        (let ((_%$%hd195584195601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195583195598%_)))
                              (_%$%tl195585195603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195583195598%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195585195603%_))
                              (let ((_%$%e195586195606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl195585195603%_))))
                                (let ((_%$%hd195587195609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195586195606%_)))
                                      (_%$%tl195588195611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195586195606%_))))
                                  (let ((__tmp197232
                                         (lambda ()
                                           (let ((_%body195633%_
                                                  (map (lambda (_%$%g195628195630%_)
                                                         (gxc#compile-e__1
                                                          _%self195576%_
                                                          _%$%g195628195630%_))
                                                       _%$%tl195588195611%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd195587195609%_
                                                          _%body195633%_))
                                              _%stx195577%_))))
                                        (__tmp197231
                                         (gxc#xform-let-locals
                                          _%$%hd195587195609%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp197232
                                     gxc#current-compile-local-env
                                     __tmp197231))))
                              (_%$%g195579195593%_ _%$%g195580195596%_))))
                      (_%$%g195579195593%_ _%$%g195580195596%_)))))
          (_%$%g195578195635%_ _%stx195577%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self195484%_ _%stx195485%_)
        (letrec ((_%clause-e195487%_
                  (lambda (_%clause195528%_)
                    (let* ((_%$%g195530195541%_
                            (lambda (_%$%g195531195538%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g195531195538%_))))
                           (_%$%g195529195573%_
                            (lambda (_%$%g195531195544%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g195531195544%_))
                                  (let ((_%$%e195534195546%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g195531195544%_))))
                                    (let ((_%$%hd195535195549%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e195534195546%_)))
                                          (_%$%tl195536195551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e195534195546%_))))
                                      (let ((__tmp197234
                                             (lambda ()
                                               (let ((_%body195571%_
                                                      (map (lambda (_%$%g195566195568%_)
                                                             (gxc#compile-e__1
                                                              _%self195484%_
                                                              _%$%g195566195568%_))
                                                           _%$%tl195536195551%_)))
                                                 (cons _%$%hd195535195549%_
                                                       _%body195571%_))))
                                            (__tmp197233
                                             (gxc#xform-let-locals
                                              _%$%hd195535195549%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp197234
                                         gxc#current-compile-local-env
                                         __tmp197233))))
                                  (_%$%g195530195541%_ _%$%g195531195544%_)))))
                      (_%$%g195529195573%_ _%clause195528%_)))))
          (let* ((_%$%g195489195499%_
                  (lambda (_%$%g195490195496%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g195490195496%_))))
                 (_%$%g195488195525%_
                  (lambda (_%$%g195490195502%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g195490195502%_))
                        (let ((_%$%e195492195504%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g195490195502%_))))
                          (let ((_%$%hd195493195507%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195492195504%_)))
                                (_%$%tl195494195509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195492195504%_))))
                            (let ((_%clauses195523%_
                                   (map _%clause-e195487%_
                                        _%$%tl195494195509%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses195523%_)
                               _%stx195485%_))))
                        (_%$%g195489195499%_ _%$%g195490195502%_)))))
            (_%$%g195488195525%_ _%stx195485%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self195244%_ _%stx195245%_)
        (let* ((_%$%g195247195280%_
                (lambda (_%$%g195248195277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195248195277%_))))
               (_%$%g195246195481%_
                (lambda (_%$%g195248195283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195248195283%_))
                      (let ((_%$%e195253195285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195248195283%_))))
                        (let ((_%$%hd195254195288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195253195285%_)))
                              (_%$%tl195255195290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195253195285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195255195290%_))
                              (let ((_%$%e195256195293%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl195255195290%_))))
                                (let ((_%$%hd195257195296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195256195293%_)))
                                      (_%$%tl195258195298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195256195293%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd195257195296%_))
                                      (let ((_g197235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd195257195296%_
                                                '0))))
                                        (begin
                                          (let ((_g197236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g197235_)
                                                       (##values-length
                                                        _g197235_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g197236_ 2)))
                                                (error "Context expects 2 values"
                                                       _g197236_)))
                                          (let ((_%$%target195259195301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g197235_ 0)))
                                                (_%$%tl195261195303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g197235_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl195261195303%_))
                                                (letrec ((_%$%loop195262195306%_
                                                          (lambda (_%$%hd195260195309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr195266195311%_
                           _%$%hd195267195312%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd195260195309%_))
                        (let ((_%$%e195263195314%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd195260195309%_))))
                          (let ((_%$%lp-hd195264195317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195263195314%_)))
                                (_%$%lp-tl195265195319%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195263195314%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd195264195317%_))
                                (let ((_%$%e195270195322%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd195264195317%_))))
                                  (let ((_%$%hd195271195325%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195270195322%_)))
                                        (_%$%tl195272195327%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195270195322%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl195272195327%_))
                                        (let ((_%$%e195273195330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl195272195327%_))))
                                          (let ((_%$%hd195274195333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e195273195330%_)))
                                                (_%$%tl195275195335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e195273195330%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl195275195335%_))
                                                (_%$%loop195262195306%_
                                                 _%$%lp-tl195265195319%_
                                                 (cons _%$%hd195274195333%_
                                                       _%$%expr195266195311%_)
                                                 (cons _%$%hd195271195325%_
                                                       _%$%hd195267195312%_))
                                                (_%$%g195247195280%_
                                                 _%$%g195248195283%_))))
                                        (_%$%g195247195280%_
                                         _%$%g195248195283%_))))
                                (_%$%g195247195280%_ _%$%g195248195283%_))))
                        (let ((_%$%expr195268195338%_
                               (reverse _%$%expr195266195311%_))
                              (_%$%hd195269195339%_
                               (reverse _%$%hd195267195312%_)))
                          (let* ((_%$%g195363195379%_
                                  (lambda (_%$%g195364195376%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g195364195376%_))))
                                 (_%$%g195362195467%_
                                  (lambda (_%$%g195364195382%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g195364195382%_))
                                        (let ((_g197237_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g195364195382%_
                                                  '0))))
                                          (begin
                                            (let ((_g197238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g197237_)
                                                         (##values-length
                                                          _g197237_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g197238_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g197238_)))
                                            (let ((_%$%target195366195384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g197237_
                                                      0)))
                                                  (_%$%tl195368195386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g197237_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl195368195386%_))
                                                  (letrec ((_%$%loop195369195389%_
                                                            (lambda (_%$%hd195367195392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr195373195394%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd195367195392%_))
                          (let ((_%$%e195370195396%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd195367195392%_))))
                            (let ((_%$%lp-hd195371195399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e195370195396%_)))
                                  (_%$%lp-tl195372195401%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e195370195396%_))))
                              (_%$%loop195369195389%_
                               _%$%lp-tl195372195401%_
                               (cons _%$%lp-hd195371195399%_
                                     _%$%expr195373195394%_))))
                          (let ((_%$%expr195374195404%_
                                 (reverse _%$%expr195373195394%_)))
                            (let ((__tmp197241
                                   (lambda ()
                                     (let* ((_%$%g195420195427%_
                                             (lambda (_%$%g195421195424%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g195421195424%_))))
                                            (_%$%g195419195453%_
                                             (lambda (_%$%g195421195430%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd195254195288%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr195374195404%_
                         _%$%hd195269195339%_))
                      (let ((__tmp197242
                             (lambda (_%$%g195442195446%_
                                      _%$%g195443195448%_
                                      _%$%g195444195450%_)
                               (cons (cons _%$%g195443195448%_
                                           (cons _%$%g195442195446%_ '()))
                                     _%$%g195444195450%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp197242
                         '()
                         _%$%expr195374195404%_
                         _%$%hd195269195339%_)))
                    _%$%g195421195430%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx195245%_))))
                                       (_%$%g195419195453%_
                                        (map (lambda (_%$%g195455195457%_)
                                               (gxc#compile-e__1
                                                _%self195244%_
                                                _%$%g195455195457%_))
                                             _%$%tl195258195298%_)))))
                                  (__tmp197239
                                   (gxc#xform-let-locals
                                    (let ((__tmp197240
                                           (lambda (_%$%g195459195462%_
                                                    _%$%g195460195464%_)
                                             (cons _%$%g195459195462%_
                                                   _%$%g195460195464%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp197240
                                       '()
                                       _%$%hd195269195339%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp197241
                               gxc#current-compile-local-env
                               __tmp197239)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop195369195389%_
                                                     _%$%target195366195384%_
                                                     '()))
                                                  (_%$%g195363195379%_
                                                   _%$%g195364195382%_)))))
                                        (_%$%g195363195379%_
                                         _%$%g195364195382%_)))))
                            (_%$%g195362195467%_
                             (map (lambda (_%$%g195469195471%_)
                                    (gxc#compile-e__1
                                     _%self195244%_
                                     _%$%g195469195471%_))
                                  (let ((__tmp197243
                                         (lambda (_%$%g195473195476%_
                                                  _%$%g195474195478%_)
                                           (cons _%$%g195473195476%_
                                                 _%$%g195474195478%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp197243
                                     '()
                                     _%$%expr195268195338%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop195262195306%_
                                                   _%$%target195259195301%_
                                                   '()
                                                   '()))
                                                (_%$%g195247195280%_
                                                 _%$%g195248195283%_)))))
                                      (_%$%g195247195280%_
                                       _%$%g195248195283%_))))
                              (_%$%g195247195280%_ _%$%g195248195283%_))))
                      (_%$%g195247195280%_ _%$%g195248195283%_)))))
          (_%$%g195246195481%_ _%stx195245%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self195004%_ _%stx195005%_)
        (let* ((_%$%g195007195040%_
                (lambda (_%$%g195008195037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195008195037%_))))
               (_%$%g195006195241%_
                (lambda (_%$%g195008195043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195008195043%_))
                      (let ((_%$%e195013195045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g195008195043%_))))
                        (let ((_%$%hd195014195048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195013195045%_)))
                              (_%$%tl195015195050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195013195045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195015195050%_))
                              (let ((_%$%e195016195053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl195015195050%_))))
                                (let ((_%$%hd195017195056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195016195053%_)))
                                      (_%$%tl195018195058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195016195053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd195017195056%_))
                                      (let ((_g197244_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd195017195056%_
                                                '0))))
                                        (begin
                                          (let ((_g197245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g197244_)
                                                       (##values-length
                                                        _g197244_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g197245_ 2)))
                                                (error "Context expects 2 values"
                                                       _g197245_)))
                                          (let ((_%$%target195019195061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g197244_ 0)))
                                                (_%$%tl195021195063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g197244_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl195021195063%_))
                                                (letrec ((_%$%loop195022195066%_
                                                          (lambda (_%$%hd195020195069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr195026195071%_
                           _%$%hd195027195072%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd195020195069%_))
                        (let ((_%$%e195023195074%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd195020195069%_))))
                          (let ((_%$%lp-hd195024195077%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195023195074%_)))
                                (_%$%lp-tl195025195079%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195023195074%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd195024195077%_))
                                (let ((_%$%e195030195082%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd195024195077%_))))
                                  (let ((_%$%hd195031195085%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195030195082%_)))
                                        (_%$%tl195032195087%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195030195082%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl195032195087%_))
                                        (let ((_%$%e195033195090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl195032195087%_))))
                                          (let ((_%$%hd195034195093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e195033195090%_)))
                                                (_%$%tl195035195095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e195033195090%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl195035195095%_))
                                                (_%$%loop195022195066%_
                                                 _%$%lp-tl195025195079%_
                                                 (cons _%$%hd195034195093%_
                                                       _%$%expr195026195071%_)
                                                 (cons _%$%hd195031195085%_
                                                       _%$%hd195027195072%_))
                                                (_%$%g195007195040%_
                                                 _%$%g195008195043%_))))
                                        (_%$%g195007195040%_
                                         _%$%g195008195043%_))))
                                (_%$%g195007195040%_ _%$%g195008195043%_))))
                        (let ((_%$%expr195028195098%_
                               (reverse _%$%expr195026195071%_))
                              (_%$%hd195029195099%_
                               (reverse _%$%hd195027195072%_)))
                          (let ((__tmp197248
                                 (lambda ()
                                   (let* ((_%$%g195124195140%_
                                           (lambda (_%$%g195125195137%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g195125195137%_))))
                                          (_%$%g195123195220%_
                                           (lambda (_%$%g195125195143%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g195125195143%_))
                                                 (let ((_g197249_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g195125195143%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g197250_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g197249_)
                          (##values-length _g197249_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g197250_ 2)))
                   (error "Context expects 2 values" _g197250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target195127195145%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g197249_
                                                               0)))
                                                           (_%$%tl195129195147%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g197249_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl195129195147%_))
                                                           (letrec ((_%$%loop195130195150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd195128195153%_
                                      _%$%expr195134195155%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd195128195153%_))
                                   (let ((_%$%e195131195157%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd195128195153%_))))
                                     (let ((_%$%lp-hd195132195160%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e195131195157%_)))
                                           (_%$%lp-tl195133195162%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e195131195157%_))))
                                       (_%$%loop195130195150%_
                                        _%$%lp-tl195133195162%_
                                        (cons _%$%lp-hd195132195160%_
                                              _%$%expr195134195155%_))))
                                   (let* ((_%$%expr195135195165%_
                                           (reverse _%$%expr195134195155%_))
                                          (_%$%g195181195188%_
                                           (lambda (_%$%g195182195185%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g195182195185%_))))
                                          (_%$%g195180195213%_
                                           (lambda (_%$%g195182195191%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd195014195048%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr195135195165%_
                                                               _%$%hd195029195099%_))
                                                            (let ((__tmp197251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g195202195206%_
                                    _%$%g195203195208%_
                                    _%$%g195204195210%_)
                             (cons (cons _%$%g195203195208%_
                                         (cons _%$%g195202195206%_ '()))
                                   _%$%g195204195210%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp197251
                       '()
                       _%$%expr195135195165%_
                       _%$%hd195029195099%_)))
                  _%$%g195182195191%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx195005%_))))
                                     (_%$%g195180195213%_
                                      (map (lambda (_%$%g195215195217%_)
                                             (gxc#compile-e__1
                                              _%self195004%_
                                              _%$%g195215195217%_))
                                           _%$%tl195018195058%_)))))))
                     (_%$%loop195130195150%_ _%$%target195127195145%_ '()))
                   (_%$%g195124195140%_ _%$%g195125195143%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g195124195140%_
                                                  _%$%g195125195143%_)))))
                                     (_%$%g195123195220%_
                                      (map (lambda (_%$%g195222195224%_)
                                             (gxc#compile-e__1
                                              _%self195004%_
                                              _%$%g195222195224%_))
                                           (let ((__tmp197252
                                                  (lambda (_%$%g195226195229%_
                                                           _%$%g195227195231%_)
                                                    (cons _%$%g195226195229%_
                                                          _%$%g195227195231%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp197252
                                              '()
                                              _%$%expr195028195098%_)))))))
                                (__tmp197246
                                 (gxc#xform-let-locals
                                  (let ((__tmp197247
                                         (lambda (_%$%g195233195236%_
                                                  _%$%g195234195238%_)
                                           (cons _%$%g195233195236%_
                                                 _%$%g195234195238%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp197247
                                     '()
                                     _%$%hd195029195099%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp197248
                             gxc#current-compile-local-env
                             __tmp197246)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop195022195066%_
                                                   _%$%target195019195061%_
                                                   '()
                                                   '()))
                                                (_%$%g195007195040%_
                                                 _%$%g195008195043%_)))))
                                      (_%$%g195007195040%_
                                       _%$%g195008195043%_))))
                              (_%$%g195007195040%_ _%$%g195008195043%_))))
                      (_%$%g195007195040%_ _%$%g195008195043%_)))))
          (_%$%g195006195241%_ _%stx195005%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings194871%_)
        (letrec ((_%flatten194873%_
                  (lambda (_%maybe-lst194931%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst194931%_))
                        (cons _%maybe-lst194931%_ '())
                        (let _%loop194933%_ ((_%rest194935%_
                                              _%maybe-lst194931%_)
                                             (_%result194936%_ '()))
                          (let* ((_%__stx197140197141%_ _%rest194935%_)
                                 (_%$%g194940194952%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx197140197141%_)))))
                            (let ((_%__kont197142197143%_
                                   (lambda (_%$%g194942194990%_
                                            _%$%g194943194991%_)
                                     (_%loop194933%_
                                      _%$%g194942194990%_
                                      (let ((__tmp197253
                                             (_%flatten194873%_
                                              _%$%g194943194991%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result194936%_
                                         __tmp197253)))))
                                  (_%__kont197144197145%_
                                   (lambda (_%$%g194947194964%_)
                                     (cons _%$%g194947194964%_
                                           _%result194936%_)))
                                  (_%__kont197146197147%_
                                   (lambda () _%result194936%_)))
                              (let ((_%$%g194938194977%_
                                     (lambda ()
                                       (let ((_%$%g194947194964%_
                                              _%__stx197140197141%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g194947194964%_))
                                             (_%__kont197144197145%_
                                              _%$%g194947194964%_)
                                             (_%__kont197146197147%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx197140197141%_))
                                    (let ((_%$%e194944194982%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx197140197141%_))))
                                      (let ((_%$%tl194946194987%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e194944194982%_)))
                                            (_%$%hd194945194985%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e194944194982%_))))
                                        (_%__kont197142197143%_
                                         _%$%tl194946194987%_
                                         _%$%hd194945194985%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g194938194977%_)))))))))))
          (let _%loop194875%_ ((_%rest194877%_
                                (_%flatten194873%_ _%bindings194871%_))
                               (_%locals194878%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest194879194890%_ _%rest194877%_)
                   (_%$%E194883194894%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest194879194890%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K194886194919%_
                     (lambda (_%rest194916%_ _%id194917%_)
                       (_%loop194875%_
                        _%rest194916%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id194917%_))
                              _%locals194878%_))))
                    (_%$%K194885194908%_
                     (lambda (_%id194906%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id194906%_))
                             _%locals194878%_)))
                    (_%$%K194884194899%_ (lambda () _%locals194878%_)))
                (let ((_%$%try-match194881194913%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest194879194890%_))
                             (let ((_%id194911%_ _%$%rest194879194890%_))
                               (_%$%K194885194908%_ _%id194911%_))
                             (_%$%K194884194899%_)))))
                  (if (pair? _%$%rest194879194890%_)
                      (let ((_%$%tl194888194924%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest194879194890%_)))
                            (_%$%hd194887194922%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest194879194890%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd194887194922%_))
                            (let ((_%id194927%_ _%$%hd194887194922%_)
                                  (_%rest194929%_ _%$%tl194888194924%_))
                              (_%$%K194886194919%_
                               _%rest194929%_
                               _%id194927%_))
                            (_%$%K194884194899%_)))
                      (_%$%try-match194881194913%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self194823%_ _%stx194824%_)
        (let* ((_%$%g194826194837%_
                (lambda (_%$%g194827194834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g194827194834%_))))
               (_%$%g194825194868%_
                (lambda (_%$%g194827194840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g194827194840%_))
                      (let ((_%$%e194830194842%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g194827194840%_))))
                        (let ((_%$%hd194831194845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194830194842%_)))
                              (_%$%tl194832194847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194830194842%_))))
                          (let ((_%rands194866%_
                                 (map (lambda (_%$%g194861194863%_)
                                        (gxc#compile-e__1
                                         _%self194823%_
                                         _%$%g194861194863%_))
                                      _%$%tl194832194847%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd194831194845%_ _%rands194866%_)
                             _%stx194824%_))))
                      (_%$%g194826194837%_ _%$%g194827194840%_)))))
          (_%$%g194825194868%_ _%stx194824%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self194753%_ _%stx194754%_)
        (let* ((_%$%g194756194773%_
                (lambda (_%$%g194757194770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g194757194770%_))))
               (_%$%g194755194820%_
                (lambda (_%$%g194757194776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g194757194776%_))
                      (let ((_%$%e194760194778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g194757194776%_))))
                        (let ((_%$%hd194761194781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194760194778%_)))
                              (_%$%tl194762194783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194760194778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl194762194783%_))
                              (let ((_%$%e194763194786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl194762194783%_))))
                                (let ((_%$%hd194764194789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e194763194786%_)))
                                      (_%$%tl194765194791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e194763194786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl194765194791%_))
                                      (let ((_%$%e194766194794%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl194765194791%_))))
                                        (let ((_%$%hd194767194797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e194766194794%_)))
                                              (_%$%tl194768194799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e194766194794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl194768194799%_))
                                              (let ((_%expr194818%_
                                                     (gxc#compile-e__1
                                                      _%self194753%_
                                                      _%$%hd194767194797%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd194764194789%_
                                                             (cons _%expr194818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx194754%_))
                                              (_%$%g194756194773%_
                                               _%$%g194757194776%_))))
                                      (_%$%g194756194773%_
                                       _%$%g194757194776%_))))
                              (_%$%g194756194773%_ _%$%g194757194776%_))))
                      (_%$%g194756194773%_ _%$%g194757194776%_)))))
          (_%$%g194755194820%_ _%stx194754%_))))))
