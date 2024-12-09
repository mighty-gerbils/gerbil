(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1733687561)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp153858 (list gxc#::void::t))
            (__tmp153857 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp153858
         '()
         __tmp153857
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args153844%_
        (apply make-instance gxc#::collect-mutators::t _%$args153844%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp153859
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
        (__make-promise __tmp153859)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx153836%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self153839%_
                (let ((__obj153847
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj153847))
               (__tmp153860
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self153839%_ _%stx153836%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp153860
           gxc#current-compile-method
           _%self153839%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp153862 (list gxc#::basic-xform-expression::t))
            (__tmp153861 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp153862
         '(id new-id)
         __tmp153861
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args153833%_
        (apply make-instance gxc#::expression-subst::t _%$args153833%_)))
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
      (let ((__tmp153863
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
        (__make-promise __tmp153863)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords153803%_
               _%id153799153804%_
               _%new-id153800153806%_
               _%stx153808%_)
        (let* ((_%id153811%_
                (if (eq? _%id153799153804%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id153799153804%_))
               (_%new-id153813%_
                (if (eq? _%new-id153800153806%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id153800153806%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self153815%_
                  (let ((__obj153849
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153849
                       _%id153811%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153849
                       _%new-id153813%_
                       '2
                       '#f
                       '#f))
                    __obj153849))
                 (__tmp153864
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153815%_ _%stx153808%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153864
             gxc#current-compile-method
             _%self153815%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords153822%_ . _%args153823%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords153822%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153822%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153822%_
                  'new-id:
                  absent-value))
               _%args153823%_)))
    (define gxc#apply-expression-subst
      (lambda _%args153801153829%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args153801153829%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp153866 (list gxc#::basic-xform-expression::t))
            (__tmp153865 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp153866
         '(subst)
         __tmp153865
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args153795%_
        (apply make-instance gxc#::expression-subst*::t _%$args153795%_)))
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
      (let ((__tmp153867
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
        (__make-promise __tmp153867)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords153769%_ _%subst153766153770%_ _%stx153772%_)
        (let ((_%subst153775%_
               (if (eq? _%subst153766153770%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst153766153770%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self153777%_
                  (let ((__obj153851
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153851
                       _%subst153775%_
                       '1
                       '#f
                       '#f))
                    __obj153851))
                 (__tmp153868
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153777%_ _%stx153772%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153868
             gxc#current-compile-method
             _%self153777%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords153784%_ . _%args153785%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords153784%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153784%_
                  'subst:
                  absent-value))
               _%args153785%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args153767153791%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args153767153791%_)))
    (define gxc#::find-expression::t
      (let ((__tmp153869 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp153869
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args153762%_
        (apply make-instance gxc#::find-expression::t _%$args153762%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp153870
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
        (__make-promise __tmp153870)))
    (define gxc#::find-var-refs::t
      (let ((__tmp153872 (list gxc#::find-expression::t))
            (__tmp153871 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp153872
         '(ids)
         __tmp153871
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args153758%_
        (apply make-instance gxc#::find-var-refs::t _%$args153758%_)))
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
      (let ((__tmp153873
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
        (__make-promise __tmp153873)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords153732%_ _%ids153729153733%_ _%stx153735%_)
        (let ((_%ids153738%_
               (if (eq? _%ids153729153733%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids153729153733%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self153740%_
                  (let ((__obj153854
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153854
                       _%ids153738%_
                       '1
                       '#f
                       '#f))
                    __obj153854))
                 (__tmp153874
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153740%_ _%stx153735%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153874
             gxc#current-compile-method
             _%self153740%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords153747%_ . _%args153748%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords153747%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153747%_ 'ids: absent-value))
               _%args153748%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args153730153754%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args153730153754%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp153876 (list gxc#::collect-expression-refs::t))
            (__tmp153875 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp153876
         '()
         __tmp153875
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args153725%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args153725%_)))
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
      (let ((__tmp153877
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
        (__make-promise __tmp153877)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords153699%_ _%table153696153700%_ _%stx153702%_)
        (let ((_%table153705%_
               (if (eq? _%table153696153700%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table153696153700%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self153707%_
                  (let ((__obj153856
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153856
                       _%table153705%_
                       '1
                       '#f
                       '#f))
                    __obj153856))
                 (__tmp153878
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153707%_ _%stx153702%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153878
             gxc#current-compile-method
             _%self153707%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords153714%_ . _%args153715%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords153714%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153714%_
                  'table:
                  absent-value))
               _%args153715%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args153697153721%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args153697153721%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self153625%_ _%stx153626%_)
        (let* ((_%g153628153645%_
                (lambda (_%g153629153642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153629153642%_))))
               (_%g153627153692%_
                (lambda (_%g153629153648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153629153648%_))
                      (let ((_%e153632153650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153629153648%_))))
                        (let ((_%hd153633153653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153632153650%_)))
                              (_%tl153634153655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153632153650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153634153655%_))
                              (let ((_%e153635153658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153634153655%_))))
                                (let ((_%hd153636153661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153635153658%_)))
                                      (_%tl153637153663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153635153658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153637153663%_))
                                      (let ((_%e153638153666%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153637153663%_))))
                                        (let ((_%hd153639153669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153638153666%_)))
                                              (_%tl153640153671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153638153666%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153640153671%_))
                                              ((lambda (_%L153674%_
                                                        _%L153675%_)
                                                 (let ((_%sym153690%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153675%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym153690%_))
                                                   (let ((__tmp153879
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp153879
                                                      _%sym153690%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153625%_
                                                      _%L153674%_))))
                                               _%hd153639153669%_
                                               _%hd153636153661%_)
                                              (_%g153628153645%_
                                               _%g153629153648%_))))
                                      (_%g153628153645%_ _%g153629153648%_))))
                              (_%g153628153645%_ _%g153629153648%_))))
                      (_%g153628153645%_ _%g153629153648%_)))))
          (_%g153627153692%_ _%stx153626%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self153573%_ _%stx153574%_)
        (let* ((_%g153576153589%_
                (lambda (_%g153577153586%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153577153586%_))))
               (_%g153575153622%_
                (lambda (_%g153577153592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153577153592%_))
                      (let ((_%e153579153594%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153577153592%_))))
                        (let ((_%hd153580153597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153579153594%_)))
                              (_%tl153581153599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153579153594%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153581153599%_))
                              (let ((_%e153582153602%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153581153599%_))))
                                (let ((_%hd153583153605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153582153602%_)))
                                      (_%tl153584153607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153582153602%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153584153607%_))
                                      ((lambda (_%L153610%_)
                                         (if (let ((__tmp153880
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self153573%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L153610%_
                                                __tmp153880))
                                             (let ((__tmp153881
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self153573%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153881
                                                _%stx153574%_))
                                             _%stx153574%_))
                                       _%hd153583153605%_)
                                      (_%g153576153589%_ _%g153577153592%_))))
                              (_%g153576153589%_ _%g153577153592%_))))
                      (_%g153576153589%_ _%g153577153592%_)))))
          (_%g153575153622%_ _%stx153574%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self153513%_ _%stx153514%_)
        (let* ((_%g153516153529%_
                (lambda (_%g153517153526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153517153526%_))))
               (_%g153515153570%_
                (lambda (_%g153517153532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153517153532%_))
                      (let ((_%e153519153534%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153517153532%_))))
                        (let ((_%hd153520153537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153519153534%_)))
                              (_%tl153521153539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153519153534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153521153539%_))
                              (let ((_%e153522153542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153521153539%_))))
                                (let ((_%hd153523153545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153522153542%_)))
                                      (_%tl153524153547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153522153542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153524153547%_))
                                      ((lambda (_%L153550%_)
                                         (let ((_%$e153564%_
                                                (let ((__tmp153883
                                                       (lambda (_%sub153562%_)
                                                         (let ((__tmp153884
                                                                (car _%sub153562%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L153550%_
                                                            __tmp153884))))
                                                      (__tmp153882
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self153513%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp153883
                                                          __tmp153882))))
                                           (if _%$e153564%_
                                               ((lambda (_%sub153567%_)
                                                  (let ((__tmp153885
                                                         (cons '%#ref
                                                               (cons (cdr _%sub153567%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp153885
                                                     _%stx153514%_)))
                                                _%$e153564%_)
                                               _%stx153514%_)))
                                       _%hd153523153545%_)
                                      (_%g153516153529%_ _%g153517153532%_))))
                              (_%g153516153529%_ _%g153517153532%_))))
                      (_%g153516153529%_ _%g153517153532%_)))))
          (_%g153515153570%_ _%stx153514%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self153442%_ _%stx153443%_)
        (let* ((_%g153445153462%_
                (lambda (_%g153446153459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153446153459%_))))
               (_%g153444153510%_
                (lambda (_%g153446153465%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153446153465%_))
                      (let ((_%e153449153467%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153446153465%_))))
                        (let ((_%hd153450153470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153449153467%_)))
                              (_%tl153451153472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153449153467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153451153472%_))
                              (let ((_%e153452153475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153451153472%_))))
                                (let ((_%hd153453153478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153452153475%_)))
                                      (_%tl153454153480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153452153475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153454153480%_))
                                      (let ((_%e153455153483%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153454153480%_))))
                                        (let ((_%hd153456153486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153455153483%_)))
                                              (_%tl153457153488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153455153483%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153457153488%_))
                                              ((lambda (_%L153491%_
                                                        _%L153492%_)
                                                 (let ((_%new-expr153507%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153442%_
                                                           _%L153491%_)))
                                                       (_%new-xid153508%_
                                                        (if (let ((__tmp153886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self153442%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L153492%_ __tmp153886))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self153442%_ 'new-id))
                    _%L153492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153887
                                                          (cons '%#set!
                                                                (cons _%new-xid153508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153507%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153887
                                                      _%stx153443%_))))
                                               _%hd153456153486%_
                                               _%hd153453153478%_)
                                              (_%g153445153462%_
                                               _%g153446153465%_))))
                                      (_%g153445153462%_ _%g153446153465%_))))
                              (_%g153445153462%_ _%g153446153465%_))))
                      (_%g153445153462%_ _%g153446153465%_)))))
          (_%g153444153510%_ _%stx153443%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self153365%_ _%stx153366%_)
        (let* ((_%g153368153385%_
                (lambda (_%g153369153382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153369153382%_))))
               (_%g153367153439%_
                (lambda (_%g153369153388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153369153388%_))
                      (let ((_%e153372153390%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153369153388%_))))
                        (let ((_%hd153373153393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153372153390%_)))
                              (_%tl153374153395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153372153390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153374153395%_))
                              (let ((_%e153375153398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153374153395%_))))
                                (let ((_%hd153376153401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153375153398%_)))
                                      (_%tl153377153403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153375153398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153377153403%_))
                                      (let ((_%e153378153406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153377153403%_))))
                                        (let ((_%hd153379153409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153378153406%_)))
                                              (_%tl153380153411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153378153406%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153380153411%_))
                                              ((lambda (_%L153414%_
                                                        _%L153415%_)
                                                 (let ((_%new-expr153436%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153365%_
                                                           _%L153414%_)))
                                                       (_%new-xid153437%_
                                                        (let ((_%$e153432%_
                                                               (let ((__tmp153889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub153430%_)
                                (let ((__tmp153890 (car _%sub153430%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L153415%_
                                   __tmp153890))))
                             (__tmp153888
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self153365%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp153889 __tmp153888))))
                  (if _%$e153432%_ (cdr _%$e153432%_) _%L153415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153891
                                                          (cons '%#set!
                                                                (cons _%new-xid153437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153436%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153891
                                                      _%stx153366%_))))
                                               _%hd153379153409%_
                                               _%hd153376153401%_)
                                              (_%g153368153385%_
                                               _%g153369153388%_))))
                                      (_%g153368153385%_ _%g153369153388%_))))
                              (_%g153368153385%_ _%g153369153388%_))))
                      (_%g153368153385%_ _%g153369153388%_)))))
          (_%g153367153439%_ _%stx153366%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self153311%_ _%stx153312%_)
        (let* ((_%g153314153327%_
                (lambda (_%g153315153324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153315153324%_))))
               (_%g153313153362%_
                (lambda (_%g153315153330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153315153330%_))
                      (let ((_%e153317153332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153315153330%_))))
                        (let ((_%hd153318153335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153317153332%_)))
                              (_%tl153319153337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153317153332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153319153337%_))
                              (let ((_%e153320153340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153319153337%_))))
                                (let ((_%hd153321153343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153320153340%_)))
                                      (_%tl153322153345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153320153340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153322153345%_))
                                      ((lambda (_%L153348%_)
                                         (let* ((_%eid153360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L153348%_)))
                                                (__tmp153892
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self153311%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp153892
                                            _%eid153360%_
                                            1+
                                            '0)))
                                       _%hd153321153343%_)
                                      (_%g153314153327%_ _%g153315153330%_))))
                              (_%g153314153327%_ _%g153315153330%_))))
                      (_%g153314153327%_ _%g153315153330%_)))))
          (_%g153313153362%_ _%stx153312%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self153241%_ _%stx153242%_)
        (let* ((_%g153244153261%_
                (lambda (_%g153245153258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153245153258%_))))
               (_%g153243153308%_
                (lambda (_%g153245153264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153245153264%_))
                      (let ((_%e153248153266%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153245153264%_))))
                        (let ((_%hd153249153269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153248153266%_)))
                              (_%tl153250153271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153248153266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153250153271%_))
                              (let ((_%e153251153274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153250153271%_))))
                                (let ((_%hd153252153277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153251153274%_)))
                                      (_%tl153253153279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153251153274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153253153279%_))
                                      (let ((_%e153254153282%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153253153279%_))))
                                        (let ((_%hd153255153285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153254153282%_)))
                                              (_%tl153256153287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153254153282%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153256153287%_))
                                              ((lambda (_%L153290%_
                                                        _%L153291%_)
                                                 (let ((_%eid153306%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153291%_))))
                                                   (let ((__tmp153893
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self153241%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp153893
                                                      _%eid153306%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153241%_
                                                      _%L153290%_))))
                                               _%hd153255153285%_
                                               _%hd153252153277%_)
                                              (_%g153244153261%_
                                               _%g153245153264%_))))
                                      (_%g153244153261%_ _%g153245153264%_))))
                              (_%g153244153261%_ _%g153245153264%_))))
                      (_%g153244153261%_ _%g153245153264%_)))))
          (_%g153243153308%_ _%stx153242%_))))
    (define gxc#find-body%
      (lambda (_%self153154%_ _%stx153155%_)
        (let* ((_%g153157153176%_
                (lambda (_%g153158153173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153158153173%_))))
               (_%g153156153238%_
                (lambda (_%g153158153179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153158153179%_))
                      (let ((_%e153160153181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153158153179%_))))
                        (let ((_%hd153161153184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153160153181%_)))
                              (_%tl153162153186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153160153181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl153162153186%_))
                              (let ((_g153894_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl153162153186%_
                                        '0))))
                                (begin
                                  (let ((_g153895_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g153894_)
                                               (##vector-length _g153894_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g153895_ 2)))
                                        (error "Context expects 2 values"
                                               _g153895_)))
                                  (let ((_%target153163153189%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g153894_ 0)))
                                        (_%tl153165153191%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g153894_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl153165153191%_))
                                        (letrec ((_%loop153166153194%_
                                                  (lambda (_%hd153164153197%_
                                                           _%expr153170153199%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd153164153197%_))
                                                        (let ((_%e153167153202%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd153164153197%_))))
                  (let ((_%lp-hd153168153205%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153167153202%_)))
                        (_%lp-tl153169153207%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153167153202%_))))
                    (_%loop153166153194%_
                     _%lp-tl153169153207%_
                     (cons _%lp-hd153168153205%_ _%expr153170153199%_))))
                (let ((_%expr153171153210%_ (reverse _%expr153170153199%_)))
                  ((lambda (_%L153213%_)
                     (let ((__tmp153898
                            (lambda (_%g153226153228%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self153154%_
                                 _%g153226153228%_))))
                           (__tmp153896
                            (let ((__tmp153897
                                   (lambda (_%g153230153233%_
                                            _%g153231153235%_)
                                     (cons _%g153230153233%_
                                           _%g153231153235%_))))
                              (declare (not safe))
                              (__foldr1 __tmp153897 '() _%L153213%_))))
                       (declare (not safe))
                       (__ormap1 __tmp153898 __tmp153896)))
                   _%expr153171153210%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop153166153194%_
                                           _%target153163153189%_
                                           '()))
                                        (_%g153157153176%_
                                         _%g153158153179%_)))))
                              (_%g153157153176%_ _%g153158153179%_))))
                      (_%g153157153176%_ _%g153158153179%_)))))
          (_%g153156153238%_ _%stx153155%_))))
    (define gxc#find-let-values%
      (lambda (_%self153004%_ _%stx153005%_)
        (let* ((_%g153007153042%_
                (lambda (_%g153008153039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153008153039%_))))
               (_%g153006153151%_
                (lambda (_%g153008153045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153008153045%_))
                      (let ((_%e153012153047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153008153045%_))))
                        (let ((_%hd153013153050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153012153047%_)))
                              (_%tl153014153052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153012153047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153014153052%_))
                              (let ((_%e153015153055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153014153052%_))))
                                (let ((_%hd153016153058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153015153055%_)))
                                      (_%tl153017153060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153015153055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153016153058%_))
                                      (let ((_g153899_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd153016153058%_
                                                '0))))
                                        (begin
                                          (let ((_g153900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g153899_)
                                                       (##vector-length
                                                        _g153899_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g153900_ 2)))
                                                (error "Context expects 2 values"
                                                       _g153900_)))
                                          (let ((_%target153018153063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g153899_ 0)))
                                                (_%tl153020153065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g153899_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153020153065%_))
                                                (letrec ((_%loop153021153068%_
                                                          (lambda (_%hd153019153071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr153025153073%_
                           _%bind153026153075%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153019153071%_))
                        (let ((_%e153022153078%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153019153071%_))))
                          (let ((_%lp-hd153023153081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153022153078%_)))
                                (_%lp-tl153024153083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153022153078%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd153023153081%_))
                                (let ((_%e153032153086%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd153023153081%_))))
                                  (let ((_%hd153033153089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e153032153086%_)))
                                        (_%tl153034153091%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e153032153086%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153034153091%_))
                                        (let ((_%e153035153094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153034153091%_))))
                                          (let ((_%hd153036153097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153035153094%_)))
                                                (_%tl153037153099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153035153094%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153037153099%_))
                                                (_%loop153021153068%_
                                                 _%lp-tl153024153083%_
                                                 (cons _%hd153036153097%_
                                                       _%expr153025153073%_)
                                                 (cons _%hd153033153089%_
                                                       _%bind153026153075%_))
                                                (_%g153007153042%_
                                                 _%g153008153045%_))))
                                        (_%g153007153042%_
                                         _%g153008153045%_))))
                                (_%g153007153042%_ _%g153008153045%_))))
                        (let ((_%expr153027153102%_
                               (reverse _%expr153025153073%_))
                              (_%bind153028153104%_
                               (reverse _%bind153026153075%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153017153060%_))
                              (let ((_%e153029153107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153017153060%_))))
                                (let ((_%hd153030153110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153029153107%_)))
                                      (_%tl153031153112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153029153107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153031153112%_))
                                      ((lambda (_%L153115%_
                                                _%L153116%_
                                                _%L153117%_)
                                         (let ((_%$e153148%_
                                                (let ((__tmp153903
                                                       (lambda (_%g153136153138%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self153004%_
                                                            _%g153136153138%_))))
                                                      (__tmp153901
                                                       (let ((__tmp153902
                                                              (lambda (_%g153140153143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g153141153145%_)
                        (cons _%g153140153143%_ _%g153141153145%_))))
                 (declare (not safe))
                 (__foldr1 __tmp153902 '() _%L153116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp153903
                                                   __tmp153901))))
                                           (if _%$e153148%_
                                               _%$e153148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153004%_
                                                  _%L153115%_)))))
                                       _%hd153030153110%_
                                       _%expr153027153102%_
                                       _%bind153028153104%_)
                                      (_%g153007153042%_ _%g153008153045%_))))
                              (_%g153007153042%_ _%g153008153045%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop153021153068%_
                                                   _%target153018153063%_
                                                   '()
                                                   '()))
                                                (_%g153007153042%_
                                                 _%g153008153045%_)))))
                                      (_%g153007153042%_ _%g153008153045%_))))
                              (_%g153007153042%_ _%g153008153045%_))))
                      (_%g153007153042%_ _%g153008153045%_)))))
          (_%g153006153151%_ _%stx153005%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self152948%_ _%stx152949%_)
        (let* ((_%g152951152964%_
                (lambda (_%g152952152961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152952152961%_))))
               (_%g152950153001%_
                (lambda (_%g152952152967%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152952152967%_))
                      (let ((_%e152954152969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152952152967%_))))
                        (let ((_%hd152955152972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152954152969%_)))
                              (_%tl152956152974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152954152969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152956152974%_))
                              (let ((_%e152957152977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152956152974%_))))
                                (let ((_%hd152958152980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152957152977%_)))
                                      (_%tl152959152982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152957152977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152959152982%_))
                                      ((lambda (_%L152985%_)
                                         (let ((__tmp153905
                                                (lambda (_%g152996152998%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L152985%_
                                                     _%g152996152998%_))))
                                               (__tmp153904
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self152948%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp153905 __tmp153904)))
                                       _%hd152958152980%_)
                                      (_%g152951152964%_ _%g152952152967%_))))
                              (_%g152951152964%_ _%g152952152967%_))))
                      (_%g152951152964%_ _%g152952152967%_)))))
          (_%g152950153001%_ _%stx152949%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self152873%_ _%stx152874%_)
        (let* ((_%g152876152893%_
                (lambda (_%g152877152890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152877152890%_))))
               (_%g152875152945%_
                (lambda (_%g152877152896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152877152896%_))
                      (let ((_%e152880152898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152877152896%_))))
                        (let ((_%hd152881152901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152880152898%_)))
                              (_%tl152882152903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152880152898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152882152903%_))
                              (let ((_%e152883152906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152882152903%_))))
                                (let ((_%hd152884152909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152883152906%_)))
                                      (_%tl152885152911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152883152906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152885152911%_))
                                      (let ((_%e152886152914%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152885152911%_))))
                                        (let ((_%hd152887152917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152886152914%_)))
                                              (_%tl152888152919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152886152914%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152888152919%_))
                                              ((lambda (_%L152922%_
                                                        _%L152923%_)
                                                 (let ((_%$e152942%_
                                                        (let ((__tmp153907
                                                               (lambda (_%g152937152939%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L152923%_
                            _%g152937152939%_))))
                      (__tmp153906
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self152873%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp153907 __tmp153906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e152942%_
                                                       _%$e152942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self152873%_
                                                          _%L152922%_)))))
                                               _%hd152887152917%_
                                               _%hd152884152909%_)
                                              (_%g152876152893%_
                                               _%g152877152896%_))))
                                      (_%g152876152893%_ _%g152877152896%_))))
                              (_%g152876152893%_ _%g152877152896%_))))
                      (_%g152876152893%_ _%g152877152896%_)))))
          (_%g152875152945%_ _%stx152874%_))))))
