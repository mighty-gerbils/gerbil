(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770405376)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp208192 (list gxc#::void::t))
            (__tmp208191 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp208192
         '()
         __tmp208191
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args208178%_
        (apply make-instance gxc#::collect-mutators::t _%$args208178%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp208193
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
        (__make-atomic-promise __tmp208193)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx208170%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self208173%_
                (let ((__obj208181
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj208181))
               (__tmp208194
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208173%_ _%stx208170%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208194
           gxc#current-compile-method
           _%self208173%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp208196 (list gxc#::basic-xform-expression::t))
            (__tmp208195 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp208196
         '(id new-id)
         __tmp208195
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args208167%_
        (apply make-instance gxc#::expression-subst::t _%$args208167%_)))
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
      (let ((__tmp208197
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
        (__make-atomic-promise __tmp208197)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords208139%_
               _%id208135208140%_
               _%new-id208136208141%_
               _%stx208142%_)
        (let* ((_%id208145%_
                (if (eq? _%id208135208140%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id208135208140%_))
               (_%new-id208147%_
                (if (eq? _%new-id208136208141%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id208136208141%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self208149%_
                  (let ((__obj208183
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208183
                       _%id208145%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208183
                       _%new-id208147%_
                       '2
                       '#f
                       '#f))
                    __obj208183))
                 (__tmp208198
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208149%_ _%stx208142%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208198
             gxc#current-compile-method
             _%self208149%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords208156%_ . _%args208157%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords208156%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords208156%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208156%_
                  'new-id:
                  absent-value))
               _%args208157%_)))
    (define gxc#apply-expression-subst
      (lambda _%args208137208163%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args208137208163%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp208200 (list gxc#::basic-xform-expression::t))
            (__tmp208199 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp208200
         '(subst)
         __tmp208199
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args208131%_
        (apply make-instance gxc#::expression-subst*::t _%$args208131%_)))
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
      (let ((__tmp208201
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
        (__make-atomic-promise __tmp208201)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords208106%_ _%subst208103208107%_ _%stx208108%_)
        (let ((_%subst208111%_
               (if (eq? _%subst208103208107%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst208103208107%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self208113%_
                  (let ((__obj208185
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208185
                       _%subst208111%_
                       '1
                       '#f
                       '#f))
                    __obj208185))
                 (__tmp208202
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208113%_ _%stx208108%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208202
             gxc#current-compile-method
             _%self208113%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords208120%_ . _%args208121%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords208120%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208120%_
                  'subst:
                  absent-value))
               _%args208121%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args208104208127%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args208104208127%_)))
    (define gxc#::find-expression::t
      (let ((__tmp208203 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp208203
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args208099%_
        (apply make-instance gxc#::find-expression::t _%$args208099%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp208204
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
        (__make-atomic-promise __tmp208204)))
    (define gxc#::find-var-refs::t
      (let ((__tmp208206 (list gxc#::find-expression::t))
            (__tmp208205 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp208206
         '(ids)
         __tmp208205
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args208095%_
        (apply make-instance gxc#::find-var-refs::t _%$args208095%_)))
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
      (let ((__tmp208207
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
        (__make-atomic-promise __tmp208207)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords208070%_ _%ids208067208071%_ _%stx208072%_)
        (let ((_%ids208075%_
               (if (eq? _%ids208067208071%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids208067208071%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self208077%_
                  (let ((__obj208188
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208188
                       _%ids208075%_
                       '1
                       '#f
                       '#f))
                    __obj208188))
                 (__tmp208208
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208077%_ _%stx208072%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208208
             gxc#current-compile-method
             _%self208077%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords208084%_ . _%args208085%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords208084%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords208084%_ 'ids: absent-value))
               _%args208085%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args208068208091%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args208068208091%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp208210 (list gxc#::collect-expression-refs::t))
            (__tmp208209 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp208210
         '()
         __tmp208209
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args208063%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args208063%_)))
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
      (let ((__tmp208211
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
        (__make-atomic-promise __tmp208211)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords208038%_ _%table208035208039%_ _%stx208040%_)
        (let ((_%table208043%_
               (if (eq? _%table208035208039%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table208035208039%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self208045%_
                  (let ((__obj208190
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208190
                       _%table208043%_
                       '1
                       '#f
                       '#f))
                    __obj208190))
                 (__tmp208212
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208045%_ _%stx208040%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208212
             gxc#current-compile-method
             _%self208045%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords208052%_ . _%args208053%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords208052%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208052%_
                  'table:
                  absent-value))
               _%args208053%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args208036208059%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args208036208059%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self207964%_ _%stx207965%_)
        (let* ((_%g207967207984%_
                (lambda (_%g207968207981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207968207981%_))))
               (_%g207966208031%_
                (lambda (_%g207968207987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207968207987%_))
                      (let ((_%e207971207989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207968207987%_))))
                        (let ((_%hd207972207992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207971207989%_)))
                              (_%tl207973207994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207971207989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207973207994%_))
                              (let ((_%e207974207997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207973207994%_))))
                                (let ((_%hd207975208000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207974207997%_)))
                                      (_%tl207976208002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207974207997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207976208002%_))
                                      (let ((_%e207977208005%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207976208002%_))))
                                        (let ((_%hd207978208008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207977208005%_)))
                                              (_%tl207979208010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207977208005%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207979208010%_))
                                              ((lambda (_%g207969208013%_
                                                        _%g207970208014%_)
                                                 (let ((_%sym208029%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g207970208014%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym208029%_))
                                                   (let ((__tmp208213
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp208213
                                                      _%sym208029%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self207964%_
                                                      _%g207969208013%_))))
                                               _%hd207978208008%_
                                               _%hd207975208000%_)
                                              (_%g207967207984%_
                                               _%g207968207987%_))))
                                      (_%g207967207984%_ _%g207968207987%_))))
                              (_%g207967207984%_ _%g207968207987%_))))
                      (_%g207967207984%_ _%g207968207987%_)))))
          (_%g207966208031%_ _%stx207965%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self207912%_ _%stx207913%_)
        (let* ((_%g207915207928%_
                (lambda (_%g207916207925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207916207925%_))))
               (_%g207914207961%_
                (lambda (_%g207916207931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207916207931%_))
                      (let ((_%e207918207933%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207916207931%_))))
                        (let ((_%hd207919207936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207918207933%_)))
                              (_%tl207920207938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207918207933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207920207938%_))
                              (let ((_%e207921207941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207920207938%_))))
                                (let ((_%hd207922207944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207921207941%_)))
                                      (_%tl207923207946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207921207941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207923207946%_))
                                      ((lambda (_%g207917207949%_)
                                         (if (let ((__tmp208214
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self207912%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g207917207949%_
                                                __tmp208214))
                                             (let ((__tmp208215
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self207912%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp208215
                                                _%stx207913%_))
                                             _%stx207913%_))
                                       _%hd207922207944%_)
                                      (_%g207915207928%_ _%g207916207931%_))))
                              (_%g207915207928%_ _%g207916207931%_))))
                      (_%g207915207928%_ _%g207916207931%_)))))
          (_%g207914207961%_ _%stx207913%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self207852%_ _%stx207853%_)
        (let* ((_%g207855207868%_
                (lambda (_%g207856207865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207856207865%_))))
               (_%g207854207909%_
                (lambda (_%g207856207871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207856207871%_))
                      (let ((_%e207858207873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207856207871%_))))
                        (let ((_%hd207859207876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207858207873%_)))
                              (_%tl207860207878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207858207873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207860207878%_))
                              (let ((_%e207861207881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207860207878%_))))
                                (let ((_%hd207862207884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207861207881%_)))
                                      (_%tl207863207886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207861207881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207863207886%_))
                                      ((lambda (_%g207857207889%_)
                                         (let ((_%$e207903%_
                                                (let ((__tmp208217
                                                       (lambda (_%sub207901%_)
                                                         (let ((__tmp208218
                                                                (car _%sub207901%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g207857207889%_
                                                            __tmp208218))))
                                                      (__tmp208216
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self207852%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp208217
                                                          __tmp208216))))
                                           (if _%$e207903%_
                                               ((lambda (_%sub207906%_)
                                                  (let ((__tmp208219
                                                         (cons '%#ref
                                                               (cons (cdr _%sub207906%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp208219
                                                     _%stx207853%_)))
                                                _%$e207903%_)
                                               _%stx207853%_)))
                                       _%hd207862207884%_)
                                      (_%g207855207868%_ _%g207856207871%_))))
                              (_%g207855207868%_ _%g207856207871%_))))
                      (_%g207855207868%_ _%g207856207871%_)))))
          (_%g207854207909%_ _%stx207853%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self207781%_ _%stx207782%_)
        (let* ((_%g207784207801%_
                (lambda (_%g207785207798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207785207798%_))))
               (_%g207783207849%_
                (lambda (_%g207785207804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207785207804%_))
                      (let ((_%e207788207806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207785207804%_))))
                        (let ((_%hd207789207809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207788207806%_)))
                              (_%tl207790207811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207788207806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207790207811%_))
                              (let ((_%e207791207814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207790207811%_))))
                                (let ((_%hd207792207817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207791207814%_)))
                                      (_%tl207793207819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207791207814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207793207819%_))
                                      (let ((_%e207794207822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207793207819%_))))
                                        (let ((_%hd207795207825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207794207822%_)))
                                              (_%tl207796207827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207794207822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207796207827%_))
                                              ((lambda (_%g207786207830%_
                                                        _%g207787207831%_)
                                                 (let ((_%new-expr207846%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self207781%_
                                                           _%g207786207830%_)))
                                                       (_%new-xid207847%_
                                                        (if (let ((__tmp208220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self207781%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g207787207831%_ __tmp208220))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self207781%_ 'new-id))
                    _%g207787207831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp208221
                                                          (cons '%#set!
                                                                (cons _%new-xid207847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr207846%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp208221
                                                      _%stx207782%_))))
                                               _%hd207795207825%_
                                               _%hd207792207817%_)
                                              (_%g207784207801%_
                                               _%g207785207804%_))))
                                      (_%g207784207801%_ _%g207785207804%_))))
                              (_%g207784207801%_ _%g207785207804%_))))
                      (_%g207784207801%_ _%g207785207804%_)))))
          (_%g207783207849%_ _%stx207782%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self207704%_ _%stx207705%_)
        (let* ((_%g207707207724%_
                (lambda (_%g207708207721%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207708207721%_))))
               (_%g207706207778%_
                (lambda (_%g207708207727%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207708207727%_))
                      (let ((_%e207711207729%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207708207727%_))))
                        (let ((_%hd207712207732%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207711207729%_)))
                              (_%tl207713207734%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207711207729%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207713207734%_))
                              (let ((_%e207714207737%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207713207734%_))))
                                (let ((_%hd207715207740%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207714207737%_)))
                                      (_%tl207716207742%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207714207737%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207716207742%_))
                                      (let ((_%e207717207745%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207716207742%_))))
                                        (let ((_%hd207718207748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207717207745%_)))
                                              (_%tl207719207750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207717207745%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207719207750%_))
                                              ((lambda (_%g207709207753%_
                                                        _%g207710207754%_)
                                                 (let ((_%new-expr207775%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self207704%_
                                                           _%g207709207753%_)))
                                                       (_%new-xid207776%_
                                                        (let ((_%$e207771%_
                                                               (let ((__tmp208223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub207769%_)
                                (let ((__tmp208224 (car _%sub207769%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g207710207754%_
                                   __tmp208224))))
                             (__tmp208222
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self207704%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp208223 __tmp208222))))
                  (if _%$e207771%_ (cdr _%$e207771%_) _%g207710207754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp208225
                                                          (cons '%#set!
                                                                (cons _%new-xid207776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr207775%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp208225
                                                      _%stx207705%_))))
                                               _%hd207718207748%_
                                               _%hd207715207740%_)
                                              (_%g207707207724%_
                                               _%g207708207727%_))))
                                      (_%g207707207724%_ _%g207708207727%_))))
                              (_%g207707207724%_ _%g207708207727%_))))
                      (_%g207707207724%_ _%g207708207727%_)))))
          (_%g207706207778%_ _%stx207705%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self207650%_ _%stx207651%_)
        (let* ((_%g207653207666%_
                (lambda (_%g207654207663%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207654207663%_))))
               (_%g207652207701%_
                (lambda (_%g207654207669%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207654207669%_))
                      (let ((_%e207656207671%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207654207669%_))))
                        (let ((_%hd207657207674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207656207671%_)))
                              (_%tl207658207676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207656207671%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207658207676%_))
                              (let ((_%e207659207679%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207658207676%_))))
                                (let ((_%hd207660207682%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207659207679%_)))
                                      (_%tl207661207684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207659207679%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207661207684%_))
                                      ((lambda (_%g207655207687%_)
                                         (let* ((_%eid207699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g207655207687%_)))
                                                (__tmp208226
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self207650%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp208226
                                            _%eid207699%_
                                            1+
                                            '0)))
                                       _%hd207660207682%_)
                                      (_%g207653207666%_ _%g207654207669%_))))
                              (_%g207653207666%_ _%g207654207669%_))))
                      (_%g207653207666%_ _%g207654207669%_)))))
          (_%g207652207701%_ _%stx207651%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self207580%_ _%stx207581%_)
        (let* ((_%g207583207600%_
                (lambda (_%g207584207597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207584207597%_))))
               (_%g207582207647%_
                (lambda (_%g207584207603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207584207603%_))
                      (let ((_%e207587207605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207584207603%_))))
                        (let ((_%hd207588207608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207587207605%_)))
                              (_%tl207589207610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207587207605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207589207610%_))
                              (let ((_%e207590207613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207589207610%_))))
                                (let ((_%hd207591207616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207590207613%_)))
                                      (_%tl207592207618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207590207613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207592207618%_))
                                      (let ((_%e207593207621%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207592207618%_))))
                                        (let ((_%hd207594207624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207593207621%_)))
                                              (_%tl207595207626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207593207621%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207595207626%_))
                                              ((lambda (_%g207585207629%_
                                                        _%g207586207630%_)
                                                 (let ((_%eid207645%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g207586207630%_))))
                                                   (let ((__tmp208227
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self207580%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp208227
                                                      _%eid207645%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self207580%_
                                                      _%g207585207629%_))))
                                               _%hd207594207624%_
                                               _%hd207591207616%_)
                                              (_%g207583207600%_
                                               _%g207584207603%_))))
                                      (_%g207583207600%_ _%g207584207603%_))))
                              (_%g207583207600%_ _%g207584207603%_))))
                      (_%g207583207600%_ _%g207584207603%_)))))
          (_%g207582207647%_ _%stx207581%_))))
    (define gxc#find-body%
      (lambda (_%self207495%_ _%stx207496%_)
        (let* ((_%g207498207517%_
                (lambda (_%g207499207514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207499207514%_))))
               (_%g207497207577%_
                (lambda (_%g207499207520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207499207520%_))
                      (let ((_%e207501207522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207499207520%_))))
                        (let ((_%hd207502207525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207501207522%_)))
                              (_%tl207503207527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207501207522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl207503207527%_))
                              (let ((_g208228_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl207503207527%_
                                        '0))))
                                (begin
                                  (let ((_g208229_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208228_)
                                               (##values-length _g208228_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208229_ 2)))
                                        (error "Context expects 2 values"
                                               _g208229_)))
                                  (let ((_%target207504207530%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g208228_ 0)))
                                        (_%tl207506207532%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g208228_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207506207532%_))
                                        (letrec ((_%loop207507207535%_
                                                  (lambda (_%hd207505207538%_
                                                           _%expr207511207540%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd207505207538%_))
                                                        (let ((_%e207508207542%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd207505207538%_))))
                  (let ((_%lp-hd207509207545%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207508207542%_)))
                        (_%lp-tl207510207547%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207508207542%_))))
                    (_%loop207507207535%_
                     _%lp-tl207510207547%_
                     (cons _%lp-hd207509207545%_ _%expr207511207540%_))))
                (let ((_%expr207512207550%_ (reverse _%expr207511207540%_)))
                  ((lambda (_%g207500207552%_)
                     (let ((__tmp208232
                            (lambda (_%g207565207567%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207495%_
                                 _%g207565207567%_))))
                           (__tmp208230
                            (let ((__tmp208231
                                   (lambda (_%g207569207572%_
                                            _%g207570207574%_)
                                     (cons _%g207569207572%_
                                           _%g207570207574%_))))
                              (declare (not safe))
                              (foldr__0 __tmp208231 '() _%g207500207552%_))))
                       (declare (not safe))
                       (ormap__0 __tmp208232 __tmp208230)))
                   _%expr207512207550%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop207507207535%_
                                           _%target207504207530%_
                                           '()))
                                        (_%g207498207517%_
                                         _%g207499207520%_)))))
                              (_%g207498207517%_ _%g207499207520%_))))
                      (_%g207498207517%_ _%g207499207520%_)))))
          (_%g207497207577%_ _%stx207496%_))))
    (define gxc#find-let-values%
      (lambda (_%self207349%_ _%stx207350%_)
        (let* ((_%g207352207387%_
                (lambda (_%g207353207384%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207353207384%_))))
               (_%g207351207492%_
                (lambda (_%g207353207390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207353207390%_))
                      (let ((_%e207357207392%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207353207390%_))))
                        (let ((_%hd207358207395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207357207392%_)))
                              (_%tl207359207397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207357207392%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207359207397%_))
                              (let ((_%e207360207400%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207359207397%_))))
                                (let ((_%hd207361207403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207360207400%_)))
                                      (_%tl207362207405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207360207400%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd207361207403%_))
                                      (let ((_g208233_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd207361207403%_
                                                '0))))
                                        (begin
                                          (let ((_g208234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g208233_)
                                                       (##values-length
                                                        _g208233_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g208234_ 2)))
                                                (error "Context expects 2 values"
                                                       _g208234_)))
                                          (let ((_%target207363207408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g208233_ 0)))
                                                (_%tl207365207410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g208233_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207365207410%_))
                                                (letrec ((_%loop207366207413%_
                                                          (lambda (_%hd207364207416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr207370207418%_
                           _%bind207371207419%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207364207416%_))
                        (let ((_%e207367207421%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd207364207416%_))))
                          (let ((_%lp-hd207368207424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207367207421%_)))
                                (_%lp-tl207369207426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207367207421%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd207368207424%_))
                                (let ((_%e207374207429%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd207368207424%_))))
                                  (let ((_%hd207375207432%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207374207429%_)))
                                        (_%tl207376207434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207374207429%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl207376207434%_))
                                        (let ((_%e207377207437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl207376207434%_))))
                                          (let ((_%hd207378207440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e207377207437%_)))
                                                (_%tl207379207442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e207377207437%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207379207442%_))
                                                (_%loop207366207413%_
                                                 _%lp-tl207369207426%_
                                                 (cons _%hd207378207440%_
                                                       _%expr207370207418%_)
                                                 (cons _%hd207375207432%_
                                                       _%bind207371207419%_))
                                                (_%g207352207387%_
                                                 _%g207353207390%_))))
                                        (_%g207352207387%_
                                         _%g207353207390%_))))
                                (_%g207352207387%_ _%g207353207390%_))))
                        (let ((_%expr207372207445%_
                               (reverse _%expr207370207418%_))
                              (_%bind207373207446%_
                               (reverse _%bind207371207419%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207362207405%_))
                              (let ((_%e207380207448%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207362207405%_))))
                                (let ((_%hd207381207451%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207380207448%_)))
                                      (_%tl207382207453%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207380207448%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207382207453%_))
                                      ((lambda (_%g207354207456%_
                                                _%g207355207457%_
                                                _%g207356207458%_)
                                         (let ((_%$e207489%_
                                                (let ((__tmp208237
                                                       (lambda (_%g207477207479%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self207349%_
                                                            _%g207477207479%_))))
                                                      (__tmp208235
                                                       (let ((__tmp208236
                                                              (lambda (_%g207481207484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g207482207486%_)
                        (cons _%g207481207484%_ _%g207482207486%_))))
                 (declare (not safe))
                 (foldr__0 __tmp208236 '() _%g207355207457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp208237
                                                   __tmp208235))))
                                           (if _%$e207489%_
                                               _%$e207489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self207349%_
                                                  _%g207354207456%_)))))
                                       _%hd207381207451%_
                                       _%expr207372207445%_
                                       _%bind207373207446%_)
                                      (_%g207352207387%_ _%g207353207390%_))))
                              (_%g207352207387%_ _%g207353207390%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207366207413%_
                                                   _%target207363207408%_
                                                   '()
                                                   '()))
                                                (_%g207352207387%_
                                                 _%g207353207390%_)))))
                                      (_%g207352207387%_ _%g207353207390%_))))
                              (_%g207352207387%_ _%g207353207390%_))))
                      (_%g207352207387%_ _%g207353207390%_)))))
          (_%g207351207492%_ _%stx207350%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self207293%_ _%stx207294%_)
        (let* ((_%g207296207309%_
                (lambda (_%g207297207306%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207297207306%_))))
               (_%g207295207346%_
                (lambda (_%g207297207312%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207297207312%_))
                      (let ((_%e207299207314%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207297207312%_))))
                        (let ((_%hd207300207317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207299207314%_)))
                              (_%tl207301207319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207299207314%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207301207319%_))
                              (let ((_%e207302207322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207301207319%_))))
                                (let ((_%hd207303207325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207302207322%_)))
                                      (_%tl207304207327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207302207322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207304207327%_))
                                      ((lambda (_%g207298207330%_)
                                         (let ((__tmp208239
                                                (lambda (_%g207341207343%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g207298207330%_
                                                     _%g207341207343%_))))
                                               (__tmp208238
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self207293%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp208239 __tmp208238)))
                                       _%hd207303207325%_)
                                      (_%g207296207309%_ _%g207297207312%_))))
                              (_%g207296207309%_ _%g207297207312%_))))
                      (_%g207296207309%_ _%g207297207312%_)))))
          (_%g207295207346%_ _%stx207294%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self207218%_ _%stx207219%_)
        (let* ((_%g207221207238%_
                (lambda (_%g207222207235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207222207235%_))))
               (_%g207220207290%_
                (lambda (_%g207222207241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207222207241%_))
                      (let ((_%e207225207243%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207222207241%_))))
                        (let ((_%hd207226207246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207225207243%_)))
                              (_%tl207227207248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207225207243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207227207248%_))
                              (let ((_%e207228207251%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207227207248%_))))
                                (let ((_%hd207229207254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207228207251%_)))
                                      (_%tl207230207256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207228207251%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207230207256%_))
                                      (let ((_%e207231207259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207230207256%_))))
                                        (let ((_%hd207232207262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207231207259%_)))
                                              (_%tl207233207264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207231207259%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207233207264%_))
                                              ((lambda (_%g207223207267%_
                                                        _%g207224207268%_)
                                                 (let ((_%$e207287%_
                                                        (let ((__tmp208241
                                                               (lambda (_%g207282207284%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g207224207268%_
                            _%g207282207284%_))))
                      (__tmp208240
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self207218%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp208241 __tmp208240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e207287%_
                                                       _%$e207287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self207218%_
                                                          _%g207223207267%_)))))
                                               _%hd207232207262%_
                                               _%hd207229207254%_)
                                              (_%g207221207238%_
                                               _%g207222207241%_))))
                                      (_%g207221207238%_ _%g207222207241%_))))
                              (_%g207221207238%_ _%g207222207241%_))))
                      (_%g207221207238%_ _%g207222207241%_)))))
          (_%g207220207290%_ _%stx207219%_))))))
