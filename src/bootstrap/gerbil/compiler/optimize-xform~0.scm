(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712262515)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151115 (list gxc#::void::t))
            (__tmp151114 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151115
         '()
         __tmp151114
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150855%_
        (apply make-instance gxc#::collect-mutators::t _%$args150855%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151116
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
        (__make-promise __tmp151116)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150847%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150850%_
                (let ((__obj151102
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151102))
               (__tmp151117
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150850%_ _%stx150847%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151117
           gxc#current-compile-method
           _%self150850%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp151119 (list gxc#::void::t))
            (__tmp151118 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp151119
         '()
         __tmp151118
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150844%_
        (apply make-instance gxc#::collect-methods::t _%$args150844%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp151120
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
        (__make-promise __tmp151120)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150836%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150839%_
                (let ((__obj151104
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj151104))
               (__tmp151121
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150839%_ _%stx150836%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151121
           gxc#current-compile-method
           _%self150839%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151123 (list gxc#::basic-xform-expression::t))
            (__tmp151122 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151123
         '(id new-id)
         __tmp151122
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150833%_
        (apply make-instance gxc#::expression-subst::t _%$args150833%_)))
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
      (let ((__tmp151124
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
        (__make-promise __tmp151124)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150803%_
               _%id150799150804%_
               _%new-id150800150806%_
               _%stx150808%_)
        (let* ((_%id150811%_
                (if (eq? _%id150799150804%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150799150804%_))
               (_%new-id150813%_
                (if (eq? _%new-id150800150806%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150800150806%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150815%_
                  (let ((__obj151106
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151106
                       _%id150811%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151106
                       _%new-id150813%_
                       '2
                       '#f
                       '#f))
                    __obj151106))
                 (__tmp151125
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150815%_ _%stx150808%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151125
             gxc#current-compile-method
             _%self150815%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150822%_ . _%args150823%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150822%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150822%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150822%_
                  'new-id:
                  absent-value))
               _%args150823%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150801150829%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150801150829%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151127 (list gxc#::basic-xform-expression::t))
            (__tmp151126 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151127
         '(subst)
         __tmp151126
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150795%_
        (apply make-instance gxc#::expression-subst*::t _%$args150795%_)))
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
      (let ((__tmp151128
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
        (__make-promise __tmp151128)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150769%_ _%subst150766150770%_ _%stx150772%_)
        (let ((_%subst150775%_
               (if (eq? _%subst150766150770%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150766150770%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150777%_
                  (let ((__obj151108
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151108
                       _%subst150775%_
                       '1
                       '#f
                       '#f))
                    __obj151108))
                 (__tmp151129
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150777%_ _%stx150772%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151129
             gxc#current-compile-method
             _%self150777%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150784%_ . _%args150785%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150784%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150784%_
                  'subst:
                  absent-value))
               _%args150785%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150767150791%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150767150791%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151130 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151130
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150762%_
        (apply make-instance gxc#::find-expression::t _%$args150762%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151131
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
        (__make-promise __tmp151131)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151133 (list gxc#::find-expression::t))
            (__tmp151132 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151133
         '(ids)
         __tmp151132
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150758%_
        (apply make-instance gxc#::find-var-refs::t _%$args150758%_)))
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
      (let ((__tmp151134
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
        (__make-promise __tmp151134)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150732%_ _%ids150729150733%_ _%stx150735%_)
        (let ((_%ids150738%_
               (if (eq? _%ids150729150733%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150729150733%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150740%_
                  (let ((__obj151111
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151111
                       _%ids150738%_
                       '1
                       '#f
                       '#f))
                    __obj151111))
                 (__tmp151135
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150740%_ _%stx150735%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151135
             gxc#current-compile-method
             _%self150740%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150747%_ . _%args150748%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150747%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150747%_ 'ids: absent-value))
               _%args150748%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150730150754%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150730150754%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151137 (list gxc#::collect-expression-refs::t))
            (__tmp151136 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151137
         '()
         __tmp151136
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150725%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150725%_)))
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
      (let ((__tmp151138
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
        (__make-promise __tmp151138)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150699%_ _%table150696150700%_ _%stx150702%_)
        (let ((_%table150705%_
               (if (eq? _%table150696150700%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150696150700%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150707%_
                  (let ((__obj151113
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151113
                       _%table150705%_
                       '1
                       '#f
                       '#f))
                    __obj151113))
                 (__tmp151139
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150707%_ _%stx150702%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151139
             gxc#current-compile-method
             _%self150707%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150714%_ . _%args150715%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150714%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150714%_
                  'table:
                  absent-value))
               _%args150715%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150697150721%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150697150721%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150625%_ _%stx150626%_)
        (let* ((_%g150628150645%_
                (lambda (_%g150629150642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150629150642%_))))
               (_%g150627150692%_
                (lambda (_%g150629150648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150629150648%_))
                      (let ((_%e150634150650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150629150648%_))))
                        (let ((_%hd150633150653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150634150650%_)))
                              (_%tl150632150655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150634150650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150632150655%_))
                              (let ((_%e150637150658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150632150655%_))))
                                (let ((_%hd150636150661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150637150658%_)))
                                      (_%tl150635150663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150637150658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150635150663%_))
                                      (let ((_%e150640150666%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150635150663%_))))
                                        (let ((_%hd150639150669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150640150666%_)))
                                              (_%tl150638150671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150640150666%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150638150671%_))
                                              ((lambda (_%L150674%_
                                                        _%L150675%_)
                                                 (let ((_%sym150690%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150675%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150690%_))
                                                   (let ((__tmp151140
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151140
                                                      _%sym150690%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150625%_
                                                      _%L150674%_))))
                                               _%hd150639150669%_
                                               _%hd150636150661%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150628150645%_
                                                 _%g150629150648%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150628150645%_
                                         _%g150629150648%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150628150645%_ _%g150629150648%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150628150645%_ _%g150629150648%_))))))
          (declare (not safe))
          (_%g150627150692%_ _%stx150626%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self150178%_ _%stx150179%_)
        (let* ((_%__stx150858150859%_ _%stx150179%_)
               (_%g150183150285%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150858150859%_)))))
          (let ((_%__kont150860150861%_
                 (lambda (_%L150575%_
                          _%L150576%_
                          _%L150577%_
                          _%L150578%_
                          _%L150579%_)
                   (let ((__tmp151141
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150576%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151141))))
                (_%__kont150862150863%_
                 (lambda (_%L150401%_ _%L150402%_ _%L150403%_ _%L150404%_)
                   (let ((__tmp151142
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150401%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151142))))
                (_%__kont150864150865%_ (lambda () '#!void)))
            (let ((_%__match150993150994%_
                   (lambda (_%e150192150447%_
                            _%hd150191150450%_
                            _%tl150190150452%_
                            _%e150195150455%_
                            _%hd150194150458%_
                            _%tl150193150460%_
                            _%e150198150463%_
                            _%hd150197150466%_
                            _%tl150196150468%_
                            _%e150201150471%_
                            _%hd150200150474%_
                            _%tl150199150476%_
                            _%e150204150479%_
                            _%hd150203150482%_
                            _%tl150202150484%_
                            _%e150207150487%_
                            _%hd150206150490%_
                            _%tl150205150492%_
                            _%e150210150495%_
                            _%hd150209150498%_
                            _%tl150208150500%_
                            _%e150213150503%_
                            _%hd150212150506%_
                            _%tl150211150508%_
                            _%e150216150511%_
                            _%hd150215150514%_
                            _%tl150214150516%_
                            _%e150219150519%_
                            _%hd150218150522%_
                            _%tl150217150524%_
                            _%e150222150527%_
                            _%hd150221150530%_
                            _%tl150220150532%_
                            _%e150225150535%_
                            _%hd150224150538%_
                            _%tl150223150540%_
                            _%e150228150543%_
                            _%hd150227150546%_
                            _%tl150226150548%_
                            _%e150231150551%_
                            _%hd150230150554%_
                            _%tl150229150556%_
                            _%e150234150559%_
                            _%hd150233150562%_
                            _%tl150232150564%_
                            _%e150237150567%_
                            _%hd150236150570%_
                            _%tl150235150572%_)
                     (let ((_%L150575%_ _%hd150236150570%_)
                           (_%L150576%_ _%hd150227150546%_)
                           (_%L150577%_ _%hd150218150522%_)
                           (_%L150578%_ _%hd150209150498%_)
                           (_%L150579%_ _%hd150200150474%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L150579%_
                              'bind-method!))
                           (_%__kont150860150861%_
                            _%L150575%_
                            _%L150576%_
                            _%L150577%_
                            _%L150578%_
                            _%L150579%_)
                           (_%__kont150864150865%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150858150859%_))
                  (let ((_%e150192150447%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150858150859%_))))
                    (let ((_%tl150190150452%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150192150447%_)))
                          (_%hd150191150450%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150192150447%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150190150452%_))
                          (let ((_%e150195150455%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150190150452%_))))
                            (let ((_%tl150193150460%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150195150455%_)))
                                  (_%hd150194150458%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150195150455%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150194150458%_))
                                  (let ((_%e150198150463%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150194150458%_))))
                                    (let ((_%tl150196150468%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150198150463%_)))
                                          (_%hd150197150466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150198150463%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150197150466%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150197150466%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150196150468%_))
                                                  (let ((_%e150201150471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150196150468%_))))
                                                    (let ((_%tl150199150476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150201150471%_)))
                                                          (_%hd150200150474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150201150471%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150199150476%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl150193150460%_))
                      (let ((_%e150204150479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl150193150460%_))))
                        (let ((_%tl150202150484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150204150479%_)))
                              (_%hd150203150482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150204150479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd150203150482%_))
                              (let ((_%e150207150487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd150203150482%_))))
                                (let ((_%tl150205150492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150207150487%_)))
                                      (_%hd150206150490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150207150487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd150206150490%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd150206150490%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150205150492%_))
                                              (let ((_%e150210150495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150205150492%_))))
                                                (let ((_%tl150208150500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150210150495%_)))
                                                      (_%hd150209150498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150210150495%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150208150500%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl150202150484%_))
                                                          (let ((_%e150213150503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl150202150484%_))))
                    (let ((_%tl150211150508%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150213150503%_)))
                          (_%hd150212150506%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150213150503%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150212150506%_))
                          (let ((_%e150216150511%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150212150506%_))))
                            (let ((_%tl150214150516%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150216150511%_)))
                                  (_%hd150215150514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150216150511%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd150215150514%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd150215150514%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl150214150516%_))
                                          (let ((_%e150219150519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl150214150516%_))))
                                            (let ((_%tl150217150524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e150219150519%_)))
                                                  (_%hd150218150522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e150219150519%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150217150524%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl150211150508%_))
                                                      (let ((_%e150222150527%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl150211150508%_))))
                (let ((_%tl150220150532%_
                       (let () (declare (not safe)) (##cdr _%e150222150527%_)))
                      (_%hd150221150530%_
                       (let ()
                         (declare (not safe))
                         (##car _%e150222150527%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd150221150530%_))
                      (let ((_%e150225150535%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd150221150530%_))))
                        (let ((_%tl150223150540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150225150535%_)))
                              (_%hd150224150538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150225150535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd150224150538%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd150224150538%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150223150540%_))
                                      (let ((_%e150228150543%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150223150540%_))))
                                        (let ((_%tl150226150548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150228150543%_)))
                                              (_%hd150227150546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150228150543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150226150548%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150220150532%_))
                                                  (let ((_%e150231150551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150220150532%_))))
                                                    (let ((_%tl150229150556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150231150551%_)))
                                                          (_%hd150230150554%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150231150551%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd150230150554%_))
                                                          (let ((_%e150234150559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd150230150554%_))))
                    (let ((_%tl150232150564%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150234150559%_)))
                          (_%hd150233150562%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150234150559%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd150233150562%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd150233150562%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl150232150564%_))
                                  (let ((_%e150237150567%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl150232150564%_))))
                                    (let ((_%tl150235150572%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150237150567%_)))
                                          (_%hd150236150570%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150237150567%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl150235150572%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150229150556%_))
                                              (_%__match150993150994%_
                                               _%e150192150447%_
                                               _%hd150191150450%_
                                               _%tl150190150452%_
                                               _%e150195150455%_
                                               _%hd150194150458%_
                                               _%tl150193150460%_
                                               _%e150198150463%_
                                               _%hd150197150466%_
                                               _%tl150196150468%_
                                               _%e150201150471%_
                                               _%hd150200150474%_
                                               _%tl150199150476%_
                                               _%e150204150479%_
                                               _%hd150203150482%_
                                               _%tl150202150484%_
                                               _%e150207150487%_
                                               _%hd150206150490%_
                                               _%tl150205150492%_
                                               _%e150210150495%_
                                               _%hd150209150498%_
                                               _%tl150208150500%_
                                               _%e150213150503%_
                                               _%hd150212150506%_
                                               _%tl150211150508%_
                                               _%e150216150511%_
                                               _%hd150215150514%_
                                               _%tl150214150516%_
                                               _%e150219150519%_
                                               _%hd150218150522%_
                                               _%tl150217150524%_
                                               _%e150222150527%_
                                               _%hd150221150530%_
                                               _%tl150220150532%_
                                               _%e150225150535%_
                                               _%hd150224150538%_
                                               _%tl150223150540%_
                                               _%e150228150543%_
                                               _%hd150227150546%_
                                               _%tl150226150548%_
                                               _%e150231150551%_
                                               _%hd150230150554%_
                                               _%tl150229150556%_
                                               _%e150234150559%_
                                               _%hd150233150562%_
                                               _%tl150232150564%_
                                               _%e150237150567%_
                                               _%hd150236150570%_
                                               _%tl150235150572%_)
                                              (_%__kont150864150865%_))
                                          (_%__kont150864150865%_))))
                                  (_%__kont150864150865%_))
                              (_%__kont150864150865%_))
                          (_%__kont150864150865%_))))
                  (_%__kont150864150865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150220150532%_))
                                                      (if (let ((__tmp151143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp151143 'bind-method!))
                  (let ((_%L150401%_ _%hd150227150546%_)
                        (_%L150402%_ _%hd150218150522%_)
                        (_%L150403%_ _%hd150209150498%_)
                        (_%L150404%_ _%hd150200150474%_))
                    (_%__kont150862150863%_
                     _%L150401%_
                     _%L150402%_
                     _%L150403%_
                     _%L150404%_))
                  (_%__kont150864150865%_))
              (_%__kont150864150865%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150864150865%_))))
                                      (_%__kont150864150865%_))
                                  (_%__kont150864150865%_))
                              (_%__kont150864150865%_))))
                      (_%__kont150864150865%_))))
              (_%__kont150864150865%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150864150865%_))))
                                          (_%__kont150864150865%_))
                                      (_%__kont150864150865%_))
                                  (_%__kont150864150865%_))))
                          (_%__kont150864150865%_))))
                  (_%__kont150864150865%_))
              (_%__kont150864150865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150864150865%_))
                                          (_%__kont150864150865%_))
                                      (_%__kont150864150865%_))))
                              (_%__kont150864150865%_))))
                      (_%__kont150864150865%_))
                  (_%__kont150864150865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150864150865%_))
                                              (_%__kont150864150865%_))
                                          (_%__kont150864150865%_))))
                                  (_%__kont150864150865%_))))
                          (_%__kont150864150865%_))))
                  (_%__kont150864150865%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self150126%_ _%stx150127%_)
        (let* ((_%g150129150142%_
                (lambda (_%g150130150139%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150130150139%_))))
               (_%g150128150175%_
                (lambda (_%g150130150145%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150130150145%_))
                      (let ((_%e150134150147%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150130150145%_))))
                        (let ((_%hd150133150150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150134150147%_)))
                              (_%tl150132150152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150134150147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150132150152%_))
                              (let ((_%e150137150155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150132150152%_))))
                                (let ((_%hd150136150158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150137150155%_)))
                                      (_%tl150135150160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150137150155%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150135150160%_))
                                      ((lambda (_%L150163%_)
                                         (if (let ((__tmp151144
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self150126%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150163%_
                                                __tmp151144))
                                             (let ((__tmp151145
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self150126%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151145
                                                _%stx150127%_))
                                             _%stx150127%_))
                                       _%hd150136150158%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150129150142%_
                                         _%g150130150145%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150129150142%_ _%g150130150145%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150129150142%_ _%g150130150145%_))))))
          (declare (not safe))
          (_%g150128150175%_ _%stx150127%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self150066%_ _%stx150067%_)
        (let* ((_%g150069150082%_
                (lambda (_%g150070150079%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150070150079%_))))
               (_%g150068150123%_
                (lambda (_%g150070150085%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150070150085%_))
                      (let ((_%e150074150087%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150070150085%_))))
                        (let ((_%hd150073150090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150074150087%_)))
                              (_%tl150072150092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150074150087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150072150092%_))
                              (let ((_%e150077150095%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150072150092%_))))
                                (let ((_%hd150076150098%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150077150095%_)))
                                      (_%tl150075150100%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150077150095%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150075150100%_))
                                      ((lambda (_%L150103%_)
                                         (let ((_%$e150117%_
                                                (let ((__tmp151147
                                                       (lambda (_%sub150115%_)
                                                         (let ((__tmp151148
                                                                (car _%sub150115%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L150103%_
                                                            __tmp151148))))
                                                      (__tmp151146
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self150066%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151147
                                                          __tmp151146))))
                                           (if _%$e150117%_
                                               ((lambda (_%sub150120%_)
                                                  (let ((__tmp151149
                                                         (cons '%#ref
                                                               (cons (cdr _%sub150120%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151149
                                                     _%stx150067%_)))
                                                _%$e150117%_)
                                               (let () _%stx150067%_))))
                                       _%hd150076150098%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150069150082%_
                                         _%g150070150085%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150069150082%_ _%g150070150085%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150069150082%_ _%g150070150085%_))))))
          (declare (not safe))
          (_%g150068150123%_ _%stx150067%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149995%_ _%stx149996%_)
        (let* ((_%g149998150015%_
                (lambda (_%g149999150012%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149999150012%_))))
               (_%g149997150063%_
                (lambda (_%g149999150018%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149999150018%_))
                      (let ((_%e150004150020%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149999150018%_))))
                        (let ((_%hd150003150023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150004150020%_)))
                              (_%tl150002150025%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150004150020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150002150025%_))
                              (let ((_%e150007150028%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150002150025%_))))
                                (let ((_%hd150006150031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150007150028%_)))
                                      (_%tl150005150033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150007150028%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150005150033%_))
                                      (let ((_%e150010150036%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150005150033%_))))
                                        (let ((_%hd150009150039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150010150036%_)))
                                              (_%tl150008150041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150010150036%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150008150041%_))
                                              ((lambda (_%L150044%_
                                                        _%L150045%_)
                                                 (let ((_%new-expr150060%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149995%_
                                                           _%L150044%_)))
                                                       (_%new-xid150061%_
                                                        (if (let ((__tmp151150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149995%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L150045%_ __tmp151150))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149995%_ 'new-id))
                    _%L150045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151151
                                                          (cons '%#set!
                                                                (cons _%new-xid150061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150060%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151151
                                                      _%stx149996%_))))
                                               _%hd150009150039%_
                                               _%hd150006150031%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149998150015%_
                                                 _%g149999150018%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149998150015%_
                                         _%g149999150018%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149998150015%_ _%g149999150018%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149998150015%_ _%g149999150018%_))))))
          (declare (not safe))
          (_%g149997150063%_ _%stx149996%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149918%_ _%stx149919%_)
        (let* ((_%g149921149938%_
                (lambda (_%g149922149935%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149922149935%_))))
               (_%g149920149992%_
                (lambda (_%g149922149941%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149922149941%_))
                      (let ((_%e149927149943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149922149941%_))))
                        (let ((_%hd149926149946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149927149943%_)))
                              (_%tl149925149948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149927149943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149925149948%_))
                              (let ((_%e149930149951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149925149948%_))))
                                (let ((_%hd149929149954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149930149951%_)))
                                      (_%tl149928149956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149930149951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149928149956%_))
                                      (let ((_%e149933149959%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149928149956%_))))
                                        (let ((_%hd149932149962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149933149959%_)))
                                              (_%tl149931149964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149933149959%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149931149964%_))
                                              ((lambda (_%L149967%_
                                                        _%L149968%_)
                                                 (let ((_%new-expr149989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149918%_
                                                           _%L149967%_)))
                                                       (_%new-xid149990%_
                                                        (let ((_%$e149985%_
                                                               (let ((__tmp151153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149983%_)
                                (let ((__tmp151154 (car _%sub149983%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149968%_
                                   __tmp151154))))
                             (__tmp151152
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149918%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151153 __tmp151152))))
                  (if _%$e149985%_ (cdr _%$e149985%_) (let () _%L149968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151155
                                                          (cons '%#set!
                                                                (cons _%new-xid149990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149989%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151155
                                                      _%stx149919%_))))
                                               _%hd149932149962%_
                                               _%hd149929149954%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149921149938%_
                                                 _%g149922149941%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149921149938%_
                                         _%g149922149941%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149921149938%_ _%g149922149941%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149921149938%_ _%g149922149941%_))))))
          (declare (not safe))
          (_%g149920149992%_ _%stx149919%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149864%_ _%stx149865%_)
        (let* ((_%g149867149880%_
                (lambda (_%g149868149877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149868149877%_))))
               (_%g149866149915%_
                (lambda (_%g149868149883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149868149883%_))
                      (let ((_%e149872149885%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149868149883%_))))
                        (let ((_%hd149871149888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149872149885%_)))
                              (_%tl149870149890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149872149885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149870149890%_))
                              (let ((_%e149875149893%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149870149890%_))))
                                (let ((_%hd149874149896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149875149893%_)))
                                      (_%tl149873149898%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149875149893%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149873149898%_))
                                      ((lambda (_%L149901%_)
                                         (let* ((_%eid149913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149901%_)))
                                                (__tmp151156
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149864%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151156
                                            _%eid149913%_
                                            1+
                                            '0)))
                                       _%hd149874149896%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149867149880%_
                                         _%g149868149883%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149867149880%_ _%g149868149883%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149867149880%_ _%g149868149883%_))))))
          (declare (not safe))
          (_%g149866149915%_ _%stx149865%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149794%_ _%stx149795%_)
        (let* ((_%g149797149814%_
                (lambda (_%g149798149811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149798149811%_))))
               (_%g149796149861%_
                (lambda (_%g149798149817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149798149817%_))
                      (let ((_%e149803149819%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149798149817%_))))
                        (let ((_%hd149802149822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149803149819%_)))
                              (_%tl149801149824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149803149819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149801149824%_))
                              (let ((_%e149806149827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149801149824%_))))
                                (let ((_%hd149805149830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149806149827%_)))
                                      (_%tl149804149832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149806149827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149804149832%_))
                                      (let ((_%e149809149835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149804149832%_))))
                                        (let ((_%hd149808149838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149809149835%_)))
                                              (_%tl149807149840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149809149835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149807149840%_))
                                              ((lambda (_%L149843%_
                                                        _%L149844%_)
                                                 (let ((_%eid149859%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149844%_))))
                                                   (let ((__tmp151157
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149794%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151157
                                                      _%eid149859%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149794%_
                                                      _%L149843%_))))
                                               _%hd149808149838%_
                                               _%hd149805149830%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149797149814%_
                                                 _%g149798149817%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149797149814%_
                                         _%g149798149817%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149797149814%_ _%g149798149817%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149797149814%_ _%g149798149817%_))))))
          (declare (not safe))
          (_%g149796149861%_ _%stx149795%_))))
    (define gxc#find-body%
      (lambda (_%self149707%_ _%stx149708%_)
        (let* ((_%g149710149729%_
                (lambda (_%g149711149726%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149711149726%_))))
               (_%g149709149791%_
                (lambda (_%g149711149732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149711149732%_))
                      (let ((_%e149715149734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149711149732%_))))
                        (let ((_%hd149714149737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149715149734%_)))
                              (_%tl149713149739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149715149734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149713149739%_))
                              (let ((_g151158_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149713149739%_
                                        '0))))
                                (begin
                                  (let ((_g151159_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151158_)
                                               (##vector-length _g151158_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151159_ 2)))
                                        (error "Context expects 2 values"
                                               _g151159_)))
                                  (let ((_%target149716149742%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151158_ 0)))
                                        (_%tl149718149744%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151158_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149718149744%_))
                                        (letrec ((_%loop149719149747%_
                                                  (lambda (_%hd149717149750%_
                                                           _%expr149723149752%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149717149750%_))
                                                        (let ((_%e149720149755%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149717149750%_))))
                  (let ((_%lp-hd149721149758%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149720149755%_)))
                        (_%lp-tl149722149760%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149720149755%_))))
                    (let ((__tmp151160
                           (cons _%lp-hd149721149758%_ _%expr149723149752%_)))
                      (declare (not safe))
                      (_%loop149719149747%_
                       _%lp-tl149722149760%_
                       __tmp151160))))
                (let ((_%expr149724149763%_ (reverse _%expr149723149752%_)))
                  ((lambda (_%L149766%_)
                     (let ((__tmp151163
                            (lambda (_%g149779149781%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149707%_
                                 _%g149779149781%_))))
                           (__tmp151161
                            (let ((__tmp151162
                                   (lambda (_%g149783149786%_
                                            _%g149784149788%_)
                                     (cons _%g149783149786%_
                                           _%g149784149788%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151162 '() _%L149766%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151163 __tmp151161)))
                   _%expr149724149763%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149719149747%_
                                             _%target149716149742%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149710149729%_
                                           _%g149711149732%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149710149729%_ _%g149711149732%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149710149729%_ _%g149711149732%_))))))
          (declare (not safe))
          (_%g149709149791%_ _%stx149708%_))))
    (define gxc#find-let-values%
      (lambda (_%self149557%_ _%stx149558%_)
        (let* ((_%g149560149595%_
                (lambda (_%g149561149592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149561149592%_))))
               (_%g149559149704%_
                (lambda (_%g149561149598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149561149598%_))
                      (let ((_%e149567149600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149561149598%_))))
                        (let ((_%hd149566149603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149567149600%_)))
                              (_%tl149565149605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149567149600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149565149605%_))
                              (let ((_%e149570149608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149565149605%_))))
                                (let ((_%hd149569149611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149570149608%_)))
                                      (_%tl149568149613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149570149608%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149569149611%_))
                                      (let ((_g151164_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149569149611%_
                                                '0))))
                                        (begin
                                          (let ((_g151165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151164_)
                                                       (##vector-length
                                                        _g151164_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151165_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151165_)))
                                          (let ((_%target149571149616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151164_ 0)))
                                                (_%tl149573149618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151164_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149573149618%_))
                                                (letrec ((_%loop149574149621%_
                                                          (lambda (_%hd149572149624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149578149626%_
                           _%bind149579149628%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149572149624%_))
                        (let ((_%e149575149631%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149572149624%_))))
                          (let ((_%lp-hd149576149634%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149575149631%_)))
                                (_%lp-tl149577149636%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149575149631%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149576149634%_))
                                (let ((_%e149584149639%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149576149634%_))))
                                  (let ((_%hd149583149642%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149584149639%_)))
                                        (_%tl149582149644%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149584149639%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149582149644%_))
                                        (let ((_%e149587149647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149582149644%_))))
                                          (let ((_%hd149586149650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149587149647%_)))
                                                (_%tl149585149652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149587149647%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149585149652%_))
                                                (let ((__tmp151167
                                                       (cons _%hd149586149650%_
                                                             _%expr149578149626%_))
                                                      (__tmp151166
                                                       (cons _%hd149583149642%_
                                                             _%bind149579149628%_)))
                                                  (declare (not safe))
                                                  (_%loop149574149621%_
                                                   _%lp-tl149577149636%_
                                                   __tmp151167
                                                   __tmp151166))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149560149595%_
                                                   _%g149561149598%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149560149595%_
                                           _%g149561149598%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g149560149595%_ _%g149561149598%_)))))
                        (let ((_%expr149580149655%_
                               (reverse _%expr149578149626%_))
                              (_%bind149581149657%_
                               (reverse _%bind149579149628%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149568149613%_))
                              (let ((_%e149590149660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149568149613%_))))
                                (let ((_%hd149589149663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149590149660%_)))
                                      (_%tl149588149665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149590149660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149588149665%_))
                                      ((lambda (_%L149668%_
                                                _%L149669%_
                                                _%L149670%_)
                                         (let ((_%$e149701%_
                                                (let ((__tmp151170
                                                       (lambda (_%g149689149691%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self149557%_
                                                            _%g149689149691%_))))
                                                      (__tmp151168
                                                       (let ((__tmp151169
                                                              (lambda (_%g149693149696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149694149698%_)
                        (cons _%g149693149696%_ _%g149694149698%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151169 '() _%L149669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151170
                                                   __tmp151168))))
                                           (if _%$e149701%_
                                               _%$e149701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149557%_
                                                  _%L149668%_)))))
                                       _%hd149589149663%_
                                       _%expr149580149655%_
                                       _%bind149581149657%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149560149595%_
                                         _%g149561149598%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149560149595%_ _%g149561149598%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop149574149621%_
                                                     _%target149571149616%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149560149595%_
                                                   _%g149561149598%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149560149595%_
                                         _%g149561149598%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149560149595%_ _%g149561149598%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149560149595%_ _%g149561149598%_))))))
          (declare (not safe))
          (_%g149559149704%_ _%stx149558%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self149501%_ _%stx149502%_)
        (let* ((_%g149504149517%_
                (lambda (_%g149505149514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149505149514%_))))
               (_%g149503149554%_
                (lambda (_%g149505149520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149505149520%_))
                      (let ((_%e149509149522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149505149520%_))))
                        (let ((_%hd149508149525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149509149522%_)))
                              (_%tl149507149527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149509149522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149507149527%_))
                              (let ((_%e149512149530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149507149527%_))))
                                (let ((_%hd149511149533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149512149530%_)))
                                      (_%tl149510149535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149512149530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149510149535%_))
                                      ((lambda (_%L149538%_)
                                         (let ((__tmp151172
                                                (lambda (_%g149549149551%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L149538%_
                                                     _%g149549149551%_))))
                                               (__tmp151171
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self149501%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151172 __tmp151171)))
                                       _%hd149511149533%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149504149517%_
                                         _%g149505149520%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149504149517%_ _%g149505149520%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149504149517%_ _%g149505149520%_))))))
          (declare (not safe))
          (_%g149503149554%_ _%stx149502%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self149426%_ _%stx149427%_)
        (let* ((_%g149429149446%_
                (lambda (_%g149430149443%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149430149443%_))))
               (_%g149428149498%_
                (lambda (_%g149430149449%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149430149449%_))
                      (let ((_%e149435149451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149430149449%_))))
                        (let ((_%hd149434149454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149435149451%_)))
                              (_%tl149433149456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149435149451%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149433149456%_))
                              (let ((_%e149438149459%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149433149456%_))))
                                (let ((_%hd149437149462%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149438149459%_)))
                                      (_%tl149436149464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149438149459%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149436149464%_))
                                      (let ((_%e149441149467%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149436149464%_))))
                                        (let ((_%hd149440149470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149441149467%_)))
                                              (_%tl149439149472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149441149467%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149439149472%_))
                                              ((lambda (_%L149475%_
                                                        _%L149476%_)
                                                 (let ((_%$e149495%_
                                                        (let ((__tmp151174
                                                               (lambda (_%g149490149492%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L149476%_
                            _%g149490149492%_))))
                      (__tmp151173
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self149426%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151174 __tmp151173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e149495%_
                                                       _%$e149495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149426%_
                                                          _%L149475%_)))))
                                               _%hd149440149470%_
                                               _%hd149437149462%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149429149446%_
                                                 _%g149430149449%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149429149446%_
                                         _%g149430149449%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149429149446%_ _%g149430149449%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149429149446%_ _%g149430149449%_))))))
          (declare (not safe))
          (_%g149428149498%_ _%stx149427%_))))))
