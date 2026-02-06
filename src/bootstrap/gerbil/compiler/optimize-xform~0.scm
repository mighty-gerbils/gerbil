(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770342303)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp177728 (list gxc#::void::t))
            (__tmp177727 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp177728
         '()
         __tmp177727
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args177714%_
        (apply make-instance gxc#::collect-mutators::t _%$args177714%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp177729
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
        (__make-atomic-promise __tmp177729)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx177706%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self177709%_
                (let ((__obj177717
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj177717))
               (__tmp177730
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177709%_ _%stx177706%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp177730
           gxc#current-compile-method
           _%self177709%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp177732 (list gxc#::basic-xform-expression::t))
            (__tmp177731 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp177732
         '(id new-id)
         __tmp177731
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args177703%_
        (apply make-instance gxc#::expression-subst::t _%$args177703%_)))
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
      (let ((__tmp177733
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
        (__make-atomic-promise __tmp177733)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords177675%_
               _%id177671177676%_
               _%new-id177672177677%_
               _%stx177678%_)
        (let* ((_%id177681%_
                (if (eq? _%id177671177676%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id177671177676%_))
               (_%new-id177683%_
                (if (eq? _%new-id177672177677%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id177672177677%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self177685%_
                  (let ((__obj177719
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177719
                       _%id177681%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177719
                       _%new-id177683%_
                       '2
                       '#f
                       '#f))
                    __obj177719))
                 (__tmp177734
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177685%_ _%stx177678%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177734
             gxc#current-compile-method
             _%self177685%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords177692%_ . _%args177693%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords177692%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177692%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177692%_
                  'new-id:
                  absent-value))
               _%args177693%_)))
    (define gxc#apply-expression-subst
      (lambda _%args177673177699%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args177673177699%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp177736 (list gxc#::basic-xform-expression::t))
            (__tmp177735 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp177736
         '(subst)
         __tmp177735
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args177667%_
        (apply make-instance gxc#::expression-subst*::t _%$args177667%_)))
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
      (let ((__tmp177737
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
        (__make-atomic-promise __tmp177737)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords177642%_ _%subst177639177643%_ _%stx177644%_)
        (let ((_%subst177647%_
               (if (eq? _%subst177639177643%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst177639177643%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self177649%_
                  (let ((__obj177721
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177721
                       _%subst177647%_
                       '1
                       '#f
                       '#f))
                    __obj177721))
                 (__tmp177738
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177649%_ _%stx177644%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177738
             gxc#current-compile-method
             _%self177649%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords177656%_ . _%args177657%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords177656%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177656%_
                  'subst:
                  absent-value))
               _%args177657%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args177640177663%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args177640177663%_)))
    (define gxc#::find-expression::t
      (let ((__tmp177739 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp177739
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args177635%_
        (apply make-instance gxc#::find-expression::t _%$args177635%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp177740
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
        (__make-atomic-promise __tmp177740)))
    (define gxc#::find-var-refs::t
      (let ((__tmp177742 (list gxc#::find-expression::t))
            (__tmp177741 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp177742
         '(ids)
         __tmp177741
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args177631%_
        (apply make-instance gxc#::find-var-refs::t _%$args177631%_)))
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
      (let ((__tmp177743
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
        (__make-atomic-promise __tmp177743)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords177606%_ _%ids177603177607%_ _%stx177608%_)
        (let ((_%ids177611%_
               (if (eq? _%ids177603177607%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids177603177607%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self177613%_
                  (let ((__obj177724
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177724
                       _%ids177611%_
                       '1
                       '#f
                       '#f))
                    __obj177724))
                 (__tmp177744
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177613%_ _%stx177608%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177744
             gxc#current-compile-method
             _%self177613%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords177620%_ . _%args177621%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords177620%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177620%_ 'ids: absent-value))
               _%args177621%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args177604177627%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args177604177627%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp177746 (list gxc#::collect-expression-refs::t))
            (__tmp177745 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp177746
         '()
         __tmp177745
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args177599%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args177599%_)))
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
      (let ((__tmp177747
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
        (__make-atomic-promise __tmp177747)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords177574%_ _%table177571177575%_ _%stx177576%_)
        (let ((_%table177579%_
               (if (eq? _%table177571177575%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table177571177575%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self177581%_
                  (let ((__obj177726
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177726
                       _%table177579%_
                       '1
                       '#f
                       '#f))
                    __obj177726))
                 (__tmp177748
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177581%_ _%stx177576%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177748
             gxc#current-compile-method
             _%self177581%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords177588%_ . _%args177589%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords177588%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177588%_
                  'table:
                  absent-value))
               _%args177589%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args177572177595%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args177572177595%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self177500%_ _%stx177501%_)
        (let* ((_%g177503177520%_
                (lambda (_%g177504177517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177504177517%_))))
               (_%g177502177567%_
                (lambda (_%g177504177523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177504177523%_))
                      (let ((_%e177507177525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177504177523%_))))
                        (let ((_%hd177508177528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177507177525%_)))
                              (_%tl177509177530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177507177525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177509177530%_))
                              (let ((_%e177510177533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177509177530%_))))
                                (let ((_%hd177511177536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177510177533%_)))
                                      (_%tl177512177538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177510177533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177512177538%_))
                                      (let ((_%e177513177541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177512177538%_))))
                                        (let ((_%hd177514177544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177513177541%_)))
                                              (_%tl177515177546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177513177541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177515177546%_))
                                              ((lambda (_%g177505177549%_
                                                        _%g177506177550%_)
                                                 (let ((_%sym177565%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177506177550%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym177565%_))
                                                   (let ((__tmp177749
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp177749
                                                      _%sym177565%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177500%_
                                                      _%g177505177549%_))))
                                               _%hd177514177544%_
                                               _%hd177511177536%_)
                                              (_%g177503177520%_
                                               _%g177504177523%_))))
                                      (_%g177503177520%_ _%g177504177523%_))))
                              (_%g177503177520%_ _%g177504177523%_))))
                      (_%g177503177520%_ _%g177504177523%_)))))
          (_%g177502177567%_ _%stx177501%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self177448%_ _%stx177449%_)
        (let* ((_%g177451177464%_
                (lambda (_%g177452177461%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177452177461%_))))
               (_%g177450177497%_
                (lambda (_%g177452177467%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177452177467%_))
                      (let ((_%e177454177469%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177452177467%_))))
                        (let ((_%hd177455177472%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177454177469%_)))
                              (_%tl177456177474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177454177469%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177456177474%_))
                              (let ((_%e177457177477%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177456177474%_))))
                                (let ((_%hd177458177480%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177457177477%_)))
                                      (_%tl177459177482%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177457177477%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177459177482%_))
                                      ((lambda (_%g177453177485%_)
                                         (if (let ((__tmp177750
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self177448%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g177453177485%_
                                                __tmp177750))
                                             (let ((__tmp177751
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self177448%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177751
                                                _%stx177449%_))
                                             _%stx177449%_))
                                       _%hd177458177480%_)
                                      (_%g177451177464%_ _%g177452177467%_))))
                              (_%g177451177464%_ _%g177452177467%_))))
                      (_%g177451177464%_ _%g177452177467%_)))))
          (_%g177450177497%_ _%stx177449%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self177388%_ _%stx177389%_)
        (let* ((_%g177391177404%_
                (lambda (_%g177392177401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177392177401%_))))
               (_%g177390177445%_
                (lambda (_%g177392177407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177392177407%_))
                      (let ((_%e177394177409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177392177407%_))))
                        (let ((_%hd177395177412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177394177409%_)))
                              (_%tl177396177414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177394177409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177396177414%_))
                              (let ((_%e177397177417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177396177414%_))))
                                (let ((_%hd177398177420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177397177417%_)))
                                      (_%tl177399177422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177397177417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177399177422%_))
                                      ((lambda (_%g177393177425%_)
                                         (let ((_%$e177439%_
                                                (let ((__tmp177753
                                                       (lambda (_%sub177437%_)
                                                         (let ((__tmp177754
                                                                (car _%sub177437%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g177393177425%_
                                                            __tmp177754))))
                                                      (__tmp177752
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self177388%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp177753
                                                          __tmp177752))))
                                           (if _%$e177439%_
                                               ((lambda (_%sub177442%_)
                                                  (let ((__tmp177755
                                                         (cons '%#ref
                                                               (cons (cdr _%sub177442%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp177755
                                                     _%stx177389%_)))
                                                _%$e177439%_)
                                               _%stx177389%_)))
                                       _%hd177398177420%_)
                                      (_%g177391177404%_ _%g177392177407%_))))
                              (_%g177391177404%_ _%g177392177407%_))))
                      (_%g177391177404%_ _%g177392177407%_)))))
          (_%g177390177445%_ _%stx177389%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self177317%_ _%stx177318%_)
        (let* ((_%g177320177337%_
                (lambda (_%g177321177334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177321177334%_))))
               (_%g177319177385%_
                (lambda (_%g177321177340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177321177340%_))
                      (let ((_%e177324177342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177321177340%_))))
                        (let ((_%hd177325177345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177324177342%_)))
                              (_%tl177326177347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177324177342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177326177347%_))
                              (let ((_%e177327177350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177326177347%_))))
                                (let ((_%hd177328177353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177327177350%_)))
                                      (_%tl177329177355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177327177350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177329177355%_))
                                      (let ((_%e177330177358%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177329177355%_))))
                                        (let ((_%hd177331177361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177330177358%_)))
                                              (_%tl177332177363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177330177358%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177332177363%_))
                                              ((lambda (_%g177322177366%_
                                                        _%g177323177367%_)
                                                 (let ((_%new-expr177382%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177317%_
                                                           _%g177322177366%_)))
                                                       (_%new-xid177383%_
                                                        (if (let ((__tmp177756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self177317%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g177323177367%_ __tmp177756))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self177317%_ 'new-id))
                    _%g177323177367%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177757
                                                          (cons '%#set!
                                                                (cons _%new-xid177383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177382%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177757
                                                      _%stx177318%_))))
                                               _%hd177331177361%_
                                               _%hd177328177353%_)
                                              (_%g177320177337%_
                                               _%g177321177340%_))))
                                      (_%g177320177337%_ _%g177321177340%_))))
                              (_%g177320177337%_ _%g177321177340%_))))
                      (_%g177320177337%_ _%g177321177340%_)))))
          (_%g177319177385%_ _%stx177318%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self177240%_ _%stx177241%_)
        (let* ((_%g177243177260%_
                (lambda (_%g177244177257%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177244177257%_))))
               (_%g177242177314%_
                (lambda (_%g177244177263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177244177263%_))
                      (let ((_%e177247177265%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177244177263%_))))
                        (let ((_%hd177248177268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177247177265%_)))
                              (_%tl177249177270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177247177265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177249177270%_))
                              (let ((_%e177250177273%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177249177270%_))))
                                (let ((_%hd177251177276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177250177273%_)))
                                      (_%tl177252177278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177250177273%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177252177278%_))
                                      (let ((_%e177253177281%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177252177278%_))))
                                        (let ((_%hd177254177284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177253177281%_)))
                                              (_%tl177255177286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177253177281%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177255177286%_))
                                              ((lambda (_%g177245177289%_
                                                        _%g177246177290%_)
                                                 (let ((_%new-expr177311%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177240%_
                                                           _%g177245177289%_)))
                                                       (_%new-xid177312%_
                                                        (let ((_%$e177307%_
                                                               (let ((__tmp177759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub177305%_)
                                (let ((__tmp177760 (car _%sub177305%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g177246177290%_
                                   __tmp177760))))
                             (__tmp177758
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self177240%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp177759 __tmp177758))))
                  (if _%$e177307%_ (cdr _%$e177307%_) _%g177246177290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177761
                                                          (cons '%#set!
                                                                (cons _%new-xid177312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177311%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177761
                                                      _%stx177241%_))))
                                               _%hd177254177284%_
                                               _%hd177251177276%_)
                                              (_%g177243177260%_
                                               _%g177244177263%_))))
                                      (_%g177243177260%_ _%g177244177263%_))))
                              (_%g177243177260%_ _%g177244177263%_))))
                      (_%g177243177260%_ _%g177244177263%_)))))
          (_%g177242177314%_ _%stx177241%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self177186%_ _%stx177187%_)
        (let* ((_%g177189177202%_
                (lambda (_%g177190177199%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177190177199%_))))
               (_%g177188177237%_
                (lambda (_%g177190177205%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177190177205%_))
                      (let ((_%e177192177207%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177190177205%_))))
                        (let ((_%hd177193177210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177192177207%_)))
                              (_%tl177194177212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177192177207%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177194177212%_))
                              (let ((_%e177195177215%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177194177212%_))))
                                (let ((_%hd177196177218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177195177215%_)))
                                      (_%tl177197177220%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177195177215%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177197177220%_))
                                      ((lambda (_%g177191177223%_)
                                         (let* ((_%eid177235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g177191177223%_)))
                                                (__tmp177762
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self177186%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp177762
                                            _%eid177235%_
                                            1+
                                            '0)))
                                       _%hd177196177218%_)
                                      (_%g177189177202%_ _%g177190177205%_))))
                              (_%g177189177202%_ _%g177190177205%_))))
                      (_%g177189177202%_ _%g177190177205%_)))))
          (_%g177188177237%_ _%stx177187%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self177116%_ _%stx177117%_)
        (let* ((_%g177119177136%_
                (lambda (_%g177120177133%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177120177133%_))))
               (_%g177118177183%_
                (lambda (_%g177120177139%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177120177139%_))
                      (let ((_%e177123177141%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177120177139%_))))
                        (let ((_%hd177124177144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177123177141%_)))
                              (_%tl177125177146%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177123177141%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177125177146%_))
                              (let ((_%e177126177149%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177125177146%_))))
                                (let ((_%hd177127177152%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177126177149%_)))
                                      (_%tl177128177154%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177126177149%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177128177154%_))
                                      (let ((_%e177129177157%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177128177154%_))))
                                        (let ((_%hd177130177160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177129177157%_)))
                                              (_%tl177131177162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177129177157%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177131177162%_))
                                              ((lambda (_%g177121177165%_
                                                        _%g177122177166%_)
                                                 (let ((_%eid177181%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177122177166%_))))
                                                   (let ((__tmp177763
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self177116%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp177763
                                                      _%eid177181%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177116%_
                                                      _%g177121177165%_))))
                                               _%hd177130177160%_
                                               _%hd177127177152%_)
                                              (_%g177119177136%_
                                               _%g177120177139%_))))
                                      (_%g177119177136%_ _%g177120177139%_))))
                              (_%g177119177136%_ _%g177120177139%_))))
                      (_%g177119177136%_ _%g177120177139%_)))))
          (_%g177118177183%_ _%stx177117%_))))
    (define gxc#find-body%
      (lambda (_%self177031%_ _%stx177032%_)
        (let* ((_%g177034177053%_
                (lambda (_%g177035177050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177035177050%_))))
               (_%g177033177113%_
                (lambda (_%g177035177056%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177035177056%_))
                      (let ((_%e177037177058%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177035177056%_))))
                        (let ((_%hd177038177061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177037177058%_)))
                              (_%tl177039177063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177037177058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl177039177063%_))
                              (let ((_g177764_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl177039177063%_
                                        '0))))
                                (begin
                                  (let ((_g177765_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g177764_)
                                               (##values-length _g177764_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g177765_ 2)))
                                        (error "Context expects 2 values"
                                               _g177765_)))
                                  (let ((_%target177040177066%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177764_ 0)))
                                        (_%tl177042177068%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177764_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl177042177068%_))
                                        (letrec ((_%loop177043177071%_
                                                  (lambda (_%hd177041177074%_
                                                           _%expr177047177076%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd177041177074%_))
                                                        (let ((_%e177044177078%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd177041177074%_))))
                  (let ((_%lp-hd177045177081%_
                         (let ()
                           (declare (not safe))
                           (##car _%e177044177078%_)))
                        (_%lp-tl177046177083%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e177044177078%_))))
                    (_%loop177043177071%_
                     _%lp-tl177046177083%_
                     (cons _%lp-hd177045177081%_ _%expr177047177076%_))))
                (let ((_%expr177048177086%_ (reverse _%expr177047177076%_)))
                  ((lambda (_%g177036177088%_)
                     (let ((__tmp177768
                            (lambda (_%g177101177103%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self177031%_
                                 _%g177101177103%_))))
                           (__tmp177766
                            (let ((__tmp177767
                                   (lambda (_%g177105177108%_
                                            _%g177106177110%_)
                                     (cons _%g177105177108%_
                                           _%g177106177110%_))))
                              (declare (not safe))
                              (__foldr1 __tmp177767 '() _%g177036177088%_))))
                       (declare (not safe))
                       (__ormap1 __tmp177768 __tmp177766)))
                   _%expr177048177086%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop177043177071%_
                                           _%target177040177066%_
                                           '()))
                                        (_%g177034177053%_
                                         _%g177035177056%_)))))
                              (_%g177034177053%_ _%g177035177056%_))))
                      (_%g177034177053%_ _%g177035177056%_)))))
          (_%g177033177113%_ _%stx177032%_))))
    (define gxc#find-let-values%
      (lambda (_%self176885%_ _%stx176886%_)
        (let* ((_%g176888176923%_
                (lambda (_%g176889176920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176889176920%_))))
               (_%g176887177028%_
                (lambda (_%g176889176926%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176889176926%_))
                      (let ((_%e176893176928%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176889176926%_))))
                        (let ((_%hd176894176931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176893176928%_)))
                              (_%tl176895176933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176893176928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176895176933%_))
                              (let ((_%e176896176936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176895176933%_))))
                                (let ((_%hd176897176939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176896176936%_)))
                                      (_%tl176898176941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176896176936%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd176897176939%_))
                                      (let ((_g177769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd176897176939%_
                                                '0))))
                                        (begin
                                          (let ((_g177770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g177769_)
                                                       (##values-length
                                                        _g177769_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g177770_ 2)))
                                                (error "Context expects 2 values"
                                                       _g177770_)))
                                          (let ((_%target176899176944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g177769_ 0)))
                                                (_%tl176901176946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g177769_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176901176946%_))
                                                (letrec ((_%loop176902176949%_
                                                          (lambda (_%hd176900176952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr176906176954%_
                           _%bind176907176955%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd176900176952%_))
                        (let ((_%e176903176957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd176900176952%_))))
                          (let ((_%lp-hd176904176960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176903176957%_)))
                                (_%lp-tl176905176962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176903176957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd176904176960%_))
                                (let ((_%e176910176965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd176904176960%_))))
                                  (let ((_%hd176911176968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176910176965%_)))
                                        (_%tl176912176970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176910176965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176912176970%_))
                                        (let ((_%e176913176973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176912176970%_))))
                                          (let ((_%hd176914176976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176913176973%_)))
                                                (_%tl176915176978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176913176973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176915176978%_))
                                                (_%loop176902176949%_
                                                 _%lp-tl176905176962%_
                                                 (cons _%hd176914176976%_
                                                       _%expr176906176954%_)
                                                 (cons _%hd176911176968%_
                                                       _%bind176907176955%_))
                                                (_%g176888176923%_
                                                 _%g176889176926%_))))
                                        (_%g176888176923%_
                                         _%g176889176926%_))))
                                (_%g176888176923%_ _%g176889176926%_))))
                        (let ((_%expr176908176981%_
                               (reverse _%expr176906176954%_))
                              (_%bind176909176982%_
                               (reverse _%bind176907176955%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176898176941%_))
                              (let ((_%e176916176984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176898176941%_))))
                                (let ((_%hd176917176987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176916176984%_)))
                                      (_%tl176918176989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176916176984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176918176989%_))
                                      ((lambda (_%g176890176992%_
                                                _%g176891176993%_
                                                _%g176892176994%_)
                                         (let ((_%$e177025%_
                                                (let ((__tmp177773
                                                       (lambda (_%g177013177015%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self176885%_
                                                            _%g177013177015%_))))
                                                      (__tmp177771
                                                       (let ((__tmp177772
                                                              (lambda (_%g177017177020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g177018177022%_)
                        (cons _%g177017177020%_ _%g177018177022%_))))
                 (declare (not safe))
                 (__foldr1 __tmp177772 '() _%g176891176993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp177773
                                                   __tmp177771))))
                                           (if _%$e177025%_
                                               _%$e177025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self176885%_
                                                  _%g176890176992%_)))))
                                       _%hd176917176987%_
                                       _%expr176908176981%_
                                       _%bind176909176982%_)
                                      (_%g176888176923%_ _%g176889176926%_))))
                              (_%g176888176923%_ _%g176889176926%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop176902176949%_
                                                   _%target176899176944%_
                                                   '()
                                                   '()))
                                                (_%g176888176923%_
                                                 _%g176889176926%_)))))
                                      (_%g176888176923%_ _%g176889176926%_))))
                              (_%g176888176923%_ _%g176889176926%_))))
                      (_%g176888176923%_ _%g176889176926%_)))))
          (_%g176887177028%_ _%stx176886%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self176829%_ _%stx176830%_)
        (let* ((_%g176832176845%_
                (lambda (_%g176833176842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176833176842%_))))
               (_%g176831176882%_
                (lambda (_%g176833176848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176833176848%_))
                      (let ((_%e176835176850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176833176848%_))))
                        (let ((_%hd176836176853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176835176850%_)))
                              (_%tl176837176855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176835176850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176837176855%_))
                              (let ((_%e176838176858%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176837176855%_))))
                                (let ((_%hd176839176861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176838176858%_)))
                                      (_%tl176840176863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176838176858%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176840176863%_))
                                      ((lambda (_%g176834176866%_)
                                         (let ((__tmp177775
                                                (lambda (_%g176877176879%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g176834176866%_
                                                     _%g176877176879%_))))
                                               (__tmp177774
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self176829%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp177775 __tmp177774)))
                                       _%hd176839176861%_)
                                      (_%g176832176845%_ _%g176833176848%_))))
                              (_%g176832176845%_ _%g176833176848%_))))
                      (_%g176832176845%_ _%g176833176848%_)))))
          (_%g176831176882%_ _%stx176830%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self176754%_ _%stx176755%_)
        (let* ((_%g176757176774%_
                (lambda (_%g176758176771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176758176771%_))))
               (_%g176756176826%_
                (lambda (_%g176758176777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176758176777%_))
                      (let ((_%e176761176779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176758176777%_))))
                        (let ((_%hd176762176782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176761176779%_)))
                              (_%tl176763176784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176761176779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176763176784%_))
                              (let ((_%e176764176787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176763176784%_))))
                                (let ((_%hd176765176790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176764176787%_)))
                                      (_%tl176766176792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176764176787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176766176792%_))
                                      (let ((_%e176767176795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176766176792%_))))
                                        (let ((_%hd176768176798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176767176795%_)))
                                              (_%tl176769176800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176767176795%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176769176800%_))
                                              ((lambda (_%g176759176803%_
                                                        _%g176760176804%_)
                                                 (let ((_%$e176823%_
                                                        (let ((__tmp177777
                                                               (lambda (_%g176818176820%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g176760176804%_
                            _%g176818176820%_))))
                      (__tmp177776
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self176754%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp177777 __tmp177776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e176823%_
                                                       _%$e176823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self176754%_
                                                          _%g176759176803%_)))))
                                               _%hd176768176798%_
                                               _%hd176765176790%_)
                                              (_%g176757176774%_
                                               _%g176758176777%_))))
                                      (_%g176757176774%_ _%g176758176777%_))))
                              (_%g176757176774%_ _%g176758176777%_))))
                      (_%g176757176774%_ _%g176758176777%_)))))
          (_%g176756176826%_ _%stx176755%_))))))
