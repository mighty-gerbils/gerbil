(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1783939351)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp218251 (list gxc#::void::t))
            (__tmp218250 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp218251
         '()
         __tmp218250
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args218235%_
        (apply make-instance gxc#::collect-mutators::t _%$args218235%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp218252
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call-unchecked
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#set!
                  gxc#collect-mutators-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218252)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx218227%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self218230%_
                (let ((__obj218238
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj218238))
               (__tmp218253
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self218230%_ _%stx218227%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp218253
           gxc#current-compile-method
           _%self218230%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp218255 (list gxc#::basic-xform-expression::t))
            (__tmp218254 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp218255
         '(id new-id)
         __tmp218254
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args218224%_
        (apply make-instance gxc#::expression-subst::t _%$args218224%_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp218256
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#ref
                  gxc#expression-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#set!
                  gxc#expression-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218256)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords218196%_
               _%$%id218192218197%_
               _%$%new-id218193218198%_
               _%stx218199%_)
        (let* ((_%id218202%_
                (if (eq? _%$%id218192218197%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id218192218197%_))
               (_%new-id218204%_
                (if (eq? _%$%new-id218193218198%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id218193218198%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self218206%_
                  (let ((__obj218240
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218240
                       _%id218202%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218240
                       _%new-id218204%_
                       '2
                       '#f
                       '#f))
                    __obj218240))
                 (__tmp218257
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self218206%_ _%stx218199%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218257
             gxc#current-compile-method
             _%self218206%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords218213%_ . _%args218214%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords218213%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords218213%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords218213%_
                  'new-id:
                  absent-value))
               _%args218214%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args218194218220%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args218194218220%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp218259 (list gxc#::basic-xform-expression::t))
            (__tmp218258 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp218259
         '(subst)
         __tmp218258
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args218188%_
        (apply make-instance gxc#::expression-subst*::t _%$args218188%_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp218260
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#ref
                  gxc#expression-subst*-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#set!
                  gxc#expression-subst*-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218260)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords218163%_ _%$%subst218160218164%_ _%stx218165%_)
        (let ((_%subst218168%_
               (if (eq? _%$%subst218160218164%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst218160218164%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self218170%_
                  (let ((__obj218242
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218242
                       _%subst218168%_
                       '1
                       '#f
                       '#f))
                    __obj218242))
                 (__tmp218261
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self218170%_ _%stx218165%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218261
             gxc#current-compile-method
             _%self218170%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords218177%_ . _%args218178%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords218177%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords218177%_
                  'subst:
                  absent-value))
               _%args218178%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args218161218184%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args218161218184%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp218263 (list gxc#::basic-xform-expression::t))
            (__tmp218262 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp218263
         '(subst)
         __tmp218262
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args218156%_
        (apply make-instance gxc#::inline-subst::t _%$args218156%_)))
    (define gxc#::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-bind-methods!
      (let ((__tmp218264
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#ref
                  gxc#inline-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#set!
                  gxc#inline-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::inline-subst::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218264)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords218131%_ _%$%subst218128218132%_ _%stx218133%_)
        (let ((_%subst218136%_
               (if (eq? _%$%subst218128218132%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst218128218132%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self218138%_
                  (let ((__obj218244
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218244
                       _%subst218136%_
                       '1
                       '#f
                       '#f))
                    __obj218244))
                 (__tmp218265
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self218138%_ _%stx218133%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218265
             gxc#current-compile-method
             _%self218138%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords218145%_ . _%args218146%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords218145%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords218145%_
                  'subst:
                  absent-value))
               _%args218146%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args218129218152%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args218129218152%_)))
    (define gxc#::find-expression::t
      (let ((__tmp218266 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp218266
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args218124%_
        (apply make-instance gxc#::find-expression::t _%$args218124%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp218267
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#let-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec*-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call-unchecked
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#if
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-set!
                  gxc#find-body%)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218267)))
    (define gxc#::find-var-refs::t
      (let ((__tmp218269 (list gxc#::find-expression::t))
            (__tmp218268 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp218269
         '(ids)
         __tmp218268
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args218120%_
        (apply make-instance gxc#::find-var-refs::t _%$args218120%_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp218270
             (lambda ()
               (force gxc#::find-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#ref
                  gxc#find-var-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#set!
                  gxc#find-var-refs-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218270)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords218095%_ _%$%ids218092218096%_ _%stx218097%_)
        (let ((_%ids218100%_
               (if (eq? _%$%ids218092218096%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids218092218096%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self218102%_
                  (let ((__obj218247
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218247
                       _%ids218100%_
                       '1
                       '#f
                       '#f))
                    __obj218247))
                 (__tmp218271
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self218102%_ _%stx218097%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218271
             gxc#current-compile-method
             _%self218102%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords218109%_ . _%args218110%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords218109%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords218109%_ 'ids: absent-value))
               _%args218110%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args218093218116%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args218093218116%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp218273 (list gxc#::collect-expression-refs::t))
            (__tmp218272 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp218273
         '()
         __tmp218272
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args218088%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args218088%_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp218274
             (lambda ()
               (force gxc#::collect-expression-refs-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#ref
                  gxc#collect-runtime-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#set!
                  gxc#collect-runtime-refs-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp218274)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords218063%_ _%$%table218060218064%_ _%stx218065%_)
        (let ((_%table218068%_
               (if (eq? _%$%table218060218064%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table218060218064%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self218070%_
                  (let ((__obj218249
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218249
                       _%table218068%_
                       '1
                       '#f
                       '#f))
                    __obj218249))
                 (__tmp218275
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self218070%_ _%stx218065%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218275
             gxc#current-compile-method
             _%self218070%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords218077%_ . _%args218078%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords218077%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords218077%_
                  'table:
                  absent-value))
               _%args218078%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args218061218084%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args218061218084%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self217989%_ _%stx217990%_)
        (let* ((_%$%g217992218009%_
                (lambda (_%$%g217993218006%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217993218006%_))))
               (_%$%g217991218056%_
                (lambda (_%$%g217993218012%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217993218012%_))
                      (let ((_%$%e217996218014%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217993218012%_))))
                        (let ((_%$%hd217997218017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217996218014%_)))
                              (_%$%tl217998218019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217996218014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217998218019%_))
                              (let ((_%$%e217999218022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217998218019%_))))
                                (let ((_%$%hd218000218025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217999218022%_)))
                                      (_%$%tl218001218027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217999218022%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl218001218027%_))
                                      (let ((_%$%e218002218030%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl218001218027%_))))
                                        (let ((_%$%hd218003218033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e218002218030%_)))
                                              (_%$%tl218004218035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e218002218030%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl218004218035%_))
                                              (let ((_%sym218054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd218000218025%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym218054%_))
                                                (let ((__tmp218276
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp218276
                                                   _%sym218054%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self217989%_
                                                   _%$%hd218003218033%_)))
                                              (_%$%g217992218009%_
                                               _%$%g217993218012%_))))
                                      (_%$%g217992218009%_
                                       _%$%g217993218012%_))))
                              (_%$%g217992218009%_ _%$%g217993218012%_))))
                      (_%$%g217992218009%_ _%$%g217993218012%_)))))
          (_%$%g217991218056%_ _%stx217990%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self217937%_ _%stx217938%_)
        (let* ((_%$%g217940217953%_
                (lambda (_%$%g217941217950%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217941217950%_))))
               (_%$%g217939217986%_
                (lambda (_%$%g217941217956%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217941217956%_))
                      (let ((_%$%e217943217958%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217941217956%_))))
                        (let ((_%$%hd217944217961%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217943217958%_)))
                              (_%$%tl217945217963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217943217958%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217945217963%_))
                              (let ((_%$%e217946217966%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217945217963%_))))
                                (let ((_%$%hd217947217969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217946217966%_)))
                                      (_%$%tl217948217971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217946217966%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217948217971%_))
                                      (if (let ((__tmp218277
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self217937%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd217947217969%_
                                             __tmp218277))
                                          (let ((__tmp218278
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self217937%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp218278
                                             _%stx217938%_))
                                          _%stx217938%_)
                                      (_%$%g217940217953%_
                                       _%$%g217941217956%_))))
                              (_%$%g217940217953%_ _%$%g217941217956%_))))
                      (_%$%g217940217953%_ _%$%g217941217956%_)))))
          (_%$%g217939217986%_ _%stx217938%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self217877%_ _%stx217878%_)
        (let* ((_%$%g217880217893%_
                (lambda (_%$%g217881217890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217881217890%_))))
               (_%$%g217879217934%_
                (lambda (_%$%g217881217896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217881217896%_))
                      (let ((_%$%e217883217898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217881217896%_))))
                        (let ((_%$%hd217884217901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217883217898%_)))
                              (_%$%tl217885217903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217883217898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217885217903%_))
                              (let ((_%$%e217886217906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217885217903%_))))
                                (let ((_%$%hd217887217909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217886217906%_)))
                                      (_%$%tl217888217911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217886217906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217888217911%_))
                                      (let ((_%$e217928%_
                                             (let ((__tmp218280
                                                    (lambda (_%sub217926%_)
                                                      (let ((__tmp218281
                                                             (car _%sub217926%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd217887217909%_
                                                         __tmp218281))))
                                                   (__tmp218279
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self217877%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp218280
                                                       __tmp218279))))
                                        (if _%$e217928%_
                                            (let ((__tmp218282
                                                   (cons '%#ref
                                                         (cons (cdr _%$e217928%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp218282
                                               _%stx217878%_))
                                            _%stx217878%_))
                                      (_%$%g217880217893%_
                                       _%$%g217881217896%_))))
                              (_%$%g217880217893%_ _%$%g217881217896%_))))
                      (_%$%g217880217893%_ _%$%g217881217896%_)))))
          (_%$%g217879217934%_ _%stx217878%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self217806%_ _%stx217807%_)
        (let* ((_%$%g217809217826%_
                (lambda (_%$%g217810217823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217810217823%_))))
               (_%$%g217808217874%_
                (lambda (_%$%g217810217829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217810217829%_))
                      (let ((_%$%e217813217831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217810217829%_))))
                        (let ((_%$%hd217814217834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217813217831%_)))
                              (_%$%tl217815217836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217813217831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217815217836%_))
                              (let ((_%$%e217816217839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217815217836%_))))
                                (let ((_%$%hd217817217842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217816217839%_)))
                                      (_%$%tl217818217844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217816217839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217818217844%_))
                                      (let ((_%$%e217819217847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217818217844%_))))
                                        (let ((_%$%hd217820217850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217819217847%_)))
                                              (_%$%tl217821217852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217819217847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217821217852%_))
                                              (let ((_%new-expr217871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self217806%_
                                                        _%$%hd217820217850%_)))
                                                    (_%new-xid217872%_
                                                     (if (let ((__tmp218283
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self217806%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd217817217842%_ __tmp218283))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self217806%_ 'new-id))
                 _%$%hd217817217842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp218284
                                                       (cons '%#set!
                                                             (cons _%new-xid217872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr217871%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp218284
                                                   _%stx217807%_)))
                                              (_%$%g217809217826%_
                                               _%$%g217810217829%_))))
                                      (_%$%g217809217826%_
                                       _%$%g217810217829%_))))
                              (_%$%g217809217826%_ _%$%g217810217829%_))))
                      (_%$%g217809217826%_ _%$%g217810217829%_)))))
          (_%$%g217808217874%_ _%stx217807%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self217729%_ _%stx217730%_)
        (let* ((_%$%g217732217749%_
                (lambda (_%$%g217733217746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217733217746%_))))
               (_%$%g217731217803%_
                (lambda (_%$%g217733217752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217733217752%_))
                      (let ((_%$%e217736217754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217733217752%_))))
                        (let ((_%$%hd217737217757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217736217754%_)))
                              (_%$%tl217738217759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217736217754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217738217759%_))
                              (let ((_%$%e217739217762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217738217759%_))))
                                (let ((_%$%hd217740217765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217739217762%_)))
                                      (_%$%tl217741217767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217739217762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217741217767%_))
                                      (let ((_%$%e217742217770%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217741217767%_))))
                                        (let ((_%$%hd217743217773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217742217770%_)))
                                              (_%$%tl217744217775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217742217770%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217744217775%_))
                                              (let ((_%new-expr217800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self217729%_
                                                        _%$%hd217743217773%_)))
                                                    (_%new-xid217801%_
                                                     (let ((_%$e217796%_
                                                            (let ((__tmp218286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub217794%_)
                             (let ((__tmp218287 (car _%sub217794%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd217740217765%_
                                __tmp218287))))
                          (__tmp218285
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self217729%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp218286 __tmp218285))))
               (if _%$e217796%_ (cdr _%$e217796%_) _%$%hd217740217765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp218288
                                                       (cons '%#set!
                                                             (cons _%new-xid217801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr217800%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp218288
                                                   _%stx217730%_)))
                                              (_%$%g217732217749%_
                                               _%$%g217733217752%_))))
                                      (_%$%g217732217749%_
                                       _%$%g217733217752%_))))
                              (_%$%g217732217749%_ _%$%g217733217752%_))))
                      (_%$%g217732217749%_ _%$%g217733217752%_)))))
          (_%$%g217731217803%_ _%stx217730%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self217669%_ _%stx217670%_)
        (let* ((_%$%g217672217685%_
                (lambda (_%$%g217673217682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217673217682%_))))
               (_%$%g217671217726%_
                (lambda (_%$%g217673217688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217673217688%_))
                      (let ((_%$%e217675217690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217673217688%_))))
                        (let ((_%$%hd217676217693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217675217690%_)))
                              (_%$%tl217677217695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217675217690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217677217695%_))
                              (let ((_%$%e217678217698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217677217695%_))))
                                (let ((_%$%hd217679217701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217678217698%_)))
                                      (_%$%tl217680217703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217678217698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217680217703%_))
                                      (let ((_%$e217720%_
                                             (let ((__tmp218290
                                                    (lambda (_%sub217718%_)
                                                      (let ((__tmp218291
                                                             (car _%sub217718%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd217679217701%_
                                                         __tmp218291))))
                                                   (__tmp218289
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self217669%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp218290
                                                       __tmp218289))))
                                        (if _%$e217720%_
                                            (let ((__tmp218292
                                                   (cdr _%$e217720%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp218292
                                               _%stx217670%_))
                                            _%stx217670%_))
                                      (_%$%g217672217685%_
                                       _%$%g217673217688%_))))
                              (_%$%g217672217685%_ _%$%g217673217688%_))))
                      (_%$%g217672217685%_ _%$%g217673217688%_)))))
          (_%$%g217671217726%_ _%stx217670%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self217599%_ _%stx217600%_)
        (let* ((_%$%g217602217619%_
                (lambda (_%$%g217603217616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217603217616%_))))
               (_%$%g217601217666%_
                (lambda (_%$%g217603217622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217603217622%_))
                      (let ((_%$%e217606217624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217603217622%_))))
                        (let ((_%$%hd217607217627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217606217624%_)))
                              (_%$%tl217608217629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217606217624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217608217629%_))
                              (let ((_%$%e217609217632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217608217629%_))))
                                (let ((_%$%hd217610217635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217609217632%_)))
                                      (_%$%tl217611217637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217609217632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217611217637%_))
                                      (let ((_%$%e217612217640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217611217637%_))))
                                        (let ((_%$%hd217613217643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217612217640%_)))
                                              (_%$%tl217614217645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217612217640%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217614217645%_))
                                              (if (let ((__tmp218294
                                                         (lambda (_%sub217664%_)
                                                           (let ((__tmp218295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub217664%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd217610217635%_ __tmp218295))))
                (__tmp218293
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self217599%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp218294
                                                            __tmp218293))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx217600%_
                                                     _%$%hd217610217635%_))
                                                  (let ((__tmp218296
                                                         (cons '%#set!
                                                               (cons _%$%hd217610217635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self217599%_
                                      _%$%hd217613217643%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp218296
                                                     _%stx217600%_)))
                                              (_%$%g217602217619%_
                                               _%$%g217603217622%_))))
                                      (_%$%g217602217619%_
                                       _%$%g217603217622%_))))
                              (_%$%g217602217619%_ _%$%g217603217622%_))))
                      (_%$%g217602217619%_ _%$%g217603217622%_)))))
          (_%$%g217601217666%_ _%stx217600%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self217545%_ _%stx217546%_)
        (let* ((_%$%g217548217561%_
                (lambda (_%$%g217549217558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217549217558%_))))
               (_%$%g217547217596%_
                (lambda (_%$%g217549217564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217549217564%_))
                      (let ((_%$%e217551217566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217549217564%_))))
                        (let ((_%$%hd217552217569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217551217566%_)))
                              (_%$%tl217553217571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217551217566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217553217571%_))
                              (let ((_%$%e217554217574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217553217571%_))))
                                (let ((_%$%hd217555217577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217554217574%_)))
                                      (_%$%tl217556217579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217554217574%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217556217579%_))
                                      (let* ((_%eid217594%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd217555217577%_)))
                                             (__tmp218297
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self217545%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp218297
                                         _%eid217594%_
                                         1+
                                         '0))
                                      (_%$%g217548217561%_
                                       _%$%g217549217564%_))))
                              (_%$%g217548217561%_ _%$%g217549217564%_))))
                      (_%$%g217548217561%_ _%$%g217549217564%_)))))
          (_%$%g217547217596%_ _%stx217546%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self217475%_ _%stx217476%_)
        (let* ((_%$%g217478217495%_
                (lambda (_%$%g217479217492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217479217492%_))))
               (_%$%g217477217542%_
                (lambda (_%$%g217479217498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217479217498%_))
                      (let ((_%$%e217482217500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217479217498%_))))
                        (let ((_%$%hd217483217503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217482217500%_)))
                              (_%$%tl217484217505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217482217500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217484217505%_))
                              (let ((_%$%e217485217508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217484217505%_))))
                                (let ((_%$%hd217486217511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217485217508%_)))
                                      (_%$%tl217487217513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217485217508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217487217513%_))
                                      (let ((_%$%e217488217516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217487217513%_))))
                                        (let ((_%$%hd217489217519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217488217516%_)))
                                              (_%$%tl217490217521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217488217516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217490217521%_))
                                              (let ((_%eid217540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd217486217511%_))))
                                                (let ((__tmp218298
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self217475%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp218298
                                                   _%eid217540%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self217475%_
                                                   _%$%hd217489217519%_)))
                                              (_%$%g217478217495%_
                                               _%$%g217479217498%_))))
                                      (_%$%g217478217495%_
                                       _%$%g217479217498%_))))
                              (_%$%g217478217495%_ _%$%g217479217498%_))))
                      (_%$%g217478217495%_ _%$%g217479217498%_)))))
          (_%$%g217477217542%_ _%stx217476%_))))
    (define gxc#find-body%
      (lambda (_%self217390%_ _%stx217391%_)
        (let* ((_%$%g217393217412%_
                (lambda (_%$%g217394217409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217394217409%_))))
               (_%$%g217392217472%_
                (lambda (_%$%g217394217415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217394217415%_))
                      (let ((_%$%e217396217417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217394217415%_))))
                        (let ((_%$%hd217397217420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217396217417%_)))
                              (_%$%tl217398217422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217396217417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl217398217422%_))
                              (let ((_g218299_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl217398217422%_
                                        '0))))
                                (begin
                                  (let ((_g218300_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218299_)
                                               (##values-length _g218299_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218300_ 2)))
                                        (error "Context expects 2 values"
                                               _g218300_)))
                                  (let ((_%$%target217399217425%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g218299_ 0)))
                                        (_%$%tl217401217427%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g218299_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl217401217427%_))
                                        (letrec ((_%$%loop217402217430%_
                                                  (lambda (_%$%hd217400217433%_
                                                           _%$%expr217406217435%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd217400217433%_))
                                                        (let ((_%$%e217403217437%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd217400217433%_))))
                  (let ((_%$%lp-hd217404217440%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e217403217437%_)))
                        (_%$%lp-tl217405217442%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e217403217437%_))))
                    (_%$%loop217402217430%_
                     _%$%lp-tl217405217442%_
                     (cons _%$%lp-hd217404217440%_ _%$%expr217406217435%_))))
                (let ((_%$%expr217407217445%_
                       (reverse _%$%expr217406217435%_)))
                  (let ((__tmp218303
                         (lambda (_%$%g217460217462%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self217390%_
                              _%$%g217460217462%_))))
                        (__tmp218301
                         (let ((__tmp218302
                                (lambda (_%$%g217464217467%_
                                         _%$%g217465217469%_)
                                  (cons _%$%g217464217467%_
                                        _%$%g217465217469%_))))
                           (declare (not safe))
                           (foldr__0 __tmp218302 '() _%$%expr217407217445%_))))
                    (declare (not safe))
                    (ormap__0 __tmp218303 __tmp218301)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop217402217430%_
                                           _%$%target217399217425%_
                                           '()))
                                        (_%$%g217393217412%_
                                         _%$%g217394217415%_)))))
                              (_%$%g217393217412%_ _%$%g217394217415%_))))
                      (_%$%g217393217412%_ _%$%g217394217415%_)))))
          (_%$%g217392217472%_ _%stx217391%_))))
    (define gxc#find-let-values%
      (lambda (_%self217244%_ _%stx217245%_)
        (let* ((_%$%g217247217282%_
                (lambda (_%$%g217248217279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217248217279%_))))
               (_%$%g217246217387%_
                (lambda (_%$%g217248217285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217248217285%_))
                      (let ((_%$%e217252217287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217248217285%_))))
                        (let ((_%$%hd217253217290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217252217287%_)))
                              (_%$%tl217254217292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217252217287%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217254217292%_))
                              (let ((_%$%e217255217295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217254217292%_))))
                                (let ((_%$%hd217256217298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217255217295%_)))
                                      (_%$%tl217257217300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217255217295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd217256217298%_))
                                      (let ((_g218304_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd217256217298%_
                                                '0))))
                                        (begin
                                          (let ((_g218305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218304_)
                                                       (##values-length
                                                        _g218304_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218305_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218305_)))
                                          (let ((_%$%target217258217303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g218304_ 0)))
                                                (_%$%tl217260217305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g218304_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl217260217305%_))
                                                (letrec ((_%$%loop217261217308%_
                                                          (lambda (_%$%hd217259217311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr217265217313%_
                           _%$%bind217266217314%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd217259217311%_))
                        (let ((_%$%e217262217316%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd217259217311%_))))
                          (let ((_%$%lp-hd217263217319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e217262217316%_)))
                                (_%$%lp-tl217264217321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e217262217316%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd217263217319%_))
                                (let ((_%$%e217269217324%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd217263217319%_))))
                                  (let ((_%$%hd217270217327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e217269217324%_)))
                                        (_%$%tl217271217329%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e217269217324%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl217271217329%_))
                                        (let ((_%$%e217272217332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl217271217329%_))))
                                          (let ((_%$%hd217273217335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e217272217332%_)))
                                                (_%$%tl217274217337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e217272217332%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl217274217337%_))
                                                (_%$%loop217261217308%_
                                                 _%$%lp-tl217264217321%_
                                                 (cons _%$%hd217273217335%_
                                                       _%$%expr217265217313%_)
                                                 (cons _%$%hd217270217327%_
                                                       _%$%bind217266217314%_))
                                                (_%$%g217247217282%_
                                                 _%$%g217248217285%_))))
                                        (_%$%g217247217282%_
                                         _%$%g217248217285%_))))
                                (_%$%g217247217282%_ _%$%g217248217285%_))))
                        (let ((_%$%expr217267217340%_
                               (reverse _%$%expr217265217313%_))
                              (_%$%bind217268217341%_
                               (reverse _%$%bind217266217314%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217257217300%_))
                              (let ((_%$%e217275217343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217257217300%_))))
                                (let ((_%$%hd217276217346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217275217343%_)))
                                      (_%$%tl217277217348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217275217343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217277217348%_))
                                      (let ((_%$e217384%_
                                             (let ((__tmp218308
                                                    (lambda (_%$%g217372217374%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self217244%_
                                                         _%$%g217372217374%_))))
                                                   (__tmp218306
                                                    (let ((__tmp218307
                                                           (lambda (_%$%g217376217379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g217377217381%_)
                     (cons _%$%g217376217379%_ _%$%g217377217381%_))))
              (declare (not safe))
              (foldr__0 __tmp218307 '() _%$%expr217267217340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp218308
                                                __tmp218306))))
                                        (if _%$e217384%_
                                            _%$e217384%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self217244%_
                                               _%$%hd217276217346%_))))
                                      (_%$%g217247217282%_
                                       _%$%g217248217285%_))))
                              (_%$%g217247217282%_ _%$%g217248217285%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop217261217308%_
                                                   _%$%target217258217303%_
                                                   '()
                                                   '()))
                                                (_%$%g217247217282%_
                                                 _%$%g217248217285%_)))))
                                      (_%$%g217247217282%_
                                       _%$%g217248217285%_))))
                              (_%$%g217247217282%_ _%$%g217248217285%_))))
                      (_%$%g217247217282%_ _%$%g217248217285%_)))))
          (_%$%g217246217387%_ _%stx217245%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self217188%_ _%stx217189%_)
        (let* ((_%$%g217191217204%_
                (lambda (_%$%g217192217201%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217192217201%_))))
               (_%$%g217190217241%_
                (lambda (_%$%g217192217207%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217192217207%_))
                      (let ((_%$%e217194217209%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217192217207%_))))
                        (let ((_%$%hd217195217212%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217194217209%_)))
                              (_%$%tl217196217214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217194217209%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217196217214%_))
                              (let ((_%$%e217197217217%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217196217214%_))))
                                (let ((_%$%hd217198217220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217197217217%_)))
                                      (_%$%tl217199217222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217197217217%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl217199217222%_))
                                      (let ((__tmp218310
                                             (lambda (_%$%g217236217238%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd217198217220%_
                                                  _%$%g217236217238%_))))
                                            (__tmp218309
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self217188%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp218310 __tmp218309))
                                      (_%$%g217191217204%_
                                       _%$%g217192217207%_))))
                              (_%$%g217191217204%_ _%$%g217192217207%_))))
                      (_%$%g217191217204%_ _%$%g217192217207%_)))))
          (_%$%g217190217241%_ _%stx217189%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self217113%_ _%stx217114%_)
        (let* ((_%$%g217116217133%_
                (lambda (_%$%g217117217130%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g217117217130%_))))
               (_%$%g217115217185%_
                (lambda (_%$%g217117217136%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g217117217136%_))
                      (let ((_%$%e217120217138%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g217117217136%_))))
                        (let ((_%$%hd217121217141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e217120217138%_)))
                              (_%$%tl217122217143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e217120217138%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl217122217143%_))
                              (let ((_%$%e217123217146%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl217122217143%_))))
                                (let ((_%$%hd217124217149%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e217123217146%_)))
                                      (_%$%tl217125217151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e217123217146%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl217125217151%_))
                                      (let ((_%$%e217126217154%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl217125217151%_))))
                                        (let ((_%$%hd217127217157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e217126217154%_)))
                                              (_%$%tl217128217159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e217126217154%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl217128217159%_))
                                              (let ((_%$e217182%_
                                                     (let ((__tmp218312
                                                            (lambda (_%$%g217177217179%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd217124217149%_
                         _%$%g217177217179%_))))
                   (__tmp218311
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self217113%_ 'ids))))
               (declare (not safe))
               (__find __tmp218312 __tmp218311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e217182%_
                                                    _%$e217182%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self217113%_
                                                       _%$%hd217127217157%_))))
                                              (_%$%g217116217133%_
                                               _%$%g217117217136%_))))
                                      (_%$%g217116217133%_
                                       _%$%g217117217136%_))))
                              (_%$%g217116217133%_ _%$%g217117217136%_))))
                      (_%$%g217116217133%_ _%$%g217117217136%_)))))
          (_%$%g217115217185%_ _%stx217114%_))))))
