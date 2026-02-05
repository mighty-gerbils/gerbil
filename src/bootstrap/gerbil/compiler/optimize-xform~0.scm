(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770327924)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp177709 (list gxc#::void::t))
            (__tmp177708 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp177709
         '()
         __tmp177708
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args177695%_
        (apply make-instance gxc#::collect-mutators::t _%$args177695%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp177710
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
        (__make-atomic-promise __tmp177710)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx177687%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self177690%_
                (let ((__obj177698
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj177698))
               (__tmp177711
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177690%_ _%stx177687%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp177711
           gxc#current-compile-method
           _%self177690%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp177713 (list gxc#::basic-xform-expression::t))
            (__tmp177712 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp177713
         '(id new-id)
         __tmp177712
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args177684%_
        (apply make-instance gxc#::expression-subst::t _%$args177684%_)))
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
      (let ((__tmp177714
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
        (__make-atomic-promise __tmp177714)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords177656%_
               _%id177652177657%_
               _%new-id177653177658%_
               _%stx177659%_)
        (let* ((_%id177662%_
                (if (eq? _%id177652177657%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id177652177657%_))
               (_%new-id177664%_
                (if (eq? _%new-id177653177658%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id177653177658%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self177666%_
                  (let ((__obj177700
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177700
                       _%id177662%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177700
                       _%new-id177664%_
                       '2
                       '#f
                       '#f))
                    __obj177700))
                 (__tmp177715
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177666%_ _%stx177659%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177715
             gxc#current-compile-method
             _%self177666%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords177673%_ . _%args177674%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords177673%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177673%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177673%_
                  'new-id:
                  absent-value))
               _%args177674%_)))
    (define gxc#apply-expression-subst
      (lambda _%args177654177680%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args177654177680%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp177717 (list gxc#::basic-xform-expression::t))
            (__tmp177716 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp177717
         '(subst)
         __tmp177716
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args177648%_
        (apply make-instance gxc#::expression-subst*::t _%$args177648%_)))
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
      (let ((__tmp177718
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
        (__make-atomic-promise __tmp177718)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords177623%_ _%subst177620177624%_ _%stx177625%_)
        (let ((_%subst177628%_
               (if (eq? _%subst177620177624%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst177620177624%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self177630%_
                  (let ((__obj177702
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177702
                       _%subst177628%_
                       '1
                       '#f
                       '#f))
                    __obj177702))
                 (__tmp177719
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177630%_ _%stx177625%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177719
             gxc#current-compile-method
             _%self177630%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords177637%_ . _%args177638%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords177637%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177637%_
                  'subst:
                  absent-value))
               _%args177638%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args177621177644%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args177621177644%_)))
    (define gxc#::find-expression::t
      (let ((__tmp177720 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp177720
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args177616%_
        (apply make-instance gxc#::find-expression::t _%$args177616%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp177721
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
        (__make-atomic-promise __tmp177721)))
    (define gxc#::find-var-refs::t
      (let ((__tmp177723 (list gxc#::find-expression::t))
            (__tmp177722 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp177723
         '(ids)
         __tmp177722
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args177612%_
        (apply make-instance gxc#::find-var-refs::t _%$args177612%_)))
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
      (let ((__tmp177724
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
        (__make-atomic-promise __tmp177724)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords177587%_ _%ids177584177588%_ _%stx177589%_)
        (let ((_%ids177592%_
               (if (eq? _%ids177584177588%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids177584177588%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self177594%_
                  (let ((__obj177705
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177705
                       _%ids177592%_
                       '1
                       '#f
                       '#f))
                    __obj177705))
                 (__tmp177725
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177594%_ _%stx177589%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177725
             gxc#current-compile-method
             _%self177594%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords177601%_ . _%args177602%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords177601%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177601%_ 'ids: absent-value))
               _%args177602%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args177585177608%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args177585177608%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp177727 (list gxc#::collect-expression-refs::t))
            (__tmp177726 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp177727
         '()
         __tmp177726
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args177580%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args177580%_)))
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
      (let ((__tmp177728
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
        (__make-atomic-promise __tmp177728)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords177555%_ _%table177552177556%_ _%stx177557%_)
        (let ((_%table177560%_
               (if (eq? _%table177552177556%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table177552177556%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self177562%_
                  (let ((__obj177707
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177707
                       _%table177560%_
                       '1
                       '#f
                       '#f))
                    __obj177707))
                 (__tmp177729
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177562%_ _%stx177557%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177729
             gxc#current-compile-method
             _%self177562%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords177569%_ . _%args177570%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords177569%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177569%_
                  'table:
                  absent-value))
               _%args177570%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args177553177576%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args177553177576%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self177481%_ _%stx177482%_)
        (let* ((_%g177484177501%_
                (lambda (_%g177485177498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177485177498%_))))
               (_%g177483177548%_
                (lambda (_%g177485177504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177485177504%_))
                      (let ((_%e177488177506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177485177504%_))))
                        (let ((_%hd177489177509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177488177506%_)))
                              (_%tl177490177511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177488177506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177490177511%_))
                              (let ((_%e177491177514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177490177511%_))))
                                (let ((_%hd177492177517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177491177514%_)))
                                      (_%tl177493177519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177491177514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177493177519%_))
                                      (let ((_%e177494177522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177493177519%_))))
                                        (let ((_%hd177495177525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177494177522%_)))
                                              (_%tl177496177527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177494177522%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177496177527%_))
                                              ((lambda (_%g177486177530%_
                                                        _%g177487177531%_)
                                                 (let ((_%sym177546%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177487177531%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym177546%_))
                                                   (let ((__tmp177730
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp177730
                                                      _%sym177546%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177481%_
                                                      _%g177486177530%_))))
                                               _%hd177495177525%_
                                               _%hd177492177517%_)
                                              (_%g177484177501%_
                                               _%g177485177504%_))))
                                      (_%g177484177501%_ _%g177485177504%_))))
                              (_%g177484177501%_ _%g177485177504%_))))
                      (_%g177484177501%_ _%g177485177504%_)))))
          (_%g177483177548%_ _%stx177482%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self177429%_ _%stx177430%_)
        (let* ((_%g177432177445%_
                (lambda (_%g177433177442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177433177442%_))))
               (_%g177431177478%_
                (lambda (_%g177433177448%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177433177448%_))
                      (let ((_%e177435177450%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177433177448%_))))
                        (let ((_%hd177436177453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177435177450%_)))
                              (_%tl177437177455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177435177450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177437177455%_))
                              (let ((_%e177438177458%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177437177455%_))))
                                (let ((_%hd177439177461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177438177458%_)))
                                      (_%tl177440177463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177438177458%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177440177463%_))
                                      ((lambda (_%g177434177466%_)
                                         (if (let ((__tmp177731
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self177429%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g177434177466%_
                                                __tmp177731))
                                             (let ((__tmp177732
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self177429%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177732
                                                _%stx177430%_))
                                             _%stx177430%_))
                                       _%hd177439177461%_)
                                      (_%g177432177445%_ _%g177433177448%_))))
                              (_%g177432177445%_ _%g177433177448%_))))
                      (_%g177432177445%_ _%g177433177448%_)))))
          (_%g177431177478%_ _%stx177430%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self177369%_ _%stx177370%_)
        (let* ((_%g177372177385%_
                (lambda (_%g177373177382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177373177382%_))))
               (_%g177371177426%_
                (lambda (_%g177373177388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177373177388%_))
                      (let ((_%e177375177390%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177373177388%_))))
                        (let ((_%hd177376177393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177375177390%_)))
                              (_%tl177377177395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177375177390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177377177395%_))
                              (let ((_%e177378177398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177377177395%_))))
                                (let ((_%hd177379177401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177378177398%_)))
                                      (_%tl177380177403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177378177398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177380177403%_))
                                      ((lambda (_%g177374177406%_)
                                         (let ((_%$e177420%_
                                                (let ((__tmp177734
                                                       (lambda (_%sub177418%_)
                                                         (let ((__tmp177735
                                                                (car _%sub177418%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g177374177406%_
                                                            __tmp177735))))
                                                      (__tmp177733
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self177369%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp177734
                                                          __tmp177733))))
                                           (if _%$e177420%_
                                               ((lambda (_%sub177423%_)
                                                  (let ((__tmp177736
                                                         (cons '%#ref
                                                               (cons (cdr _%sub177423%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp177736
                                                     _%stx177370%_)))
                                                _%$e177420%_)
                                               _%stx177370%_)))
                                       _%hd177379177401%_)
                                      (_%g177372177385%_ _%g177373177388%_))))
                              (_%g177372177385%_ _%g177373177388%_))))
                      (_%g177372177385%_ _%g177373177388%_)))))
          (_%g177371177426%_ _%stx177370%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self177298%_ _%stx177299%_)
        (let* ((_%g177301177318%_
                (lambda (_%g177302177315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177302177315%_))))
               (_%g177300177366%_
                (lambda (_%g177302177321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177302177321%_))
                      (let ((_%e177305177323%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177302177321%_))))
                        (let ((_%hd177306177326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177305177323%_)))
                              (_%tl177307177328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177305177323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177307177328%_))
                              (let ((_%e177308177331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177307177328%_))))
                                (let ((_%hd177309177334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177308177331%_)))
                                      (_%tl177310177336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177308177331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177310177336%_))
                                      (let ((_%e177311177339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177310177336%_))))
                                        (let ((_%hd177312177342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177311177339%_)))
                                              (_%tl177313177344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177311177339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177313177344%_))
                                              ((lambda (_%g177303177347%_
                                                        _%g177304177348%_)
                                                 (let ((_%new-expr177363%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177298%_
                                                           _%g177303177347%_)))
                                                       (_%new-xid177364%_
                                                        (if (let ((__tmp177737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self177298%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g177304177348%_ __tmp177737))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self177298%_ 'new-id))
                    _%g177304177348%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177738
                                                          (cons '%#set!
                                                                (cons _%new-xid177364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177363%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177738
                                                      _%stx177299%_))))
                                               _%hd177312177342%_
                                               _%hd177309177334%_)
                                              (_%g177301177318%_
                                               _%g177302177321%_))))
                                      (_%g177301177318%_ _%g177302177321%_))))
                              (_%g177301177318%_ _%g177302177321%_))))
                      (_%g177301177318%_ _%g177302177321%_)))))
          (_%g177300177366%_ _%stx177299%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self177221%_ _%stx177222%_)
        (let* ((_%g177224177241%_
                (lambda (_%g177225177238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177225177238%_))))
               (_%g177223177295%_
                (lambda (_%g177225177244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177225177244%_))
                      (let ((_%e177228177246%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177225177244%_))))
                        (let ((_%hd177229177249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177228177246%_)))
                              (_%tl177230177251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177228177246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177230177251%_))
                              (let ((_%e177231177254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177230177251%_))))
                                (let ((_%hd177232177257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177231177254%_)))
                                      (_%tl177233177259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177231177254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177233177259%_))
                                      (let ((_%e177234177262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177233177259%_))))
                                        (let ((_%hd177235177265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177234177262%_)))
                                              (_%tl177236177267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177234177262%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177236177267%_))
                                              ((lambda (_%g177226177270%_
                                                        _%g177227177271%_)
                                                 (let ((_%new-expr177292%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177221%_
                                                           _%g177226177270%_)))
                                                       (_%new-xid177293%_
                                                        (let ((_%$e177288%_
                                                               (let ((__tmp177740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub177286%_)
                                (let ((__tmp177741 (car _%sub177286%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g177227177271%_
                                   __tmp177741))))
                             (__tmp177739
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self177221%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp177740 __tmp177739))))
                  (if _%$e177288%_ (cdr _%$e177288%_) _%g177227177271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177742
                                                          (cons '%#set!
                                                                (cons _%new-xid177293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177292%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177742
                                                      _%stx177222%_))))
                                               _%hd177235177265%_
                                               _%hd177232177257%_)
                                              (_%g177224177241%_
                                               _%g177225177244%_))))
                                      (_%g177224177241%_ _%g177225177244%_))))
                              (_%g177224177241%_ _%g177225177244%_))))
                      (_%g177224177241%_ _%g177225177244%_)))))
          (_%g177223177295%_ _%stx177222%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self177167%_ _%stx177168%_)
        (let* ((_%g177170177183%_
                (lambda (_%g177171177180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177171177180%_))))
               (_%g177169177218%_
                (lambda (_%g177171177186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177171177186%_))
                      (let ((_%e177173177188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177171177186%_))))
                        (let ((_%hd177174177191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177173177188%_)))
                              (_%tl177175177193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177173177188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177175177193%_))
                              (let ((_%e177176177196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177175177193%_))))
                                (let ((_%hd177177177199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177176177196%_)))
                                      (_%tl177178177201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177176177196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177178177201%_))
                                      ((lambda (_%g177172177204%_)
                                         (let* ((_%eid177216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g177172177204%_)))
                                                (__tmp177743
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self177167%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp177743
                                            _%eid177216%_
                                            1+
                                            '0)))
                                       _%hd177177177199%_)
                                      (_%g177170177183%_ _%g177171177186%_))))
                              (_%g177170177183%_ _%g177171177186%_))))
                      (_%g177170177183%_ _%g177171177186%_)))))
          (_%g177169177218%_ _%stx177168%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self177097%_ _%stx177098%_)
        (let* ((_%g177100177117%_
                (lambda (_%g177101177114%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177101177114%_))))
               (_%g177099177164%_
                (lambda (_%g177101177120%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177101177120%_))
                      (let ((_%e177104177122%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177101177120%_))))
                        (let ((_%hd177105177125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177104177122%_)))
                              (_%tl177106177127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177104177122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177106177127%_))
                              (let ((_%e177107177130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177106177127%_))))
                                (let ((_%hd177108177133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177107177130%_)))
                                      (_%tl177109177135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177107177130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177109177135%_))
                                      (let ((_%e177110177138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177109177135%_))))
                                        (let ((_%hd177111177141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177110177138%_)))
                                              (_%tl177112177143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177110177138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177112177143%_))
                                              ((lambda (_%g177102177146%_
                                                        _%g177103177147%_)
                                                 (let ((_%eid177162%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177103177147%_))))
                                                   (let ((__tmp177744
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self177097%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp177744
                                                      _%eid177162%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177097%_
                                                      _%g177102177146%_))))
                                               _%hd177111177141%_
                                               _%hd177108177133%_)
                                              (_%g177100177117%_
                                               _%g177101177120%_))))
                                      (_%g177100177117%_ _%g177101177120%_))))
                              (_%g177100177117%_ _%g177101177120%_))))
                      (_%g177100177117%_ _%g177101177120%_)))))
          (_%g177099177164%_ _%stx177098%_))))
    (define gxc#find-body%
      (lambda (_%self177012%_ _%stx177013%_)
        (let* ((_%g177015177034%_
                (lambda (_%g177016177031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177016177031%_))))
               (_%g177014177094%_
                (lambda (_%g177016177037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177016177037%_))
                      (let ((_%e177018177039%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177016177037%_))))
                        (let ((_%hd177019177042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177018177039%_)))
                              (_%tl177020177044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177018177039%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl177020177044%_))
                              (let ((_g177745_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl177020177044%_
                                        '0))))
                                (begin
                                  (let ((_g177746_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g177745_)
                                               (##values-length _g177745_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g177746_ 2)))
                                        (error "Context expects 2 values"
                                               _g177746_)))
                                  (let ((_%target177021177047%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177745_ 0)))
                                        (_%tl177023177049%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177745_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl177023177049%_))
                                        (letrec ((_%loop177024177052%_
                                                  (lambda (_%hd177022177055%_
                                                           _%expr177028177057%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd177022177055%_))
                                                        (let ((_%e177025177059%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd177022177055%_))))
                  (let ((_%lp-hd177026177062%_
                         (let ()
                           (declare (not safe))
                           (##car _%e177025177059%_)))
                        (_%lp-tl177027177064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e177025177059%_))))
                    (_%loop177024177052%_
                     _%lp-tl177027177064%_
                     (cons _%lp-hd177026177062%_ _%expr177028177057%_))))
                (let ((_%expr177029177067%_ (reverse _%expr177028177057%_)))
                  ((lambda (_%g177017177069%_)
                     (let ((__tmp177749
                            (lambda (_%g177082177084%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self177012%_
                                 _%g177082177084%_))))
                           (__tmp177747
                            (let ((__tmp177748
                                   (lambda (_%g177086177089%_
                                            _%g177087177091%_)
                                     (cons _%g177086177089%_
                                           _%g177087177091%_))))
                              (declare (not safe))
                              (__foldr1 __tmp177748 '() _%g177017177069%_))))
                       (declare (not safe))
                       (__ormap1 __tmp177749 __tmp177747)))
                   _%expr177029177067%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop177024177052%_
                                           _%target177021177047%_
                                           '()))
                                        (_%g177015177034%_
                                         _%g177016177037%_)))))
                              (_%g177015177034%_ _%g177016177037%_))))
                      (_%g177015177034%_ _%g177016177037%_)))))
          (_%g177014177094%_ _%stx177013%_))))
    (define gxc#find-let-values%
      (lambda (_%self176866%_ _%stx176867%_)
        (let* ((_%g176869176904%_
                (lambda (_%g176870176901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176870176901%_))))
               (_%g176868177009%_
                (lambda (_%g176870176907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176870176907%_))
                      (let ((_%e176874176909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176870176907%_))))
                        (let ((_%hd176875176912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176874176909%_)))
                              (_%tl176876176914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176874176909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176876176914%_))
                              (let ((_%e176877176917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176876176914%_))))
                                (let ((_%hd176878176920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176877176917%_)))
                                      (_%tl176879176922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176877176917%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd176878176920%_))
                                      (let ((_g177750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd176878176920%_
                                                '0))))
                                        (begin
                                          (let ((_g177751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g177750_)
                                                       (##values-length
                                                        _g177750_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g177751_ 2)))
                                                (error "Context expects 2 values"
                                                       _g177751_)))
                                          (let ((_%target176880176925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g177750_ 0)))
                                                (_%tl176882176927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g177750_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176882176927%_))
                                                (letrec ((_%loop176883176930%_
                                                          (lambda (_%hd176881176933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr176887176935%_
                           _%bind176888176936%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd176881176933%_))
                        (let ((_%e176884176938%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd176881176933%_))))
                          (let ((_%lp-hd176885176941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176884176938%_)))
                                (_%lp-tl176886176943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176884176938%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd176885176941%_))
                                (let ((_%e176891176946%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd176885176941%_))))
                                  (let ((_%hd176892176949%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176891176946%_)))
                                        (_%tl176893176951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176891176946%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176893176951%_))
                                        (let ((_%e176894176954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176893176951%_))))
                                          (let ((_%hd176895176957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176894176954%_)))
                                                (_%tl176896176959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176894176954%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176896176959%_))
                                                (_%loop176883176930%_
                                                 _%lp-tl176886176943%_
                                                 (cons _%hd176895176957%_
                                                       _%expr176887176935%_)
                                                 (cons _%hd176892176949%_
                                                       _%bind176888176936%_))
                                                (_%g176869176904%_
                                                 _%g176870176907%_))))
                                        (_%g176869176904%_
                                         _%g176870176907%_))))
                                (_%g176869176904%_ _%g176870176907%_))))
                        (let ((_%expr176889176962%_
                               (reverse _%expr176887176935%_))
                              (_%bind176890176963%_
                               (reverse _%bind176888176936%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176879176922%_))
                              (let ((_%e176897176965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176879176922%_))))
                                (let ((_%hd176898176968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176897176965%_)))
                                      (_%tl176899176970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176897176965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176899176970%_))
                                      ((lambda (_%g176871176973%_
                                                _%g176872176974%_
                                                _%g176873176975%_)
                                         (let ((_%$e177006%_
                                                (let ((__tmp177754
                                                       (lambda (_%g176994176996%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self176866%_
                                                            _%g176994176996%_))))
                                                      (__tmp177752
                                                       (let ((__tmp177753
                                                              (lambda (_%g176998177001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g176999177003%_)
                        (cons _%g176998177001%_ _%g176999177003%_))))
                 (declare (not safe))
                 (__foldr1 __tmp177753 '() _%g176872176974%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp177754
                                                   __tmp177752))))
                                           (if _%$e177006%_
                                               _%$e177006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self176866%_
                                                  _%g176871176973%_)))))
                                       _%hd176898176968%_
                                       _%expr176889176962%_
                                       _%bind176890176963%_)
                                      (_%g176869176904%_ _%g176870176907%_))))
                              (_%g176869176904%_ _%g176870176907%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop176883176930%_
                                                   _%target176880176925%_
                                                   '()
                                                   '()))
                                                (_%g176869176904%_
                                                 _%g176870176907%_)))))
                                      (_%g176869176904%_ _%g176870176907%_))))
                              (_%g176869176904%_ _%g176870176907%_))))
                      (_%g176869176904%_ _%g176870176907%_)))))
          (_%g176868177009%_ _%stx176867%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self176810%_ _%stx176811%_)
        (let* ((_%g176813176826%_
                (lambda (_%g176814176823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176814176823%_))))
               (_%g176812176863%_
                (lambda (_%g176814176829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176814176829%_))
                      (let ((_%e176816176831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176814176829%_))))
                        (let ((_%hd176817176834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176816176831%_)))
                              (_%tl176818176836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176816176831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176818176836%_))
                              (let ((_%e176819176839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176818176836%_))))
                                (let ((_%hd176820176842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176819176839%_)))
                                      (_%tl176821176844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176819176839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176821176844%_))
                                      ((lambda (_%g176815176847%_)
                                         (let ((__tmp177756
                                                (lambda (_%g176858176860%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g176815176847%_
                                                     _%g176858176860%_))))
                                               (__tmp177755
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self176810%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp177756 __tmp177755)))
                                       _%hd176820176842%_)
                                      (_%g176813176826%_ _%g176814176829%_))))
                              (_%g176813176826%_ _%g176814176829%_))))
                      (_%g176813176826%_ _%g176814176829%_)))))
          (_%g176812176863%_ _%stx176811%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self176735%_ _%stx176736%_)
        (let* ((_%g176738176755%_
                (lambda (_%g176739176752%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176739176752%_))))
               (_%g176737176807%_
                (lambda (_%g176739176758%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176739176758%_))
                      (let ((_%e176742176760%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176739176758%_))))
                        (let ((_%hd176743176763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176742176760%_)))
                              (_%tl176744176765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176742176760%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176744176765%_))
                              (let ((_%e176745176768%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176744176765%_))))
                                (let ((_%hd176746176771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176745176768%_)))
                                      (_%tl176747176773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176745176768%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176747176773%_))
                                      (let ((_%e176748176776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176747176773%_))))
                                        (let ((_%hd176749176779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176748176776%_)))
                                              (_%tl176750176781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176748176776%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176750176781%_))
                                              ((lambda (_%g176740176784%_
                                                        _%g176741176785%_)
                                                 (let ((_%$e176804%_
                                                        (let ((__tmp177758
                                                               (lambda (_%g176799176801%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g176741176785%_
                            _%g176799176801%_))))
                      (__tmp177757
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self176735%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp177758 __tmp177757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e176804%_
                                                       _%$e176804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self176735%_
                                                          _%g176740176784%_)))))
                                               _%hd176749176779%_
                                               _%hd176746176771%_)
                                              (_%g176738176755%_
                                               _%g176739176758%_))))
                                      (_%g176738176755%_ _%g176739176758%_))))
                              (_%g176738176755%_ _%g176739176758%_))))
                      (_%g176738176755%_ _%g176739176758%_)))))
          (_%g176737176807%_ _%stx176736%_))))))
