(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1771178567)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp211738 (list gxc#::void::t))
            (__tmp211737 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp211738
         '()
         __tmp211737
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args211724%_
        (apply make-instance gxc#::collect-mutators::t _%$args211724%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp211739
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
        (__make-atomic-promise __tmp211739)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx211716%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self211719%_
                (let ((__obj211727
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj211727))
               (__tmp211740
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211719%_ _%stx211716%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211740
           gxc#current-compile-method
           _%self211719%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp211742 (list gxc#::basic-xform-expression::t))
            (__tmp211741 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp211742
         '(id new-id)
         __tmp211741
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args211713%_
        (apply make-instance gxc#::expression-subst::t _%$args211713%_)))
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
      (let ((__tmp211743
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
        (__make-atomic-promise __tmp211743)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords211685%_
               _%id211681211686%_
               _%new-id211682211687%_
               _%stx211688%_)
        (let* ((_%id211691%_
                (if (eq? _%id211681211686%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id211681211686%_))
               (_%new-id211693%_
                (if (eq? _%new-id211682211687%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id211682211687%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self211695%_
                  (let ((__obj211729
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211729
                       _%id211691%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211729
                       _%new-id211693%_
                       '2
                       '#f
                       '#f))
                    __obj211729))
                 (__tmp211744
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211695%_ _%stx211688%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211744
             gxc#current-compile-method
             _%self211695%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords211702%_ . _%args211703%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords211702%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211702%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211702%_
                  'new-id:
                  absent-value))
               _%args211703%_)))
    (define gxc#apply-expression-subst
      (lambda _%args211683211709%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args211683211709%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp211746 (list gxc#::basic-xform-expression::t))
            (__tmp211745 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp211746
         '(subst)
         __tmp211745
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args211677%_
        (apply make-instance gxc#::expression-subst*::t _%$args211677%_)))
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
      (let ((__tmp211747
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
        (__make-atomic-promise __tmp211747)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords211652%_ _%subst211649211653%_ _%stx211654%_)
        (let ((_%subst211657%_
               (if (eq? _%subst211649211653%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst211649211653%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self211659%_
                  (let ((__obj211731
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211731
                       _%subst211657%_
                       '1
                       '#f
                       '#f))
                    __obj211731))
                 (__tmp211748
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211659%_ _%stx211654%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211748
             gxc#current-compile-method
             _%self211659%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords211666%_ . _%args211667%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords211666%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211666%_
                  'subst:
                  absent-value))
               _%args211667%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args211650211673%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args211650211673%_)))
    (define gxc#::find-expression::t
      (let ((__tmp211749 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp211749
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args211645%_
        (apply make-instance gxc#::find-expression::t _%$args211645%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp211750
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
        (__make-atomic-promise __tmp211750)))
    (define gxc#::find-var-refs::t
      (let ((__tmp211752 (list gxc#::find-expression::t))
            (__tmp211751 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp211752
         '(ids)
         __tmp211751
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args211641%_
        (apply make-instance gxc#::find-var-refs::t _%$args211641%_)))
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
      (let ((__tmp211753
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
        (__make-atomic-promise __tmp211753)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords211616%_ _%ids211613211617%_ _%stx211618%_)
        (let ((_%ids211621%_
               (if (eq? _%ids211613211617%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids211613211617%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self211623%_
                  (let ((__obj211734
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211734
                       _%ids211621%_
                       '1
                       '#f
                       '#f))
                    __obj211734))
                 (__tmp211754
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211623%_ _%stx211618%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211754
             gxc#current-compile-method
             _%self211623%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords211630%_ . _%args211631%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords211630%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211630%_ 'ids: absent-value))
               _%args211631%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args211614211637%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args211614211637%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp211756 (list gxc#::collect-expression-refs::t))
            (__tmp211755 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp211756
         '()
         __tmp211755
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args211609%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args211609%_)))
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
      (let ((__tmp211757
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
        (__make-atomic-promise __tmp211757)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords211584%_ _%table211581211585%_ _%stx211586%_)
        (let ((_%table211589%_
               (if (eq? _%table211581211585%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table211581211585%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self211591%_
                  (let ((__obj211736
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211736
                       _%table211589%_
                       '1
                       '#f
                       '#f))
                    __obj211736))
                 (__tmp211758
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211591%_ _%stx211586%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211758
             gxc#current-compile-method
             _%self211591%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords211598%_ . _%args211599%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords211598%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211598%_
                  'table:
                  absent-value))
               _%args211599%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args211582211605%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args211582211605%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self211510%_ _%stx211511%_)
        (let* ((_%g211513211530%_
                (lambda (_%g211514211527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211514211527%_))))
               (_%g211512211577%_
                (lambda (_%g211514211533%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211514211533%_))
                      (let ((_%e211517211535%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211514211533%_))))
                        (let ((_%hd211518211538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211517211535%_)))
                              (_%tl211519211540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211517211535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211519211540%_))
                              (let ((_%e211520211543%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211519211540%_))))
                                (let ((_%hd211521211546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211520211543%_)))
                                      (_%tl211522211548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211520211543%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211522211548%_))
                                      (let ((_%e211523211551%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211522211548%_))))
                                        (let ((_%hd211524211554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211523211551%_)))
                                              (_%tl211525211556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211523211551%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211525211556%_))
                                              ((lambda (_%g211515211559%_
                                                        _%g211516211560%_)
                                                 (let ((_%sym211575%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211516211560%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym211575%_))
                                                   (let ((__tmp211759
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp211759
                                                      _%sym211575%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211510%_
                                                      _%g211515211559%_))))
                                               _%hd211524211554%_
                                               _%hd211521211546%_)
                                              (_%g211513211530%_
                                               _%g211514211533%_))))
                                      (_%g211513211530%_ _%g211514211533%_))))
                              (_%g211513211530%_ _%g211514211533%_))))
                      (_%g211513211530%_ _%g211514211533%_)))))
          (_%g211512211577%_ _%stx211511%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self211458%_ _%stx211459%_)
        (let* ((_%g211461211474%_
                (lambda (_%g211462211471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211462211471%_))))
               (_%g211460211507%_
                (lambda (_%g211462211477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211462211477%_))
                      (let ((_%e211464211479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211462211477%_))))
                        (let ((_%hd211465211482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211464211479%_)))
                              (_%tl211466211484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211464211479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211466211484%_))
                              (let ((_%e211467211487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211466211484%_))))
                                (let ((_%hd211468211490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211467211487%_)))
                                      (_%tl211469211492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211467211487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211469211492%_))
                                      ((lambda (_%g211463211495%_)
                                         (if (let ((__tmp211760
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self211458%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g211463211495%_
                                                __tmp211760))
                                             (let ((__tmp211761
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self211458%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp211761
                                                _%stx211459%_))
                                             _%stx211459%_))
                                       _%hd211468211490%_)
                                      (_%g211461211474%_ _%g211462211477%_))))
                              (_%g211461211474%_ _%g211462211477%_))))
                      (_%g211461211474%_ _%g211462211477%_)))))
          (_%g211460211507%_ _%stx211459%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self211398%_ _%stx211399%_)
        (let* ((_%g211401211414%_
                (lambda (_%g211402211411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211402211411%_))))
               (_%g211400211455%_
                (lambda (_%g211402211417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211402211417%_))
                      (let ((_%e211404211419%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211402211417%_))))
                        (let ((_%hd211405211422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211404211419%_)))
                              (_%tl211406211424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211404211419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211406211424%_))
                              (let ((_%e211407211427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211406211424%_))))
                                (let ((_%hd211408211430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211407211427%_)))
                                      (_%tl211409211432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211407211427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211409211432%_))
                                      ((lambda (_%g211403211435%_)
                                         (let ((_%$e211449%_
                                                (let ((__tmp211763
                                                       (lambda (_%sub211447%_)
                                                         (let ((__tmp211764
                                                                (car _%sub211447%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g211403211435%_
                                                            __tmp211764))))
                                                      (__tmp211762
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self211398%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp211763
                                                          __tmp211762))))
                                           (if _%$e211449%_
                                               ((lambda (_%sub211452%_)
                                                  (let ((__tmp211765
                                                         (cons '%#ref
                                                               (cons (cdr _%sub211452%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp211765
                                                     _%stx211399%_)))
                                                _%$e211449%_)
                                               _%stx211399%_)))
                                       _%hd211408211430%_)
                                      (_%g211401211414%_ _%g211402211417%_))))
                              (_%g211401211414%_ _%g211402211417%_))))
                      (_%g211401211414%_ _%g211402211417%_)))))
          (_%g211400211455%_ _%stx211399%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self211327%_ _%stx211328%_)
        (let* ((_%g211330211347%_
                (lambda (_%g211331211344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211331211344%_))))
               (_%g211329211395%_
                (lambda (_%g211331211350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211331211350%_))
                      (let ((_%e211334211352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211331211350%_))))
                        (let ((_%hd211335211355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211334211352%_)))
                              (_%tl211336211357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211334211352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211336211357%_))
                              (let ((_%e211337211360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211336211357%_))))
                                (let ((_%hd211338211363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211337211360%_)))
                                      (_%tl211339211365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211337211360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211339211365%_))
                                      (let ((_%e211340211368%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211339211365%_))))
                                        (let ((_%hd211341211371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211340211368%_)))
                                              (_%tl211342211373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211340211368%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211342211373%_))
                                              ((lambda (_%g211332211376%_
                                                        _%g211333211377%_)
                                                 (let ((_%new-expr211392%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211327%_
                                                           _%g211332211376%_)))
                                                       (_%new-xid211393%_
                                                        (if (let ((__tmp211766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self211327%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g211333211377%_ __tmp211766))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self211327%_ 'new-id))
                    _%g211333211377%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211767
                                                          (cons '%#set!
                                                                (cons _%new-xid211393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211392%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211767
                                                      _%stx211328%_))))
                                               _%hd211341211371%_
                                               _%hd211338211363%_)
                                              (_%g211330211347%_
                                               _%g211331211350%_))))
                                      (_%g211330211347%_ _%g211331211350%_))))
                              (_%g211330211347%_ _%g211331211350%_))))
                      (_%g211330211347%_ _%g211331211350%_)))))
          (_%g211329211395%_ _%stx211328%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self211250%_ _%stx211251%_)
        (let* ((_%g211253211270%_
                (lambda (_%g211254211267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211254211267%_))))
               (_%g211252211324%_
                (lambda (_%g211254211273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211254211273%_))
                      (let ((_%e211257211275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211254211273%_))))
                        (let ((_%hd211258211278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211257211275%_)))
                              (_%tl211259211280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211257211275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211259211280%_))
                              (let ((_%e211260211283%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211259211280%_))))
                                (let ((_%hd211261211286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211260211283%_)))
                                      (_%tl211262211288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211260211283%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211262211288%_))
                                      (let ((_%e211263211291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211262211288%_))))
                                        (let ((_%hd211264211294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211263211291%_)))
                                              (_%tl211265211296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211263211291%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211265211296%_))
                                              ((lambda (_%g211255211299%_
                                                        _%g211256211300%_)
                                                 (let ((_%new-expr211321%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211250%_
                                                           _%g211255211299%_)))
                                                       (_%new-xid211322%_
                                                        (let ((_%$e211317%_
                                                               (let ((__tmp211769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub211315%_)
                                (let ((__tmp211770 (car _%sub211315%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g211256211300%_
                                   __tmp211770))))
                             (__tmp211768
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self211250%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp211769 __tmp211768))))
                  (if _%$e211317%_ (cdr _%$e211317%_) _%g211256211300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211771
                                                          (cons '%#set!
                                                                (cons _%new-xid211322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211321%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211771
                                                      _%stx211251%_))))
                                               _%hd211264211294%_
                                               _%hd211261211286%_)
                                              (_%g211253211270%_
                                               _%g211254211273%_))))
                                      (_%g211253211270%_ _%g211254211273%_))))
                              (_%g211253211270%_ _%g211254211273%_))))
                      (_%g211253211270%_ _%g211254211273%_)))))
          (_%g211252211324%_ _%stx211251%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self211196%_ _%stx211197%_)
        (let* ((_%g211199211212%_
                (lambda (_%g211200211209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211200211209%_))))
               (_%g211198211247%_
                (lambda (_%g211200211215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211200211215%_))
                      (let ((_%e211202211217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211200211215%_))))
                        (let ((_%hd211203211220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211202211217%_)))
                              (_%tl211204211222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211202211217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211204211222%_))
                              (let ((_%e211205211225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211204211222%_))))
                                (let ((_%hd211206211228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211205211225%_)))
                                      (_%tl211207211230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211205211225%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211207211230%_))
                                      ((lambda (_%g211201211233%_)
                                         (let* ((_%eid211245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g211201211233%_)))
                                                (__tmp211772
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self211196%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp211772
                                            _%eid211245%_
                                            1+
                                            '0)))
                                       _%hd211206211228%_)
                                      (_%g211199211212%_ _%g211200211215%_))))
                              (_%g211199211212%_ _%g211200211215%_))))
                      (_%g211199211212%_ _%g211200211215%_)))))
          (_%g211198211247%_ _%stx211197%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self211126%_ _%stx211127%_)
        (let* ((_%g211129211146%_
                (lambda (_%g211130211143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211130211143%_))))
               (_%g211128211193%_
                (lambda (_%g211130211149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211130211149%_))
                      (let ((_%e211133211151%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211130211149%_))))
                        (let ((_%hd211134211154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211133211151%_)))
                              (_%tl211135211156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211133211151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211135211156%_))
                              (let ((_%e211136211159%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211135211156%_))))
                                (let ((_%hd211137211162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211136211159%_)))
                                      (_%tl211138211164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211136211159%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211138211164%_))
                                      (let ((_%e211139211167%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211138211164%_))))
                                        (let ((_%hd211140211170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211139211167%_)))
                                              (_%tl211141211172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211139211167%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211141211172%_))
                                              ((lambda (_%g211131211175%_
                                                        _%g211132211176%_)
                                                 (let ((_%eid211191%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211132211176%_))))
                                                   (let ((__tmp211773
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self211126%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp211773
                                                      _%eid211191%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211126%_
                                                      _%g211131211175%_))))
                                               _%hd211140211170%_
                                               _%hd211137211162%_)
                                              (_%g211129211146%_
                                               _%g211130211149%_))))
                                      (_%g211129211146%_ _%g211130211149%_))))
                              (_%g211129211146%_ _%g211130211149%_))))
                      (_%g211129211146%_ _%g211130211149%_)))))
          (_%g211128211193%_ _%stx211127%_))))
    (define gxc#find-body%
      (lambda (_%self211041%_ _%stx211042%_)
        (let* ((_%g211044211063%_
                (lambda (_%g211045211060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211045211060%_))))
               (_%g211043211123%_
                (lambda (_%g211045211066%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211045211066%_))
                      (let ((_%e211047211068%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211045211066%_))))
                        (let ((_%hd211048211071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211047211068%_)))
                              (_%tl211049211073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211047211068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211049211073%_))
                              (let ((_g211774_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211049211073%_
                                        '0))))
                                (begin
                                  (let ((_g211775_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g211774_)
                                               (##values-length _g211774_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g211775_ 2)))
                                        (error "Context expects 2 values"
                                               _g211775_)))
                                  (let ((_%target211050211076%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211774_ 0)))
                                        (_%tl211052211078%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211774_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211052211078%_))
                                        (letrec ((_%loop211053211081%_
                                                  (lambda (_%hd211051211084%_
                                                           _%expr211057211086%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211051211084%_))
                                                        (let ((_%e211054211088%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd211051211084%_))))
                  (let ((_%lp-hd211055211091%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211054211088%_)))
                        (_%lp-tl211056211093%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211054211088%_))))
                    (_%loop211053211081%_
                     _%lp-tl211056211093%_
                     (cons _%lp-hd211055211091%_ _%expr211057211086%_))))
                (let ((_%expr211058211096%_ (reverse _%expr211057211086%_)))
                  ((lambda (_%g211046211098%_)
                     (let ((__tmp211778
                            (lambda (_%g211111211113%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self211041%_
                                 _%g211111211113%_))))
                           (__tmp211776
                            (let ((__tmp211777
                                   (lambda (_%g211115211118%_
                                            _%g211116211120%_)
                                     (cons _%g211115211118%_
                                           _%g211116211120%_))))
                              (declare (not safe))
                              (foldr__0 __tmp211777 '() _%g211046211098%_))))
                       (declare (not safe))
                       (ormap__0 __tmp211778 __tmp211776)))
                   _%expr211058211096%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211053211081%_
                                           _%target211050211076%_
                                           '()))
                                        (_%g211044211063%_
                                         _%g211045211066%_)))))
                              (_%g211044211063%_ _%g211045211066%_))))
                      (_%g211044211063%_ _%g211045211066%_)))))
          (_%g211043211123%_ _%stx211042%_))))
    (define gxc#find-let-values%
      (lambda (_%self210895%_ _%stx210896%_)
        (let* ((_%g210898210933%_
                (lambda (_%g210899210930%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210899210930%_))))
               (_%g210897211038%_
                (lambda (_%g210899210936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210899210936%_))
                      (let ((_%e210903210938%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210899210936%_))))
                        (let ((_%hd210904210941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210903210938%_)))
                              (_%tl210905210943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210903210938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210905210943%_))
                              (let ((_%e210906210946%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210905210943%_))))
                                (let ((_%hd210907210949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210906210946%_)))
                                      (_%tl210908210951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210906210946%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd210907210949%_))
                                      (let ((_g211779_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd210907210949%_
                                                '0))))
                                        (begin
                                          (let ((_g211780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g211779_)
                                                       (##values-length
                                                        _g211779_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g211780_ 2)))
                                                (error "Context expects 2 values"
                                                       _g211780_)))
                                          (let ((_%target210909210954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g211779_ 0)))
                                                (_%tl210911210956%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g211779_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210911210956%_))
                                                (letrec ((_%loop210912210959%_
                                                          (lambda (_%hd210910210962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr210916210964%_
                           _%bind210917210965%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd210910210962%_))
                        (let ((_%e210913210967%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd210910210962%_))))
                          (let ((_%lp-hd210914210970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210913210967%_)))
                                (_%lp-tl210915210972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210913210967%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd210914210970%_))
                                (let ((_%e210920210975%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd210914210970%_))))
                                  (let ((_%hd210921210978%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210920210975%_)))
                                        (_%tl210922210980%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210920210975%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210922210980%_))
                                        (let ((_%e210923210983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl210922210980%_))))
                                          (let ((_%hd210924210986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210923210983%_)))
                                                (_%tl210925210988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210923210983%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210925210988%_))
                                                (_%loop210912210959%_
                                                 _%lp-tl210915210972%_
                                                 (cons _%hd210924210986%_
                                                       _%expr210916210964%_)
                                                 (cons _%hd210921210978%_
                                                       _%bind210917210965%_))
                                                (_%g210898210933%_
                                                 _%g210899210936%_))))
                                        (_%g210898210933%_
                                         _%g210899210936%_))))
                                (_%g210898210933%_ _%g210899210936%_))))
                        (let ((_%expr210918210991%_
                               (reverse _%expr210916210964%_))
                              (_%bind210919210992%_
                               (reverse _%bind210917210965%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210908210951%_))
                              (let ((_%e210926210994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210908210951%_))))
                                (let ((_%hd210927210997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210926210994%_)))
                                      (_%tl210928210999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210926210994%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210928210999%_))
                                      ((lambda (_%g210900211002%_
                                                _%g210901211003%_
                                                _%g210902211004%_)
                                         (let ((_%$e211035%_
                                                (let ((__tmp211783
                                                       (lambda (_%g211023211025%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self210895%_
                                                            _%g211023211025%_))))
                                                      (__tmp211781
                                                       (let ((__tmp211782
                                                              (lambda (_%g211027211030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g211028211032%_)
                        (cons _%g211027211030%_ _%g211028211032%_))))
                 (declare (not safe))
                 (foldr__0 __tmp211782 '() _%g210901211003%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp211783
                                                   __tmp211781))))
                                           (if _%$e211035%_
                                               _%$e211035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self210895%_
                                                  _%g210900211002%_)))))
                                       _%hd210927210997%_
                                       _%expr210918210991%_
                                       _%bind210919210992%_)
                                      (_%g210898210933%_ _%g210899210936%_))))
                              (_%g210898210933%_ _%g210899210936%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop210912210959%_
                                                   _%target210909210954%_
                                                   '()
                                                   '()))
                                                (_%g210898210933%_
                                                 _%g210899210936%_)))))
                                      (_%g210898210933%_ _%g210899210936%_))))
                              (_%g210898210933%_ _%g210899210936%_))))
                      (_%g210898210933%_ _%g210899210936%_)))))
          (_%g210897211038%_ _%stx210896%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self210839%_ _%stx210840%_)
        (let* ((_%g210842210855%_
                (lambda (_%g210843210852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210843210852%_))))
               (_%g210841210892%_
                (lambda (_%g210843210858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210843210858%_))
                      (let ((_%e210845210860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210843210858%_))))
                        (let ((_%hd210846210863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210845210860%_)))
                              (_%tl210847210865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210845210860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210847210865%_))
                              (let ((_%e210848210868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210847210865%_))))
                                (let ((_%hd210849210871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210848210868%_)))
                                      (_%tl210850210873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210848210868%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210850210873%_))
                                      ((lambda (_%g210844210876%_)
                                         (let ((__tmp211785
                                                (lambda (_%g210887210889%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g210844210876%_
                                                     _%g210887210889%_))))
                                               (__tmp211784
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self210839%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp211785 __tmp211784)))
                                       _%hd210849210871%_)
                                      (_%g210842210855%_ _%g210843210858%_))))
                              (_%g210842210855%_ _%g210843210858%_))))
                      (_%g210842210855%_ _%g210843210858%_)))))
          (_%g210841210892%_ _%stx210840%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self210764%_ _%stx210765%_)
        (let* ((_%g210767210784%_
                (lambda (_%g210768210781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210768210781%_))))
               (_%g210766210836%_
                (lambda (_%g210768210787%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210768210787%_))
                      (let ((_%e210771210789%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210768210787%_))))
                        (let ((_%hd210772210792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210771210789%_)))
                              (_%tl210773210794%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210771210789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210773210794%_))
                              (let ((_%e210774210797%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210773210794%_))))
                                (let ((_%hd210775210800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210774210797%_)))
                                      (_%tl210776210802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210774210797%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210776210802%_))
                                      (let ((_%e210777210805%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210776210802%_))))
                                        (let ((_%hd210778210808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210777210805%_)))
                                              (_%tl210779210810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210777210805%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210779210810%_))
                                              ((lambda (_%g210769210813%_
                                                        _%g210770210814%_)
                                                 (let ((_%$e210833%_
                                                        (let ((__tmp211787
                                                               (lambda (_%g210828210830%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g210770210814%_
                            _%g210828210830%_))))
                      (__tmp211786
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self210764%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp211787 __tmp211786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e210833%_
                                                       _%$e210833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self210764%_
                                                          _%g210769210813%_)))))
                                               _%hd210778210808%_
                                               _%hd210775210800%_)
                                              (_%g210767210784%_
                                               _%g210768210787%_))))
                                      (_%g210767210784%_ _%g210768210787%_))))
                              (_%g210767210784%_ _%g210768210787%_))))
                      (_%g210767210784%_ _%g210768210787%_)))))
          (_%g210766210836%_ _%stx210765%_))))))
