(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712251113)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151107 (list gxc#::void::t))
            (__tmp151106 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151107
         '()
         __tmp151106
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150847%_
        (apply make-instance gxc#::collect-mutators::t _%$args150847%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151108
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
        (__make-promise __tmp151108)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150839%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150842%_
                (let ((__obj151094
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151094))
               (__tmp151109
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150842%_ _%stx150839%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151109
           gxc#current-compile-method
           _%self150842%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp151111 (list gxc#::void::t))
            (__tmp151110 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp151111
         '()
         __tmp151110
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150836%_
        (apply make-instance gxc#::collect-methods::t _%$args150836%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp151112
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call-unchecked
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (__make-promise __tmp151112)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150828%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150831%_
                (let ((__obj151096
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj151096))
               (__tmp151113
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150831%_ _%stx150828%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151113
           gxc#current-compile-method
           _%self150831%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151115 (list gxc#::basic-xform-expression::t))
            (__tmp151114 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151115
         '(id new-id)
         __tmp151114
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150825%_
        (apply make-instance gxc#::expression-subst::t _%$args150825%_)))
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
      (let ((__tmp151116
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
        (__make-promise __tmp151116)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150795%_
               _%id150791150796%_
               _%new-id150792150798%_
               _%stx150800%_)
        (let* ((_%id150803%_
                (if (eq? _%id150791150796%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150791150796%_))
               (_%new-id150805%_
                (if (eq? _%new-id150792150798%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150792150798%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150807%_
                  (let ((__obj151098
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151098
                       _%id150803%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151098
                       _%new-id150805%_
                       '2
                       '#f
                       '#f))
                    __obj151098))
                 (__tmp151117
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150807%_ _%stx150800%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151117
             gxc#current-compile-method
             _%self150807%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150814%_ . _%args150815%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150814%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150814%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150814%_
                  'new-id:
                  absent-value))
               _%args150815%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150793150821%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150793150821%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151119 (list gxc#::basic-xform-expression::t))
            (__tmp151118 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151119
         '(subst)
         __tmp151118
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150787%_
        (apply make-instance gxc#::expression-subst*::t _%$args150787%_)))
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
      (let ((__tmp151120
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
        (__make-promise __tmp151120)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150761%_ _%subst150758150762%_ _%stx150764%_)
        (let ((_%subst150767%_
               (if (eq? _%subst150758150762%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150758150762%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150769%_
                  (let ((__obj151100
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151100
                       _%subst150767%_
                       '1
                       '#f
                       '#f))
                    __obj151100))
                 (__tmp151121
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150769%_ _%stx150764%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151121
             gxc#current-compile-method
             _%self150769%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150776%_ . _%args150777%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150776%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150776%_
                  'subst:
                  absent-value))
               _%args150777%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150759150783%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150759150783%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151122 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151122
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150754%_
        (apply make-instance gxc#::find-expression::t _%$args150754%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151123
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
        (__make-promise __tmp151123)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151125 (list gxc#::find-expression::t))
            (__tmp151124 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151125
         '(ids)
         __tmp151124
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150750%_
        (apply make-instance gxc#::find-var-refs::t _%$args150750%_)))
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
      (let ((__tmp151126
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
        (__make-promise __tmp151126)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150724%_ _%ids150721150725%_ _%stx150727%_)
        (let ((_%ids150730%_
               (if (eq? _%ids150721150725%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150721150725%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150732%_
                  (let ((__obj151103
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151103
                       _%ids150730%_
                       '1
                       '#f
                       '#f))
                    __obj151103))
                 (__tmp151127
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150732%_ _%stx150727%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151127
             gxc#current-compile-method
             _%self150732%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150739%_ . _%args150740%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150739%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150739%_ 'ids: absent-value))
               _%args150740%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150722150746%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150722150746%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151129 (list gxc#::collect-expression-refs::t))
            (__tmp151128 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151129
         '()
         __tmp151128
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150717%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150717%_)))
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
      (let ((__tmp151130
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
        (__make-promise __tmp151130)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150691%_ _%table150688150692%_ _%stx150694%_)
        (let ((_%table150697%_
               (if (eq? _%table150688150692%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150688150692%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150699%_
                  (let ((__obj151105
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151105
                       _%table150697%_
                       '1
                       '#f
                       '#f))
                    __obj151105))
                 (__tmp151131
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150699%_ _%stx150694%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151131
             gxc#current-compile-method
             _%self150699%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150706%_ . _%args150707%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150706%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150706%_
                  'table:
                  absent-value))
               _%args150707%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150689150713%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150689150713%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150617%_ _%stx150618%_)
        (let* ((_%g150620150637%_
                (lambda (_%g150621150634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150621150634%_))))
               (_%g150619150684%_
                (lambda (_%g150621150640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150621150640%_))
                      (let ((_%e150626150642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150621150640%_))))
                        (let ((_%hd150625150645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150626150642%_)))
                              (_%tl150624150647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150626150642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150624150647%_))
                              (let ((_%e150629150650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150624150647%_))))
                                (let ((_%hd150628150653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150629150650%_)))
                                      (_%tl150627150655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150629150650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150627150655%_))
                                      (let ((_%e150632150658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150627150655%_))))
                                        (let ((_%hd150631150661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150632150658%_)))
                                              (_%tl150630150663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150632150658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150630150663%_))
                                              ((lambda (_%L150666%_
                                                        _%L150667%_)
                                                 (let ((_%sym150682%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150667%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150682%_))
                                                   (let ((__tmp151132
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151132
                                                      _%sym150682%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150617%_
                                                      _%L150666%_))))
                                               _%hd150631150661%_
                                               _%hd150628150653%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150620150637%_
                                                 _%g150621150640%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150620150637%_
                                         _%g150621150640%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150620150637%_ _%g150621150640%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150620150637%_ _%g150621150640%_))))))
          (declare (not safe))
          (_%g150619150684%_ _%stx150618%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self150170%_ _%stx150171%_)
        (let* ((_%__stx150850150851%_ _%stx150171%_)
               (_%g150175150277%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150850150851%_)))))
          (let ((_%__kont150852150853%_
                 (lambda (_%L150567%_
                          _%L150568%_
                          _%L150569%_
                          _%L150570%_
                          _%L150571%_)
                   (let ((__tmp151133
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150568%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151133))))
                (_%__kont150854150855%_
                 (lambda (_%L150393%_ _%L150394%_ _%L150395%_ _%L150396%_)
                   (let ((__tmp151134
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150393%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151134))))
                (_%__kont150856150857%_ (lambda () '#!void)))
            (let ((_%__match150985150986%_
                   (lambda (_%e150184150439%_
                            _%hd150183150442%_
                            _%tl150182150444%_
                            _%e150187150447%_
                            _%hd150186150450%_
                            _%tl150185150452%_
                            _%e150190150455%_
                            _%hd150189150458%_
                            _%tl150188150460%_
                            _%e150193150463%_
                            _%hd150192150466%_
                            _%tl150191150468%_
                            _%e150196150471%_
                            _%hd150195150474%_
                            _%tl150194150476%_
                            _%e150199150479%_
                            _%hd150198150482%_
                            _%tl150197150484%_
                            _%e150202150487%_
                            _%hd150201150490%_
                            _%tl150200150492%_
                            _%e150205150495%_
                            _%hd150204150498%_
                            _%tl150203150500%_
                            _%e150208150503%_
                            _%hd150207150506%_
                            _%tl150206150508%_
                            _%e150211150511%_
                            _%hd150210150514%_
                            _%tl150209150516%_
                            _%e150214150519%_
                            _%hd150213150522%_
                            _%tl150212150524%_
                            _%e150217150527%_
                            _%hd150216150530%_
                            _%tl150215150532%_
                            _%e150220150535%_
                            _%hd150219150538%_
                            _%tl150218150540%_
                            _%e150223150543%_
                            _%hd150222150546%_
                            _%tl150221150548%_
                            _%e150226150551%_
                            _%hd150225150554%_
                            _%tl150224150556%_
                            _%e150229150559%_
                            _%hd150228150562%_
                            _%tl150227150564%_)
                     (let ((_%L150567%_ _%hd150228150562%_)
                           (_%L150568%_ _%hd150219150538%_)
                           (_%L150569%_ _%hd150210150514%_)
                           (_%L150570%_ _%hd150201150490%_)
                           (_%L150571%_ _%hd150192150466%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L150571%_
                              'bind-method!))
                           (_%__kont150852150853%_
                            _%L150567%_
                            _%L150568%_
                            _%L150569%_
                            _%L150570%_
                            _%L150571%_)
                           (_%__kont150856150857%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150850150851%_))
                  (let ((_%e150184150439%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150850150851%_))))
                    (let ((_%tl150182150444%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150184150439%_)))
                          (_%hd150183150442%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150184150439%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150182150444%_))
                          (let ((_%e150187150447%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150182150444%_))))
                            (let ((_%tl150185150452%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150187150447%_)))
                                  (_%hd150186150450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150187150447%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150186150450%_))
                                  (let ((_%e150190150455%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150186150450%_))))
                                    (let ((_%tl150188150460%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150190150455%_)))
                                          (_%hd150189150458%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150190150455%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150189150458%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150189150458%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150188150460%_))
                                                  (let ((_%e150193150463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150188150460%_))))
                                                    (let ((_%tl150191150468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150193150463%_)))
                                                          (_%hd150192150466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150193150463%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150191150468%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl150185150452%_))
                      (let ((_%e150196150471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl150185150452%_))))
                        (let ((_%tl150194150476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150196150471%_)))
                              (_%hd150195150474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150196150471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd150195150474%_))
                              (let ((_%e150199150479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd150195150474%_))))
                                (let ((_%tl150197150484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150199150479%_)))
                                      (_%hd150198150482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150199150479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd150198150482%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd150198150482%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150197150484%_))
                                              (let ((_%e150202150487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150197150484%_))))
                                                (let ((_%tl150200150492%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150202150487%_)))
                                                      (_%hd150201150490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150202150487%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150200150492%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl150194150476%_))
                                                          (let ((_%e150205150495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl150194150476%_))))
                    (let ((_%tl150203150500%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150205150495%_)))
                          (_%hd150204150498%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150205150495%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150204150498%_))
                          (let ((_%e150208150503%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150204150498%_))))
                            (let ((_%tl150206150508%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150208150503%_)))
                                  (_%hd150207150506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150208150503%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd150207150506%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd150207150506%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl150206150508%_))
                                          (let ((_%e150211150511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl150206150508%_))))
                                            (let ((_%tl150209150516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e150211150511%_)))
                                                  (_%hd150210150514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e150211150511%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150209150516%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl150203150500%_))
                                                      (let ((_%e150214150519%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl150203150500%_))))
                (let ((_%tl150212150524%_
                       (let () (declare (not safe)) (##cdr _%e150214150519%_)))
                      (_%hd150213150522%_
                       (let ()
                         (declare (not safe))
                         (##car _%e150214150519%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd150213150522%_))
                      (let ((_%e150217150527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd150213150522%_))))
                        (let ((_%tl150215150532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150217150527%_)))
                              (_%hd150216150530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150217150527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd150216150530%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd150216150530%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150215150532%_))
                                      (let ((_%e150220150535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150215150532%_))))
                                        (let ((_%tl150218150540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150220150535%_)))
                                              (_%hd150219150538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150220150535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150218150540%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150212150524%_))
                                                  (let ((_%e150223150543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150212150524%_))))
                                                    (let ((_%tl150221150548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150223150543%_)))
                                                          (_%hd150222150546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150223150543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd150222150546%_))
                                                          (let ((_%e150226150551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd150222150546%_))))
                    (let ((_%tl150224150556%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150226150551%_)))
                          (_%hd150225150554%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150226150551%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd150225150554%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd150225150554%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl150224150556%_))
                                  (let ((_%e150229150559%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl150224150556%_))))
                                    (let ((_%tl150227150564%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150229150559%_)))
                                          (_%hd150228150562%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150229150559%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl150227150564%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150221150548%_))
                                              (_%__match150985150986%_
                                               _%e150184150439%_
                                               _%hd150183150442%_
                                               _%tl150182150444%_
                                               _%e150187150447%_
                                               _%hd150186150450%_
                                               _%tl150185150452%_
                                               _%e150190150455%_
                                               _%hd150189150458%_
                                               _%tl150188150460%_
                                               _%e150193150463%_
                                               _%hd150192150466%_
                                               _%tl150191150468%_
                                               _%e150196150471%_
                                               _%hd150195150474%_
                                               _%tl150194150476%_
                                               _%e150199150479%_
                                               _%hd150198150482%_
                                               _%tl150197150484%_
                                               _%e150202150487%_
                                               _%hd150201150490%_
                                               _%tl150200150492%_
                                               _%e150205150495%_
                                               _%hd150204150498%_
                                               _%tl150203150500%_
                                               _%e150208150503%_
                                               _%hd150207150506%_
                                               _%tl150206150508%_
                                               _%e150211150511%_
                                               _%hd150210150514%_
                                               _%tl150209150516%_
                                               _%e150214150519%_
                                               _%hd150213150522%_
                                               _%tl150212150524%_
                                               _%e150217150527%_
                                               _%hd150216150530%_
                                               _%tl150215150532%_
                                               _%e150220150535%_
                                               _%hd150219150538%_
                                               _%tl150218150540%_
                                               _%e150223150543%_
                                               _%hd150222150546%_
                                               _%tl150221150548%_
                                               _%e150226150551%_
                                               _%hd150225150554%_
                                               _%tl150224150556%_
                                               _%e150229150559%_
                                               _%hd150228150562%_
                                               _%tl150227150564%_)
                                              (_%__kont150856150857%_))
                                          (_%__kont150856150857%_))))
                                  (_%__kont150856150857%_))
                              (_%__kont150856150857%_))
                          (_%__kont150856150857%_))))
                  (_%__kont150856150857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150212150524%_))
                                                      (if (let ((__tmp151135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp151135 'bind-method!))
                  (let ((_%L150393%_ _%hd150219150538%_)
                        (_%L150394%_ _%hd150210150514%_)
                        (_%L150395%_ _%hd150201150490%_)
                        (_%L150396%_ _%hd150192150466%_))
                    (_%__kont150854150855%_
                     _%L150393%_
                     _%L150394%_
                     _%L150395%_
                     _%L150396%_))
                  (_%__kont150856150857%_))
              (_%__kont150856150857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150856150857%_))))
                                      (_%__kont150856150857%_))
                                  (_%__kont150856150857%_))
                              (_%__kont150856150857%_))))
                      (_%__kont150856150857%_))))
              (_%__kont150856150857%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150856150857%_))))
                                          (_%__kont150856150857%_))
                                      (_%__kont150856150857%_))
                                  (_%__kont150856150857%_))))
                          (_%__kont150856150857%_))))
                  (_%__kont150856150857%_))
              (_%__kont150856150857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150856150857%_))
                                          (_%__kont150856150857%_))
                                      (_%__kont150856150857%_))))
                              (_%__kont150856150857%_))))
                      (_%__kont150856150857%_))
                  (_%__kont150856150857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150856150857%_))
                                              (_%__kont150856150857%_))
                                          (_%__kont150856150857%_))))
                                  (_%__kont150856150857%_))))
                          (_%__kont150856150857%_))))
                  (_%__kont150856150857%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self150118%_ _%stx150119%_)
        (let* ((_%g150121150134%_
                (lambda (_%g150122150131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150122150131%_))))
               (_%g150120150167%_
                (lambda (_%g150122150137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150122150137%_))
                      (let ((_%e150126150139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150122150137%_))))
                        (let ((_%hd150125150142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150126150139%_)))
                              (_%tl150124150144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150126150139%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150124150144%_))
                              (let ((_%e150129150147%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150124150144%_))))
                                (let ((_%hd150128150150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150129150147%_)))
                                      (_%tl150127150152%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150129150147%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150127150152%_))
                                      ((lambda (_%L150155%_)
                                         (if (let ((__tmp151136
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self150118%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150155%_
                                                __tmp151136))
                                             (let ((__tmp151137
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self150118%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151137
                                                _%stx150119%_))
                                             _%stx150119%_))
                                       _%hd150128150150%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150121150134%_
                                         _%g150122150137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150121150134%_ _%g150122150137%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150121150134%_ _%g150122150137%_))))))
          (declare (not safe))
          (_%g150120150167%_ _%stx150119%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self150058%_ _%stx150059%_)
        (let* ((_%g150061150074%_
                (lambda (_%g150062150071%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150062150071%_))))
               (_%g150060150115%_
                (lambda (_%g150062150077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150062150077%_))
                      (let ((_%e150066150079%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150062150077%_))))
                        (let ((_%hd150065150082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150066150079%_)))
                              (_%tl150064150084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150066150079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150064150084%_))
                              (let ((_%e150069150087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150064150084%_))))
                                (let ((_%hd150068150090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150069150087%_)))
                                      (_%tl150067150092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150069150087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150067150092%_))
                                      ((lambda (_%L150095%_)
                                         (let ((_%$e150109%_
                                                (let ((__tmp151139
                                                       (lambda (_%sub150107%_)
                                                         (let ((__tmp151140
                                                                (car _%sub150107%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L150095%_
                                                            __tmp151140))))
                                                      (__tmp151138
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self150058%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151139
                                                          __tmp151138))))
                                           (if _%$e150109%_
                                               ((lambda (_%sub150112%_)
                                                  (let ((__tmp151141
                                                         (cons '%#ref
                                                               (cons (cdr _%sub150112%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151141
                                                     _%stx150059%_)))
                                                _%$e150109%_)
                                               (let () _%stx150059%_))))
                                       _%hd150068150090%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150061150074%_
                                         _%g150062150077%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150061150074%_ _%g150062150077%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150061150074%_ _%g150062150077%_))))))
          (declare (not safe))
          (_%g150060150115%_ _%stx150059%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149987%_ _%stx149988%_)
        (let* ((_%g149990150007%_
                (lambda (_%g149991150004%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149991150004%_))))
               (_%g149989150055%_
                (lambda (_%g149991150010%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149991150010%_))
                      (let ((_%e149996150012%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149991150010%_))))
                        (let ((_%hd149995150015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149996150012%_)))
                              (_%tl149994150017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149996150012%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149994150017%_))
                              (let ((_%e149999150020%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149994150017%_))))
                                (let ((_%hd149998150023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149999150020%_)))
                                      (_%tl149997150025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149999150020%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149997150025%_))
                                      (let ((_%e150002150028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149997150025%_))))
                                        (let ((_%hd150001150031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150002150028%_)))
                                              (_%tl150000150033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150002150028%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150000150033%_))
                                              ((lambda (_%L150036%_
                                                        _%L150037%_)
                                                 (let ((_%new-expr150052%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149987%_
                                                           _%L150036%_)))
                                                       (_%new-xid150053%_
                                                        (if (let ((__tmp151142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149987%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L150037%_ __tmp151142))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149987%_ 'new-id))
                    _%L150037%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151143
                                                          (cons '%#set!
                                                                (cons _%new-xid150053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150052%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151143
                                                      _%stx149988%_))))
                                               _%hd150001150031%_
                                               _%hd149998150023%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149990150007%_
                                                 _%g149991150010%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149990150007%_
                                         _%g149991150010%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149990150007%_ _%g149991150010%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149990150007%_ _%g149991150010%_))))))
          (declare (not safe))
          (_%g149989150055%_ _%stx149988%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149910%_ _%stx149911%_)
        (let* ((_%g149913149930%_
                (lambda (_%g149914149927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149914149927%_))))
               (_%g149912149984%_
                (lambda (_%g149914149933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149914149933%_))
                      (let ((_%e149919149935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149914149933%_))))
                        (let ((_%hd149918149938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149919149935%_)))
                              (_%tl149917149940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149919149935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149917149940%_))
                              (let ((_%e149922149943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149917149940%_))))
                                (let ((_%hd149921149946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149922149943%_)))
                                      (_%tl149920149948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149922149943%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149920149948%_))
                                      (let ((_%e149925149951%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149920149948%_))))
                                        (let ((_%hd149924149954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149925149951%_)))
                                              (_%tl149923149956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149925149951%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149923149956%_))
                                              ((lambda (_%L149959%_
                                                        _%L149960%_)
                                                 (let ((_%new-expr149981%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149910%_
                                                           _%L149959%_)))
                                                       (_%new-xid149982%_
                                                        (let ((_%$e149977%_
                                                               (let ((__tmp151145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149975%_)
                                (let ((__tmp151146 (car _%sub149975%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149960%_
                                   __tmp151146))))
                             (__tmp151144
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149910%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151145 __tmp151144))))
                  (if _%$e149977%_ (cdr _%$e149977%_) (let () _%L149960%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151147
                                                          (cons '%#set!
                                                                (cons _%new-xid149982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149981%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151147
                                                      _%stx149911%_))))
                                               _%hd149924149954%_
                                               _%hd149921149946%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149913149930%_
                                                 _%g149914149933%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149913149930%_
                                         _%g149914149933%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149913149930%_ _%g149914149933%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149913149930%_ _%g149914149933%_))))))
          (declare (not safe))
          (_%g149912149984%_ _%stx149911%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149856%_ _%stx149857%_)
        (let* ((_%g149859149872%_
                (lambda (_%g149860149869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149860149869%_))))
               (_%g149858149907%_
                (lambda (_%g149860149875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149860149875%_))
                      (let ((_%e149864149877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149860149875%_))))
                        (let ((_%hd149863149880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149864149877%_)))
                              (_%tl149862149882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149864149877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149862149882%_))
                              (let ((_%e149867149885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149862149882%_))))
                                (let ((_%hd149866149888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149867149885%_)))
                                      (_%tl149865149890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149867149885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149865149890%_))
                                      ((lambda (_%L149893%_)
                                         (let* ((_%eid149905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149893%_)))
                                                (__tmp151148
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149856%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151148
                                            _%eid149905%_
                                            1+
                                            '0)))
                                       _%hd149866149888%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149859149872%_
                                         _%g149860149875%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149859149872%_ _%g149860149875%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149859149872%_ _%g149860149875%_))))))
          (declare (not safe))
          (_%g149858149907%_ _%stx149857%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149786%_ _%stx149787%_)
        (let* ((_%g149789149806%_
                (lambda (_%g149790149803%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149790149803%_))))
               (_%g149788149853%_
                (lambda (_%g149790149809%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149790149809%_))
                      (let ((_%e149795149811%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149790149809%_))))
                        (let ((_%hd149794149814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149795149811%_)))
                              (_%tl149793149816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149795149811%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149793149816%_))
                              (let ((_%e149798149819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149793149816%_))))
                                (let ((_%hd149797149822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149798149819%_)))
                                      (_%tl149796149824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149798149819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149796149824%_))
                                      (let ((_%e149801149827%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149796149824%_))))
                                        (let ((_%hd149800149830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149801149827%_)))
                                              (_%tl149799149832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149801149827%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149799149832%_))
                                              ((lambda (_%L149835%_
                                                        _%L149836%_)
                                                 (let ((_%eid149851%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149836%_))))
                                                   (let ((__tmp151149
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149786%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151149
                                                      _%eid149851%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149786%_
                                                      _%L149835%_))))
                                               _%hd149800149830%_
                                               _%hd149797149822%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149789149806%_
                                                 _%g149790149809%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149789149806%_
                                         _%g149790149809%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149789149806%_ _%g149790149809%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149789149806%_ _%g149790149809%_))))))
          (declare (not safe))
          (_%g149788149853%_ _%stx149787%_))))
    (define gxc#find-body%
      (lambda (_%self149699%_ _%stx149700%_)
        (let* ((_%g149702149721%_
                (lambda (_%g149703149718%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149703149718%_))))
               (_%g149701149783%_
                (lambda (_%g149703149724%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149703149724%_))
                      (let ((_%e149707149726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149703149724%_))))
                        (let ((_%hd149706149729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149707149726%_)))
                              (_%tl149705149731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149707149726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149705149731%_))
                              (let ((_g151150_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149705149731%_
                                        '0))))
                                (begin
                                  (let ((_g151151_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151150_)
                                               (##vector-length _g151150_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151151_ 2)))
                                        (error "Context expects 2 values"
                                               _g151151_)))
                                  (let ((_%target149708149734%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151150_ 0)))
                                        (_%tl149710149736%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151150_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149710149736%_))
                                        (letrec ((_%loop149711149739%_
                                                  (lambda (_%hd149709149742%_
                                                           _%expr149715149744%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149709149742%_))
                                                        (let ((_%e149712149747%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149709149742%_))))
                  (let ((_%lp-hd149713149750%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149712149747%_)))
                        (_%lp-tl149714149752%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149712149747%_))))
                    (let ((__tmp151152
                           (cons _%lp-hd149713149750%_ _%expr149715149744%_)))
                      (declare (not safe))
                      (_%loop149711149739%_
                       _%lp-tl149714149752%_
                       __tmp151152))))
                (let ((_%expr149716149755%_ (reverse _%expr149715149744%_)))
                  ((lambda (_%L149758%_)
                     (let ((__tmp151155
                            (lambda (_%g149771149773%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149699%_
                                 _%g149771149773%_))))
                           (__tmp151153
                            (let ((__tmp151154
                                   (lambda (_%g149775149778%_
                                            _%g149776149780%_)
                                     (cons _%g149775149778%_
                                           _%g149776149780%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151154 '() _%L149758%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151155 __tmp151153)))
                   _%expr149716149755%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149711149739%_
                                             _%target149708149734%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149702149721%_
                                           _%g149703149724%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149702149721%_ _%g149703149724%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149702149721%_ _%g149703149724%_))))))
          (declare (not safe))
          (_%g149701149783%_ _%stx149700%_))))
    (define gxc#find-let-values%
      (lambda (_%self149549%_ _%stx149550%_)
        (let* ((_%g149552149587%_
                (lambda (_%g149553149584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149553149584%_))))
               (_%g149551149696%_
                (lambda (_%g149553149590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149553149590%_))
                      (let ((_%e149559149592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149553149590%_))))
                        (let ((_%hd149558149595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149559149592%_)))
                              (_%tl149557149597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149559149592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149557149597%_))
                              (let ((_%e149562149600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149557149597%_))))
                                (let ((_%hd149561149603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149562149600%_)))
                                      (_%tl149560149605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149562149600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149561149603%_))
                                      (let ((_g151156_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149561149603%_
                                                '0))))
                                        (begin
                                          (let ((_g151157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151156_)
                                                       (##vector-length
                                                        _g151156_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151157_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151157_)))
                                          (let ((_%target149563149608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151156_ 0)))
                                                (_%tl149565149610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151156_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149565149610%_))
                                                (letrec ((_%loop149566149613%_
                                                          (lambda (_%hd149564149616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149570149618%_
                           _%bind149571149620%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149564149616%_))
                        (let ((_%e149567149623%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149564149616%_))))
                          (let ((_%lp-hd149568149626%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149567149623%_)))
                                (_%lp-tl149569149628%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149567149623%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149568149626%_))
                                (let ((_%e149576149631%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149568149626%_))))
                                  (let ((_%hd149575149634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149576149631%_)))
                                        (_%tl149574149636%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149576149631%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149574149636%_))
                                        (let ((_%e149579149639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149574149636%_))))
                                          (let ((_%hd149578149642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149579149639%_)))
                                                (_%tl149577149644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149579149639%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149577149644%_))
                                                (let ((__tmp151159
                                                       (cons _%hd149578149642%_
                                                             _%expr149570149618%_))
                                                      (__tmp151158
                                                       (cons _%hd149575149634%_
                                                             _%bind149571149620%_)))
                                                  (declare (not safe))
                                                  (_%loop149566149613%_
                                                   _%lp-tl149569149628%_
                                                   __tmp151159
                                                   __tmp151158))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149552149587%_
                                                   _%g149553149590%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149552149587%_
                                           _%g149553149590%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g149552149587%_ _%g149553149590%_)))))
                        (let ((_%expr149572149647%_
                               (reverse _%expr149570149618%_))
                              (_%bind149573149649%_
                               (reverse _%bind149571149620%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149560149605%_))
                              (let ((_%e149582149652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149560149605%_))))
                                (let ((_%hd149581149655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149582149652%_)))
                                      (_%tl149580149657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149582149652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149580149657%_))
                                      ((lambda (_%L149660%_
                                                _%L149661%_
                                                _%L149662%_)
                                         (let ((_%$e149693%_
                                                (let ((__tmp151162
                                                       (lambda (_%g149681149683%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self149549%_
                                                            _%g149681149683%_))))
                                                      (__tmp151160
                                                       (let ((__tmp151161
                                                              (lambda (_%g149685149688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149686149690%_)
                        (cons _%g149685149688%_ _%g149686149690%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151161 '() _%L149661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151162
                                                   __tmp151160))))
                                           (if _%$e149693%_
                                               _%$e149693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149549%_
                                                  _%L149660%_)))))
                                       _%hd149581149655%_
                                       _%expr149572149647%_
                                       _%bind149573149649%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149552149587%_
                                         _%g149553149590%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149552149587%_ _%g149553149590%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop149566149613%_
                                                     _%target149563149608%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149552149587%_
                                                   _%g149553149590%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149552149587%_
                                         _%g149553149590%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149552149587%_ _%g149553149590%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149552149587%_ _%g149553149590%_))))))
          (declare (not safe))
          (_%g149551149696%_ _%stx149550%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self149493%_ _%stx149494%_)
        (let* ((_%g149496149509%_
                (lambda (_%g149497149506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149497149506%_))))
               (_%g149495149546%_
                (lambda (_%g149497149512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149497149512%_))
                      (let ((_%e149501149514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149497149512%_))))
                        (let ((_%hd149500149517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149501149514%_)))
                              (_%tl149499149519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149501149514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149499149519%_))
                              (let ((_%e149504149522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149499149519%_))))
                                (let ((_%hd149503149525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149504149522%_)))
                                      (_%tl149502149527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149504149522%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149502149527%_))
                                      ((lambda (_%L149530%_)
                                         (let ((__tmp151164
                                                (lambda (_%g149541149543%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L149530%_
                                                     _%g149541149543%_))))
                                               (__tmp151163
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self149493%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151164 __tmp151163)))
                                       _%hd149503149525%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149496149509%_
                                         _%g149497149512%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149496149509%_ _%g149497149512%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149496149509%_ _%g149497149512%_))))))
          (declare (not safe))
          (_%g149495149546%_ _%stx149494%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self149418%_ _%stx149419%_)
        (let* ((_%g149421149438%_
                (lambda (_%g149422149435%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149422149435%_))))
               (_%g149420149490%_
                (lambda (_%g149422149441%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149422149441%_))
                      (let ((_%e149427149443%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149422149441%_))))
                        (let ((_%hd149426149446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149427149443%_)))
                              (_%tl149425149448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149427149443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149425149448%_))
                              (let ((_%e149430149451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149425149448%_))))
                                (let ((_%hd149429149454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149430149451%_)))
                                      (_%tl149428149456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149430149451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149428149456%_))
                                      (let ((_%e149433149459%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149428149456%_))))
                                        (let ((_%hd149432149462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149433149459%_)))
                                              (_%tl149431149464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149433149459%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149431149464%_))
                                              ((lambda (_%L149467%_
                                                        _%L149468%_)
                                                 (let ((_%$e149487%_
                                                        (let ((__tmp151166
                                                               (lambda (_%g149482149484%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L149468%_
                            _%g149482149484%_))))
                      (__tmp151165
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self149418%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151166 __tmp151165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e149487%_
                                                       _%$e149487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149418%_
                                                          _%L149467%_)))))
                                               _%hd149432149462%_
                                               _%hd149429149454%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149421149438%_
                                                 _%g149422149441%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149421149438%_
                                         _%g149422149441%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149421149438%_ _%g149422149441%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149421149438%_ _%g149422149441%_))))))
          (declare (not safe))
          (_%g149420149490%_ _%stx149419%_))))))
