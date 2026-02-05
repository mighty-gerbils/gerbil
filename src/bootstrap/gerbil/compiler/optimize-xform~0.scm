(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770326751)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp177591 (list gxc#::void::t))
            (__tmp177590 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp177591
         '()
         __tmp177590
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args177577%_
        (apply make-instance gxc#::collect-mutators::t _%$args177577%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp177592
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
        (__make-atomic-promise __tmp177592)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx177569%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self177572%_
                (let ((__obj177580
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj177580))
               (__tmp177593
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177572%_ _%stx177569%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp177593
           gxc#current-compile-method
           _%self177572%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp177595 (list gxc#::basic-xform-expression::t))
            (__tmp177594 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp177595
         '(id new-id)
         __tmp177594
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args177566%_
        (apply make-instance gxc#::expression-subst::t _%$args177566%_)))
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
      (let ((__tmp177596
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
        (__make-atomic-promise __tmp177596)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords177538%_
               _%id177534177539%_
               _%new-id177535177540%_
               _%stx177541%_)
        (let* ((_%id177544%_
                (if (eq? _%id177534177539%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id177534177539%_))
               (_%new-id177546%_
                (if (eq? _%new-id177535177540%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id177535177540%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self177548%_
                  (let ((__obj177582
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177582
                       _%id177544%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177582
                       _%new-id177546%_
                       '2
                       '#f
                       '#f))
                    __obj177582))
                 (__tmp177597
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177548%_ _%stx177541%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177597
             gxc#current-compile-method
             _%self177548%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords177555%_ . _%args177556%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords177555%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177555%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177555%_
                  'new-id:
                  absent-value))
               _%args177556%_)))
    (define gxc#apply-expression-subst
      (lambda _%args177536177562%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args177536177562%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp177599 (list gxc#::basic-xform-expression::t))
            (__tmp177598 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp177599
         '(subst)
         __tmp177598
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args177530%_
        (apply make-instance gxc#::expression-subst*::t _%$args177530%_)))
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
      (let ((__tmp177600
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
        (__make-atomic-promise __tmp177600)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords177505%_ _%subst177502177506%_ _%stx177507%_)
        (let ((_%subst177510%_
               (if (eq? _%subst177502177506%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst177502177506%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self177512%_
                  (let ((__obj177584
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177584
                       _%subst177510%_
                       '1
                       '#f
                       '#f))
                    __obj177584))
                 (__tmp177601
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177512%_ _%stx177507%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177601
             gxc#current-compile-method
             _%self177512%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords177519%_ . _%args177520%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords177519%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177519%_
                  'subst:
                  absent-value))
               _%args177520%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args177503177526%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args177503177526%_)))
    (define gxc#::find-expression::t
      (let ((__tmp177602 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp177602
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args177498%_
        (apply make-instance gxc#::find-expression::t _%$args177498%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp177603
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
        (__make-atomic-promise __tmp177603)))
    (define gxc#::find-var-refs::t
      (let ((__tmp177605 (list gxc#::find-expression::t))
            (__tmp177604 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp177605
         '(ids)
         __tmp177604
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args177494%_
        (apply make-instance gxc#::find-var-refs::t _%$args177494%_)))
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
      (let ((__tmp177606
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
        (__make-atomic-promise __tmp177606)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords177469%_ _%ids177466177470%_ _%stx177471%_)
        (let ((_%ids177474%_
               (if (eq? _%ids177466177470%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids177466177470%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self177476%_
                  (let ((__obj177587
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177587
                       _%ids177474%_
                       '1
                       '#f
                       '#f))
                    __obj177587))
                 (__tmp177607
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177476%_ _%stx177471%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177607
             gxc#current-compile-method
             _%self177476%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords177483%_ . _%args177484%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords177483%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177483%_ 'ids: absent-value))
               _%args177484%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args177467177490%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args177467177490%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp177609 (list gxc#::collect-expression-refs::t))
            (__tmp177608 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp177609
         '()
         __tmp177608
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args177462%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args177462%_)))
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
      (let ((__tmp177610
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
        (__make-atomic-promise __tmp177610)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords177437%_ _%table177434177438%_ _%stx177439%_)
        (let ((_%table177442%_
               (if (eq? _%table177434177438%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table177434177438%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self177444%_
                  (let ((__obj177589
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177589
                       _%table177442%_
                       '1
                       '#f
                       '#f))
                    __obj177589))
                 (__tmp177611
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177444%_ _%stx177439%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177611
             gxc#current-compile-method
             _%self177444%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords177451%_ . _%args177452%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords177451%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177451%_
                  'table:
                  absent-value))
               _%args177452%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args177435177458%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args177435177458%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self177363%_ _%stx177364%_)
        (let* ((_%g177366177383%_
                (lambda (_%g177367177380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177367177380%_))))
               (_%g177365177430%_
                (lambda (_%g177367177386%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177367177386%_))
                      (let ((_%e177370177388%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177367177386%_))))
                        (let ((_%hd177371177391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177370177388%_)))
                              (_%tl177372177393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177370177388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177372177393%_))
                              (let ((_%e177373177396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177372177393%_))))
                                (let ((_%hd177374177399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177373177396%_)))
                                      (_%tl177375177401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177373177396%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177375177401%_))
                                      (let ((_%e177376177404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177375177401%_))))
                                        (let ((_%hd177377177407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177376177404%_)))
                                              (_%tl177378177409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177376177404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177378177409%_))
                                              ((lambda (_%g177368177412%_
                                                        _%g177369177413%_)
                                                 (let ((_%sym177428%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177369177413%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym177428%_))
                                                   (let ((__tmp177612
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp177612
                                                      _%sym177428%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177363%_
                                                      _%g177368177412%_))))
                                               _%hd177377177407%_
                                               _%hd177374177399%_)
                                              (_%g177366177383%_
                                               _%g177367177386%_))))
                                      (_%g177366177383%_ _%g177367177386%_))))
                              (_%g177366177383%_ _%g177367177386%_))))
                      (_%g177366177383%_ _%g177367177386%_)))))
          (_%g177365177430%_ _%stx177364%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self177311%_ _%stx177312%_)
        (let* ((_%g177314177327%_
                (lambda (_%g177315177324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177315177324%_))))
               (_%g177313177360%_
                (lambda (_%g177315177330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177315177330%_))
                      (let ((_%e177317177332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177315177330%_))))
                        (let ((_%hd177318177335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177317177332%_)))
                              (_%tl177319177337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177317177332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177319177337%_))
                              (let ((_%e177320177340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177319177337%_))))
                                (let ((_%hd177321177343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177320177340%_)))
                                      (_%tl177322177345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177320177340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177322177345%_))
                                      ((lambda (_%g177316177348%_)
                                         (if (let ((__tmp177613
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self177311%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g177316177348%_
                                                __tmp177613))
                                             (let ((__tmp177614
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self177311%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177614
                                                _%stx177312%_))
                                             _%stx177312%_))
                                       _%hd177321177343%_)
                                      (_%g177314177327%_ _%g177315177330%_))))
                              (_%g177314177327%_ _%g177315177330%_))))
                      (_%g177314177327%_ _%g177315177330%_)))))
          (_%g177313177360%_ _%stx177312%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self177251%_ _%stx177252%_)
        (let* ((_%g177254177267%_
                (lambda (_%g177255177264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177255177264%_))))
               (_%g177253177308%_
                (lambda (_%g177255177270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177255177270%_))
                      (let ((_%e177257177272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177255177270%_))))
                        (let ((_%hd177258177275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177257177272%_)))
                              (_%tl177259177277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177257177272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177259177277%_))
                              (let ((_%e177260177280%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177259177277%_))))
                                (let ((_%hd177261177283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177260177280%_)))
                                      (_%tl177262177285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177260177280%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177262177285%_))
                                      ((lambda (_%g177256177288%_)
                                         (let ((_%$e177302%_
                                                (let ((__tmp177616
                                                       (lambda (_%sub177300%_)
                                                         (let ((__tmp177617
                                                                (car _%sub177300%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g177256177288%_
                                                            __tmp177617))))
                                                      (__tmp177615
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self177251%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp177616
                                                          __tmp177615))))
                                           (if _%$e177302%_
                                               ((lambda (_%sub177305%_)
                                                  (let ((__tmp177618
                                                         (cons '%#ref
                                                               (cons (cdr _%sub177305%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp177618
                                                     _%stx177252%_)))
                                                _%$e177302%_)
                                               _%stx177252%_)))
                                       _%hd177261177283%_)
                                      (_%g177254177267%_ _%g177255177270%_))))
                              (_%g177254177267%_ _%g177255177270%_))))
                      (_%g177254177267%_ _%g177255177270%_)))))
          (_%g177253177308%_ _%stx177252%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self177180%_ _%stx177181%_)
        (let* ((_%g177183177200%_
                (lambda (_%g177184177197%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177184177197%_))))
               (_%g177182177248%_
                (lambda (_%g177184177203%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177184177203%_))
                      (let ((_%e177187177205%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177184177203%_))))
                        (let ((_%hd177188177208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177187177205%_)))
                              (_%tl177189177210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177187177205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177189177210%_))
                              (let ((_%e177190177213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177189177210%_))))
                                (let ((_%hd177191177216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177190177213%_)))
                                      (_%tl177192177218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177190177213%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177192177218%_))
                                      (let ((_%e177193177221%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177192177218%_))))
                                        (let ((_%hd177194177224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177193177221%_)))
                                              (_%tl177195177226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177193177221%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177195177226%_))
                                              ((lambda (_%g177185177229%_
                                                        _%g177186177230%_)
                                                 (let ((_%new-expr177245%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177180%_
                                                           _%g177185177229%_)))
                                                       (_%new-xid177246%_
                                                        (if (let ((__tmp177619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self177180%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g177186177230%_ __tmp177619))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self177180%_ 'new-id))
                    _%g177186177230%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177620
                                                          (cons '%#set!
                                                                (cons _%new-xid177246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177245%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177620
                                                      _%stx177181%_))))
                                               _%hd177194177224%_
                                               _%hd177191177216%_)
                                              (_%g177183177200%_
                                               _%g177184177203%_))))
                                      (_%g177183177200%_ _%g177184177203%_))))
                              (_%g177183177200%_ _%g177184177203%_))))
                      (_%g177183177200%_ _%g177184177203%_)))))
          (_%g177182177248%_ _%stx177181%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self177103%_ _%stx177104%_)
        (let* ((_%g177106177123%_
                (lambda (_%g177107177120%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177107177120%_))))
               (_%g177105177177%_
                (lambda (_%g177107177126%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177107177126%_))
                      (let ((_%e177110177128%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177107177126%_))))
                        (let ((_%hd177111177131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177110177128%_)))
                              (_%tl177112177133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177110177128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177112177133%_))
                              (let ((_%e177113177136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177112177133%_))))
                                (let ((_%hd177114177139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177113177136%_)))
                                      (_%tl177115177141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177113177136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177115177141%_))
                                      (let ((_%e177116177144%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177115177141%_))))
                                        (let ((_%hd177117177147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177116177144%_)))
                                              (_%tl177118177149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177116177144%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177118177149%_))
                                              ((lambda (_%g177108177152%_
                                                        _%g177109177153%_)
                                                 (let ((_%new-expr177174%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177103%_
                                                           _%g177108177152%_)))
                                                       (_%new-xid177175%_
                                                        (let ((_%$e177170%_
                                                               (let ((__tmp177622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub177168%_)
                                (let ((__tmp177623 (car _%sub177168%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g177109177153%_
                                   __tmp177623))))
                             (__tmp177621
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self177103%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp177622 __tmp177621))))
                  (if _%$e177170%_ (cdr _%$e177170%_) _%g177109177153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177624
                                                          (cons '%#set!
                                                                (cons _%new-xid177175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177174%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177624
                                                      _%stx177104%_))))
                                               _%hd177117177147%_
                                               _%hd177114177139%_)
                                              (_%g177106177123%_
                                               _%g177107177126%_))))
                                      (_%g177106177123%_ _%g177107177126%_))))
                              (_%g177106177123%_ _%g177107177126%_))))
                      (_%g177106177123%_ _%g177107177126%_)))))
          (_%g177105177177%_ _%stx177104%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self177049%_ _%stx177050%_)
        (let* ((_%g177052177065%_
                (lambda (_%g177053177062%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177053177062%_))))
               (_%g177051177100%_
                (lambda (_%g177053177068%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177053177068%_))
                      (let ((_%e177055177070%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177053177068%_))))
                        (let ((_%hd177056177073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177055177070%_)))
                              (_%tl177057177075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177055177070%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177057177075%_))
                              (let ((_%e177058177078%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177057177075%_))))
                                (let ((_%hd177059177081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177058177078%_)))
                                      (_%tl177060177083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177058177078%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177060177083%_))
                                      ((lambda (_%g177054177086%_)
                                         (let* ((_%eid177098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g177054177086%_)))
                                                (__tmp177625
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self177049%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp177625
                                            _%eid177098%_
                                            1+
                                            '0)))
                                       _%hd177059177081%_)
                                      (_%g177052177065%_ _%g177053177068%_))))
                              (_%g177052177065%_ _%g177053177068%_))))
                      (_%g177052177065%_ _%g177053177068%_)))))
          (_%g177051177100%_ _%stx177050%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self176979%_ _%stx176980%_)
        (let* ((_%g176982176999%_
                (lambda (_%g176983176996%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176983176996%_))))
               (_%g176981177046%_
                (lambda (_%g176983177002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176983177002%_))
                      (let ((_%e176986177004%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176983177002%_))))
                        (let ((_%hd176987177007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176986177004%_)))
                              (_%tl176988177009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176986177004%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176988177009%_))
                              (let ((_%e176989177012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176988177009%_))))
                                (let ((_%hd176990177015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176989177012%_)))
                                      (_%tl176991177017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176989177012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176991177017%_))
                                      (let ((_%e176992177020%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176991177017%_))))
                                        (let ((_%hd176993177023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176992177020%_)))
                                              (_%tl176994177025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176992177020%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176994177025%_))
                                              ((lambda (_%g176984177028%_
                                                        _%g176985177029%_)
                                                 (let ((_%eid177044%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g176985177029%_))))
                                                   (let ((__tmp177626
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self176979%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp177626
                                                      _%eid177044%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self176979%_
                                                      _%g176984177028%_))))
                                               _%hd176993177023%_
                                               _%hd176990177015%_)
                                              (_%g176982176999%_
                                               _%g176983177002%_))))
                                      (_%g176982176999%_ _%g176983177002%_))))
                              (_%g176982176999%_ _%g176983177002%_))))
                      (_%g176982176999%_ _%g176983177002%_)))))
          (_%g176981177046%_ _%stx176980%_))))
    (define gxc#find-body%
      (lambda (_%self176894%_ _%stx176895%_)
        (let* ((_%g176897176916%_
                (lambda (_%g176898176913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176898176913%_))))
               (_%g176896176976%_
                (lambda (_%g176898176919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176898176919%_))
                      (let ((_%e176900176921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176898176919%_))))
                        (let ((_%hd176901176924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176900176921%_)))
                              (_%tl176902176926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176900176921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl176902176926%_))
                              (let ((_g177627_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl176902176926%_
                                        '0))))
                                (begin
                                  (let ((_g177628_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g177627_)
                                               (##values-length _g177627_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g177628_ 2)))
                                        (error "Context expects 2 values"
                                               _g177628_)))
                                  (let ((_%target176903176929%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177627_ 0)))
                                        (_%tl176905176931%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177627_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl176905176931%_))
                                        (letrec ((_%loop176906176934%_
                                                  (lambda (_%hd176904176937%_
                                                           _%expr176910176939%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd176904176937%_))
                                                        (let ((_%e176907176941%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd176904176937%_))))
                  (let ((_%lp-hd176908176944%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176907176941%_)))
                        (_%lp-tl176909176946%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176907176941%_))))
                    (_%loop176906176934%_
                     _%lp-tl176909176946%_
                     (cons _%lp-hd176908176944%_ _%expr176910176939%_))))
                (let ((_%expr176911176949%_ (reverse _%expr176910176939%_)))
                  ((lambda (_%g176899176951%_)
                     (let ((__tmp177631
                            (lambda (_%g176964176966%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self176894%_
                                 _%g176964176966%_))))
                           (__tmp177629
                            (let ((__tmp177630
                                   (lambda (_%g176968176971%_
                                            _%g176969176973%_)
                                     (cons _%g176968176971%_
                                           _%g176969176973%_))))
                              (declare (not safe))
                              (__foldr1 __tmp177630 '() _%g176899176951%_))))
                       (declare (not safe))
                       (__ormap1 __tmp177631 __tmp177629)))
                   _%expr176911176949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop176906176934%_
                                           _%target176903176929%_
                                           '()))
                                        (_%g176897176916%_
                                         _%g176898176919%_)))))
                              (_%g176897176916%_ _%g176898176919%_))))
                      (_%g176897176916%_ _%g176898176919%_)))))
          (_%g176896176976%_ _%stx176895%_))))
    (define gxc#find-let-values%
      (lambda (_%self176748%_ _%stx176749%_)
        (let* ((_%g176751176786%_
                (lambda (_%g176752176783%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176752176783%_))))
               (_%g176750176891%_
                (lambda (_%g176752176789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176752176789%_))
                      (let ((_%e176756176791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176752176789%_))))
                        (let ((_%hd176757176794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176756176791%_)))
                              (_%tl176758176796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176756176791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176758176796%_))
                              (let ((_%e176759176799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176758176796%_))))
                                (let ((_%hd176760176802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176759176799%_)))
                                      (_%tl176761176804%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176759176799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd176760176802%_))
                                      (let ((_g177632_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd176760176802%_
                                                '0))))
                                        (begin
                                          (let ((_g177633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g177632_)
                                                       (##values-length
                                                        _g177632_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g177633_ 2)))
                                                (error "Context expects 2 values"
                                                       _g177633_)))
                                          (let ((_%target176762176807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g177632_ 0)))
                                                (_%tl176764176809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g177632_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176764176809%_))
                                                (letrec ((_%loop176765176812%_
                                                          (lambda (_%hd176763176815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr176769176817%_
                           _%bind176770176818%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd176763176815%_))
                        (let ((_%e176766176820%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd176763176815%_))))
                          (let ((_%lp-hd176767176823%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176766176820%_)))
                                (_%lp-tl176768176825%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176766176820%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd176767176823%_))
                                (let ((_%e176773176828%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd176767176823%_))))
                                  (let ((_%hd176774176831%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176773176828%_)))
                                        (_%tl176775176833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176773176828%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176775176833%_))
                                        (let ((_%e176776176836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176775176833%_))))
                                          (let ((_%hd176777176839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176776176836%_)))
                                                (_%tl176778176841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176776176836%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176778176841%_))
                                                (_%loop176765176812%_
                                                 _%lp-tl176768176825%_
                                                 (cons _%hd176777176839%_
                                                       _%expr176769176817%_)
                                                 (cons _%hd176774176831%_
                                                       _%bind176770176818%_))
                                                (_%g176751176786%_
                                                 _%g176752176789%_))))
                                        (_%g176751176786%_
                                         _%g176752176789%_))))
                                (_%g176751176786%_ _%g176752176789%_))))
                        (let ((_%expr176771176844%_
                               (reverse _%expr176769176817%_))
                              (_%bind176772176845%_
                               (reverse _%bind176770176818%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176761176804%_))
                              (let ((_%e176779176847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176761176804%_))))
                                (let ((_%hd176780176850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176779176847%_)))
                                      (_%tl176781176852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176779176847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176781176852%_))
                                      ((lambda (_%g176753176855%_
                                                _%g176754176856%_
                                                _%g176755176857%_)
                                         (let ((_%$e176888%_
                                                (let ((__tmp177636
                                                       (lambda (_%g176876176878%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self176748%_
                                                            _%g176876176878%_))))
                                                      (__tmp177634
                                                       (let ((__tmp177635
                                                              (lambda (_%g176880176883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g176881176885%_)
                        (cons _%g176880176883%_ _%g176881176885%_))))
                 (declare (not safe))
                 (__foldr1 __tmp177635 '() _%g176754176856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp177636
                                                   __tmp177634))))
                                           (if _%$e176888%_
                                               _%$e176888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self176748%_
                                                  _%g176753176855%_)))))
                                       _%hd176780176850%_
                                       _%expr176771176844%_
                                       _%bind176772176845%_)
                                      (_%g176751176786%_ _%g176752176789%_))))
                              (_%g176751176786%_ _%g176752176789%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop176765176812%_
                                                   _%target176762176807%_
                                                   '()
                                                   '()))
                                                (_%g176751176786%_
                                                 _%g176752176789%_)))))
                                      (_%g176751176786%_ _%g176752176789%_))))
                              (_%g176751176786%_ _%g176752176789%_))))
                      (_%g176751176786%_ _%g176752176789%_)))))
          (_%g176750176891%_ _%stx176749%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self176692%_ _%stx176693%_)
        (let* ((_%g176695176708%_
                (lambda (_%g176696176705%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176696176705%_))))
               (_%g176694176745%_
                (lambda (_%g176696176711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176696176711%_))
                      (let ((_%e176698176713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176696176711%_))))
                        (let ((_%hd176699176716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176698176713%_)))
                              (_%tl176700176718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176698176713%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176700176718%_))
                              (let ((_%e176701176721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176700176718%_))))
                                (let ((_%hd176702176724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176701176721%_)))
                                      (_%tl176703176726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176701176721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176703176726%_))
                                      ((lambda (_%g176697176729%_)
                                         (let ((__tmp177638
                                                (lambda (_%g176740176742%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g176697176729%_
                                                     _%g176740176742%_))))
                                               (__tmp177637
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self176692%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp177638 __tmp177637)))
                                       _%hd176702176724%_)
                                      (_%g176695176708%_ _%g176696176711%_))))
                              (_%g176695176708%_ _%g176696176711%_))))
                      (_%g176695176708%_ _%g176696176711%_)))))
          (_%g176694176745%_ _%stx176693%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self176617%_ _%stx176618%_)
        (let* ((_%g176620176637%_
                (lambda (_%g176621176634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176621176634%_))))
               (_%g176619176689%_
                (lambda (_%g176621176640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176621176640%_))
                      (let ((_%e176624176642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176621176640%_))))
                        (let ((_%hd176625176645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176624176642%_)))
                              (_%tl176626176647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176624176642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176626176647%_))
                              (let ((_%e176627176650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176626176647%_))))
                                (let ((_%hd176628176653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176627176650%_)))
                                      (_%tl176629176655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176627176650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176629176655%_))
                                      (let ((_%e176630176658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176629176655%_))))
                                        (let ((_%hd176631176661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176630176658%_)))
                                              (_%tl176632176663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176630176658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176632176663%_))
                                              ((lambda (_%g176622176666%_
                                                        _%g176623176667%_)
                                                 (let ((_%$e176686%_
                                                        (let ((__tmp177640
                                                               (lambda (_%g176681176683%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g176623176667%_
                            _%g176681176683%_))))
                      (__tmp177639
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self176617%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp177640 __tmp177639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e176686%_
                                                       _%$e176686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self176617%_
                                                          _%g176622176666%_)))))
                                               _%hd176631176661%_
                                               _%hd176628176653%_)
                                              (_%g176620176637%_
                                               _%g176621176640%_))))
                                      (_%g176620176637%_ _%g176621176640%_))))
                              (_%g176620176637%_ _%g176621176640%_))))
                      (_%g176620176637%_ _%g176621176640%_)))))
          (_%g176619176689%_ _%stx176618%_))))))
