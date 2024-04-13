(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712997788)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151947 (list gxc#::void::t))
            (__tmp151946 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151947
         '()
         __tmp151946
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args151933%_
        (apply make-instance gxc#::collect-mutators::t _%$args151933%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151948
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
        (__make-promise __tmp151948)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx151925%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self151928%_
                (let ((__obj151936
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151936))
               (__tmp151949
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151928%_ _%stx151925%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151949
           gxc#current-compile-method
           _%self151928%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151951 (list gxc#::basic-xform-expression::t))
            (__tmp151950 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151951
         '(id new-id)
         __tmp151950
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args151922%_
        (apply make-instance gxc#::expression-subst::t _%$args151922%_)))
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
      (let ((__tmp151952
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
        (__make-promise __tmp151952)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords151892%_
               _%id151888151893%_
               _%new-id151889151895%_
               _%stx151897%_)
        (let* ((_%id151900%_
                (if (eq? _%id151888151893%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id151888151893%_))
               (_%new-id151902%_
                (if (eq? _%new-id151889151895%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id151889151895%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self151904%_
                  (let ((__obj151938
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151938
                       _%id151900%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151938
                       _%new-id151902%_
                       '2
                       '#f
                       '#f))
                    __obj151938))
                 (__tmp151953
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151904%_ _%stx151897%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151953
             gxc#current-compile-method
             _%self151904%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords151911%_ . _%args151912%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords151911%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151911%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151911%_
                  'new-id:
                  absent-value))
               _%args151912%_)))
    (define gxc#apply-expression-subst
      (lambda _%args151890151918%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args151890151918%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151955 (list gxc#::basic-xform-expression::t))
            (__tmp151954 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151955
         '(subst)
         __tmp151954
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args151884%_
        (apply make-instance gxc#::expression-subst*::t _%$args151884%_)))
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
      (let ((__tmp151956
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
        (__make-promise __tmp151956)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords151858%_ _%subst151855151859%_ _%stx151861%_)
        (let ((_%subst151864%_
               (if (eq? _%subst151855151859%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst151855151859%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self151866%_
                  (let ((__obj151940
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151940
                       _%subst151864%_
                       '1
                       '#f
                       '#f))
                    __obj151940))
                 (__tmp151957
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151866%_ _%stx151861%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151957
             gxc#current-compile-method
             _%self151866%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords151873%_ . _%args151874%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords151873%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151873%_
                  'subst:
                  absent-value))
               _%args151874%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args151856151880%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args151856151880%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151958 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151958
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args151851%_
        (apply make-instance gxc#::find-expression::t _%$args151851%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151959
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
        (__make-promise __tmp151959)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151961 (list gxc#::find-expression::t))
            (__tmp151960 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151961
         '(ids)
         __tmp151960
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args151847%_
        (apply make-instance gxc#::find-var-refs::t _%$args151847%_)))
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
      (let ((__tmp151962
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
        (__make-promise __tmp151962)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords151821%_ _%ids151818151822%_ _%stx151824%_)
        (let ((_%ids151827%_
               (if (eq? _%ids151818151822%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids151818151822%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self151829%_
                  (let ((__obj151943
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151943
                       _%ids151827%_
                       '1
                       '#f
                       '#f))
                    __obj151943))
                 (__tmp151963
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151829%_ _%stx151824%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151963
             gxc#current-compile-method
             _%self151829%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords151836%_ . _%args151837%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords151836%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151836%_ 'ids: absent-value))
               _%args151837%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args151819151843%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args151819151843%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151965 (list gxc#::collect-expression-refs::t))
            (__tmp151964 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151965
         '()
         __tmp151964
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args151814%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args151814%_)))
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
      (let ((__tmp151966
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
        (__make-promise __tmp151966)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords151788%_ _%table151785151789%_ _%stx151791%_)
        (let ((_%table151794%_
               (if (eq? _%table151785151789%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table151785151789%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self151796%_
                  (let ((__obj151945
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151945
                       _%table151794%_
                       '1
                       '#f
                       '#f))
                    __obj151945))
                 (__tmp151967
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151796%_ _%stx151791%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151967
             gxc#current-compile-method
             _%self151796%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords151803%_ . _%args151804%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords151803%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151803%_
                  'table:
                  absent-value))
               _%args151804%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args151786151810%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args151786151810%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self151714%_ _%stx151715%_)
        (let* ((_%g151717151734%_
                (lambda (_%g151718151731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151718151731%_))))
               (_%g151716151781%_
                (lambda (_%g151718151737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151718151737%_))
                      (let ((_%e151721151739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151718151737%_))))
                        (let ((_%hd151722151742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151721151739%_)))
                              (_%tl151723151744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151721151739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151723151744%_))
                              (let ((_%e151724151747%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151723151744%_))))
                                (let ((_%hd151725151750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151724151747%_)))
                                      (_%tl151726151752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151724151747%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151726151752%_))
                                      (let ((_%e151727151755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151726151752%_))))
                                        (let ((_%hd151728151758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151727151755%_)))
                                              (_%tl151729151760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151727151755%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151729151760%_))
                                              ((lambda (_%L151763%_
                                                        _%L151764%_)
                                                 (let ((_%sym151779%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151764%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym151779%_))
                                                   (let ((__tmp151968
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151968
                                                      _%sym151779%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151714%_
                                                      _%L151763%_))))
                                               _%hd151728151758%_
                                               _%hd151725151750%_)
                                              (_%g151717151734%_
                                               _%g151718151737%_))))
                                      (_%g151717151734%_ _%g151718151737%_))))
                              (_%g151717151734%_ _%g151718151737%_))))
                      (_%g151717151734%_ _%g151718151737%_)))))
          (_%g151716151781%_ _%stx151715%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self151662%_ _%stx151663%_)
        (let* ((_%g151665151678%_
                (lambda (_%g151666151675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151666151675%_))))
               (_%g151664151711%_
                (lambda (_%g151666151681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151666151681%_))
                      (let ((_%e151668151683%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151666151681%_))))
                        (let ((_%hd151669151686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151668151683%_)))
                              (_%tl151670151688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151668151683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151670151688%_))
                              (let ((_%e151671151691%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151670151688%_))))
                                (let ((_%hd151672151694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151671151691%_)))
                                      (_%tl151673151696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151671151691%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151673151696%_))
                                      ((lambda (_%L151699%_)
                                         (if (let ((__tmp151969
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self151662%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L151699%_
                                                __tmp151969))
                                             (let ((__tmp151970
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self151662%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151970
                                                _%stx151663%_))
                                             _%stx151663%_))
                                       _%hd151672151694%_)
                                      (_%g151665151678%_ _%g151666151681%_))))
                              (_%g151665151678%_ _%g151666151681%_))))
                      (_%g151665151678%_ _%g151666151681%_)))))
          (_%g151664151711%_ _%stx151663%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self151602%_ _%stx151603%_)
        (let* ((_%g151605151618%_
                (lambda (_%g151606151615%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151606151615%_))))
               (_%g151604151659%_
                (lambda (_%g151606151621%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151606151621%_))
                      (let ((_%e151608151623%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151606151621%_))))
                        (let ((_%hd151609151626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151608151623%_)))
                              (_%tl151610151628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151608151623%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151610151628%_))
                              (let ((_%e151611151631%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151610151628%_))))
                                (let ((_%hd151612151634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151611151631%_)))
                                      (_%tl151613151636%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151611151631%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151613151636%_))
                                      ((lambda (_%L151639%_)
                                         (let ((_%$e151653%_
                                                (let ((__tmp151972
                                                       (lambda (_%sub151651%_)
                                                         (let ((__tmp151973
                                                                (car _%sub151651%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L151639%_
                                                            __tmp151973))))
                                                      (__tmp151971
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self151602%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151972
                                                          __tmp151971))))
                                           (if _%$e151653%_
                                               ((lambda (_%sub151656%_)
                                                  (let ((__tmp151974
                                                         (cons '%#ref
                                                               (cons (cdr _%sub151656%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151974
                                                     _%stx151603%_)))
                                                _%$e151653%_)
                                               _%stx151603%_)))
                                       _%hd151612151634%_)
                                      (_%g151605151618%_ _%g151606151621%_))))
                              (_%g151605151618%_ _%g151606151621%_))))
                      (_%g151605151618%_ _%g151606151621%_)))))
          (_%g151604151659%_ _%stx151603%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151531%_ _%stx151532%_)
        (let* ((_%g151534151551%_
                (lambda (_%g151535151548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151535151548%_))))
               (_%g151533151599%_
                (lambda (_%g151535151554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151535151554%_))
                      (let ((_%e151538151556%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151535151554%_))))
                        (let ((_%hd151539151559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151538151556%_)))
                              (_%tl151540151561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151538151556%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151540151561%_))
                              (let ((_%e151541151564%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151540151561%_))))
                                (let ((_%hd151542151567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151541151564%_)))
                                      (_%tl151543151569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151541151564%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151543151569%_))
                                      (let ((_%e151544151572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151543151569%_))))
                                        (let ((_%hd151545151575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151544151572%_)))
                                              (_%tl151546151577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151544151572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151546151577%_))
                                              ((lambda (_%L151580%_
                                                        _%L151581%_)
                                                 (let ((_%new-expr151596%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151531%_
                                                           _%L151580%_)))
                                                       (_%new-xid151597%_
                                                        (if (let ((__tmp151975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151531%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151581%_ __tmp151975))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151531%_ 'new-id))
                    _%L151581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151976
                                                          (cons '%#set!
                                                                (cons _%new-xid151597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151596%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151976
                                                      _%stx151532%_))))
                                               _%hd151545151575%_
                                               _%hd151542151567%_)
                                              (_%g151534151551%_
                                               _%g151535151554%_))))
                                      (_%g151534151551%_ _%g151535151554%_))))
                              (_%g151534151551%_ _%g151535151554%_))))
                      (_%g151534151551%_ _%g151535151554%_)))))
          (_%g151533151599%_ _%stx151532%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151454%_ _%stx151455%_)
        (let* ((_%g151457151474%_
                (lambda (_%g151458151471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151458151471%_))))
               (_%g151456151528%_
                (lambda (_%g151458151477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151458151477%_))
                      (let ((_%e151461151479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151458151477%_))))
                        (let ((_%hd151462151482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151461151479%_)))
                              (_%tl151463151484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151461151479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151463151484%_))
                              (let ((_%e151464151487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151463151484%_))))
                                (let ((_%hd151465151490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151464151487%_)))
                                      (_%tl151466151492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151464151487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151466151492%_))
                                      (let ((_%e151467151495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151466151492%_))))
                                        (let ((_%hd151468151498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151467151495%_)))
                                              (_%tl151469151500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151467151495%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151469151500%_))
                                              ((lambda (_%L151503%_
                                                        _%L151504%_)
                                                 (let ((_%new-expr151525%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151454%_
                                                           _%L151503%_)))
                                                       (_%new-xid151526%_
                                                        (let ((_%$e151521%_
                                                               (let ((__tmp151978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151519%_)
                                (let ((__tmp151979 (car _%sub151519%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151504%_
                                   __tmp151979))))
                             (__tmp151977
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151454%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151978 __tmp151977))))
                  (if _%$e151521%_ (cdr _%$e151521%_) _%L151504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151980
                                                          (cons '%#set!
                                                                (cons _%new-xid151526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151525%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151980
                                                      _%stx151455%_))))
                                               _%hd151468151498%_
                                               _%hd151465151490%_)
                                              (_%g151457151474%_
                                               _%g151458151477%_))))
                                      (_%g151457151474%_ _%g151458151477%_))))
                              (_%g151457151474%_ _%g151458151477%_))))
                      (_%g151457151474%_ _%g151458151477%_)))))
          (_%g151456151528%_ _%stx151455%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151400%_ _%stx151401%_)
        (let* ((_%g151403151416%_
                (lambda (_%g151404151413%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151404151413%_))))
               (_%g151402151451%_
                (lambda (_%g151404151419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151404151419%_))
                      (let ((_%e151406151421%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151404151419%_))))
                        (let ((_%hd151407151424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151406151421%_)))
                              (_%tl151408151426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151406151421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151408151426%_))
                              (let ((_%e151409151429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151408151426%_))))
                                (let ((_%hd151410151432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151409151429%_)))
                                      (_%tl151411151434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151409151429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151411151434%_))
                                      ((lambda (_%L151437%_)
                                         (let* ((_%eid151449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151437%_)))
                                                (__tmp151981
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151400%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151981
                                            _%eid151449%_
                                            1+
                                            '0)))
                                       _%hd151410151432%_)
                                      (_%g151403151416%_ _%g151404151419%_))))
                              (_%g151403151416%_ _%g151404151419%_))))
                      (_%g151403151416%_ _%g151404151419%_)))))
          (_%g151402151451%_ _%stx151401%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151330%_ _%stx151331%_)
        (let* ((_%g151333151350%_
                (lambda (_%g151334151347%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151334151347%_))))
               (_%g151332151397%_
                (lambda (_%g151334151353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151334151353%_))
                      (let ((_%e151337151355%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151334151353%_))))
                        (let ((_%hd151338151358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151337151355%_)))
                              (_%tl151339151360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151337151355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151339151360%_))
                              (let ((_%e151340151363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151339151360%_))))
                                (let ((_%hd151341151366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151340151363%_)))
                                      (_%tl151342151368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151340151363%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151342151368%_))
                                      (let ((_%e151343151371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151342151368%_))))
                                        (let ((_%hd151344151374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151343151371%_)))
                                              (_%tl151345151376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151343151371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151345151376%_))
                                              ((lambda (_%L151379%_
                                                        _%L151380%_)
                                                 (let ((_%eid151395%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151380%_))))
                                                   (let ((__tmp151982
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151330%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151982
                                                      _%eid151395%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151330%_
                                                      _%L151379%_))))
                                               _%hd151344151374%_
                                               _%hd151341151366%_)
                                              (_%g151333151350%_
                                               _%g151334151353%_))))
                                      (_%g151333151350%_ _%g151334151353%_))))
                              (_%g151333151350%_ _%g151334151353%_))))
                      (_%g151333151350%_ _%g151334151353%_)))))
          (_%g151332151397%_ _%stx151331%_))))
    (define gxc#find-body%
      (lambda (_%self151243%_ _%stx151244%_)
        (let* ((_%g151246151265%_
                (lambda (_%g151247151262%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151247151262%_))))
               (_%g151245151327%_
                (lambda (_%g151247151268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151247151268%_))
                      (let ((_%e151249151270%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151247151268%_))))
                        (let ((_%hd151250151273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151249151270%_)))
                              (_%tl151251151275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151249151270%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151251151275%_))
                              (let ((_g151983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151251151275%_
                                        '0))))
                                (begin
                                  (let ((_g151984_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151983_)
                                               (##vector-length _g151983_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151984_ 2)))
                                        (error "Context expects 2 values"
                                               _g151984_)))
                                  (let ((_%target151252151278%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151983_ 0)))
                                        (_%tl151254151280%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151983_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151254151280%_))
                                        (letrec ((_%loop151255151283%_
                                                  (lambda (_%hd151253151286%_
                                                           _%expr151259151288%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151253151286%_))
                                                        (let ((_%e151256151291%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151253151286%_))))
                  (let ((_%lp-hd151257151294%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151256151291%_)))
                        (_%lp-tl151258151296%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151256151291%_))))
                    (_%loop151255151283%_
                     _%lp-tl151258151296%_
                     (cons _%lp-hd151257151294%_ _%expr151259151288%_))))
                (let ((_%expr151260151299%_ (reverse _%expr151259151288%_)))
                  ((lambda (_%L151302%_)
                     (let ((__tmp151987
                            (lambda (_%g151315151317%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151243%_
                                 _%g151315151317%_))))
                           (__tmp151985
                            (let ((__tmp151986
                                   (lambda (_%g151319151322%_
                                            _%g151320151324%_)
                                     (cons _%g151319151322%_
                                           _%g151320151324%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151986 '() _%L151302%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151987 __tmp151985)))
                   _%expr151260151299%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151255151283%_
                                           _%target151252151278%_
                                           '()))
                                        (_%g151246151265%_
                                         _%g151247151268%_)))))
                              (_%g151246151265%_ _%g151247151268%_))))
                      (_%g151246151265%_ _%g151247151268%_)))))
          (_%g151245151327%_ _%stx151244%_))))
    (define gxc#find-let-values%
      (lambda (_%self151093%_ _%stx151094%_)
        (let* ((_%g151096151131%_
                (lambda (_%g151097151128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151097151128%_))))
               (_%g151095151240%_
                (lambda (_%g151097151134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151097151134%_))
                      (let ((_%e151101151136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151097151134%_))))
                        (let ((_%hd151102151139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151101151136%_)))
                              (_%tl151103151141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151101151136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151103151141%_))
                              (let ((_%e151104151144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151103151141%_))))
                                (let ((_%hd151105151147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151104151144%_)))
                                      (_%tl151106151149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151104151144%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd151105151147%_))
                                      (let ((_g151988_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd151105151147%_
                                                '0))))
                                        (begin
                                          (let ((_g151989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151988_)
                                                       (##vector-length
                                                        _g151988_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151989_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151989_)))
                                          (let ((_%target151107151152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151988_ 0)))
                                                (_%tl151109151154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151988_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151109151154%_))
                                                (letrec ((_%loop151110151157%_
                                                          (lambda (_%hd151108151160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr151114151162%_
                           _%bind151115151164%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151108151160%_))
                        (let ((_%e151111151167%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151108151160%_))))
                          (let ((_%lp-hd151112151170%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151111151167%_)))
                                (_%lp-tl151113151172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151111151167%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd151112151170%_))
                                (let ((_%e151121151175%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd151112151170%_))))
                                  (let ((_%hd151122151178%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151121151175%_)))
                                        (_%tl151123151180%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151121151175%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151123151180%_))
                                        (let ((_%e151124151183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151123151180%_))))
                                          (let ((_%hd151125151186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151124151183%_)))
                                                (_%tl151126151188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151124151183%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151126151188%_))
                                                (_%loop151110151157%_
                                                 _%lp-tl151113151172%_
                                                 (cons _%hd151125151186%_
                                                       _%expr151114151162%_)
                                                 (cons _%hd151122151178%_
                                                       _%bind151115151164%_))
                                                (_%g151096151131%_
                                                 _%g151097151134%_))))
                                        (_%g151096151131%_
                                         _%g151097151134%_))))
                                (_%g151096151131%_ _%g151097151134%_))))
                        (let ((_%expr151116151191%_
                               (reverse _%expr151114151162%_))
                              (_%bind151117151193%_
                               (reverse _%bind151115151164%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151106151149%_))
                              (let ((_%e151118151196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151106151149%_))))
                                (let ((_%hd151119151199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151118151196%_)))
                                      (_%tl151120151201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151118151196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151120151201%_))
                                      ((lambda (_%L151204%_
                                                _%L151205%_
                                                _%L151206%_)
                                         (let ((_%$e151237%_
                                                (let ((__tmp151992
                                                       (lambda (_%g151225151227%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self151093%_
                                                            _%g151225151227%_))))
                                                      (__tmp151990
                                                       (let ((__tmp151991
                                                              (lambda (_%g151229151232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151230151234%_)
                        (cons _%g151229151232%_ _%g151230151234%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151991 '() _%L151205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151992
                                                   __tmp151990))))
                                           (if _%$e151237%_
                                               _%$e151237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self151093%_
                                                  _%L151204%_)))))
                                       _%hd151119151199%_
                                       _%expr151116151191%_
                                       _%bind151117151193%_)
                                      (_%g151096151131%_ _%g151097151134%_))))
                              (_%g151096151131%_ _%g151097151134%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop151110151157%_
                                                   _%target151107151152%_
                                                   '()
                                                   '()))
                                                (_%g151096151131%_
                                                 _%g151097151134%_)))))
                                      (_%g151096151131%_ _%g151097151134%_))))
                              (_%g151096151131%_ _%g151097151134%_))))
                      (_%g151096151131%_ _%g151097151134%_)))))
          (_%g151095151240%_ _%stx151094%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self151037%_ _%stx151038%_)
        (let* ((_%g151040151053%_
                (lambda (_%g151041151050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151041151050%_))))
               (_%g151039151090%_
                (lambda (_%g151041151056%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151041151056%_))
                      (let ((_%e151043151058%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151041151056%_))))
                        (let ((_%hd151044151061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151043151058%_)))
                              (_%tl151045151063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151043151058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151045151063%_))
                              (let ((_%e151046151066%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151045151063%_))))
                                (let ((_%hd151047151069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151046151066%_)))
                                      (_%tl151048151071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151046151066%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151048151071%_))
                                      ((lambda (_%L151074%_)
                                         (let ((__tmp151994
                                                (lambda (_%g151085151087%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L151074%_
                                                     _%g151085151087%_))))
                                               (__tmp151993
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self151037%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151994 __tmp151993)))
                                       _%hd151047151069%_)
                                      (_%g151040151053%_ _%g151041151056%_))))
                              (_%g151040151053%_ _%g151041151056%_))))
                      (_%g151040151053%_ _%g151041151056%_)))))
          (_%g151039151090%_ _%stx151038%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self150962%_ _%stx150963%_)
        (let* ((_%g150965150982%_
                (lambda (_%g150966150979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150966150979%_))))
               (_%g150964151034%_
                (lambda (_%g150966150985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150966150985%_))
                      (let ((_%e150969150987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150966150985%_))))
                        (let ((_%hd150970150990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150969150987%_)))
                              (_%tl150971150992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150969150987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150971150992%_))
                              (let ((_%e150972150995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150971150992%_))))
                                (let ((_%hd150973150998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150972150995%_)))
                                      (_%tl150974151000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150972150995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150974151000%_))
                                      (let ((_%e150975151003%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150974151000%_))))
                                        (let ((_%hd150976151006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150975151003%_)))
                                              (_%tl150977151008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150975151003%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150977151008%_))
                                              ((lambda (_%L151011%_
                                                        _%L151012%_)
                                                 (let ((_%$e151031%_
                                                        (let ((__tmp151996
                                                               (lambda (_%g151026151028%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L151012%_
                            _%g151026151028%_))))
                      (__tmp151995
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self150962%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151996 __tmp151995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e151031%_
                                                       _%$e151031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self150962%_
                                                          _%L151011%_)))))
                                               _%hd150976151006%_
                                               _%hd150973150998%_)
                                              (_%g150965150982%_
                                               _%g150966150985%_))))
                                      (_%g150965150982%_ _%g150966150985%_))))
                              (_%g150965150982%_ _%g150966150985%_))))
                      (_%g150965150982%_ _%g150966150985%_)))))
          (_%g150964151034%_ _%stx150963%_))))))
