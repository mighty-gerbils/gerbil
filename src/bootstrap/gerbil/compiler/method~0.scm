(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712084086)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133642%_)
        (let* ((_%self133644%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133646%_
                (let ((__tmp133824
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133642%_))))
                  (declare (not safe))
                  (method-ref _%self133644%_ __tmp133824))))
          (if _%$e133646%_
              ((lambda (_%method133649%_)
                 (declare (not safe))
                 (_%method133649%_ _%self133644%_ _%stx133642%_))
               _%$e133646%_)
              (let ()
                (let ((__tmp133826
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133642%_)))
                      (__tmp133825
                       (let ()
                         (declare (not safe))
                         (gx#syntax->datum _%stx133642%_))))
                  (declare (not safe))
                  (error '"missing method"
                         _%self133644%_
                         __tmp133826
                         __tmp133825)))))))
    (define gxc#compile-e__1
      (lambda (_%self133653%_ _%stx133654%_)
        (let ((_%$e133656%_
               (let ((__tmp133827
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx133654%_))))
                 (declare (not safe))
                 (method-ref _%self133653%_ __tmp133827))))
          (if _%$e133656%_
              ((lambda (_%method133659%_)
                 (declare (not safe))
                 (_%method133659%_ _%self133653%_ _%stx133654%_))
               _%$e133656%_)
              (let ()
                (let ((__tmp133829
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133654%_)))
                      (__tmp133828
                       (let ()
                         (declare (not safe))
                         (gx#syntax->datum _%stx133654%_))))
                  (declare (not safe))
                  (error '"missing method"
                         _%self133653%_
                         __tmp133829
                         __tmp133828)))))))
    (define gxc#compile-e
      (lambda _g133831_
        (let ((_g133830_ (let () (declare (not safe)) (##length _g133831_))))
          (cond ((let () (declare (not safe)) (##fx= _g133830_ 1))
                 (apply (lambda (_%stx133642%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx133642%_)))
                        _g133831_))
                ((let () (declare (not safe)) (##fx= _g133830_ 2))
                 (apply (lambda (_%self133653%_ _%stx133654%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133653%_ _%stx133654%_)))
                        _g133831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133831_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133640%_)
        (let ((__tmp133832
               (car (let () (declare (not safe)) (gx#stx-e _%stx133640%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133832))))
    (define gxc#void-method (lambda (_%self133637%_ _%stx133638%_) '#!void))
    (define gxc#false-method (lambda (_%self133634%_ _%stx133635%_) '#f))
    (define gxc#true-method (lambda (_%self133631%_ _%stx133632%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133628%_ _%stx133629%_) _%stx133629%_))
    (define gxc#::void-expression::t
      (let ((__tmp133833 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133833
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133625%_
        (apply make-instance gxc#::void-expression::t _%$args133625%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133834
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
        (__make-promise __tmp133834)))
    (define gxc#::void-special-form::t
      (let ((__tmp133835 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133835
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133621%_
        (apply make-instance gxc#::void-special-form::t _%$args133621%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133836
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
        (__make-promise __tmp133836)))
    (define gxc#::void::t
      (let ((__tmp133837
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp133837 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133617%_
        (apply make-instance gxc#::void::t _%$args133617%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133838
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133838)))
    (define gxc#::false-expression::t
      (let ((__tmp133839 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133839
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133613%_
        (apply make-instance gxc#::false-expression::t _%$args133613%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133840
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
        (__make-promise __tmp133840)))
    (define gxc#::false-special-form::t
      (let ((__tmp133841 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133841
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133609%_
        (apply make-instance gxc#::false-special-form::t _%$args133609%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133842
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
        (__make-promise __tmp133842)))
    (define gxc#::false::t
      (let ((__tmp133843
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp133843 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133605%_
        (apply make-instance gxc#::false::t _%$args133605%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133844
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133844)))
    (define gxc#::identity-expression::t
      (let ((__tmp133845 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133845
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133601%_
        (apply make-instance gxc#::identity-expression::t _%$args133601%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133846
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
        (__make-promise __tmp133846)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133847 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133847
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133597%_
        (apply make-instance gxc#::identity-special-form::t _%$args133597%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133848
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
        (__make-promise __tmp133848)))
    (define gxc#::identity::t
      (let ((__tmp133849
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133849
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133593%_
        (apply make-instance gxc#::identity::t _%$args133593%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133850
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133850)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133851 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133851
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133589%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133589%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133852
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
        (__make-promise __tmp133852)))
    (define gxc#::basic-xform::t
      (let ((__tmp133853
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133853
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133585%_
        (apply make-instance gxc#::basic-xform::t _%$args133585%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133854
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
        (__make-promise __tmp133854)))
    (define gxc#apply-begin%
      (lambda (_%self133541%_ _%stx133542%_)
        (let* ((_%g133544133554%_
                (lambda (_%g133545133551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133545133551%_))))
               (_%g133543133581%_
                (lambda (_%g133545133557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133545133557%_))
                      (let ((_%e133549133559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133545133557%_))))
                        (let ((_%hd133548133562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133549133559%_)))
                              (_%tl133547133564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133549133559%_))))
                          ((lambda (_%L133567%_)
                             (for-each
                              (lambda (_%g133576133578%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self133541%_
                                   _%g133576133578%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133567%_))))
                           _%tl133547133564%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133544133554%_ _%g133545133557%_))))))
          (declare (not safe))
          (_%g133543133581%_ _%stx133542%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133502%_ _%stx133503%_)
        (let* ((_%g133505133515%_
                (lambda (_%g133506133512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133506133512%_))))
               (_%g133504133538%_
                (lambda (_%g133506133518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133506133518%_))
                      (let ((_%e133510133520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133506133518%_))))
                        (let ((_%hd133509133523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133510133520%_)))
                              (_%tl133508133525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133510133520%_))))
                          ((lambda (_%L133528%_)
                             (let ((__tmp133855 (last _%L133528%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self133502%_ __tmp133855)))
                           _%tl133508133525%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133505133515%_ _%g133506133518%_))))))
          (declare (not safe))
          (_%g133504133538%_ _%stx133503%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133498%_ _%stx133499%_)
        (let ((__tmp133858
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self133498%_ _%stx133499%_))))
              (__tmp133856
               (let ((__tmp133857
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133857 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133858
           gx#current-expander-phi
           __tmp133856))))
    (define gxc#apply-module%
      (lambda (_%self133437%_ _%stx133438%_)
        (let* ((_%g133440133454%_
                (lambda (_%g133441133451%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133441133451%_))))
               (_%g133439133495%_
                (lambda (_%g133441133457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133441133457%_))
                      (let ((_%e133446133459%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133441133457%_))))
                        (let ((_%hd133445133462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133446133459%_)))
                              (_%tl133444133464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133446133459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133444133464%_))
                              (let ((_%e133449133467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133444133464%_))))
                                (let ((_%hd133448133470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133449133467%_)))
                                      (_%tl133447133472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133449133467%_))))
                                  ((lambda (_%L133475%_ _%L133476%_)
                                     (let* ((_%ctx133489%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133476%_)))
                                            (_%ctx-stx133491%_
                                             (##structure-ref
                                              _%ctx133489%_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp133859
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self133437%_
                                                   _%ctx-stx133491%_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp133859
                                          gx#current-expander-context
                                          _%ctx133489%_))))
                                   _%tl133447133472%_
                                   _%hd133448133470%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133440133454%_ _%g133441133457%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133440133454%_ _%g133441133457%_))))))
          (declare (not safe))
          (_%g133439133495%_ _%stx133438%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133369%_ _%stx133370%_)
        (let* ((_%g133372133389%_
                (lambda (_%g133373133386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133373133386%_))))
               (_%g133371133434%_
                (lambda (_%g133373133392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133373133392%_))
                      (let ((_%e133378133394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133373133392%_))))
                        (let ((_%hd133377133397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133378133394%_)))
                              (_%tl133376133399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133378133394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133376133399%_))
                              (let ((_%e133381133402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133376133399%_))))
                                (let ((_%hd133380133405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133381133402%_)))
                                      (_%tl133379133407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133381133402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133379133407%_))
                                      (let ((_%e133384133410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133379133407%_))))
                                        (let ((_%hd133383133413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133384133410%_)))
                                              (_%tl133382133415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133384133410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133382133415%_))
                                              ((lambda (_%L133418%_
                                                        _%L133419%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133369%_
                                                    _%L133418%_)))
                                               _%hd133383133413%_
                                               _%hd133380133405%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133372133389%_
                                                 _%g133373133392%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133372133389%_
                                         _%g133373133392%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133372133389%_ _%g133373133392%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133372133389%_ _%g133373133392%_))))))
          (declare (not safe))
          (_%g133371133434%_ _%stx133370%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133301%_ _%stx133302%_)
        (let* ((_%g133304133321%_
                (lambda (_%g133305133318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133305133318%_))))
               (_%g133303133366%_
                (lambda (_%g133305133324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133305133324%_))
                      (let ((_%e133310133326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133305133324%_))))
                        (let ((_%hd133309133329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133310133326%_)))
                              (_%tl133308133331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133310133326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133308133331%_))
                              (let ((_%e133313133334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133308133331%_))))
                                (let ((_%hd133312133337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133313133334%_)))
                                      (_%tl133311133339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133313133334%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133311133339%_))
                                      (let ((_%e133316133342%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133311133339%_))))
                                        (let ((_%hd133315133345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133316133342%_)))
                                              (_%tl133314133347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133316133342%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133314133347%_))
                                              ((lambda (_%L133350%_
                                                        _%L133351%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133301%_
                                                    _%L133350%_)))
                                               _%hd133315133345%_
                                               _%hd133312133337%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133304133321%_
                                                 _%g133305133324%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133304133321%_
                                         _%g133305133324%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133304133321%_ _%g133305133324%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133304133321%_ _%g133305133324%_))))))
          (declare (not safe))
          (_%g133303133366%_ _%stx133302%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133232%_ _%stx133233%_)
        (let* ((_%g133235133252%_
                (lambda (_%g133236133249%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133236133249%_))))
               (_%g133234133298%_
                (lambda (_%g133236133255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133236133255%_))
                      (let ((_%e133241133257%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133236133255%_))))
                        (let ((_%hd133240133260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133241133257%_)))
                              (_%tl133239133262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133241133257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133239133262%_))
                              (let ((_%e133244133265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133239133262%_))))
                                (let ((_%hd133243133268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133244133265%_)))
                                      (_%tl133242133270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133244133265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133242133270%_))
                                      (let ((_%e133247133273%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133242133270%_))))
                                        (let ((_%hd133246133276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133247133273%_)))
                                              (_%tl133245133278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133247133273%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133245133278%_))
                                              ((lambda (_%L133281%_
                                                        _%L133282%_)
                                                 (let ((__tmp133862
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133232%_
                                                             _%L133281%_))))
                                                       (__tmp133860
                                                        (let ((__tmp133861
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133861 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133862
                                                    gx#current-expander-phi
                                                    __tmp133860)))
                                               _%hd133246133276%_
                                               _%hd133243133268%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133235133252%_
                                                 _%g133236133255%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133235133252%_
                                         _%g133236133255%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133235133252%_ _%g133236133255%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133235133252%_ _%g133236133255%_))))))
          (declare (not safe))
          (_%g133234133298%_ _%stx133233%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133164%_ _%stx133165%_)
        (let* ((_%g133167133184%_
                (lambda (_%g133168133181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133168133181%_))))
               (_%g133166133229%_
                (lambda (_%g133168133187%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133168133187%_))
                      (let ((_%e133173133189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133168133187%_))))
                        (let ((_%hd133172133192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133173133189%_)))
                              (_%tl133171133194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133173133189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133171133194%_))
                              (let ((_%e133176133197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133171133194%_))))
                                (let ((_%hd133175133200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133176133197%_)))
                                      (_%tl133174133202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133176133197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133174133202%_))
                                      (let ((_%e133179133205%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133174133202%_))))
                                        (let ((_%hd133178133208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133179133205%_)))
                                              (_%tl133177133210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133179133205%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133177133210%_))
                                              ((lambda (_%L133213%_
                                                        _%L133214%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133164%_
                                                    _%L133213%_)))
                                               _%hd133178133208%_
                                               _%hd133175133200%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133167133184%_
                                                 _%g133168133187%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133167133184%_
                                         _%g133168133187%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133167133184%_ _%g133168133187%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133167133184%_ _%g133168133187%_))))))
          (declare (not safe))
          (_%g133166133229%_ _%stx133165%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133046%_ _%stx133047%_)
        (let* ((_%g133049133077%_
                (lambda (_%g133050133074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133050133074%_))))
               (_%g133048133161%_
                (lambda (_%g133050133080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133050133080%_))
                      (let ((_%e133055133082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133050133080%_))))
                        (let ((_%hd133054133085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133055133082%_)))
                              (_%tl133053133087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133055133082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133053133087%_))
                              (let ((_g133863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133053133087%_
                                        '0))))
                                (begin
                                  (let ((_g133864_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133863_)
                                               (##vector-length _g133863_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133864_ 2)))
                                        (error "Context expects 2 values"
                                               _g133864_)))
                                  (let ((_%target133056133090%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133863_ 0)))
                                        (_%tl133058133092%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133863_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133058133092%_))
                                        (letrec ((_%loop133059133095%_
                                                  (lambda (_%hd133057133098%_
                                                           _%body133063133100%_
                                                           _%hd133064133102%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133057133098%_))
                                                        (let ((_%e133060133105%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133057133098%_))))
                  (let ((_%lp-hd133061133108%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133060133105%_)))
                        (_%lp-tl133062133110%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133060133105%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133061133108%_))
                        (let ((_%e133069133113%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133061133108%_))))
                          (let ((_%hd133068133116%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133069133113%_)))
                                (_%tl133067133118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133069133113%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133067133118%_))
                                (let ((_%e133072133121%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133067133118%_))))
                                  (let ((_%hd133071133124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133072133121%_)))
                                        (_%tl133070133126%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133072133121%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133070133126%_))
                                        (let ((__tmp133866
                                               (cons _%hd133071133124%_
                                                     _%body133063133100%_))
                                              (__tmp133865
                                               (cons _%hd133068133116%_
                                                     _%hd133064133102%_)))
                                          (declare (not safe))
                                          (_%loop133059133095%_
                                           _%lp-tl133062133110%_
                                           __tmp133866
                                           __tmp133865))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133049133077%_
                                           _%g133050133080%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133049133077%_ _%g133050133080%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133049133077%_ _%g133050133080%_)))))
                (let ((_%body133065133129%_ (reverse _%body133063133100%_))
                      (_%hd133066133131%_ (reverse _%hd133064133102%_)))
                  ((lambda (_%L133134%_ _%L133135%_)
                     (for-each
                      (lambda (_%g133149133151%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133046%_ _%g133149133151%_)))
                      (let ((__tmp133867
                             (lambda (_%g133153133156%_ _%g133154133158%_)
                               (cons _%g133153133156%_ _%g133154133158%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133867 '() _%L133134%_))))
                   _%body133065133129%_
                   _%hd133066133131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133059133095%_
                                             _%target133056133090%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133049133077%_
                                           _%g133050133080%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133049133077%_ _%g133050133080%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133049133077%_ _%g133050133080%_))))))
          (declare (not safe))
          (_%g133048133161%_ _%stx133047%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self132899%_ _%stx132900%_)
        (let* ((_%g132902132937%_
                (lambda (_%g132903132934%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132903132934%_))))
               (_%g132901133043%_
                (lambda (_%g132903132940%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132903132940%_))
                      (let ((_%e132909132942%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132903132940%_))))
                        (let ((_%hd132908132945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132909132942%_)))
                              (_%tl132907132947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132909132942%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132907132947%_))
                              (let ((_%e132912132950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132907132947%_))))
                                (let ((_%hd132911132953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132912132950%_)))
                                      (_%tl132910132955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132912132950%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132911132953%_))
                                      (let ((_g133868_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132911132953%_
                                                '0))))
                                        (begin
                                          (let ((_g133869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133868_)
                                                       (##vector-length
                                                        _g133868_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133869_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133869_)))
                                          (let ((_%target132913132958%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133868_ 0)))
                                                (_%tl132915132960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133868_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132915132960%_))
                                                (letrec ((_%loop132916132963%_
                                                          (lambda (_%hd132914132966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132920132968%_
                           _%hd132921132970%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132914132966%_))
                        (let ((_%e132917132973%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132914132966%_))))
                          (let ((_%lp-hd132918132976%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132917132973%_)))
                                (_%lp-tl132919132978%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132917132973%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132918132976%_))
                                (let ((_%e132926132981%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132918132976%_))))
                                  (let ((_%hd132925132984%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132926132981%_)))
                                        (_%tl132924132986%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132926132981%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132924132986%_))
                                        (let ((_%e132929132989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132924132986%_))))
                                          (let ((_%hd132928132992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132929132989%_)))
                                                (_%tl132927132994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132929132989%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132927132994%_))
                                                (let ((__tmp133871
                                                       (cons _%hd132928132992%_
                                                             _%expr132920132968%_))
                                                      (__tmp133870
                                                       (cons _%hd132925132984%_
                                                             _%hd132921132970%_)))
                                                  (declare (not safe))
                                                  (_%loop132916132963%_
                                                   _%lp-tl132919132978%_
                                                   __tmp133871
                                                   __tmp133870))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132902132937%_
                                                   _%g132903132940%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132902132937%_
                                           _%g132903132940%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132902132937%_ _%g132903132940%_)))))
                        (let ((_%expr132922132997%_
                               (reverse _%expr132920132968%_))
                              (_%hd132923132999%_
                               (reverse _%hd132921132970%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132910132955%_))
                              (let ((_%e132932133002%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132910132955%_))))
                                (let ((_%hd132931133005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132932133002%_)))
                                      (_%tl132930133007%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132932133002%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132930133007%_))
                                      ((lambda (_%L133010%_
                                                _%L133011%_
                                                _%L133012%_)
                                         (for-each
                                          (lambda (_%g133031133033%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132899%_
                                               _%g133031133033%_)))
                                          (let ((__tmp133873
                                                 (lambda (_%g133035133038%_
                                                          _%g133036133040%_)
                                                   (cons _%g133035133038%_
                                                         _%g133036133040%_)))
                                                (__tmp133872
                                                 (cons _%L133010%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133873
                                             __tmp133872
                                             _%L133011%_))))
                                       _%hd132931133005%_
                                       _%expr132922132997%_
                                       _%hd132923132999%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g132902132937%_
                                         _%g132903132940%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132902132937%_ _%g132903132940%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132916132963%_
                                                     _%target132913132958%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132902132937%_
                                                   _%g132903132940%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132902132937%_
                                         _%g132903132940%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132902132937%_ _%g132903132940%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132902132937%_ _%g132903132940%_))))))
          (declare (not safe))
          (_%g132901133043%_ _%stx132900%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132844%_ _%stx132845%_)
        (let* ((_%g132847132861%_
                (lambda (_%g132848132858%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132848132858%_))))
               (_%g132846132896%_
                (lambda (_%g132848132864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132848132864%_))
                      (let ((_%e132853132866%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132848132864%_))))
                        (let ((_%hd132852132869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132853132866%_)))
                              (_%tl132851132871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132853132866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132851132871%_))
                              (let ((_%e132856132874%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132851132871%_))))
                                (let ((_%hd132855132877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132856132874%_)))
                                      (_%tl132854132879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132856132874%_))))
                                  ((lambda (_%L132882%_ _%L132883%_)
                                     (let ((__tmp133874 (last _%L132882%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self132844%_
                                        __tmp133874)))
                                   _%tl132854132879%_
                                   _%hd132855132877%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132847132861%_ _%g132848132864%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132847132861%_ _%g132848132864%_))))))
          (declare (not safe))
          (_%g132846132896%_ _%stx132845%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132776%_ _%stx132777%_)
        (let* ((_%g132779132796%_
                (lambda (_%g132780132793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132780132793%_))))
               (_%g132778132841%_
                (lambda (_%g132780132799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132780132799%_))
                      (let ((_%e132785132801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132780132799%_))))
                        (let ((_%hd132784132804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132785132801%_)))
                              (_%tl132783132806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132785132801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132783132806%_))
                              (let ((_%e132788132809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132783132806%_))))
                                (let ((_%hd132787132812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132788132809%_)))
                                      (_%tl132786132814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132788132809%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132786132814%_))
                                      (let ((_%e132791132817%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132786132814%_))))
                                        (let ((_%hd132790132820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132791132817%_)))
                                              (_%tl132789132822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132791132817%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132789132822%_))
                                              ((lambda (_%L132825%_
                                                        _%L132826%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self132776%_
                                                    _%L132825%_)))
                                               _%hd132790132820%_
                                               _%hd132787132812%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132779132796%_
                                                 _%g132780132799%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132779132796%_
                                         _%g132780132799%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132779132796%_ _%g132780132799%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132779132796%_ _%g132780132799%_))))))
          (declare (not safe))
          (_%g132778132841%_ _%stx132777%_))))
    (define gxc#apply-operands
      (lambda (_%self132689%_ _%stx132690%_)
        (let* ((_%g132692132711%_
                (lambda (_%g132693132708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132693132708%_))))
               (_%g132691132773%_
                (lambda (_%g132693132714%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132693132714%_))
                      (let ((_%e132697132716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132693132714%_))))
                        (let ((_%hd132696132719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132697132716%_)))
                              (_%tl132695132721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132697132716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132695132721%_))
                              (let ((_g133875_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132695132721%_
                                        '0))))
                                (begin
                                  (let ((_g133876_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133875_)
                                               (##vector-length _g133875_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133876_ 2)))
                                        (error "Context expects 2 values"
                                               _g133876_)))
                                  (let ((_%target132698132724%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133875_ 0)))
                                        (_%tl132700132726%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133875_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132700132726%_))
                                        (letrec ((_%loop132701132729%_
                                                  (lambda (_%hd132699132732%_
                                                           _%rands132705132734%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132699132732%_))
                                                        (let ((_%e132702132737%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132699132732%_))))
                  (let ((_%lp-hd132703132740%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132702132737%_)))
                        (_%lp-tl132704132742%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132702132737%_))))
                    (let ((__tmp133877
                           (cons _%lp-hd132703132740%_ _%rands132705132734%_)))
                      (declare (not safe))
                      (_%loop132701132729%_
                       _%lp-tl132704132742%_
                       __tmp133877))))
                (let ((_%rands132706132745%_ (reverse _%rands132705132734%_)))
                  ((lambda (_%L132748%_)
                     (for-each
                      (lambda (_%g132761132763%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132689%_ _%g132761132763%_)))
                      (let ((__tmp133878
                             (lambda (_%g132765132768%_ _%g132766132770%_)
                               (cons _%g132765132768%_ _%g132766132770%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133878 '() _%L132748%_))))
                   _%rands132706132745%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop132701132729%_
                                             _%target132698132724%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132692132711%_
                                           _%g132693132714%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g132692132711%_ _%g132693132714%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132692132711%_ _%g132693132714%_))))))
          (declare (not safe))
          (_%g132691132773%_ _%stx132690%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132686%_ _%src-stx132687%_)
        (let ((__tmp133879
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132687%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132686%_ __tmp133879))))
    (define gxc#xform-begin%
      (lambda (_%self132641%_ _%stx132642%_)
        (let* ((_%g132644132654%_
                (lambda (_%g132645132651%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132645132651%_))))
               (_%g132643132683%_
                (lambda (_%g132645132657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132645132657%_))
                      (let ((_%e132649132659%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132645132657%_))))
                        (let ((_%hd132648132662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132649132659%_)))
                              (_%tl132647132664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132649132659%_))))
                          ((lambda (_%L132667%_)
                             (let* ((_%forms132681%_
                                     (map (lambda (_%g132676132678%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132641%_
                                               _%g132676132678%_)))
                                          _%L132667%_))
                                    (__tmp133880
                                     (cons '%#begin _%forms132681%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp133880
                                _%stx132642%_)))
                           _%tl132647132664%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132644132654%_ _%g132645132657%_))))))
          (declare (not safe))
          (_%g132643132683%_ _%stx132642%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132595%_ _%stx132596%_)
        (let* ((_%g132598132608%_
                (lambda (_%g132599132605%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132599132605%_))))
               (_%g132597132638%_
                (lambda (_%g132599132611%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132599132611%_))
                      (let ((_%e132603132613%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132599132611%_))))
                        (let ((_%hd132602132616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132603132613%_)))
                              (_%tl132601132618%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132603132613%_))))
                          ((lambda (_%L132621%_)
                             (let ((__tmp133883
                                    (lambda ()
                                      (let* ((_%forms132636%_
                                              (map (lambda (_%g132631132633%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132595%_
                                                        _%g132631132633%_)))
                                                   _%L132621%_))
                                             (__tmp133884
                                              (cons '%#begin-syntax
                                                    _%forms132636%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp133884
                                         _%stx132596%_))))
                                   (__tmp133881
                                    (let ((__tmp133882
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp133882 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133883
                                gx#current-expander-phi
                                __tmp133881)))
                           _%tl132601132618%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132598132608%_ _%g132599132611%_))))))
          (declare (not safe))
          (_%g132597132638%_ _%stx132596%_))))
    (define gxc#xform-module%
      (lambda (_%self132532%_ _%stx132533%_)
        (let* ((_%g132535132549%_
                (lambda (_%g132536132546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132536132546%_))))
               (_%g132534132592%_
                (lambda (_%g132536132552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132536132552%_))
                      (let ((_%e132541132554%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132536132552%_))))
                        (let ((_%hd132540132557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132541132554%_)))
                              (_%tl132539132559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132541132554%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132539132559%_))
                              (let ((_%e132544132562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132539132559%_))))
                                (let ((_%hd132543132565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132544132562%_)))
                                      (_%tl132542132567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132544132562%_))))
                                  ((lambda (_%L132570%_ _%L132571%_)
                                     (let* ((_%ctx132584%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132571%_)))
                                            (_%code132586%_
                                             (##structure-ref
                                              _%ctx132584%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132589%_
                                             (let ((__tmp133885
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self132532%_
                                                         _%code132586%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp133885
                                                gx#current-expander-context
                                                _%ctx132584%_))))
                                       (##structure-set!
                                        _%ctx132584%_
                                        _%code132589%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp133886
                                              (cons '%#module
                                                    (cons _%L132571%_
                                                          (cons _%code132589%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp133886
                                          _%stx132533%_))))
                                   _%tl132542132567%_
                                   _%hd132543132565%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132535132549%_ _%g132536132552%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132535132549%_ _%g132536132552%_))))))
          (declare (not safe))
          (_%g132534132592%_ _%stx132533%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132462%_ _%stx132463%_)
        (let* ((_%g132465132482%_
                (lambda (_%g132466132479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132466132479%_))))
               (_%g132464132529%_
                (lambda (_%g132466132485%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132466132485%_))
                      (let ((_%e132471132487%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132466132485%_))))
                        (let ((_%hd132470132490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132471132487%_)))
                              (_%tl132469132492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132471132487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132469132492%_))
                              (let ((_%e132474132495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132469132492%_))))
                                (let ((_%hd132473132498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132474132495%_)))
                                      (_%tl132472132500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132474132495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132472132500%_))
                                      (let ((_%e132477132503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132472132500%_))))
                                        (let ((_%hd132476132506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132477132503%_)))
                                              (_%tl132475132508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132477132503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132475132508%_))
                                              ((lambda (_%L132511%_
                                                        _%L132512%_)
                                                 (let* ((_%expr132527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132462%_
                                                            _%L132511%_)))
                                                        (__tmp133887
                                                         (cons '%#define-values
                                                               (cons _%L132512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132527%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp133887
                                                    _%stx132463%_)))
                                               _%hd132476132506%_
                                               _%hd132473132498%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132465132482%_
                                                 _%g132466132485%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132465132482%_
                                         _%g132466132485%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132465132482%_ _%g132466132485%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132465132482%_ _%g132466132485%_))))))
          (declare (not safe))
          (_%g132464132529%_ _%stx132463%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132391%_ _%stx132392%_)
        (let* ((_%g132394132411%_
                (lambda (_%g132395132408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132395132408%_))))
               (_%g132393132459%_
                (lambda (_%g132395132414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132395132414%_))
                      (let ((_%e132400132416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132395132414%_))))
                        (let ((_%hd132399132419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132400132416%_)))
                              (_%tl132398132421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132400132416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132398132421%_))
                              (let ((_%e132403132424%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132398132421%_))))
                                (let ((_%hd132402132427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132403132424%_)))
                                      (_%tl132401132429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132403132424%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132401132429%_))
                                      (let ((_%e132406132432%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132401132429%_))))
                                        (let ((_%hd132405132435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132406132432%_)))
                                              (_%tl132404132437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132406132432%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132404132437%_))
                                              ((lambda (_%L132440%_
                                                        _%L132441%_)
                                                 (let ((__tmp133890
                                                        (lambda ()
                                                          (let* ((_%expr132457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self132391%_ _%L132440%_)))
                         (__tmp133891
                          (cons '%#define-syntax
                                (cons _%L132441%_ (cons _%expr132457%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp133891 _%stx132392%_))))
               (__tmp133888
                (let ((__tmp133889
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133889 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133890
                                                    gx#current-expander-phi
                                                    __tmp133888)))
                                               _%hd132405132435%_
                                               _%hd132402132427%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132394132411%_
                                                 _%g132395132414%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132394132411%_
                                         _%g132395132414%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132394132411%_ _%g132395132414%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132394132411%_ _%g132395132414%_))))))
          (declare (not safe))
          (_%g132393132459%_ _%stx132392%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132321%_ _%stx132322%_)
        (let* ((_%g132324132341%_
                (lambda (_%g132325132338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132325132338%_))))
               (_%g132323132388%_
                (lambda (_%g132325132344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132325132344%_))
                      (let ((_%e132330132346%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132325132344%_))))
                        (let ((_%hd132329132349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132330132346%_)))
                              (_%tl132328132351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132330132346%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132328132351%_))
                              (let ((_%e132333132354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132328132351%_))))
                                (let ((_%hd132332132357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132333132354%_)))
                                      (_%tl132331132359%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132333132354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132331132359%_))
                                      (let ((_%e132336132362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132331132359%_))))
                                        (let ((_%hd132335132365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132336132362%_)))
                                              (_%tl132334132367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132336132362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132334132367%_))
                                              ((lambda (_%L132370%_
                                                        _%L132371%_)
                                                 (let* ((_%expr132386%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132321%_
                                                            _%L132370%_)))
                                                        (__tmp133892
                                                         (cons '%#begin-annotation
                                                               (cons _%L132371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132386%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp133892
                                                    _%stx132322%_)))
                                               _%hd132335132365%_
                                               _%hd132332132357%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132324132341%_
                                                 _%g132325132344%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132324132341%_
                                         _%g132325132344%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132324132341%_ _%g132325132344%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132324132341%_ _%g132325132344%_))))))
          (declare (not safe))
          (_%g132323132388%_ _%stx132322%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132259%_ _%stx132260%_)
        (let* ((_%g132262132276%_
                (lambda (_%g132263132273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132263132273%_))))
               (_%g132261132318%_
                (lambda (_%g132263132279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132263132279%_))
                      (let ((_%e132268132281%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132263132279%_))))
                        (let ((_%hd132267132284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132268132281%_)))
                              (_%tl132266132286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132268132281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132266132286%_))
                              (let ((_%e132271132289%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132266132286%_))))
                                (let ((_%hd132270132292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132271132289%_)))
                                      (_%tl132269132294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132271132289%_))))
                                  ((lambda (_%L132297%_ _%L132298%_)
                                     (let ((__tmp133895
                                            (lambda ()
                                              (let* ((_%body132316%_
                                                      (map (lambda (_%g132311132313%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132259%_ _%g132311132313%_)))
                   _%L132297%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp133896
                                                      (cons '%#lambda
                                                            (cons _%L132298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body132316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp133896
                                                 _%stx132260%_))))
                                           (__tmp133893
                                            (let ((__tmp133894
                                                   (cons _%L132298%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp133894))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133895
                                        gxc#current-compile-local-env
                                        __tmp133893)))
                                   _%tl132269132294%_
                                   _%hd132270132292%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132262132276%_ _%g132263132279%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132262132276%_ _%g132263132279%_))))))
          (declare (not safe))
          (_%g132261132318%_ _%stx132260%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132167%_ _%stx132168%_)
        (letrec ((_%clause-e132170%_
                  (lambda (_%clause132211%_)
                    (let* ((_%g132213132224%_
                            (lambda (_%g132214132221%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132214132221%_))))
                           (_%g132212132256%_
                            (lambda (_%g132214132227%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132214132227%_))
                                  (let ((_%e132219132229%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132214132227%_))))
                                    (let ((_%hd132218132232%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132219132229%_)))
                                          (_%tl132217132234%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132219132229%_))))
                                      ((lambda (_%L132237%_ _%L132238%_)
                                         (let ((__tmp133899
                                                (lambda ()
                                                  (let ((_%body132254%_
                                                         (map (lambda (_%g132249132251%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132167%_ _%g132249132251%_)))
                      _%L132237%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132238%_
                                                          _%body132254%_))))
                                               (__tmp133897
                                                (let ((__tmp133898
                                                       (cons _%L132238%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp133898))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp133899
                                            gxc#current-compile-local-env
                                            __tmp133897)))
                                       _%tl132217132234%_
                                       _%hd132218132232%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132213132224%_ _%g132214132227%_))))))
                      (declare (not safe))
                      (_%g132212132256%_ _%clause132211%_)))))
          (let* ((_%g132172132182%_
                  (lambda (_%g132173132179%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132173132179%_))))
                 (_%g132171132208%_
                  (lambda (_%g132173132185%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132173132185%_))
                        (let ((_%e132177132187%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132173132185%_))))
                          (let ((_%hd132176132190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132177132187%_)))
                                (_%tl132175132192%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132177132187%_))))
                            ((lambda (_%L132195%_)
                               (let* ((_%clauses132206%_
                                       (map _%clause-e132170%_ _%L132195%_))
                                      (__tmp133900
                                       (cons '%#case-lambda
                                             _%clauses132206%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp133900
                                  _%stx132168%_)))
                             _%tl132175132192%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132172132182%_ _%g132173132185%_))))))
            (declare (not safe))
            (_%g132171132208%_ _%stx132168%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self131921%_ _%stx131922%_)
        (let* ((_%g131924131957%_
                (lambda (_%g131925131954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131925131954%_))))
               (_%g131923132164%_
                (lambda (_%g131925131960%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131925131960%_))
                      (let ((_%e131932131962%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131925131960%_))))
                        (let ((_%hd131931131965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131932131962%_)))
                              (_%tl131930131967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131932131962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131930131967%_))
                              (let ((_%e131935131970%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131930131967%_))))
                                (let ((_%hd131934131973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131935131970%_)))
                                      (_%tl131933131975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131935131970%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131934131973%_))
                                      (let ((_g133901_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131934131973%_
                                                '0))))
                                        (begin
                                          (let ((_g133902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133901_)
                                                       (##vector-length
                                                        _g133901_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133902_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133902_)))
                                          (let ((_%target131936131978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133901_ 0)))
                                                (_%tl131938131980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133901_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131938131980%_))
                                                (letrec ((_%loop131939131983%_
                                                          (lambda (_%hd131937131986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131943131988%_
                           _%hd131944131990%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131937131986%_))
                        (let ((_%e131940131993%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131937131986%_))))
                          (let ((_%lp-hd131941131996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131940131993%_)))
                                (_%lp-tl131942131998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131940131993%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131941131996%_))
                                (let ((_%e131949132001%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131941131996%_))))
                                  (let ((_%hd131948132004%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131949132001%_)))
                                        (_%tl131947132006%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131949132001%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131947132006%_))
                                        (let ((_%e131952132009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131947132006%_))))
                                          (let ((_%hd131951132012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131952132009%_)))
                                                (_%tl131950132014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131952132009%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131950132014%_))
                                                (let ((__tmp133904
                                                       (cons _%hd131951132012%_
                                                             _%expr131943131988%_))
                                                      (__tmp133903
                                                       (cons _%hd131948132004%_
                                                             _%hd131944131990%_)))
                                                  (declare (not safe))
                                                  (_%loop131939131983%_
                                                   _%lp-tl131942131998%_
                                                   __tmp133904
                                                   __tmp133903))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131924131957%_
                                                   _%g131925131960%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g131924131957%_
                                           _%g131925131960%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g131924131957%_ _%g131925131960%_)))))
                        (let ((_%expr131945132017%_
                               (reverse _%expr131943131988%_))
                              (_%hd131946132019%_
                               (reverse _%hd131944131990%_)))
                          ((lambda (_%L132022%_
                                    _%L132023%_
                                    _%L132024%_
                                    _%L132025%_)
                             (let* ((_%g132044132060%_
                                     (lambda (_%g132045132057%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132045132057%_))))
                                    (_%g132043132150%_
                                     (lambda (_%g132045132063%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132045132063%_))
                                           (let ((_g133905_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132045132063%_
                                                     '0))))
                                             (begin
                                               (let ((_g133906_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g133905_)
                                                            (##vector-length
                                                             _g133905_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g133906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g133906_)))
                                               (let ((_%target132047132065%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133905_
                                                         0)))
                                                     (_%tl132049132067%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133905_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132049132067%_))
                                                     (letrec ((_%loop132050132070%_
                                                               (lambda (_%hd132048132073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132054132075%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132048132073%_))
                             (let ((_%e132051132078%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132048132073%_))))
                               (let ((_%lp-hd132052132081%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132051132078%_)))
                                     (_%lp-tl132053132083%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132051132078%_))))
                                 (let ((__tmp133907
                                        (cons _%lp-hd132052132081%_
                                              _%expr132054132075%_)))
                                   (declare (not safe))
                                   (_%loop132050132070%_
                                    _%lp-tl132053132083%_
                                    __tmp133907))))
                             (let ((_%expr132055132086%_
                                    (reverse _%expr132054132075%_)))
                               ((lambda (_%L132089%_)
                                  (let ()
                                    (let ((__tmp133911
                                           (lambda ()
                                             (let* ((_%g132103132110%_
                                                     (lambda (_%g132104132107%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132104132107%_))))
                                                    (_%g132102132136%_
                                                     (lambda (_%g132104132113%_)
                                                       ((lambda (_%L132115%_)
                                                          (let ()
                                                            (let ((__tmp133912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L132025%_
                                 (cons (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L132089%_
                                            _%L132024%_))
                                         (let ((__tmp133913
                                                (lambda (_%g132125132129%_
                                                         _%g132126132131%_
                                                         _%g132127132133%_)
                                                  (cons (cons _%g132126132131%_
                                                              (cons _%g132125132129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%g132127132133%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp133913
                                            '()
                                            _%L132089%_
                                            _%L132024%_)))
                                       _%L132115%_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp133912 _%stx131922%_))))
                _%g132104132113%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp133914
                                                     (map (lambda (_%g132138132140%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self131921%_
                                                               _%g132138132140%_)))
                                                          _%L132022%_)))
                                               (declare (not safe))
                                               (_%g132102132136%_
                                                __tmp133914))))
                                          (__tmp133908
                                           (let ((__tmp133909
                                                  (let ((__tmp133910
                                                         (lambda (_%g132142132145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g132143132147%_)
                   (cons _%g132142132145%_ _%g132143132147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp133910
                                                     '()
                                                     _%L132024%_))))
                                             (declare (not safe))
                                             (gxc#xform-let-locals
                                              __tmp133909))))
                                      (declare (not safe))
                                      (__call-with-parameters
                                       __tmp133911
                                       gxc#current-compile-local-env
                                       __tmp133908))))
                                _%expr132055132086%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132050132070%_ _%target132047132065%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132044132060%_
                                                        _%g132045132063%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132044132060%_
                                              _%g132045132063%_)))))
                                    (__tmp133915
                                     (map (lambda (_%g132152132154%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self131921%_
                                               _%g132152132154%_)))
                                          (let ((__tmp133916
                                                 (lambda (_%g132156132159%_
                                                          _%g132157132161%_)
                                                   (cons _%g132156132159%_
                                                         _%g132157132161%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133916
                                             '()
                                             _%L132023%_)))))
                               (declare (not safe))
                               (_%g132043132150%_ __tmp133915)))
                           _%tl131933131975%_
                           _%expr131945132017%_
                           _%hd131946132019%_
                           _%hd131931131965%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop131939131983%_
                                                     _%target131936131978%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131924131957%_
                                                   _%g131925131960%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131924131957%_
                                         _%g131925131960%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131924131957%_ _%g131925131960%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131924131957%_ _%g131925131960%_))))))
          (declare (not safe))
          (_%g131923132164%_ _%stx131922%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131675%_ _%stx131676%_)
        (let* ((_%g131678131711%_
                (lambda (_%g131679131708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131679131708%_))))
               (_%g131677131918%_
                (lambda (_%g131679131714%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131679131714%_))
                      (let ((_%e131686131716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131679131714%_))))
                        (let ((_%hd131685131719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131686131716%_)))
                              (_%tl131684131721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131686131716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131684131721%_))
                              (let ((_%e131689131724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131684131721%_))))
                                (let ((_%hd131688131727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131689131724%_)))
                                      (_%tl131687131729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131689131724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131688131727%_))
                                      (let ((_g133917_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131688131727%_
                                                '0))))
                                        (begin
                                          (let ((_g133918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133917_)
                                                       (##vector-length
                                                        _g133917_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133918_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133918_)))
                                          (let ((_%target131690131732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133917_ 0)))
                                                (_%tl131692131734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133917_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131692131734%_))
                                                (letrec ((_%loop131693131737%_
                                                          (lambda (_%hd131691131740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131697131742%_
                           _%hd131698131744%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131691131740%_))
                        (let ((_%e131694131747%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131691131740%_))))
                          (let ((_%lp-hd131695131750%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131694131747%_)))
                                (_%lp-tl131696131752%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131694131747%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131695131750%_))
                                (let ((_%e131703131755%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131695131750%_))))
                                  (let ((_%hd131702131758%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131703131755%_)))
                                        (_%tl131701131760%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131703131755%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131701131760%_))
                                        (let ((_%e131706131763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131701131760%_))))
                                          (let ((_%hd131705131766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131706131763%_)))
                                                (_%tl131704131768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131706131763%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131704131768%_))
                                                (let ((__tmp133920
                                                       (cons _%hd131705131766%_
                                                             _%expr131697131742%_))
                                                      (__tmp133919
                                                       (cons _%hd131702131758%_
                                                             _%hd131698131744%_)))
                                                  (declare (not safe))
                                                  (_%loop131693131737%_
                                                   _%lp-tl131696131752%_
                                                   __tmp133920
                                                   __tmp133919))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131678131711%_
                                                   _%g131679131714%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g131678131711%_
                                           _%g131679131714%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g131678131711%_ _%g131679131714%_)))))
                        (let ((_%expr131699131771%_
                               (reverse _%expr131697131742%_))
                              (_%hd131700131773%_
                               (reverse _%hd131698131744%_)))
                          ((lambda (_%L131776%_
                                    _%L131777%_
                                    _%L131778%_
                                    _%L131779%_)
                             (let ((__tmp133924
                                    (lambda ()
                                      (let* ((_%g131799131815%_
                                              (lambda (_%g131800131812%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131800131812%_))))
                                             (_%g131798131897%_
                                              (lambda (_%g131800131818%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131800131818%_))
                                                    (let ((_g133925_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131800131818%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g133926_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g133925_)
                             (##vector-length _g133925_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133926_ 2)))
                      (error "Context expects 2 values" _g133926_)))
                (let ((_%target131802131820%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133925_ 0)))
                      (_%tl131804131822%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133925_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131804131822%_))
                      (letrec ((_%loop131805131825%_
                                (lambda (_%hd131803131828%_
                                         _%expr131809131830%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131803131828%_))
                                      (let ((_%e131806131833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131803131828%_))))
                                        (let ((_%lp-hd131807131836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131806131833%_)))
                                              (_%lp-tl131808131838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131806131833%_))))
                                          (let ((__tmp133927
                                                 (cons _%lp-hd131807131836%_
                                                       _%expr131809131830%_)))
                                            (declare (not safe))
                                            (_%loop131805131825%_
                                             _%lp-tl131808131838%_
                                             __tmp133927))))
                                      (let ((_%expr131810131841%_
                                             (reverse _%expr131809131830%_)))
                                        ((lambda (_%L131844%_)
                                           (let ()
                                             (let* ((_%g131858131865%_
                                                     (lambda (_%g131859131862%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g131859131862%_))))
                                                    (_%g131857131890%_
                                                     (lambda (_%g131859131868%_)
                                                       ((lambda (_%L131870%_)
                                                          (let ()
                                                            (let ((__tmp133928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L131779%_
                                 (cons (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L131844%_
                                            _%L131778%_))
                                         (let ((__tmp133929
                                                (lambda (_%g131879131883%_
                                                         _%g131880131885%_
                                                         _%g131881131887%_)
                                                  (cons (cons _%g131880131885%_
                                                              (cons _%g131879131883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%g131881131887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp133929
                                            '()
                                            _%L131844%_
                                            _%L131778%_)))
                                       _%L131870%_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp133928 _%stx131676%_))))
                _%g131859131868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp133930
                                                     (map (lambda (_%g131892131894%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self131675%_
                                                               _%g131892131894%_)))
                                                          _%L131776%_)))
                                               (declare (not safe))
                                               (_%g131857131890%_
                                                __tmp133930))))
                                         _%expr131810131841%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop131805131825%_ _%target131802131820%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g131799131815%_ _%g131800131818%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g131799131815%_
                                                       _%g131800131818%_)))))
                                             (__tmp133931
                                              (map (lambda (_%g131899131901%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self131675%_
                                                        _%g131899131901%_)))
                                                   (let ((__tmp133932
                                                          (lambda (_%g131903131906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g131904131908%_)
                    (cons _%g131903131906%_ _%g131904131908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp133932
                                                      '()
                                                      _%L131777%_)))))
                                        (declare (not safe))
                                        (_%g131798131897%_ __tmp133931))))
                                   (__tmp133921
                                    (let ((__tmp133922
                                           (let ((__tmp133923
                                                  (lambda (_%g131910131913%_
                                                           _%g131911131915%_)
                                                    (cons _%g131910131913%_
                                                          _%g131911131915%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp133923
                                              '()
                                              _%L131778%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp133922))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133924
                                gxc#current-compile-local-env
                                __tmp133921)))
                           _%tl131687131729%_
                           _%expr131699131771%_
                           _%hd131700131773%_
                           _%hd131685131719%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop131693131737%_
                                                     _%target131690131732%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131678131711%_
                                                   _%g131679131714%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131678131711%_
                                         _%g131679131714%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131678131711%_ _%g131679131714%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131678131711%_ _%g131679131714%_))))))
          (declare (not safe))
          (_%g131677131918%_ _%stx131676%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131579%_)
        (let _%loop131581%_ ((_%rest131583%_ _%bindings131579%_)
                             (_%locals131584%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131585131593%_ _%rest131583%_)
                 (_%else131587131601%_ (lambda () _%locals131584%_))
                 (_%K131589131663%_
                  (lambda (_%rest131604%_ _%bind131605%_)
                    (let _%loop-bind131607%_ ((_%bind131609%_ _%bind131605%_)
                                              (_%locals131610%_
                                               _%locals131584%_))
                      (let* ((_%bind131611131622%_ _%bind131609%_)
                             (_%E131615131626%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131611131622%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131618131651%_
                               (lambda (_%bind-rest131648%_ _%id131649%_)
                                 (let ((__tmp133933
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131649%_))
                                              _%locals131610%_)))
                                   (declare (not safe))
                                   (_%loop-bind131607%_
                                    _%bind-rest131648%_
                                    __tmp133933))))
                              (_%K131617131640%_
                               (lambda (_%id131638%_)
                                 (let ((__tmp133934
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131638%_))
                                              _%locals131610%_)))
                                   (declare (not safe))
                                   (_%loop131581%_
                                    _%rest131604%_
                                    __tmp133934))))
                              (_%K131616131631%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop131581%_
                                    _%rest131604%_
                                    _%locals131610%_)))))
                          (let ((_%try-match131613131645%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131611131622%_))
                                       (let ((_%id131643%_
                                              _%bind131611131622%_))
                                         (declare (not safe))
                                         (_%K131617131640%_ _%id131643%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K131616131631%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131611131622%_))
                                (let ((_%tl131620131656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131611131622%_)))
                                      (_%hd131619131654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131611131622%_))))
                                  (let ((_%id131659%_ _%hd131619131654%_)
                                        (_%bind-rest131661%_
                                         _%tl131620131656%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K131618131651%_
                                       _%bind-rest131661%_
                                       _%id131659%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match131613131645%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131585131593%_))
                (let ((_%hd131590131666%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131585131593%_)))
                      (_%tl131591131668%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131585131593%_))))
                  (let* ((_%bind131671%_ _%hd131590131666%_)
                         (_%rest131673%_ _%tl131591131668%_))
                    (declare (not safe))
                    (_%K131589131663%_ _%rest131673%_ _%bind131671%_)))
                (let () (declare (not safe)) (_%else131587131601%_)))))))
    (define gxc#xform-operands
      (lambda (_%self131531%_ _%stx131532%_)
        (let* ((_%g131534131545%_
                (lambda (_%g131535131542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131535131542%_))))
               (_%g131533131576%_
                (lambda (_%g131535131548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131535131548%_))
                      (let ((_%e131540131550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131535131548%_))))
                        (let ((_%hd131539131553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131540131550%_)))
                              (_%tl131538131555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131540131550%_))))
                          ((lambda (_%L131558%_ _%L131559%_)
                             (let* ((_%rands131574%_
                                     (map (lambda (_%g131569131571%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self131531%_
                                               _%g131569131571%_)))
                                          _%L131558%_))
                                    (__tmp133935
                                     (cons _%L131559%_ _%rands131574%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp133935
                                _%stx131532%_)))
                           _%tl131538131555%_
                           _%hd131539131553%_)))
                      (let ()
                        (declare (not safe))
                        (_%g131534131545%_ _%g131535131548%_))))))
          (declare (not safe))
          (_%g131533131576%_ _%stx131532%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131461%_ _%stx131462%_)
        (let* ((_%g131464131481%_
                (lambda (_%g131465131478%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131465131478%_))))
               (_%g131463131528%_
                (lambda (_%g131465131484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131465131484%_))
                      (let ((_%e131470131486%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131465131484%_))))
                        (let ((_%hd131469131489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131470131486%_)))
                              (_%tl131468131491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131470131486%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131468131491%_))
                              (let ((_%e131473131494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131468131491%_))))
                                (let ((_%hd131472131497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131473131494%_)))
                                      (_%tl131471131499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131473131494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131471131499%_))
                                      (let ((_%e131476131502%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131471131499%_))))
                                        (let ((_%hd131475131505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131476131502%_)))
                                              (_%tl131474131507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131476131502%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131474131507%_))
                                              ((lambda (_%L131510%_
                                                        _%L131511%_)
                                                 (let* ((_%expr131526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self131461%_
                                                            _%L131510%_)))
                                                        (__tmp133936
                                                         (cons '%#set!
                                                               (cons _%L131511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr131526%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp133936
                                                    _%stx131462%_)))
                                               _%hd131475131505%_
                                               _%hd131472131497%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g131464131481%_
                                                 _%g131465131484%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131464131481%_
                                         _%g131465131484%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131464131481%_ _%g131465131484%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131464131481%_ _%g131465131484%_))))))
          (declare (not safe))
          (_%g131463131528%_ _%stx131462%_))))))
