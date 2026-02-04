(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770248974)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp177547 (list gxc#::void::t))
            (__tmp177546 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp177547
         '()
         __tmp177546
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args177533%_
        (apply make-instance gxc#::collect-mutators::t _%$args177533%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp177548
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
        (__make-atomic-promise __tmp177548)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx177525%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self177528%_
                (let ((__obj177536
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj177536))
               (__tmp177549
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177528%_ _%stx177525%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp177549
           gxc#current-compile-method
           _%self177528%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp177551 (list gxc#::basic-xform-expression::t))
            (__tmp177550 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp177551
         '(id new-id)
         __tmp177550
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args177522%_
        (apply make-instance gxc#::expression-subst::t _%$args177522%_)))
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
      (let ((__tmp177552
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
        (__make-atomic-promise __tmp177552)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords177494%_
               _%id177490177495%_
               _%new-id177491177496%_
               _%stx177497%_)
        (let* ((_%id177500%_
                (if (eq? _%id177490177495%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id177490177495%_))
               (_%new-id177502%_
                (if (eq? _%new-id177491177496%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id177491177496%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self177504%_
                  (let ((__obj177538
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177538
                       _%id177500%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177538
                       _%new-id177502%_
                       '2
                       '#f
                       '#f))
                    __obj177538))
                 (__tmp177553
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177504%_ _%stx177497%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177553
             gxc#current-compile-method
             _%self177504%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords177511%_ . _%args177512%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords177511%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177511%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177511%_
                  'new-id:
                  absent-value))
               _%args177512%_)))
    (define gxc#apply-expression-subst
      (lambda _%args177492177518%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args177492177518%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp177555 (list gxc#::basic-xform-expression::t))
            (__tmp177554 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp177555
         '(subst)
         __tmp177554
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args177486%_
        (apply make-instance gxc#::expression-subst*::t _%$args177486%_)))
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
      (let ((__tmp177556
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
        (__make-atomic-promise __tmp177556)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords177461%_ _%subst177458177462%_ _%stx177463%_)
        (let ((_%subst177466%_
               (if (eq? _%subst177458177462%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst177458177462%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self177468%_
                  (let ((__obj177540
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177540
                       _%subst177466%_
                       '1
                       '#f
                       '#f))
                    __obj177540))
                 (__tmp177557
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177468%_ _%stx177463%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177557
             gxc#current-compile-method
             _%self177468%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords177475%_ . _%args177476%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords177475%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177475%_
                  'subst:
                  absent-value))
               _%args177476%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args177459177482%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args177459177482%_)))
    (define gxc#::find-expression::t
      (let ((__tmp177558 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp177558
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args177454%_
        (apply make-instance gxc#::find-expression::t _%$args177454%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp177559
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
        (__make-atomic-promise __tmp177559)))
    (define gxc#::find-var-refs::t
      (let ((__tmp177561 (list gxc#::find-expression::t))
            (__tmp177560 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp177561
         '(ids)
         __tmp177560
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args177450%_
        (apply make-instance gxc#::find-var-refs::t _%$args177450%_)))
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
      (let ((__tmp177562
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
        (__make-atomic-promise __tmp177562)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords177425%_ _%ids177422177426%_ _%stx177427%_)
        (let ((_%ids177430%_
               (if (eq? _%ids177422177426%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids177422177426%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self177432%_
                  (let ((__obj177543
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177543
                       _%ids177430%_
                       '1
                       '#f
                       '#f))
                    __obj177543))
                 (__tmp177563
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177432%_ _%stx177427%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177563
             gxc#current-compile-method
             _%self177432%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords177439%_ . _%args177440%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords177439%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177439%_ 'ids: absent-value))
               _%args177440%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args177423177446%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args177423177446%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp177565 (list gxc#::collect-expression-refs::t))
            (__tmp177564 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp177565
         '()
         __tmp177564
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args177418%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args177418%_)))
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
      (let ((__tmp177566
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
        (__make-atomic-promise __tmp177566)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords177393%_ _%table177390177394%_ _%stx177395%_)
        (let ((_%table177398%_
               (if (eq? _%table177390177394%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table177390177394%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self177400%_
                  (let ((__obj177545
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177545
                       _%table177398%_
                       '1
                       '#f
                       '#f))
                    __obj177545))
                 (__tmp177567
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177400%_ _%stx177395%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177567
             gxc#current-compile-method
             _%self177400%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords177407%_ . _%args177408%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords177407%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177407%_
                  'table:
                  absent-value))
               _%args177408%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args177391177414%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args177391177414%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self177319%_ _%stx177320%_)
        (let* ((_%g177322177339%_
                (lambda (_%g177323177336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177323177336%_))))
               (_%g177321177386%_
                (lambda (_%g177323177342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177323177342%_))
                      (let ((_%e177326177344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177323177342%_))))
                        (let ((_%hd177327177347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177326177344%_)))
                              (_%tl177328177349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177326177344%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177328177349%_))
                              (let ((_%e177329177352%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177328177349%_))))
                                (let ((_%hd177330177355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177329177352%_)))
                                      (_%tl177331177357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177329177352%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177331177357%_))
                                      (let ((_%e177332177360%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177331177357%_))))
                                        (let ((_%hd177333177363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177332177360%_)))
                                              (_%tl177334177365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177332177360%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177334177365%_))
                                              ((lambda (_%g177324177368%_
                                                        _%g177325177369%_)
                                                 (let ((_%sym177384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177325177369%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym177384%_))
                                                   (let ((__tmp177568
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp177568
                                                      _%sym177384%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177319%_
                                                      _%g177324177368%_))))
                                               _%hd177333177363%_
                                               _%hd177330177355%_)
                                              (_%g177322177339%_
                                               _%g177323177342%_))))
                                      (_%g177322177339%_ _%g177323177342%_))))
                              (_%g177322177339%_ _%g177323177342%_))))
                      (_%g177322177339%_ _%g177323177342%_)))))
          (_%g177321177386%_ _%stx177320%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self177267%_ _%stx177268%_)
        (let* ((_%g177270177283%_
                (lambda (_%g177271177280%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177271177280%_))))
               (_%g177269177316%_
                (lambda (_%g177271177286%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177271177286%_))
                      (let ((_%e177273177288%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177271177286%_))))
                        (let ((_%hd177274177291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177273177288%_)))
                              (_%tl177275177293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177273177288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177275177293%_))
                              (let ((_%e177276177296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177275177293%_))))
                                (let ((_%hd177277177299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177276177296%_)))
                                      (_%tl177278177301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177276177296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177278177301%_))
                                      ((lambda (_%g177272177304%_)
                                         (if (let ((__tmp177569
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self177267%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g177272177304%_
                                                __tmp177569))
                                             (let ((__tmp177570
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self177267%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177570
                                                _%stx177268%_))
                                             _%stx177268%_))
                                       _%hd177277177299%_)
                                      (_%g177270177283%_ _%g177271177286%_))))
                              (_%g177270177283%_ _%g177271177286%_))))
                      (_%g177270177283%_ _%g177271177286%_)))))
          (_%g177269177316%_ _%stx177268%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self177207%_ _%stx177208%_)
        (let* ((_%g177210177223%_
                (lambda (_%g177211177220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177211177220%_))))
               (_%g177209177264%_
                (lambda (_%g177211177226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177211177226%_))
                      (let ((_%e177213177228%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177211177226%_))))
                        (let ((_%hd177214177231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177213177228%_)))
                              (_%tl177215177233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177213177228%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177215177233%_))
                              (let ((_%e177216177236%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177215177233%_))))
                                (let ((_%hd177217177239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177216177236%_)))
                                      (_%tl177218177241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177216177236%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177218177241%_))
                                      ((lambda (_%g177212177244%_)
                                         (let ((_%$e177258%_
                                                (let ((__tmp177572
                                                       (lambda (_%sub177256%_)
                                                         (let ((__tmp177573
                                                                (car _%sub177256%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g177212177244%_
                                                            __tmp177573))))
                                                      (__tmp177571
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self177207%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp177572
                                                          __tmp177571))))
                                           (if _%$e177258%_
                                               ((lambda (_%sub177261%_)
                                                  (let ((__tmp177574
                                                         (cons '%#ref
                                                               (cons (cdr _%sub177261%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp177574
                                                     _%stx177208%_)))
                                                _%$e177258%_)
                                               _%stx177208%_)))
                                       _%hd177217177239%_)
                                      (_%g177210177223%_ _%g177211177226%_))))
                              (_%g177210177223%_ _%g177211177226%_))))
                      (_%g177210177223%_ _%g177211177226%_)))))
          (_%g177209177264%_ _%stx177208%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self177136%_ _%stx177137%_)
        (let* ((_%g177139177156%_
                (lambda (_%g177140177153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177140177153%_))))
               (_%g177138177204%_
                (lambda (_%g177140177159%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177140177159%_))
                      (let ((_%e177143177161%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177140177159%_))))
                        (let ((_%hd177144177164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177143177161%_)))
                              (_%tl177145177166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177143177161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177145177166%_))
                              (let ((_%e177146177169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177145177166%_))))
                                (let ((_%hd177147177172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177146177169%_)))
                                      (_%tl177148177174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177146177169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177148177174%_))
                                      (let ((_%e177149177177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177148177174%_))))
                                        (let ((_%hd177150177180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177149177177%_)))
                                              (_%tl177151177182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177149177177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177151177182%_))
                                              ((lambda (_%g177141177185%_
                                                        _%g177142177186%_)
                                                 (let ((_%new-expr177201%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177136%_
                                                           _%g177141177185%_)))
                                                       (_%new-xid177202%_
                                                        (if (let ((__tmp177575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self177136%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g177142177186%_ __tmp177575))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self177136%_ 'new-id))
                    _%g177142177186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177576
                                                          (cons '%#set!
                                                                (cons _%new-xid177202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177201%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177576
                                                      _%stx177137%_))))
                                               _%hd177150177180%_
                                               _%hd177147177172%_)
                                              (_%g177139177156%_
                                               _%g177140177159%_))))
                                      (_%g177139177156%_ _%g177140177159%_))))
                              (_%g177139177156%_ _%g177140177159%_))))
                      (_%g177139177156%_ _%g177140177159%_)))))
          (_%g177138177204%_ _%stx177137%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self177059%_ _%stx177060%_)
        (let* ((_%g177062177079%_
                (lambda (_%g177063177076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177063177076%_))))
               (_%g177061177133%_
                (lambda (_%g177063177082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177063177082%_))
                      (let ((_%e177066177084%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177063177082%_))))
                        (let ((_%hd177067177087%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177066177084%_)))
                              (_%tl177068177089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177066177084%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177068177089%_))
                              (let ((_%e177069177092%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177068177089%_))))
                                (let ((_%hd177070177095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177069177092%_)))
                                      (_%tl177071177097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177069177092%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177071177097%_))
                                      (let ((_%e177072177100%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177071177097%_))))
                                        (let ((_%hd177073177103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177072177100%_)))
                                              (_%tl177074177105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177072177100%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177074177105%_))
                                              ((lambda (_%g177064177108%_
                                                        _%g177065177109%_)
                                                 (let ((_%new-expr177130%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177059%_
                                                           _%g177064177108%_)))
                                                       (_%new-xid177131%_
                                                        (let ((_%$e177126%_
                                                               (let ((__tmp177578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub177124%_)
                                (let ((__tmp177579 (car _%sub177124%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g177065177109%_
                                   __tmp177579))))
                             (__tmp177577
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self177059%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp177578 __tmp177577))))
                  (if _%$e177126%_ (cdr _%$e177126%_) _%g177065177109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177580
                                                          (cons '%#set!
                                                                (cons _%new-xid177131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177130%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177580
                                                      _%stx177060%_))))
                                               _%hd177073177103%_
                                               _%hd177070177095%_)
                                              (_%g177062177079%_
                                               _%g177063177082%_))))
                                      (_%g177062177079%_ _%g177063177082%_))))
                              (_%g177062177079%_ _%g177063177082%_))))
                      (_%g177062177079%_ _%g177063177082%_)))))
          (_%g177061177133%_ _%stx177060%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self177005%_ _%stx177006%_)
        (let* ((_%g177008177021%_
                (lambda (_%g177009177018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177009177018%_))))
               (_%g177007177056%_
                (lambda (_%g177009177024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177009177024%_))
                      (let ((_%e177011177026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177009177024%_))))
                        (let ((_%hd177012177029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177011177026%_)))
                              (_%tl177013177031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177011177026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177013177031%_))
                              (let ((_%e177014177034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177013177031%_))))
                                (let ((_%hd177015177037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177014177034%_)))
                                      (_%tl177016177039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177014177034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177016177039%_))
                                      ((lambda (_%g177010177042%_)
                                         (let* ((_%eid177054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g177010177042%_)))
                                                (__tmp177581
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self177005%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp177581
                                            _%eid177054%_
                                            1+
                                            '0)))
                                       _%hd177015177037%_)
                                      (_%g177008177021%_ _%g177009177024%_))))
                              (_%g177008177021%_ _%g177009177024%_))))
                      (_%g177008177021%_ _%g177009177024%_)))))
          (_%g177007177056%_ _%stx177006%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self176935%_ _%stx176936%_)
        (let* ((_%g176938176955%_
                (lambda (_%g176939176952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176939176952%_))))
               (_%g176937177002%_
                (lambda (_%g176939176958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176939176958%_))
                      (let ((_%e176942176960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176939176958%_))))
                        (let ((_%hd176943176963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176942176960%_)))
                              (_%tl176944176965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176942176960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176944176965%_))
                              (let ((_%e176945176968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176944176965%_))))
                                (let ((_%hd176946176971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176945176968%_)))
                                      (_%tl176947176973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176945176968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176947176973%_))
                                      (let ((_%e176948176976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176947176973%_))))
                                        (let ((_%hd176949176979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176948176976%_)))
                                              (_%tl176950176981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176948176976%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176950176981%_))
                                              ((lambda (_%g176940176984%_
                                                        _%g176941176985%_)
                                                 (let ((_%eid177000%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g176941176985%_))))
                                                   (let ((__tmp177582
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self176935%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp177582
                                                      _%eid177000%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self176935%_
                                                      _%g176940176984%_))))
                                               _%hd176949176979%_
                                               _%hd176946176971%_)
                                              (_%g176938176955%_
                                               _%g176939176958%_))))
                                      (_%g176938176955%_ _%g176939176958%_))))
                              (_%g176938176955%_ _%g176939176958%_))))
                      (_%g176938176955%_ _%g176939176958%_)))))
          (_%g176937177002%_ _%stx176936%_))))
    (define gxc#find-body%
      (lambda (_%self176850%_ _%stx176851%_)
        (let* ((_%g176853176872%_
                (lambda (_%g176854176869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176854176869%_))))
               (_%g176852176932%_
                (lambda (_%g176854176875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176854176875%_))
                      (let ((_%e176856176877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176854176875%_))))
                        (let ((_%hd176857176880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176856176877%_)))
                              (_%tl176858176882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176856176877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl176858176882%_))
                              (let ((_g177583_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl176858176882%_
                                        '0))))
                                (begin
                                  (let ((_g177584_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g177583_)
                                               (##values-length _g177583_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g177584_ 2)))
                                        (error "Context expects 2 values"
                                               _g177584_)))
                                  (let ((_%target176859176885%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177583_ 0)))
                                        (_%tl176861176887%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177583_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl176861176887%_))
                                        (letrec ((_%loop176862176890%_
                                                  (lambda (_%hd176860176893%_
                                                           _%expr176866176895%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd176860176893%_))
                                                        (let ((_%e176863176897%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd176860176893%_))))
                  (let ((_%lp-hd176864176900%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176863176897%_)))
                        (_%lp-tl176865176902%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176863176897%_))))
                    (_%loop176862176890%_
                     _%lp-tl176865176902%_
                     (cons _%lp-hd176864176900%_ _%expr176866176895%_))))
                (let ((_%expr176867176905%_ (reverse _%expr176866176895%_)))
                  ((lambda (_%g176855176907%_)
                     (let ((__tmp177587
                            (lambda (_%g176920176922%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self176850%_
                                 _%g176920176922%_))))
                           (__tmp177585
                            (let ((__tmp177586
                                   (lambda (_%g176924176927%_
                                            _%g176925176929%_)
                                     (cons _%g176924176927%_
                                           _%g176925176929%_))))
                              (declare (not safe))
                              (__foldr1 __tmp177586 '() _%g176855176907%_))))
                       (declare (not safe))
                       (__ormap1 __tmp177587 __tmp177585)))
                   _%expr176867176905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop176862176890%_
                                           _%target176859176885%_
                                           '()))
                                        (_%g176853176872%_
                                         _%g176854176875%_)))))
                              (_%g176853176872%_ _%g176854176875%_))))
                      (_%g176853176872%_ _%g176854176875%_)))))
          (_%g176852176932%_ _%stx176851%_))))
    (define gxc#find-let-values%
      (lambda (_%self176704%_ _%stx176705%_)
        (let* ((_%g176707176742%_
                (lambda (_%g176708176739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176708176739%_))))
               (_%g176706176847%_
                (lambda (_%g176708176745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176708176745%_))
                      (let ((_%e176712176747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176708176745%_))))
                        (let ((_%hd176713176750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176712176747%_)))
                              (_%tl176714176752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176712176747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176714176752%_))
                              (let ((_%e176715176755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176714176752%_))))
                                (let ((_%hd176716176758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176715176755%_)))
                                      (_%tl176717176760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176715176755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd176716176758%_))
                                      (let ((_g177588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd176716176758%_
                                                '0))))
                                        (begin
                                          (let ((_g177589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g177588_)
                                                       (##values-length
                                                        _g177588_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g177589_ 2)))
                                                (error "Context expects 2 values"
                                                       _g177589_)))
                                          (let ((_%target176718176763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g177588_ 0)))
                                                (_%tl176720176765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g177588_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176720176765%_))
                                                (letrec ((_%loop176721176768%_
                                                          (lambda (_%hd176719176771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr176725176773%_
                           _%bind176726176774%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd176719176771%_))
                        (let ((_%e176722176776%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd176719176771%_))))
                          (let ((_%lp-hd176723176779%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176722176776%_)))
                                (_%lp-tl176724176781%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176722176776%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd176723176779%_))
                                (let ((_%e176729176784%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd176723176779%_))))
                                  (let ((_%hd176730176787%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176729176784%_)))
                                        (_%tl176731176789%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176729176784%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176731176789%_))
                                        (let ((_%e176732176792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176731176789%_))))
                                          (let ((_%hd176733176795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176732176792%_)))
                                                (_%tl176734176797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176732176792%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176734176797%_))
                                                (_%loop176721176768%_
                                                 _%lp-tl176724176781%_
                                                 (cons _%hd176733176795%_
                                                       _%expr176725176773%_)
                                                 (cons _%hd176730176787%_
                                                       _%bind176726176774%_))
                                                (_%g176707176742%_
                                                 _%g176708176745%_))))
                                        (_%g176707176742%_
                                         _%g176708176745%_))))
                                (_%g176707176742%_ _%g176708176745%_))))
                        (let ((_%expr176727176800%_
                               (reverse _%expr176725176773%_))
                              (_%bind176728176801%_
                               (reverse _%bind176726176774%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176717176760%_))
                              (let ((_%e176735176803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176717176760%_))))
                                (let ((_%hd176736176806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176735176803%_)))
                                      (_%tl176737176808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176735176803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176737176808%_))
                                      ((lambda (_%g176709176811%_
                                                _%g176710176812%_
                                                _%g176711176813%_)
                                         (let ((_%$e176844%_
                                                (let ((__tmp177592
                                                       (lambda (_%g176832176834%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self176704%_
                                                            _%g176832176834%_))))
                                                      (__tmp177590
                                                       (let ((__tmp177591
                                                              (lambda (_%g176836176839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g176837176841%_)
                        (cons _%g176836176839%_ _%g176837176841%_))))
                 (declare (not safe))
                 (__foldr1 __tmp177591 '() _%g176710176812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp177592
                                                   __tmp177590))))
                                           (if _%$e176844%_
                                               _%$e176844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self176704%_
                                                  _%g176709176811%_)))))
                                       _%hd176736176806%_
                                       _%expr176727176800%_
                                       _%bind176728176801%_)
                                      (_%g176707176742%_ _%g176708176745%_))))
                              (_%g176707176742%_ _%g176708176745%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop176721176768%_
                                                   _%target176718176763%_
                                                   '()
                                                   '()))
                                                (_%g176707176742%_
                                                 _%g176708176745%_)))))
                                      (_%g176707176742%_ _%g176708176745%_))))
                              (_%g176707176742%_ _%g176708176745%_))))
                      (_%g176707176742%_ _%g176708176745%_)))))
          (_%g176706176847%_ _%stx176705%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self176648%_ _%stx176649%_)
        (let* ((_%g176651176664%_
                (lambda (_%g176652176661%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176652176661%_))))
               (_%g176650176701%_
                (lambda (_%g176652176667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176652176667%_))
                      (let ((_%e176654176669%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176652176667%_))))
                        (let ((_%hd176655176672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176654176669%_)))
                              (_%tl176656176674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176654176669%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176656176674%_))
                              (let ((_%e176657176677%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176656176674%_))))
                                (let ((_%hd176658176680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176657176677%_)))
                                      (_%tl176659176682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176657176677%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176659176682%_))
                                      ((lambda (_%g176653176685%_)
                                         (let ((__tmp177594
                                                (lambda (_%g176696176698%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g176653176685%_
                                                     _%g176696176698%_))))
                                               (__tmp177593
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self176648%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp177594 __tmp177593)))
                                       _%hd176658176680%_)
                                      (_%g176651176664%_ _%g176652176667%_))))
                              (_%g176651176664%_ _%g176652176667%_))))
                      (_%g176651176664%_ _%g176652176667%_)))))
          (_%g176650176701%_ _%stx176649%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self176573%_ _%stx176574%_)
        (let* ((_%g176576176593%_
                (lambda (_%g176577176590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176577176590%_))))
               (_%g176575176645%_
                (lambda (_%g176577176596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176577176596%_))
                      (let ((_%e176580176598%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176577176596%_))))
                        (let ((_%hd176581176601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176580176598%_)))
                              (_%tl176582176603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176580176598%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176582176603%_))
                              (let ((_%e176583176606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176582176603%_))))
                                (let ((_%hd176584176609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176583176606%_)))
                                      (_%tl176585176611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176583176606%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176585176611%_))
                                      (let ((_%e176586176614%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176585176611%_))))
                                        (let ((_%hd176587176617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176586176614%_)))
                                              (_%tl176588176619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176586176614%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176588176619%_))
                                              ((lambda (_%g176578176622%_
                                                        _%g176579176623%_)
                                                 (let ((_%$e176642%_
                                                        (let ((__tmp177596
                                                               (lambda (_%g176637176639%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g176579176623%_
                            _%g176637176639%_))))
                      (__tmp177595
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self176573%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp177596 __tmp177595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e176642%_
                                                       _%$e176642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self176573%_
                                                          _%g176578176622%_)))))
                                               _%hd176587176617%_
                                               _%hd176584176609%_)
                                              (_%g176576176593%_
                                               _%g176577176596%_))))
                                      (_%g176576176593%_ _%g176577176596%_))))
                              (_%g176576176593%_ _%g176577176596%_))))
                      (_%g176576176593%_ _%g176577176596%_)))))
          (_%g176575176645%_ _%stx176574%_))))))
