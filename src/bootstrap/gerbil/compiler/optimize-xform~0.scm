(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1771104512)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp211789 (list gxc#::void::t))
            (__tmp211788 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp211789
         '()
         __tmp211788
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args211775%_
        (apply make-instance gxc#::collect-mutators::t _%$args211775%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp211790
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
        (__make-atomic-promise __tmp211790)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx211767%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self211770%_
                (let ((__obj211778
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj211778))
               (__tmp211791
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211770%_ _%stx211767%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211791
           gxc#current-compile-method
           _%self211770%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp211793 (list gxc#::basic-xform-expression::t))
            (__tmp211792 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp211793
         '(id new-id)
         __tmp211792
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args211764%_
        (apply make-instance gxc#::expression-subst::t _%$args211764%_)))
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
      (let ((__tmp211794
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
        (__make-atomic-promise __tmp211794)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords211736%_
               _%id211732211737%_
               _%new-id211733211738%_
               _%stx211739%_)
        (let* ((_%id211742%_
                (if (eq? _%id211732211737%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id211732211737%_))
               (_%new-id211744%_
                (if (eq? _%new-id211733211738%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id211733211738%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self211746%_
                  (let ((__obj211780
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211780
                       _%id211742%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211780
                       _%new-id211744%_
                       '2
                       '#f
                       '#f))
                    __obj211780))
                 (__tmp211795
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211746%_ _%stx211739%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211795
             gxc#current-compile-method
             _%self211746%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords211753%_ . _%args211754%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords211753%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211753%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211753%_
                  'new-id:
                  absent-value))
               _%args211754%_)))
    (define gxc#apply-expression-subst
      (lambda _%args211734211760%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args211734211760%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp211797 (list gxc#::basic-xform-expression::t))
            (__tmp211796 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp211797
         '(subst)
         __tmp211796
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args211728%_
        (apply make-instance gxc#::expression-subst*::t _%$args211728%_)))
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
      (let ((__tmp211798
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
        (__make-atomic-promise __tmp211798)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords211703%_ _%subst211700211704%_ _%stx211705%_)
        (let ((_%subst211708%_
               (if (eq? _%subst211700211704%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst211700211704%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self211710%_
                  (let ((__obj211782
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211782
                       _%subst211708%_
                       '1
                       '#f
                       '#f))
                    __obj211782))
                 (__tmp211799
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211710%_ _%stx211705%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211799
             gxc#current-compile-method
             _%self211710%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords211717%_ . _%args211718%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords211717%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211717%_
                  'subst:
                  absent-value))
               _%args211718%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args211701211724%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args211701211724%_)))
    (define gxc#::find-expression::t
      (let ((__tmp211800 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp211800
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args211696%_
        (apply make-instance gxc#::find-expression::t _%$args211696%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp211801
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
        (__make-atomic-promise __tmp211801)))
    (define gxc#::find-var-refs::t
      (let ((__tmp211803 (list gxc#::find-expression::t))
            (__tmp211802 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp211803
         '(ids)
         __tmp211802
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args211692%_
        (apply make-instance gxc#::find-var-refs::t _%$args211692%_)))
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
      (let ((__tmp211804
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
        (__make-atomic-promise __tmp211804)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords211667%_ _%ids211664211668%_ _%stx211669%_)
        (let ((_%ids211672%_
               (if (eq? _%ids211664211668%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids211664211668%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self211674%_
                  (let ((__obj211785
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211785
                       _%ids211672%_
                       '1
                       '#f
                       '#f))
                    __obj211785))
                 (__tmp211805
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211674%_ _%stx211669%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211805
             gxc#current-compile-method
             _%self211674%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords211681%_ . _%args211682%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords211681%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211681%_ 'ids: absent-value))
               _%args211682%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args211665211688%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args211665211688%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp211807 (list gxc#::collect-expression-refs::t))
            (__tmp211806 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp211807
         '()
         __tmp211806
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args211660%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args211660%_)))
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
      (let ((__tmp211808
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
        (__make-atomic-promise __tmp211808)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords211635%_ _%table211632211636%_ _%stx211637%_)
        (let ((_%table211640%_
               (if (eq? _%table211632211636%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table211632211636%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self211642%_
                  (let ((__obj211787
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211787
                       _%table211640%_
                       '1
                       '#f
                       '#f))
                    __obj211787))
                 (__tmp211809
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211642%_ _%stx211637%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211809
             gxc#current-compile-method
             _%self211642%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords211649%_ . _%args211650%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords211649%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211649%_
                  'table:
                  absent-value))
               _%args211650%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args211633211656%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args211633211656%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self211561%_ _%stx211562%_)
        (let* ((_%g211564211581%_
                (lambda (_%g211565211578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211565211578%_))))
               (_%g211563211628%_
                (lambda (_%g211565211584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211565211584%_))
                      (let ((_%e211568211586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211565211584%_))))
                        (let ((_%hd211569211589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211568211586%_)))
                              (_%tl211570211591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211568211586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211570211591%_))
                              (let ((_%e211571211594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211570211591%_))))
                                (let ((_%hd211572211597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211571211594%_)))
                                      (_%tl211573211599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211571211594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211573211599%_))
                                      (let ((_%e211574211602%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211573211599%_))))
                                        (let ((_%hd211575211605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211574211602%_)))
                                              (_%tl211576211607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211574211602%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211576211607%_))
                                              ((lambda (_%g211566211610%_
                                                        _%g211567211611%_)
                                                 (let ((_%sym211626%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211567211611%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym211626%_))
                                                   (let ((__tmp211810
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp211810
                                                      _%sym211626%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211561%_
                                                      _%g211566211610%_))))
                                               _%hd211575211605%_
                                               _%hd211572211597%_)
                                              (_%g211564211581%_
                                               _%g211565211584%_))))
                                      (_%g211564211581%_ _%g211565211584%_))))
                              (_%g211564211581%_ _%g211565211584%_))))
                      (_%g211564211581%_ _%g211565211584%_)))))
          (_%g211563211628%_ _%stx211562%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self211509%_ _%stx211510%_)
        (let* ((_%g211512211525%_
                (lambda (_%g211513211522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211513211522%_))))
               (_%g211511211558%_
                (lambda (_%g211513211528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211513211528%_))
                      (let ((_%e211515211530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211513211528%_))))
                        (let ((_%hd211516211533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211515211530%_)))
                              (_%tl211517211535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211515211530%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211517211535%_))
                              (let ((_%e211518211538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211517211535%_))))
                                (let ((_%hd211519211541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211518211538%_)))
                                      (_%tl211520211543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211518211538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211520211543%_))
                                      ((lambda (_%g211514211546%_)
                                         (if (let ((__tmp211811
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self211509%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g211514211546%_
                                                __tmp211811))
                                             (let ((__tmp211812
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self211509%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp211812
                                                _%stx211510%_))
                                             _%stx211510%_))
                                       _%hd211519211541%_)
                                      (_%g211512211525%_ _%g211513211528%_))))
                              (_%g211512211525%_ _%g211513211528%_))))
                      (_%g211512211525%_ _%g211513211528%_)))))
          (_%g211511211558%_ _%stx211510%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self211449%_ _%stx211450%_)
        (let* ((_%g211452211465%_
                (lambda (_%g211453211462%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211453211462%_))))
               (_%g211451211506%_
                (lambda (_%g211453211468%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211453211468%_))
                      (let ((_%e211455211470%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211453211468%_))))
                        (let ((_%hd211456211473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211455211470%_)))
                              (_%tl211457211475%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211455211470%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211457211475%_))
                              (let ((_%e211458211478%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211457211475%_))))
                                (let ((_%hd211459211481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211458211478%_)))
                                      (_%tl211460211483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211458211478%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211460211483%_))
                                      ((lambda (_%g211454211486%_)
                                         (let ((_%$e211500%_
                                                (let ((__tmp211814
                                                       (lambda (_%sub211498%_)
                                                         (let ((__tmp211815
                                                                (car _%sub211498%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g211454211486%_
                                                            __tmp211815))))
                                                      (__tmp211813
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self211449%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp211814
                                                          __tmp211813))))
                                           (if _%$e211500%_
                                               ((lambda (_%sub211503%_)
                                                  (let ((__tmp211816
                                                         (cons '%#ref
                                                               (cons (cdr _%sub211503%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp211816
                                                     _%stx211450%_)))
                                                _%$e211500%_)
                                               _%stx211450%_)))
                                       _%hd211459211481%_)
                                      (_%g211452211465%_ _%g211453211468%_))))
                              (_%g211452211465%_ _%g211453211468%_))))
                      (_%g211452211465%_ _%g211453211468%_)))))
          (_%g211451211506%_ _%stx211450%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self211378%_ _%stx211379%_)
        (let* ((_%g211381211398%_
                (lambda (_%g211382211395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211382211395%_))))
               (_%g211380211446%_
                (lambda (_%g211382211401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211382211401%_))
                      (let ((_%e211385211403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211382211401%_))))
                        (let ((_%hd211386211406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211385211403%_)))
                              (_%tl211387211408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211385211403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211387211408%_))
                              (let ((_%e211388211411%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211387211408%_))))
                                (let ((_%hd211389211414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211388211411%_)))
                                      (_%tl211390211416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211388211411%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211390211416%_))
                                      (let ((_%e211391211419%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211390211416%_))))
                                        (let ((_%hd211392211422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211391211419%_)))
                                              (_%tl211393211424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211391211419%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211393211424%_))
                                              ((lambda (_%g211383211427%_
                                                        _%g211384211428%_)
                                                 (let ((_%new-expr211443%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211378%_
                                                           _%g211383211427%_)))
                                                       (_%new-xid211444%_
                                                        (if (let ((__tmp211817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self211378%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g211384211428%_ __tmp211817))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self211378%_ 'new-id))
                    _%g211384211428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211818
                                                          (cons '%#set!
                                                                (cons _%new-xid211444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211443%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211818
                                                      _%stx211379%_))))
                                               _%hd211392211422%_
                                               _%hd211389211414%_)
                                              (_%g211381211398%_
                                               _%g211382211401%_))))
                                      (_%g211381211398%_ _%g211382211401%_))))
                              (_%g211381211398%_ _%g211382211401%_))))
                      (_%g211381211398%_ _%g211382211401%_)))))
          (_%g211380211446%_ _%stx211379%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self211301%_ _%stx211302%_)
        (let* ((_%g211304211321%_
                (lambda (_%g211305211318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211305211318%_))))
               (_%g211303211375%_
                (lambda (_%g211305211324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211305211324%_))
                      (let ((_%e211308211326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211305211324%_))))
                        (let ((_%hd211309211329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211308211326%_)))
                              (_%tl211310211331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211308211326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211310211331%_))
                              (let ((_%e211311211334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211310211331%_))))
                                (let ((_%hd211312211337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211311211334%_)))
                                      (_%tl211313211339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211311211334%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211313211339%_))
                                      (let ((_%e211314211342%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211313211339%_))))
                                        (let ((_%hd211315211345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211314211342%_)))
                                              (_%tl211316211347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211314211342%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211316211347%_))
                                              ((lambda (_%g211306211350%_
                                                        _%g211307211351%_)
                                                 (let ((_%new-expr211372%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211301%_
                                                           _%g211306211350%_)))
                                                       (_%new-xid211373%_
                                                        (let ((_%$e211368%_
                                                               (let ((__tmp211820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub211366%_)
                                (let ((__tmp211821 (car _%sub211366%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g211307211351%_
                                   __tmp211821))))
                             (__tmp211819
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self211301%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp211820 __tmp211819))))
                  (if _%$e211368%_ (cdr _%$e211368%_) _%g211307211351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211822
                                                          (cons '%#set!
                                                                (cons _%new-xid211373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211372%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211822
                                                      _%stx211302%_))))
                                               _%hd211315211345%_
                                               _%hd211312211337%_)
                                              (_%g211304211321%_
                                               _%g211305211324%_))))
                                      (_%g211304211321%_ _%g211305211324%_))))
                              (_%g211304211321%_ _%g211305211324%_))))
                      (_%g211304211321%_ _%g211305211324%_)))))
          (_%g211303211375%_ _%stx211302%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self211247%_ _%stx211248%_)
        (let* ((_%g211250211263%_
                (lambda (_%g211251211260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211251211260%_))))
               (_%g211249211298%_
                (lambda (_%g211251211266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211251211266%_))
                      (let ((_%e211253211268%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211251211266%_))))
                        (let ((_%hd211254211271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211253211268%_)))
                              (_%tl211255211273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211253211268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211255211273%_))
                              (let ((_%e211256211276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211255211273%_))))
                                (let ((_%hd211257211279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211256211276%_)))
                                      (_%tl211258211281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211256211276%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211258211281%_))
                                      ((lambda (_%g211252211284%_)
                                         (let* ((_%eid211296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g211252211284%_)))
                                                (__tmp211823
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self211247%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp211823
                                            _%eid211296%_
                                            1+
                                            '0)))
                                       _%hd211257211279%_)
                                      (_%g211250211263%_ _%g211251211266%_))))
                              (_%g211250211263%_ _%g211251211266%_))))
                      (_%g211250211263%_ _%g211251211266%_)))))
          (_%g211249211298%_ _%stx211248%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self211177%_ _%stx211178%_)
        (let* ((_%g211180211197%_
                (lambda (_%g211181211194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211181211194%_))))
               (_%g211179211244%_
                (lambda (_%g211181211200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211181211200%_))
                      (let ((_%e211184211202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211181211200%_))))
                        (let ((_%hd211185211205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211184211202%_)))
                              (_%tl211186211207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211184211202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211186211207%_))
                              (let ((_%e211187211210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211186211207%_))))
                                (let ((_%hd211188211213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211187211210%_)))
                                      (_%tl211189211215%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211187211210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211189211215%_))
                                      (let ((_%e211190211218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211189211215%_))))
                                        (let ((_%hd211191211221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211190211218%_)))
                                              (_%tl211192211223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211190211218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211192211223%_))
                                              ((lambda (_%g211182211226%_
                                                        _%g211183211227%_)
                                                 (let ((_%eid211242%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211183211227%_))))
                                                   (let ((__tmp211824
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self211177%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp211824
                                                      _%eid211242%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211177%_
                                                      _%g211182211226%_))))
                                               _%hd211191211221%_
                                               _%hd211188211213%_)
                                              (_%g211180211197%_
                                               _%g211181211200%_))))
                                      (_%g211180211197%_ _%g211181211200%_))))
                              (_%g211180211197%_ _%g211181211200%_))))
                      (_%g211180211197%_ _%g211181211200%_)))))
          (_%g211179211244%_ _%stx211178%_))))
    (define gxc#find-body%
      (lambda (_%self211092%_ _%stx211093%_)
        (let* ((_%g211095211114%_
                (lambda (_%g211096211111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211096211111%_))))
               (_%g211094211174%_
                (lambda (_%g211096211117%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211096211117%_))
                      (let ((_%e211098211119%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211096211117%_))))
                        (let ((_%hd211099211122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211098211119%_)))
                              (_%tl211100211124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211098211119%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211100211124%_))
                              (let ((_g211825_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211100211124%_
                                        '0))))
                                (begin
                                  (let ((_g211826_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g211825_)
                                               (##values-length _g211825_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g211826_ 2)))
                                        (error "Context expects 2 values"
                                               _g211826_)))
                                  (let ((_%target211101211127%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211825_ 0)))
                                        (_%tl211103211129%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211825_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211103211129%_))
                                        (letrec ((_%loop211104211132%_
                                                  (lambda (_%hd211102211135%_
                                                           _%expr211108211137%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211102211135%_))
                                                        (let ((_%e211105211139%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd211102211135%_))))
                  (let ((_%lp-hd211106211142%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211105211139%_)))
                        (_%lp-tl211107211144%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211105211139%_))))
                    (_%loop211104211132%_
                     _%lp-tl211107211144%_
                     (cons _%lp-hd211106211142%_ _%expr211108211137%_))))
                (let ((_%expr211109211147%_ (reverse _%expr211108211137%_)))
                  ((lambda (_%g211097211149%_)
                     (let ((__tmp211829
                            (lambda (_%g211162211164%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self211092%_
                                 _%g211162211164%_))))
                           (__tmp211827
                            (let ((__tmp211828
                                   (lambda (_%g211166211169%_
                                            _%g211167211171%_)
                                     (cons _%g211166211169%_
                                           _%g211167211171%_))))
                              (declare (not safe))
                              (foldr__0 __tmp211828 '() _%g211097211149%_))))
                       (declare (not safe))
                       (ormap__0 __tmp211829 __tmp211827)))
                   _%expr211109211147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211104211132%_
                                           _%target211101211127%_
                                           '()))
                                        (_%g211095211114%_
                                         _%g211096211117%_)))))
                              (_%g211095211114%_ _%g211096211117%_))))
                      (_%g211095211114%_ _%g211096211117%_)))))
          (_%g211094211174%_ _%stx211093%_))))
    (define gxc#find-let-values%
      (lambda (_%self210946%_ _%stx210947%_)
        (let* ((_%g210949210984%_
                (lambda (_%g210950210981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210950210981%_))))
               (_%g210948211089%_
                (lambda (_%g210950210987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210950210987%_))
                      (let ((_%e210954210989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210950210987%_))))
                        (let ((_%hd210955210992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210954210989%_)))
                              (_%tl210956210994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210954210989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210956210994%_))
                              (let ((_%e210957210997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210956210994%_))))
                                (let ((_%hd210958211000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210957210997%_)))
                                      (_%tl210959211002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210957210997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd210958211000%_))
                                      (let ((_g211830_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd210958211000%_
                                                '0))))
                                        (begin
                                          (let ((_g211831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g211830_)
                                                       (##values-length
                                                        _g211830_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g211831_ 2)))
                                                (error "Context expects 2 values"
                                                       _g211831_)))
                                          (let ((_%target210960211005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g211830_ 0)))
                                                (_%tl210962211007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g211830_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210962211007%_))
                                                (letrec ((_%loop210963211010%_
                                                          (lambda (_%hd210961211013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr210967211015%_
                           _%bind210968211016%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd210961211013%_))
                        (let ((_%e210964211018%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd210961211013%_))))
                          (let ((_%lp-hd210965211021%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210964211018%_)))
                                (_%lp-tl210966211023%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210964211018%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd210965211021%_))
                                (let ((_%e210971211026%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd210965211021%_))))
                                  (let ((_%hd210972211029%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210971211026%_)))
                                        (_%tl210973211031%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210971211026%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210973211031%_))
                                        (let ((_%e210974211034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl210973211031%_))))
                                          (let ((_%hd210975211037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210974211034%_)))
                                                (_%tl210976211039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210974211034%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210976211039%_))
                                                (_%loop210963211010%_
                                                 _%lp-tl210966211023%_
                                                 (cons _%hd210975211037%_
                                                       _%expr210967211015%_)
                                                 (cons _%hd210972211029%_
                                                       _%bind210968211016%_))
                                                (_%g210949210984%_
                                                 _%g210950210987%_))))
                                        (_%g210949210984%_
                                         _%g210950210987%_))))
                                (_%g210949210984%_ _%g210950210987%_))))
                        (let ((_%expr210969211042%_
                               (reverse _%expr210967211015%_))
                              (_%bind210970211043%_
                               (reverse _%bind210968211016%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210959211002%_))
                              (let ((_%e210977211045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210959211002%_))))
                                (let ((_%hd210978211048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210977211045%_)))
                                      (_%tl210979211050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210977211045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210979211050%_))
                                      ((lambda (_%g210951211053%_
                                                _%g210952211054%_
                                                _%g210953211055%_)
                                         (let ((_%$e211086%_
                                                (let ((__tmp211834
                                                       (lambda (_%g211074211076%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self210946%_
                                                            _%g211074211076%_))))
                                                      (__tmp211832
                                                       (let ((__tmp211833
                                                              (lambda (_%g211078211081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g211079211083%_)
                        (cons _%g211078211081%_ _%g211079211083%_))))
                 (declare (not safe))
                 (foldr__0 __tmp211833 '() _%g210952211054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp211834
                                                   __tmp211832))))
                                           (if _%$e211086%_
                                               _%$e211086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self210946%_
                                                  _%g210951211053%_)))))
                                       _%hd210978211048%_
                                       _%expr210969211042%_
                                       _%bind210970211043%_)
                                      (_%g210949210984%_ _%g210950210987%_))))
                              (_%g210949210984%_ _%g210950210987%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop210963211010%_
                                                   _%target210960211005%_
                                                   '()
                                                   '()))
                                                (_%g210949210984%_
                                                 _%g210950210987%_)))))
                                      (_%g210949210984%_ _%g210950210987%_))))
                              (_%g210949210984%_ _%g210950210987%_))))
                      (_%g210949210984%_ _%g210950210987%_)))))
          (_%g210948211089%_ _%stx210947%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self210890%_ _%stx210891%_)
        (let* ((_%g210893210906%_
                (lambda (_%g210894210903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210894210903%_))))
               (_%g210892210943%_
                (lambda (_%g210894210909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210894210909%_))
                      (let ((_%e210896210911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210894210909%_))))
                        (let ((_%hd210897210914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210896210911%_)))
                              (_%tl210898210916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210896210911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210898210916%_))
                              (let ((_%e210899210919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210898210916%_))))
                                (let ((_%hd210900210922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210899210919%_)))
                                      (_%tl210901210924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210899210919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210901210924%_))
                                      ((lambda (_%g210895210927%_)
                                         (let ((__tmp211836
                                                (lambda (_%g210938210940%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g210895210927%_
                                                     _%g210938210940%_))))
                                               (__tmp211835
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self210890%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp211836 __tmp211835)))
                                       _%hd210900210922%_)
                                      (_%g210893210906%_ _%g210894210909%_))))
                              (_%g210893210906%_ _%g210894210909%_))))
                      (_%g210893210906%_ _%g210894210909%_)))))
          (_%g210892210943%_ _%stx210891%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self210815%_ _%stx210816%_)
        (let* ((_%g210818210835%_
                (lambda (_%g210819210832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210819210832%_))))
               (_%g210817210887%_
                (lambda (_%g210819210838%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210819210838%_))
                      (let ((_%e210822210840%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210819210838%_))))
                        (let ((_%hd210823210843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210822210840%_)))
                              (_%tl210824210845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210822210840%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210824210845%_))
                              (let ((_%e210825210848%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210824210845%_))))
                                (let ((_%hd210826210851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210825210848%_)))
                                      (_%tl210827210853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210825210848%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210827210853%_))
                                      (let ((_%e210828210856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210827210853%_))))
                                        (let ((_%hd210829210859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210828210856%_)))
                                              (_%tl210830210861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210828210856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210830210861%_))
                                              ((lambda (_%g210820210864%_
                                                        _%g210821210865%_)
                                                 (let ((_%$e210884%_
                                                        (let ((__tmp211838
                                                               (lambda (_%g210879210881%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g210821210865%_
                            _%g210879210881%_))))
                      (__tmp211837
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self210815%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp211838 __tmp211837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e210884%_
                                                       _%$e210884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self210815%_
                                                          _%g210820210864%_)))))
                                               _%hd210829210859%_
                                               _%hd210826210851%_)
                                              (_%g210818210835%_
                                               _%g210819210838%_))))
                                      (_%g210818210835%_ _%g210819210838%_))))
                              (_%g210818210835%_ _%g210819210838%_))))
                      (_%g210818210835%_ _%g210819210838%_)))))
          (_%g210817210887%_ _%stx210816%_))))))
