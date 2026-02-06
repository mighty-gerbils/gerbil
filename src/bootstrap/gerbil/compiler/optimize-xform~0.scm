(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770338924)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp177735 (list gxc#::void::t))
            (__tmp177734 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp177735
         '()
         __tmp177734
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args177721%_
        (apply make-instance gxc#::collect-mutators::t _%$args177721%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp177736
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
        (__make-atomic-promise __tmp177736)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx177713%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self177716%_
                (let ((__obj177724
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj177724))
               (__tmp177737
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177716%_ _%stx177713%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp177737
           gxc#current-compile-method
           _%self177716%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp177739 (list gxc#::basic-xform-expression::t))
            (__tmp177738 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp177739
         '(id new-id)
         __tmp177738
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args177710%_
        (apply make-instance gxc#::expression-subst::t _%$args177710%_)))
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
      (let ((__tmp177740
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
        (__make-atomic-promise __tmp177740)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords177682%_
               _%id177678177683%_
               _%new-id177679177684%_
               _%stx177685%_)
        (let* ((_%id177688%_
                (if (eq? _%id177678177683%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id177678177683%_))
               (_%new-id177690%_
                (if (eq? _%new-id177679177684%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id177679177684%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self177692%_
                  (let ((__obj177726
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177726
                       _%id177688%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177726
                       _%new-id177690%_
                       '2
                       '#f
                       '#f))
                    __obj177726))
                 (__tmp177741
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177692%_ _%stx177685%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177741
             gxc#current-compile-method
             _%self177692%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords177699%_ . _%args177700%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords177699%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177699%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177699%_
                  'new-id:
                  absent-value))
               _%args177700%_)))
    (define gxc#apply-expression-subst
      (lambda _%args177680177706%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args177680177706%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp177743 (list gxc#::basic-xform-expression::t))
            (__tmp177742 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp177743
         '(subst)
         __tmp177742
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args177674%_
        (apply make-instance gxc#::expression-subst*::t _%$args177674%_)))
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
      (let ((__tmp177744
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
        (__make-atomic-promise __tmp177744)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords177649%_ _%subst177646177650%_ _%stx177651%_)
        (let ((_%subst177654%_
               (if (eq? _%subst177646177650%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst177646177650%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self177656%_
                  (let ((__obj177728
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177728
                       _%subst177654%_
                       '1
                       '#f
                       '#f))
                    __obj177728))
                 (__tmp177745
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177656%_ _%stx177651%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177745
             gxc#current-compile-method
             _%self177656%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords177663%_ . _%args177664%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords177663%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177663%_
                  'subst:
                  absent-value))
               _%args177664%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args177647177670%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args177647177670%_)))
    (define gxc#::find-expression::t
      (let ((__tmp177746 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp177746
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args177642%_
        (apply make-instance gxc#::find-expression::t _%$args177642%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp177747
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
        (__make-atomic-promise __tmp177747)))
    (define gxc#::find-var-refs::t
      (let ((__tmp177749 (list gxc#::find-expression::t))
            (__tmp177748 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp177749
         '(ids)
         __tmp177748
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args177638%_
        (apply make-instance gxc#::find-var-refs::t _%$args177638%_)))
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
      (let ((__tmp177750
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
        (__make-atomic-promise __tmp177750)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords177613%_ _%ids177610177614%_ _%stx177615%_)
        (let ((_%ids177618%_
               (if (eq? _%ids177610177614%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids177610177614%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self177620%_
                  (let ((__obj177731
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177731
                       _%ids177618%_
                       '1
                       '#f
                       '#f))
                    __obj177731))
                 (__tmp177751
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177620%_ _%stx177615%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177751
             gxc#current-compile-method
             _%self177620%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords177627%_ . _%args177628%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords177627%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177627%_ 'ids: absent-value))
               _%args177628%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args177611177634%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args177611177634%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp177753 (list gxc#::collect-expression-refs::t))
            (__tmp177752 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp177753
         '()
         __tmp177752
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args177606%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args177606%_)))
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
      (let ((__tmp177754
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
        (__make-atomic-promise __tmp177754)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords177581%_ _%table177578177582%_ _%stx177583%_)
        (let ((_%table177586%_
               (if (eq? _%table177578177582%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table177578177582%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self177588%_
                  (let ((__obj177733
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177733
                       _%table177586%_
                       '1
                       '#f
                       '#f))
                    __obj177733))
                 (__tmp177755
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177588%_ _%stx177583%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177755
             gxc#current-compile-method
             _%self177588%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords177595%_ . _%args177596%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords177595%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177595%_
                  'table:
                  absent-value))
               _%args177596%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args177579177602%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args177579177602%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self177507%_ _%stx177508%_)
        (let* ((_%g177510177527%_
                (lambda (_%g177511177524%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177511177524%_))))
               (_%g177509177574%_
                (lambda (_%g177511177530%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177511177530%_))
                      (let ((_%e177514177532%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177511177530%_))))
                        (let ((_%hd177515177535%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177514177532%_)))
                              (_%tl177516177537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177514177532%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177516177537%_))
                              (let ((_%e177517177540%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177516177537%_))))
                                (let ((_%hd177518177543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177517177540%_)))
                                      (_%tl177519177545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177517177540%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177519177545%_))
                                      (let ((_%e177520177548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177519177545%_))))
                                        (let ((_%hd177521177551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177520177548%_)))
                                              (_%tl177522177553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177520177548%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177522177553%_))
                                              ((lambda (_%g177512177556%_
                                                        _%g177513177557%_)
                                                 (let ((_%sym177572%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177513177557%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym177572%_))
                                                   (let ((__tmp177756
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp177756
                                                      _%sym177572%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177507%_
                                                      _%g177512177556%_))))
                                               _%hd177521177551%_
                                               _%hd177518177543%_)
                                              (_%g177510177527%_
                                               _%g177511177530%_))))
                                      (_%g177510177527%_ _%g177511177530%_))))
                              (_%g177510177527%_ _%g177511177530%_))))
                      (_%g177510177527%_ _%g177511177530%_)))))
          (_%g177509177574%_ _%stx177508%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self177455%_ _%stx177456%_)
        (let* ((_%g177458177471%_
                (lambda (_%g177459177468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177459177468%_))))
               (_%g177457177504%_
                (lambda (_%g177459177474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177459177474%_))
                      (let ((_%e177461177476%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177459177474%_))))
                        (let ((_%hd177462177479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177461177476%_)))
                              (_%tl177463177481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177461177476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177463177481%_))
                              (let ((_%e177464177484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177463177481%_))))
                                (let ((_%hd177465177487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177464177484%_)))
                                      (_%tl177466177489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177464177484%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177466177489%_))
                                      ((lambda (_%g177460177492%_)
                                         (if (let ((__tmp177757
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self177455%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g177460177492%_
                                                __tmp177757))
                                             (let ((__tmp177758
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self177455%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177758
                                                _%stx177456%_))
                                             _%stx177456%_))
                                       _%hd177465177487%_)
                                      (_%g177458177471%_ _%g177459177474%_))))
                              (_%g177458177471%_ _%g177459177474%_))))
                      (_%g177458177471%_ _%g177459177474%_)))))
          (_%g177457177504%_ _%stx177456%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self177395%_ _%stx177396%_)
        (let* ((_%g177398177411%_
                (lambda (_%g177399177408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177399177408%_))))
               (_%g177397177452%_
                (lambda (_%g177399177414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177399177414%_))
                      (let ((_%e177401177416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177399177414%_))))
                        (let ((_%hd177402177419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177401177416%_)))
                              (_%tl177403177421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177401177416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177403177421%_))
                              (let ((_%e177404177424%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177403177421%_))))
                                (let ((_%hd177405177427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177404177424%_)))
                                      (_%tl177406177429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177404177424%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177406177429%_))
                                      ((lambda (_%g177400177432%_)
                                         (let ((_%$e177446%_
                                                (let ((__tmp177760
                                                       (lambda (_%sub177444%_)
                                                         (let ((__tmp177761
                                                                (car _%sub177444%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g177400177432%_
                                                            __tmp177761))))
                                                      (__tmp177759
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self177395%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp177760
                                                          __tmp177759))))
                                           (if _%$e177446%_
                                               ((lambda (_%sub177449%_)
                                                  (let ((__tmp177762
                                                         (cons '%#ref
                                                               (cons (cdr _%sub177449%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp177762
                                                     _%stx177396%_)))
                                                _%$e177446%_)
                                               _%stx177396%_)))
                                       _%hd177405177427%_)
                                      (_%g177398177411%_ _%g177399177414%_))))
                              (_%g177398177411%_ _%g177399177414%_))))
                      (_%g177398177411%_ _%g177399177414%_)))))
          (_%g177397177452%_ _%stx177396%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self177324%_ _%stx177325%_)
        (let* ((_%g177327177344%_
                (lambda (_%g177328177341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177328177341%_))))
               (_%g177326177392%_
                (lambda (_%g177328177347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177328177347%_))
                      (let ((_%e177331177349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177328177347%_))))
                        (let ((_%hd177332177352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177331177349%_)))
                              (_%tl177333177354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177331177349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177333177354%_))
                              (let ((_%e177334177357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177333177354%_))))
                                (let ((_%hd177335177360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177334177357%_)))
                                      (_%tl177336177362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177334177357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177336177362%_))
                                      (let ((_%e177337177365%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177336177362%_))))
                                        (let ((_%hd177338177368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177337177365%_)))
                                              (_%tl177339177370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177337177365%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177339177370%_))
                                              ((lambda (_%g177329177373%_
                                                        _%g177330177374%_)
                                                 (let ((_%new-expr177389%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177324%_
                                                           _%g177329177373%_)))
                                                       (_%new-xid177390%_
                                                        (if (let ((__tmp177763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self177324%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g177330177374%_ __tmp177763))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self177324%_ 'new-id))
                    _%g177330177374%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177764
                                                          (cons '%#set!
                                                                (cons _%new-xid177390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177389%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177764
                                                      _%stx177325%_))))
                                               _%hd177338177368%_
                                               _%hd177335177360%_)
                                              (_%g177327177344%_
                                               _%g177328177347%_))))
                                      (_%g177327177344%_ _%g177328177347%_))))
                              (_%g177327177344%_ _%g177328177347%_))))
                      (_%g177327177344%_ _%g177328177347%_)))))
          (_%g177326177392%_ _%stx177325%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self177247%_ _%stx177248%_)
        (let* ((_%g177250177267%_
                (lambda (_%g177251177264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177251177264%_))))
               (_%g177249177321%_
                (lambda (_%g177251177270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177251177270%_))
                      (let ((_%e177254177272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177251177270%_))))
                        (let ((_%hd177255177275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177254177272%_)))
                              (_%tl177256177277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177254177272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177256177277%_))
                              (let ((_%e177257177280%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177256177277%_))))
                                (let ((_%hd177258177283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177257177280%_)))
                                      (_%tl177259177285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177257177280%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177259177285%_))
                                      (let ((_%e177260177288%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177259177285%_))))
                                        (let ((_%hd177261177291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177260177288%_)))
                                              (_%tl177262177293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177260177288%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177262177293%_))
                                              ((lambda (_%g177252177296%_
                                                        _%g177253177297%_)
                                                 (let ((_%new-expr177318%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177247%_
                                                           _%g177252177296%_)))
                                                       (_%new-xid177319%_
                                                        (let ((_%$e177314%_
                                                               (let ((__tmp177766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub177312%_)
                                (let ((__tmp177767 (car _%sub177312%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g177253177297%_
                                   __tmp177767))))
                             (__tmp177765
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self177247%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp177766 __tmp177765))))
                  (if _%$e177314%_ (cdr _%$e177314%_) _%g177253177297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177768
                                                          (cons '%#set!
                                                                (cons _%new-xid177319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177318%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177768
                                                      _%stx177248%_))))
                                               _%hd177261177291%_
                                               _%hd177258177283%_)
                                              (_%g177250177267%_
                                               _%g177251177270%_))))
                                      (_%g177250177267%_ _%g177251177270%_))))
                              (_%g177250177267%_ _%g177251177270%_))))
                      (_%g177250177267%_ _%g177251177270%_)))))
          (_%g177249177321%_ _%stx177248%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self177193%_ _%stx177194%_)
        (let* ((_%g177196177209%_
                (lambda (_%g177197177206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177197177206%_))))
               (_%g177195177244%_
                (lambda (_%g177197177212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177197177212%_))
                      (let ((_%e177199177214%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177197177212%_))))
                        (let ((_%hd177200177217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177199177214%_)))
                              (_%tl177201177219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177199177214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177201177219%_))
                              (let ((_%e177202177222%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177201177219%_))))
                                (let ((_%hd177203177225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177202177222%_)))
                                      (_%tl177204177227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177202177222%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177204177227%_))
                                      ((lambda (_%g177198177230%_)
                                         (let* ((_%eid177242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g177198177230%_)))
                                                (__tmp177769
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self177193%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp177769
                                            _%eid177242%_
                                            1+
                                            '0)))
                                       _%hd177203177225%_)
                                      (_%g177196177209%_ _%g177197177212%_))))
                              (_%g177196177209%_ _%g177197177212%_))))
                      (_%g177196177209%_ _%g177197177212%_)))))
          (_%g177195177244%_ _%stx177194%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self177123%_ _%stx177124%_)
        (let* ((_%g177126177143%_
                (lambda (_%g177127177140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177127177140%_))))
               (_%g177125177190%_
                (lambda (_%g177127177146%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177127177146%_))
                      (let ((_%e177130177148%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177127177146%_))))
                        (let ((_%hd177131177151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177130177148%_)))
                              (_%tl177132177153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177130177148%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177132177153%_))
                              (let ((_%e177133177156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177132177153%_))))
                                (let ((_%hd177134177159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177133177156%_)))
                                      (_%tl177135177161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177133177156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177135177161%_))
                                      (let ((_%e177136177164%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177135177161%_))))
                                        (let ((_%hd177137177167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177136177164%_)))
                                              (_%tl177138177169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177136177164%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177138177169%_))
                                              ((lambda (_%g177128177172%_
                                                        _%g177129177173%_)
                                                 (let ((_%eid177188%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177129177173%_))))
                                                   (let ((__tmp177770
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self177123%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp177770
                                                      _%eid177188%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177123%_
                                                      _%g177128177172%_))))
                                               _%hd177137177167%_
                                               _%hd177134177159%_)
                                              (_%g177126177143%_
                                               _%g177127177146%_))))
                                      (_%g177126177143%_ _%g177127177146%_))))
                              (_%g177126177143%_ _%g177127177146%_))))
                      (_%g177126177143%_ _%g177127177146%_)))))
          (_%g177125177190%_ _%stx177124%_))))
    (define gxc#find-body%
      (lambda (_%self177038%_ _%stx177039%_)
        (let* ((_%g177041177060%_
                (lambda (_%g177042177057%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177042177057%_))))
               (_%g177040177120%_
                (lambda (_%g177042177063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177042177063%_))
                      (let ((_%e177044177065%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177042177063%_))))
                        (let ((_%hd177045177068%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177044177065%_)))
                              (_%tl177046177070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177044177065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl177046177070%_))
                              (let ((_g177771_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl177046177070%_
                                        '0))))
                                (begin
                                  (let ((_g177772_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g177771_)
                                               (##values-length _g177771_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g177772_ 2)))
                                        (error "Context expects 2 values"
                                               _g177772_)))
                                  (let ((_%target177047177073%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177771_ 0)))
                                        (_%tl177049177075%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177771_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl177049177075%_))
                                        (letrec ((_%loop177050177078%_
                                                  (lambda (_%hd177048177081%_
                                                           _%expr177054177083%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd177048177081%_))
                                                        (let ((_%e177051177085%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd177048177081%_))))
                  (let ((_%lp-hd177052177088%_
                         (let ()
                           (declare (not safe))
                           (##car _%e177051177085%_)))
                        (_%lp-tl177053177090%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e177051177085%_))))
                    (_%loop177050177078%_
                     _%lp-tl177053177090%_
                     (cons _%lp-hd177052177088%_ _%expr177054177083%_))))
                (let ((_%expr177055177093%_ (reverse _%expr177054177083%_)))
                  ((lambda (_%g177043177095%_)
                     (let ((__tmp177775
                            (lambda (_%g177108177110%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self177038%_
                                 _%g177108177110%_))))
                           (__tmp177773
                            (let ((__tmp177774
                                   (lambda (_%g177112177115%_
                                            _%g177113177117%_)
                                     (cons _%g177112177115%_
                                           _%g177113177117%_))))
                              (declare (not safe))
                              (__foldr1 __tmp177774 '() _%g177043177095%_))))
                       (declare (not safe))
                       (__ormap1 __tmp177775 __tmp177773)))
                   _%expr177055177093%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop177050177078%_
                                           _%target177047177073%_
                                           '()))
                                        (_%g177041177060%_
                                         _%g177042177063%_)))))
                              (_%g177041177060%_ _%g177042177063%_))))
                      (_%g177041177060%_ _%g177042177063%_)))))
          (_%g177040177120%_ _%stx177039%_))))
    (define gxc#find-let-values%
      (lambda (_%self176892%_ _%stx176893%_)
        (let* ((_%g176895176930%_
                (lambda (_%g176896176927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176896176927%_))))
               (_%g176894177035%_
                (lambda (_%g176896176933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176896176933%_))
                      (let ((_%e176900176935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176896176933%_))))
                        (let ((_%hd176901176938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176900176935%_)))
                              (_%tl176902176940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176900176935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176902176940%_))
                              (let ((_%e176903176943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176902176940%_))))
                                (let ((_%hd176904176946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176903176943%_)))
                                      (_%tl176905176948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176903176943%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd176904176946%_))
                                      (let ((_g177776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd176904176946%_
                                                '0))))
                                        (begin
                                          (let ((_g177777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g177776_)
                                                       (##values-length
                                                        _g177776_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g177777_ 2)))
                                                (error "Context expects 2 values"
                                                       _g177777_)))
                                          (let ((_%target176906176951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g177776_ 0)))
                                                (_%tl176908176953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g177776_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176908176953%_))
                                                (letrec ((_%loop176909176956%_
                                                          (lambda (_%hd176907176959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr176913176961%_
                           _%bind176914176962%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd176907176959%_))
                        (let ((_%e176910176964%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd176907176959%_))))
                          (let ((_%lp-hd176911176967%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176910176964%_)))
                                (_%lp-tl176912176969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176910176964%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd176911176967%_))
                                (let ((_%e176917176972%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd176911176967%_))))
                                  (let ((_%hd176918176975%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176917176972%_)))
                                        (_%tl176919176977%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176917176972%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176919176977%_))
                                        (let ((_%e176920176980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176919176977%_))))
                                          (let ((_%hd176921176983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176920176980%_)))
                                                (_%tl176922176985%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176920176980%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176922176985%_))
                                                (_%loop176909176956%_
                                                 _%lp-tl176912176969%_
                                                 (cons _%hd176921176983%_
                                                       _%expr176913176961%_)
                                                 (cons _%hd176918176975%_
                                                       _%bind176914176962%_))
                                                (_%g176895176930%_
                                                 _%g176896176933%_))))
                                        (_%g176895176930%_
                                         _%g176896176933%_))))
                                (_%g176895176930%_ _%g176896176933%_))))
                        (let ((_%expr176915176988%_
                               (reverse _%expr176913176961%_))
                              (_%bind176916176989%_
                               (reverse _%bind176914176962%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176905176948%_))
                              (let ((_%e176923176991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176905176948%_))))
                                (let ((_%hd176924176994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176923176991%_)))
                                      (_%tl176925176996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176923176991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176925176996%_))
                                      ((lambda (_%g176897176999%_
                                                _%g176898177000%_
                                                _%g176899177001%_)
                                         (let ((_%$e177032%_
                                                (let ((__tmp177780
                                                       (lambda (_%g177020177022%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self176892%_
                                                            _%g177020177022%_))))
                                                      (__tmp177778
                                                       (let ((__tmp177779
                                                              (lambda (_%g177024177027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g177025177029%_)
                        (cons _%g177024177027%_ _%g177025177029%_))))
                 (declare (not safe))
                 (__foldr1 __tmp177779 '() _%g176898177000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp177780
                                                   __tmp177778))))
                                           (if _%$e177032%_
                                               _%$e177032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self176892%_
                                                  _%g176897176999%_)))))
                                       _%hd176924176994%_
                                       _%expr176915176988%_
                                       _%bind176916176989%_)
                                      (_%g176895176930%_ _%g176896176933%_))))
                              (_%g176895176930%_ _%g176896176933%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop176909176956%_
                                                   _%target176906176951%_
                                                   '()
                                                   '()))
                                                (_%g176895176930%_
                                                 _%g176896176933%_)))))
                                      (_%g176895176930%_ _%g176896176933%_))))
                              (_%g176895176930%_ _%g176896176933%_))))
                      (_%g176895176930%_ _%g176896176933%_)))))
          (_%g176894177035%_ _%stx176893%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self176836%_ _%stx176837%_)
        (let* ((_%g176839176852%_
                (lambda (_%g176840176849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176840176849%_))))
               (_%g176838176889%_
                (lambda (_%g176840176855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176840176855%_))
                      (let ((_%e176842176857%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176840176855%_))))
                        (let ((_%hd176843176860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176842176857%_)))
                              (_%tl176844176862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176842176857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176844176862%_))
                              (let ((_%e176845176865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176844176862%_))))
                                (let ((_%hd176846176868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176845176865%_)))
                                      (_%tl176847176870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176845176865%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176847176870%_))
                                      ((lambda (_%g176841176873%_)
                                         (let ((__tmp177782
                                                (lambda (_%g176884176886%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g176841176873%_
                                                     _%g176884176886%_))))
                                               (__tmp177781
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self176836%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp177782 __tmp177781)))
                                       _%hd176846176868%_)
                                      (_%g176839176852%_ _%g176840176855%_))))
                              (_%g176839176852%_ _%g176840176855%_))))
                      (_%g176839176852%_ _%g176840176855%_)))))
          (_%g176838176889%_ _%stx176837%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self176761%_ _%stx176762%_)
        (let* ((_%g176764176781%_
                (lambda (_%g176765176778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176765176778%_))))
               (_%g176763176833%_
                (lambda (_%g176765176784%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176765176784%_))
                      (let ((_%e176768176786%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176765176784%_))))
                        (let ((_%hd176769176789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176768176786%_)))
                              (_%tl176770176791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176768176786%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176770176791%_))
                              (let ((_%e176771176794%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176770176791%_))))
                                (let ((_%hd176772176797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176771176794%_)))
                                      (_%tl176773176799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176771176794%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176773176799%_))
                                      (let ((_%e176774176802%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176773176799%_))))
                                        (let ((_%hd176775176805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176774176802%_)))
                                              (_%tl176776176807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176774176802%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176776176807%_))
                                              ((lambda (_%g176766176810%_
                                                        _%g176767176811%_)
                                                 (let ((_%$e176830%_
                                                        (let ((__tmp177784
                                                               (lambda (_%g176825176827%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g176767176811%_
                            _%g176825176827%_))))
                      (__tmp177783
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self176761%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp177784 __tmp177783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e176830%_
                                                       _%$e176830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self176761%_
                                                          _%g176766176810%_)))))
                                               _%hd176775176805%_
                                               _%hd176772176797%_)
                                              (_%g176764176781%_
                                               _%g176765176784%_))))
                                      (_%g176764176781%_ _%g176765176784%_))))
                              (_%g176764176781%_ _%g176765176784%_))))
                      (_%g176764176781%_ _%g176765176784%_)))))
          (_%g176763176833%_ _%stx176762%_))))))
