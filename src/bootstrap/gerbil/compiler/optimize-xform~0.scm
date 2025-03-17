(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1742223875)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp155076 (list gxc#::void::t))
            (__tmp155075 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp155076
         '()
         __tmp155075
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args155062%_
        (apply make-instance gxc#::collect-mutators::t _%$args155062%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp155077
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
        (__make-promise __tmp155077)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx155054%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self155057%_
                (let ((__obj155065
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj155065))
               (__tmp155078
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155057%_ _%stx155054%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp155078
           gxc#current-compile-method
           _%self155057%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp155080 (list gxc#::basic-xform-expression::t))
            (__tmp155079 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp155080
         '(id new-id)
         __tmp155079
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args155051%_
        (apply make-instance gxc#::expression-subst::t _%$args155051%_)))
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
      (let ((__tmp155081
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
        (__make-promise __tmp155081)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords155021%_
               _%id155017155022%_
               _%new-id155018155024%_
               _%stx155026%_)
        (let* ((_%id155029%_
                (if (eq? _%id155017155022%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id155017155022%_))
               (_%new-id155031%_
                (if (eq? _%new-id155018155024%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id155018155024%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self155033%_
                  (let ((__obj155067
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155067
                       _%id155029%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155067
                       _%new-id155031%_
                       '2
                       '#f
                       '#f))
                    __obj155067))
                 (__tmp155082
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155033%_ _%stx155026%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155082
             gxc#current-compile-method
             _%self155033%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords155040%_ . _%args155041%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords155040%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155040%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155040%_
                  'new-id:
                  absent-value))
               _%args155041%_)))
    (define gxc#apply-expression-subst
      (lambda _%args155019155047%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args155019155047%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp155084 (list gxc#::basic-xform-expression::t))
            (__tmp155083 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp155084
         '(subst)
         __tmp155083
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args155013%_
        (apply make-instance gxc#::expression-subst*::t _%$args155013%_)))
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
      (let ((__tmp155085
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
        (__make-promise __tmp155085)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords154987%_ _%subst154984154988%_ _%stx154990%_)
        (let ((_%subst154993%_
               (if (eq? _%subst154984154988%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst154984154988%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self154995%_
                  (let ((__obj155069
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155069
                       _%subst154993%_
                       '1
                       '#f
                       '#f))
                    __obj155069))
                 (__tmp155086
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154995%_ _%stx154990%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155086
             gxc#current-compile-method
             _%self154995%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords155002%_ . _%args155003%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords155002%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155002%_
                  'subst:
                  absent-value))
               _%args155003%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args154985155009%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args154985155009%_)))
    (define gxc#::find-expression::t
      (let ((__tmp155087 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp155087
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args154980%_
        (apply make-instance gxc#::find-expression::t _%$args154980%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp155088
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
        (__make-promise __tmp155088)))
    (define gxc#::find-var-refs::t
      (let ((__tmp155090 (list gxc#::find-expression::t))
            (__tmp155089 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp155090
         '(ids)
         __tmp155089
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args154976%_
        (apply make-instance gxc#::find-var-refs::t _%$args154976%_)))
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
      (let ((__tmp155091
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
        (__make-promise __tmp155091)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords154950%_ _%ids154947154951%_ _%stx154953%_)
        (let ((_%ids154956%_
               (if (eq? _%ids154947154951%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids154947154951%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self154958%_
                  (let ((__obj155072
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155072
                       _%ids154956%_
                       '1
                       '#f
                       '#f))
                    __obj155072))
                 (__tmp155092
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154958%_ _%stx154953%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155092
             gxc#current-compile-method
             _%self154958%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords154965%_ . _%args154966%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords154965%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154965%_ 'ids: absent-value))
               _%args154966%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args154948154972%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args154948154972%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp155094 (list gxc#::collect-expression-refs::t))
            (__tmp155093 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp155094
         '()
         __tmp155093
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args154943%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args154943%_)))
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
      (let ((__tmp155095
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
        (__make-promise __tmp155095)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords154917%_ _%table154914154918%_ _%stx154920%_)
        (let ((_%table154923%_
               (if (eq? _%table154914154918%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table154914154918%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self154925%_
                  (let ((__obj155074
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155074
                       _%table154923%_
                       '1
                       '#f
                       '#f))
                    __obj155074))
                 (__tmp155096
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154925%_ _%stx154920%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155096
             gxc#current-compile-method
             _%self154925%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords154932%_ . _%args154933%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords154932%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154932%_
                  'table:
                  absent-value))
               _%args154933%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args154915154939%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args154915154939%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self154843%_ _%stx154844%_)
        (let* ((_%g154846154863%_
                (lambda (_%g154847154860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154847154860%_))))
               (_%g154845154910%_
                (lambda (_%g154847154866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154847154866%_))
                      (let ((_%e154850154868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154847154866%_))))
                        (let ((_%hd154851154871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154850154868%_)))
                              (_%tl154852154873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154850154868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154852154873%_))
                              (let ((_%e154853154876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154852154873%_))))
                                (let ((_%hd154854154879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154853154876%_)))
                                      (_%tl154855154881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154853154876%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154855154881%_))
                                      (let ((_%e154856154884%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154855154881%_))))
                                        (let ((_%hd154857154887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154856154884%_)))
                                              (_%tl154858154889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154856154884%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154858154889%_))
                                              ((lambda (_%L154892%_
                                                        _%L154893%_)
                                                 (let ((_%sym154908%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154893%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym154908%_))
                                                   (let ((__tmp155097
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp155097
                                                      _%sym154908%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154843%_
                                                      _%L154892%_))))
                                               _%hd154857154887%_
                                               _%hd154854154879%_)
                                              (_%g154846154863%_
                                               _%g154847154866%_))))
                                      (_%g154846154863%_ _%g154847154866%_))))
                              (_%g154846154863%_ _%g154847154866%_))))
                      (_%g154846154863%_ _%g154847154866%_)))))
          (_%g154845154910%_ _%stx154844%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self154791%_ _%stx154792%_)
        (let* ((_%g154794154807%_
                (lambda (_%g154795154804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154795154804%_))))
               (_%g154793154840%_
                (lambda (_%g154795154810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154795154810%_))
                      (let ((_%e154797154812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154795154810%_))))
                        (let ((_%hd154798154815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154797154812%_)))
                              (_%tl154799154817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154797154812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154799154817%_))
                              (let ((_%e154800154820%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154799154817%_))))
                                (let ((_%hd154801154823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154800154820%_)))
                                      (_%tl154802154825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154800154820%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154802154825%_))
                                      ((lambda (_%L154828%_)
                                         (if (let ((__tmp155098
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self154791%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154828%_
                                                __tmp155098))
                                             (let ((__tmp155099
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self154791%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155099
                                                _%stx154792%_))
                                             _%stx154792%_))
                                       _%hd154801154823%_)
                                      (_%g154794154807%_ _%g154795154810%_))))
                              (_%g154794154807%_ _%g154795154810%_))))
                      (_%g154794154807%_ _%g154795154810%_)))))
          (_%g154793154840%_ _%stx154792%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self154731%_ _%stx154732%_)
        (let* ((_%g154734154747%_
                (lambda (_%g154735154744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154735154744%_))))
               (_%g154733154788%_
                (lambda (_%g154735154750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154735154750%_))
                      (let ((_%e154737154752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154735154750%_))))
                        (let ((_%hd154738154755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154737154752%_)))
                              (_%tl154739154757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154737154752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154739154757%_))
                              (let ((_%e154740154760%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154739154757%_))))
                                (let ((_%hd154741154763%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154740154760%_)))
                                      (_%tl154742154765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154740154760%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154742154765%_))
                                      ((lambda (_%L154768%_)
                                         (let ((_%$e154782%_
                                                (let ((__tmp155101
                                                       (lambda (_%sub154780%_)
                                                         (let ((__tmp155102
                                                                (car _%sub154780%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L154768%_
                                                            __tmp155102))))
                                                      (__tmp155100
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self154731%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp155101
                                                          __tmp155100))))
                                           (if _%$e154782%_
                                               ((lambda (_%sub154785%_)
                                                  (let ((__tmp155103
                                                         (cons '%#ref
                                                               (cons (cdr _%sub154785%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp155103
                                                     _%stx154732%_)))
                                                _%$e154782%_)
                                               _%stx154732%_)))
                                       _%hd154741154763%_)
                                      (_%g154734154747%_ _%g154735154750%_))))
                              (_%g154734154747%_ _%g154735154750%_))))
                      (_%g154734154747%_ _%g154735154750%_)))))
          (_%g154733154788%_ _%stx154732%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self154660%_ _%stx154661%_)
        (let* ((_%g154663154680%_
                (lambda (_%g154664154677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154664154677%_))))
               (_%g154662154728%_
                (lambda (_%g154664154683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154664154683%_))
                      (let ((_%e154667154685%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154664154683%_))))
                        (let ((_%hd154668154688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154667154685%_)))
                              (_%tl154669154690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154667154685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154669154690%_))
                              (let ((_%e154670154693%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154669154690%_))))
                                (let ((_%hd154671154696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154670154693%_)))
                                      (_%tl154672154698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154670154693%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154672154698%_))
                                      (let ((_%e154673154701%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154672154698%_))))
                                        (let ((_%hd154674154704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154673154701%_)))
                                              (_%tl154675154706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154673154701%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154675154706%_))
                                              ((lambda (_%L154709%_
                                                        _%L154710%_)
                                                 (let ((_%new-expr154725%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154660%_
                                                           _%L154709%_)))
                                                       (_%new-xid154726%_
                                                        (if (let ((__tmp155104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self154660%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L154710%_ __tmp155104))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self154660%_ 'new-id))
                    _%L154710%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp155105
                                                          (cons '%#set!
                                                                (cons _%new-xid154726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154725%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155105
                                                      _%stx154661%_))))
                                               _%hd154674154704%_
                                               _%hd154671154696%_)
                                              (_%g154663154680%_
                                               _%g154664154683%_))))
                                      (_%g154663154680%_ _%g154664154683%_))))
                              (_%g154663154680%_ _%g154664154683%_))))
                      (_%g154663154680%_ _%g154664154683%_)))))
          (_%g154662154728%_ _%stx154661%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self154583%_ _%stx154584%_)
        (let* ((_%g154586154603%_
                (lambda (_%g154587154600%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154587154600%_))))
               (_%g154585154657%_
                (lambda (_%g154587154606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154587154606%_))
                      (let ((_%e154590154608%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154587154606%_))))
                        (let ((_%hd154591154611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154590154608%_)))
                              (_%tl154592154613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154590154608%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154592154613%_))
                              (let ((_%e154593154616%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154592154613%_))))
                                (let ((_%hd154594154619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154593154616%_)))
                                      (_%tl154595154621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154593154616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154595154621%_))
                                      (let ((_%e154596154624%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154595154621%_))))
                                        (let ((_%hd154597154627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154596154624%_)))
                                              (_%tl154598154629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154596154624%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154598154629%_))
                                              ((lambda (_%L154632%_
                                                        _%L154633%_)
                                                 (let ((_%new-expr154654%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154583%_
                                                           _%L154632%_)))
                                                       (_%new-xid154655%_
                                                        (let ((_%$e154650%_
                                                               (let ((__tmp155107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub154648%_)
                                (let ((__tmp155108 (car _%sub154648%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L154633%_
                                   __tmp155108))))
                             (__tmp155106
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self154583%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp155107 __tmp155106))))
                  (if _%$e154650%_ (cdr _%$e154650%_) _%L154633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp155109
                                                          (cons '%#set!
                                                                (cons _%new-xid154655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154654%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155109
                                                      _%stx154584%_))))
                                               _%hd154597154627%_
                                               _%hd154594154619%_)
                                              (_%g154586154603%_
                                               _%g154587154606%_))))
                                      (_%g154586154603%_ _%g154587154606%_))))
                              (_%g154586154603%_ _%g154587154606%_))))
                      (_%g154586154603%_ _%g154587154606%_)))))
          (_%g154585154657%_ _%stx154584%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self154529%_ _%stx154530%_)
        (let* ((_%g154532154545%_
                (lambda (_%g154533154542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154533154542%_))))
               (_%g154531154580%_
                (lambda (_%g154533154548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154533154548%_))
                      (let ((_%e154535154550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154533154548%_))))
                        (let ((_%hd154536154553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154535154550%_)))
                              (_%tl154537154555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154535154550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154537154555%_))
                              (let ((_%e154538154558%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154537154555%_))))
                                (let ((_%hd154539154561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154538154558%_)))
                                      (_%tl154540154563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154538154558%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154540154563%_))
                                      ((lambda (_%L154566%_)
                                         (let* ((_%eid154578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L154566%_)))
                                                (__tmp155110
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self154529%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp155110
                                            _%eid154578%_
                                            1+
                                            '0)))
                                       _%hd154539154561%_)
                                      (_%g154532154545%_ _%g154533154548%_))))
                              (_%g154532154545%_ _%g154533154548%_))))
                      (_%g154532154545%_ _%g154533154548%_)))))
          (_%g154531154580%_ _%stx154530%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self154459%_ _%stx154460%_)
        (let* ((_%g154462154479%_
                (lambda (_%g154463154476%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154463154476%_))))
               (_%g154461154526%_
                (lambda (_%g154463154482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154463154482%_))
                      (let ((_%e154466154484%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154463154482%_))))
                        (let ((_%hd154467154487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154466154484%_)))
                              (_%tl154468154489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154466154484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154468154489%_))
                              (let ((_%e154469154492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154468154489%_))))
                                (let ((_%hd154470154495%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154469154492%_)))
                                      (_%tl154471154497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154469154492%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154471154497%_))
                                      (let ((_%e154472154500%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154471154497%_))))
                                        (let ((_%hd154473154503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154472154500%_)))
                                              (_%tl154474154505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154472154500%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154474154505%_))
                                              ((lambda (_%L154508%_
                                                        _%L154509%_)
                                                 (let ((_%eid154524%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154509%_))))
                                                   (let ((__tmp155111
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self154459%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp155111
                                                      _%eid154524%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154459%_
                                                      _%L154508%_))))
                                               _%hd154473154503%_
                                               _%hd154470154495%_)
                                              (_%g154462154479%_
                                               _%g154463154482%_))))
                                      (_%g154462154479%_ _%g154463154482%_))))
                              (_%g154462154479%_ _%g154463154482%_))))
                      (_%g154462154479%_ _%g154463154482%_)))))
          (_%g154461154526%_ _%stx154460%_))))
    (define gxc#find-body%
      (lambda (_%self154372%_ _%stx154373%_)
        (let* ((_%g154375154394%_
                (lambda (_%g154376154391%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154376154391%_))))
               (_%g154374154456%_
                (lambda (_%g154376154397%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154376154397%_))
                      (let ((_%e154378154399%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154376154397%_))))
                        (let ((_%hd154379154402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154378154399%_)))
                              (_%tl154380154404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154378154399%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl154380154404%_))
                              (let ((_g155112_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl154380154404%_
                                        '0))))
                                (begin
                                  (let ((_g155113_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g155112_)
                                               (##values-length _g155112_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g155113_ 2)))
                                        (error "Context expects 2 values"
                                               _g155113_)))
                                  (let ((_%target154381154407%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g155112_ 0)))
                                        (_%tl154383154409%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g155112_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154383154409%_))
                                        (letrec ((_%loop154384154412%_
                                                  (lambda (_%hd154382154415%_
                                                           _%expr154388154417%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154382154415%_))
                                                        (let ((_%e154385154420%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154382154415%_))))
                  (let ((_%lp-hd154386154423%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154385154420%_)))
                        (_%lp-tl154387154425%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154385154420%_))))
                    (_%loop154384154412%_
                     _%lp-tl154387154425%_
                     (cons _%lp-hd154386154423%_ _%expr154388154417%_))))
                (let ((_%expr154389154428%_ (reverse _%expr154388154417%_)))
                  ((lambda (_%L154431%_)
                     (let ((__tmp155116
                            (lambda (_%g154444154446%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154372%_
                                 _%g154444154446%_))))
                           (__tmp155114
                            (let ((__tmp155115
                                   (lambda (_%g154448154451%_
                                            _%g154449154453%_)
                                     (cons _%g154448154451%_
                                           _%g154449154453%_))))
                              (declare (not safe))
                              (__foldr1 __tmp155115 '() _%L154431%_))))
                       (declare (not safe))
                       (__ormap1 __tmp155116 __tmp155114)))
                   _%expr154389154428%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop154384154412%_
                                           _%target154381154407%_
                                           '()))
                                        (_%g154375154394%_
                                         _%g154376154397%_)))))
                              (_%g154375154394%_ _%g154376154397%_))))
                      (_%g154375154394%_ _%g154376154397%_)))))
          (_%g154374154456%_ _%stx154373%_))))
    (define gxc#find-let-values%
      (lambda (_%self154222%_ _%stx154223%_)
        (let* ((_%g154225154260%_
                (lambda (_%g154226154257%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154226154257%_))))
               (_%g154224154369%_
                (lambda (_%g154226154263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154226154263%_))
                      (let ((_%e154230154265%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154226154263%_))))
                        (let ((_%hd154231154268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154230154265%_)))
                              (_%tl154232154270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154230154265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154232154270%_))
                              (let ((_%e154233154273%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154232154270%_))))
                                (let ((_%hd154234154276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154233154273%_)))
                                      (_%tl154235154278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154233154273%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd154234154276%_))
                                      (let ((_g155117_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd154234154276%_
                                                '0))))
                                        (begin
                                          (let ((_g155118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g155117_)
                                                       (##values-length
                                                        _g155117_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g155118_ 2)))
                                                (error "Context expects 2 values"
                                                       _g155118_)))
                                          (let ((_%target154236154281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g155117_ 0)))
                                                (_%tl154238154283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g155117_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154238154283%_))
                                                (letrec ((_%loop154239154286%_
                                                          (lambda (_%hd154237154289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr154243154291%_
                           _%bind154244154293%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154237154289%_))
                        (let ((_%e154240154296%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154237154289%_))))
                          (let ((_%lp-hd154241154299%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154240154296%_)))
                                (_%lp-tl154242154301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154240154296%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd154241154299%_))
                                (let ((_%e154250154304%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd154241154299%_))))
                                  (let ((_%hd154251154307%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154250154304%_)))
                                        (_%tl154252154309%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154250154304%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154252154309%_))
                                        (let ((_%e154253154312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154252154309%_))))
                                          (let ((_%hd154254154315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154253154312%_)))
                                                (_%tl154255154317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154253154312%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154255154317%_))
                                                (_%loop154239154286%_
                                                 _%lp-tl154242154301%_
                                                 (cons _%hd154254154315%_
                                                       _%expr154243154291%_)
                                                 (cons _%hd154251154307%_
                                                       _%bind154244154293%_))
                                                (_%g154225154260%_
                                                 _%g154226154263%_))))
                                        (_%g154225154260%_
                                         _%g154226154263%_))))
                                (_%g154225154260%_ _%g154226154263%_))))
                        (let ((_%expr154245154320%_
                               (reverse _%expr154243154291%_))
                              (_%bind154246154322%_
                               (reverse _%bind154244154293%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154235154278%_))
                              (let ((_%e154247154325%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154235154278%_))))
                                (let ((_%hd154248154328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154247154325%_)))
                                      (_%tl154249154330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154247154325%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154249154330%_))
                                      ((lambda (_%L154333%_
                                                _%L154334%_
                                                _%L154335%_)
                                         (let ((_%$e154366%_
                                                (let ((__tmp155121
                                                       (lambda (_%g154354154356%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self154222%_
                                                            _%g154354154356%_))))
                                                      (__tmp155119
                                                       (let ((__tmp155120
                                                              (lambda (_%g154358154361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g154359154363%_)
                        (cons _%g154358154361%_ _%g154359154363%_))))
                 (declare (not safe))
                 (__foldr1 __tmp155120 '() _%L154334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp155121
                                                   __tmp155119))))
                                           (if _%$e154366%_
                                               _%$e154366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self154222%_
                                                  _%L154333%_)))))
                                       _%hd154248154328%_
                                       _%expr154245154320%_
                                       _%bind154246154322%_)
                                      (_%g154225154260%_ _%g154226154263%_))))
                              (_%g154225154260%_ _%g154226154263%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop154239154286%_
                                                   _%target154236154281%_
                                                   '()
                                                   '()))
                                                (_%g154225154260%_
                                                 _%g154226154263%_)))))
                                      (_%g154225154260%_ _%g154226154263%_))))
                              (_%g154225154260%_ _%g154226154263%_))))
                      (_%g154225154260%_ _%g154226154263%_)))))
          (_%g154224154369%_ _%stx154223%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self154166%_ _%stx154167%_)
        (let* ((_%g154169154182%_
                (lambda (_%g154170154179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154170154179%_))))
               (_%g154168154219%_
                (lambda (_%g154170154185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154170154185%_))
                      (let ((_%e154172154187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154170154185%_))))
                        (let ((_%hd154173154190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154172154187%_)))
                              (_%tl154174154192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154172154187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154174154192%_))
                              (let ((_%e154175154195%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154174154192%_))))
                                (let ((_%hd154176154198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154175154195%_)))
                                      (_%tl154177154200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154175154195%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154177154200%_))
                                      ((lambda (_%L154203%_)
                                         (let ((__tmp155123
                                                (lambda (_%g154214154216%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154203%_
                                                     _%g154214154216%_))))
                                               (__tmp155122
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self154166%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp155123 __tmp155122)))
                                       _%hd154176154198%_)
                                      (_%g154169154182%_ _%g154170154185%_))))
                              (_%g154169154182%_ _%g154170154185%_))))
                      (_%g154169154182%_ _%g154170154185%_)))))
          (_%g154168154219%_ _%stx154167%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self154091%_ _%stx154092%_)
        (let* ((_%g154094154111%_
                (lambda (_%g154095154108%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154095154108%_))))
               (_%g154093154163%_
                (lambda (_%g154095154114%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154095154114%_))
                      (let ((_%e154098154116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154095154114%_))))
                        (let ((_%hd154099154119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154098154116%_)))
                              (_%tl154100154121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154098154116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154100154121%_))
                              (let ((_%e154101154124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154100154121%_))))
                                (let ((_%hd154102154127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154101154124%_)))
                                      (_%tl154103154129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154101154124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154103154129%_))
                                      (let ((_%e154104154132%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154103154129%_))))
                                        (let ((_%hd154105154135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154104154132%_)))
                                              (_%tl154106154137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154104154132%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154106154137%_))
                                              ((lambda (_%L154140%_
                                                        _%L154141%_)
                                                 (let ((_%$e154160%_
                                                        (let ((__tmp155125
                                                               (lambda (_%g154155154157%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L154141%_
                            _%g154155154157%_))))
                      (__tmp155124
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self154091%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp155125 __tmp155124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e154160%_
                                                       _%$e154160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self154091%_
                                                          _%L154140%_)))))
                                               _%hd154105154135%_
                                               _%hd154102154127%_)
                                              (_%g154094154111%_
                                               _%g154095154114%_))))
                                      (_%g154094154111%_ _%g154095154114%_))))
                              (_%g154094154111%_ _%g154095154114%_))))
                      (_%g154094154111%_ _%g154095154114%_)))))
          (_%g154093154163%_ _%stx154092%_))))))
