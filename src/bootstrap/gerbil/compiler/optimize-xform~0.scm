(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770313937)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp177753 (list gxc#::void::t))
            (__tmp177752 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp177753
         '()
         __tmp177752
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args177739%_
        (apply make-instance gxc#::collect-mutators::t _%$args177739%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp177754
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
        (__make-atomic-promise __tmp177754)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx177731%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self177734%_
                (let ((__obj177742
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj177742))
               (__tmp177755
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177734%_ _%stx177731%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp177755
           gxc#current-compile-method
           _%self177734%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp177757 (list gxc#::basic-xform-expression::t))
            (__tmp177756 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp177757
         '(id new-id)
         __tmp177756
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args177728%_
        (apply make-instance gxc#::expression-subst::t _%$args177728%_)))
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
      (let ((__tmp177758
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
        (__make-atomic-promise __tmp177758)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords177700%_
               _%id177696177701%_
               _%new-id177697177702%_
               _%stx177703%_)
        (let* ((_%id177706%_
                (if (eq? _%id177696177701%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id177696177701%_))
               (_%new-id177708%_
                (if (eq? _%new-id177697177702%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id177697177702%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self177710%_
                  (let ((__obj177744
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177744
                       _%id177706%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177744
                       _%new-id177708%_
                       '2
                       '#f
                       '#f))
                    __obj177744))
                 (__tmp177759
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177710%_ _%stx177703%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177759
             gxc#current-compile-method
             _%self177710%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords177717%_ . _%args177718%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords177717%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177717%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177717%_
                  'new-id:
                  absent-value))
               _%args177718%_)))
    (define gxc#apply-expression-subst
      (lambda _%args177698177724%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args177698177724%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp177761 (list gxc#::basic-xform-expression::t))
            (__tmp177760 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp177761
         '(subst)
         __tmp177760
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args177692%_
        (apply make-instance gxc#::expression-subst*::t _%$args177692%_)))
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
      (let ((__tmp177762
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
        (__make-atomic-promise __tmp177762)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords177667%_ _%subst177664177668%_ _%stx177669%_)
        (let ((_%subst177672%_
               (if (eq? _%subst177664177668%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst177664177668%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self177674%_
                  (let ((__obj177746
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177746
                       _%subst177672%_
                       '1
                       '#f
                       '#f))
                    __obj177746))
                 (__tmp177763
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177674%_ _%stx177669%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177763
             gxc#current-compile-method
             _%self177674%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords177681%_ . _%args177682%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords177681%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177681%_
                  'subst:
                  absent-value))
               _%args177682%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args177665177688%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args177665177688%_)))
    (define gxc#::find-expression::t
      (let ((__tmp177764 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp177764
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args177660%_
        (apply make-instance gxc#::find-expression::t _%$args177660%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp177765
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
        (__make-atomic-promise __tmp177765)))
    (define gxc#::find-var-refs::t
      (let ((__tmp177767 (list gxc#::find-expression::t))
            (__tmp177766 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp177767
         '(ids)
         __tmp177766
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args177656%_
        (apply make-instance gxc#::find-var-refs::t _%$args177656%_)))
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
      (let ((__tmp177768
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
        (__make-atomic-promise __tmp177768)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords177631%_ _%ids177628177632%_ _%stx177633%_)
        (let ((_%ids177636%_
               (if (eq? _%ids177628177632%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids177628177632%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self177638%_
                  (let ((__obj177749
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177749
                       _%ids177636%_
                       '1
                       '#f
                       '#f))
                    __obj177749))
                 (__tmp177769
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177638%_ _%stx177633%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177769
             gxc#current-compile-method
             _%self177638%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords177645%_ . _%args177646%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords177645%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177645%_ 'ids: absent-value))
               _%args177646%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args177629177652%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args177629177652%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp177771 (list gxc#::collect-expression-refs::t))
            (__tmp177770 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp177771
         '()
         __tmp177770
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args177624%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args177624%_)))
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
      (let ((__tmp177772
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
        (__make-atomic-promise __tmp177772)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords177599%_ _%table177596177600%_ _%stx177601%_)
        (let ((_%table177604%_
               (if (eq? _%table177596177600%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table177596177600%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self177606%_
                  (let ((__obj177751
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177751
                       _%table177604%_
                       '1
                       '#f
                       '#f))
                    __obj177751))
                 (__tmp177773
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177606%_ _%stx177601%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177773
             gxc#current-compile-method
             _%self177606%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords177613%_ . _%args177614%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords177613%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177613%_
                  'table:
                  absent-value))
               _%args177614%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args177597177620%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args177597177620%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self177525%_ _%stx177526%_)
        (let* ((_%g177528177545%_
                (lambda (_%g177529177542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177529177542%_))))
               (_%g177527177592%_
                (lambda (_%g177529177548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177529177548%_))
                      (let ((_%e177532177550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177529177548%_))))
                        (let ((_%hd177533177553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177532177550%_)))
                              (_%tl177534177555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177532177550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177534177555%_))
                              (let ((_%e177535177558%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177534177555%_))))
                                (let ((_%hd177536177561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177535177558%_)))
                                      (_%tl177537177563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177535177558%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177537177563%_))
                                      (let ((_%e177538177566%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177537177563%_))))
                                        (let ((_%hd177539177569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177538177566%_)))
                                              (_%tl177540177571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177538177566%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177540177571%_))
                                              ((lambda (_%g177530177574%_
                                                        _%g177531177575%_)
                                                 (let ((_%sym177590%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177531177575%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym177590%_))
                                                   (let ((__tmp177774
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp177774
                                                      _%sym177590%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177525%_
                                                      _%g177530177574%_))))
                                               _%hd177539177569%_
                                               _%hd177536177561%_)
                                              (_%g177528177545%_
                                               _%g177529177548%_))))
                                      (_%g177528177545%_ _%g177529177548%_))))
                              (_%g177528177545%_ _%g177529177548%_))))
                      (_%g177528177545%_ _%g177529177548%_)))))
          (_%g177527177592%_ _%stx177526%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self177473%_ _%stx177474%_)
        (let* ((_%g177476177489%_
                (lambda (_%g177477177486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177477177486%_))))
               (_%g177475177522%_
                (lambda (_%g177477177492%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177477177492%_))
                      (let ((_%e177479177494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177477177492%_))))
                        (let ((_%hd177480177497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177479177494%_)))
                              (_%tl177481177499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177479177494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177481177499%_))
                              (let ((_%e177482177502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177481177499%_))))
                                (let ((_%hd177483177505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177482177502%_)))
                                      (_%tl177484177507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177482177502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177484177507%_))
                                      ((lambda (_%g177478177510%_)
                                         (if (let ((__tmp177775
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self177473%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g177478177510%_
                                                __tmp177775))
                                             (let ((__tmp177776
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self177473%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177776
                                                _%stx177474%_))
                                             _%stx177474%_))
                                       _%hd177483177505%_)
                                      (_%g177476177489%_ _%g177477177492%_))))
                              (_%g177476177489%_ _%g177477177492%_))))
                      (_%g177476177489%_ _%g177477177492%_)))))
          (_%g177475177522%_ _%stx177474%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self177413%_ _%stx177414%_)
        (let* ((_%g177416177429%_
                (lambda (_%g177417177426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177417177426%_))))
               (_%g177415177470%_
                (lambda (_%g177417177432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177417177432%_))
                      (let ((_%e177419177434%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177417177432%_))))
                        (let ((_%hd177420177437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177419177434%_)))
                              (_%tl177421177439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177419177434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177421177439%_))
                              (let ((_%e177422177442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177421177439%_))))
                                (let ((_%hd177423177445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177422177442%_)))
                                      (_%tl177424177447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177422177442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177424177447%_))
                                      ((lambda (_%g177418177450%_)
                                         (let ((_%$e177464%_
                                                (let ((__tmp177778
                                                       (lambda (_%sub177462%_)
                                                         (let ((__tmp177779
                                                                (car _%sub177462%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g177418177450%_
                                                            __tmp177779))))
                                                      (__tmp177777
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self177413%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp177778
                                                          __tmp177777))))
                                           (if _%$e177464%_
                                               ((lambda (_%sub177467%_)
                                                  (let ((__tmp177780
                                                         (cons '%#ref
                                                               (cons (cdr _%sub177467%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp177780
                                                     _%stx177414%_)))
                                                _%$e177464%_)
                                               _%stx177414%_)))
                                       _%hd177423177445%_)
                                      (_%g177416177429%_ _%g177417177432%_))))
                              (_%g177416177429%_ _%g177417177432%_))))
                      (_%g177416177429%_ _%g177417177432%_)))))
          (_%g177415177470%_ _%stx177414%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self177342%_ _%stx177343%_)
        (let* ((_%g177345177362%_
                (lambda (_%g177346177359%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177346177359%_))))
               (_%g177344177410%_
                (lambda (_%g177346177365%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177346177365%_))
                      (let ((_%e177349177367%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177346177365%_))))
                        (let ((_%hd177350177370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177349177367%_)))
                              (_%tl177351177372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177349177367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177351177372%_))
                              (let ((_%e177352177375%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177351177372%_))))
                                (let ((_%hd177353177378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177352177375%_)))
                                      (_%tl177354177380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177352177375%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177354177380%_))
                                      (let ((_%e177355177383%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177354177380%_))))
                                        (let ((_%hd177356177386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177355177383%_)))
                                              (_%tl177357177388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177355177383%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177357177388%_))
                                              ((lambda (_%g177347177391%_
                                                        _%g177348177392%_)
                                                 (let ((_%new-expr177407%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177342%_
                                                           _%g177347177391%_)))
                                                       (_%new-xid177408%_
                                                        (if (let ((__tmp177781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self177342%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g177348177392%_ __tmp177781))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self177342%_ 'new-id))
                    _%g177348177392%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177782
                                                          (cons '%#set!
                                                                (cons _%new-xid177408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177407%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177782
                                                      _%stx177343%_))))
                                               _%hd177356177386%_
                                               _%hd177353177378%_)
                                              (_%g177345177362%_
                                               _%g177346177365%_))))
                                      (_%g177345177362%_ _%g177346177365%_))))
                              (_%g177345177362%_ _%g177346177365%_))))
                      (_%g177345177362%_ _%g177346177365%_)))))
          (_%g177344177410%_ _%stx177343%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self177265%_ _%stx177266%_)
        (let* ((_%g177268177285%_
                (lambda (_%g177269177282%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177269177282%_))))
               (_%g177267177339%_
                (lambda (_%g177269177288%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177269177288%_))
                      (let ((_%e177272177290%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177269177288%_))))
                        (let ((_%hd177273177293%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177272177290%_)))
                              (_%tl177274177295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177272177290%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177274177295%_))
                              (let ((_%e177275177298%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177274177295%_))))
                                (let ((_%hd177276177301%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177275177298%_)))
                                      (_%tl177277177303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177275177298%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177277177303%_))
                                      (let ((_%e177278177306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177277177303%_))))
                                        (let ((_%hd177279177309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177278177306%_)))
                                              (_%tl177280177311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177278177306%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177280177311%_))
                                              ((lambda (_%g177270177314%_
                                                        _%g177271177315%_)
                                                 (let ((_%new-expr177336%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177265%_
                                                           _%g177270177314%_)))
                                                       (_%new-xid177337%_
                                                        (let ((_%$e177332%_
                                                               (let ((__tmp177784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub177330%_)
                                (let ((__tmp177785 (car _%sub177330%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g177271177315%_
                                   __tmp177785))))
                             (__tmp177783
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self177265%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp177784 __tmp177783))))
                  (if _%$e177332%_ (cdr _%$e177332%_) _%g177271177315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177786
                                                          (cons '%#set!
                                                                (cons _%new-xid177337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177336%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177786
                                                      _%stx177266%_))))
                                               _%hd177279177309%_
                                               _%hd177276177301%_)
                                              (_%g177268177285%_
                                               _%g177269177288%_))))
                                      (_%g177268177285%_ _%g177269177288%_))))
                              (_%g177268177285%_ _%g177269177288%_))))
                      (_%g177268177285%_ _%g177269177288%_)))))
          (_%g177267177339%_ _%stx177266%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self177211%_ _%stx177212%_)
        (let* ((_%g177214177227%_
                (lambda (_%g177215177224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177215177224%_))))
               (_%g177213177262%_
                (lambda (_%g177215177230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177215177230%_))
                      (let ((_%e177217177232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177215177230%_))))
                        (let ((_%hd177218177235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177217177232%_)))
                              (_%tl177219177237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177217177232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177219177237%_))
                              (let ((_%e177220177240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177219177237%_))))
                                (let ((_%hd177221177243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177220177240%_)))
                                      (_%tl177222177245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177220177240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177222177245%_))
                                      ((lambda (_%g177216177248%_)
                                         (let* ((_%eid177260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g177216177248%_)))
                                                (__tmp177787
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self177211%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp177787
                                            _%eid177260%_
                                            1+
                                            '0)))
                                       _%hd177221177243%_)
                                      (_%g177214177227%_ _%g177215177230%_))))
                              (_%g177214177227%_ _%g177215177230%_))))
                      (_%g177214177227%_ _%g177215177230%_)))))
          (_%g177213177262%_ _%stx177212%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self177141%_ _%stx177142%_)
        (let* ((_%g177144177161%_
                (lambda (_%g177145177158%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177145177158%_))))
               (_%g177143177208%_
                (lambda (_%g177145177164%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177145177164%_))
                      (let ((_%e177148177166%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177145177164%_))))
                        (let ((_%hd177149177169%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177148177166%_)))
                              (_%tl177150177171%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177148177166%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177150177171%_))
                              (let ((_%e177151177174%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177150177171%_))))
                                (let ((_%hd177152177177%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177151177174%_)))
                                      (_%tl177153177179%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177151177174%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177153177179%_))
                                      (let ((_%e177154177182%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177153177179%_))))
                                        (let ((_%hd177155177185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177154177182%_)))
                                              (_%tl177156177187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177154177182%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177156177187%_))
                                              ((lambda (_%g177146177190%_
                                                        _%g177147177191%_)
                                                 (let ((_%eid177206%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177147177191%_))))
                                                   (let ((__tmp177788
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self177141%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp177788
                                                      _%eid177206%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177141%_
                                                      _%g177146177190%_))))
                                               _%hd177155177185%_
                                               _%hd177152177177%_)
                                              (_%g177144177161%_
                                               _%g177145177164%_))))
                                      (_%g177144177161%_ _%g177145177164%_))))
                              (_%g177144177161%_ _%g177145177164%_))))
                      (_%g177144177161%_ _%g177145177164%_)))))
          (_%g177143177208%_ _%stx177142%_))))
    (define gxc#find-body%
      (lambda (_%self177056%_ _%stx177057%_)
        (let* ((_%g177059177078%_
                (lambda (_%g177060177075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177060177075%_))))
               (_%g177058177138%_
                (lambda (_%g177060177081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177060177081%_))
                      (let ((_%e177062177083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177060177081%_))))
                        (let ((_%hd177063177086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177062177083%_)))
                              (_%tl177064177088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177062177083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl177064177088%_))
                              (let ((_g177789_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl177064177088%_
                                        '0))))
                                (begin
                                  (let ((_g177790_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g177789_)
                                               (##values-length _g177789_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g177790_ 2)))
                                        (error "Context expects 2 values"
                                               _g177790_)))
                                  (let ((_%target177065177091%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177789_ 0)))
                                        (_%tl177067177093%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177789_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl177067177093%_))
                                        (letrec ((_%loop177068177096%_
                                                  (lambda (_%hd177066177099%_
                                                           _%expr177072177101%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd177066177099%_))
                                                        (let ((_%e177069177103%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd177066177099%_))))
                  (let ((_%lp-hd177070177106%_
                         (let ()
                           (declare (not safe))
                           (##car _%e177069177103%_)))
                        (_%lp-tl177071177108%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e177069177103%_))))
                    (_%loop177068177096%_
                     _%lp-tl177071177108%_
                     (cons _%lp-hd177070177106%_ _%expr177072177101%_))))
                (let ((_%expr177073177111%_ (reverse _%expr177072177101%_)))
                  ((lambda (_%g177061177113%_)
                     (let ((__tmp177793
                            (lambda (_%g177126177128%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self177056%_
                                 _%g177126177128%_))))
                           (__tmp177791
                            (let ((__tmp177792
                                   (lambda (_%g177130177133%_
                                            _%g177131177135%_)
                                     (cons _%g177130177133%_
                                           _%g177131177135%_))))
                              (declare (not safe))
                              (__foldr1 __tmp177792 '() _%g177061177113%_))))
                       (declare (not safe))
                       (__ormap1 __tmp177793 __tmp177791)))
                   _%expr177073177111%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop177068177096%_
                                           _%target177065177091%_
                                           '()))
                                        (_%g177059177078%_
                                         _%g177060177081%_)))))
                              (_%g177059177078%_ _%g177060177081%_))))
                      (_%g177059177078%_ _%g177060177081%_)))))
          (_%g177058177138%_ _%stx177057%_))))
    (define gxc#find-let-values%
      (lambda (_%self176910%_ _%stx176911%_)
        (let* ((_%g176913176948%_
                (lambda (_%g176914176945%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176914176945%_))))
               (_%g176912177053%_
                (lambda (_%g176914176951%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176914176951%_))
                      (let ((_%e176918176953%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176914176951%_))))
                        (let ((_%hd176919176956%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176918176953%_)))
                              (_%tl176920176958%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176918176953%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176920176958%_))
                              (let ((_%e176921176961%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176920176958%_))))
                                (let ((_%hd176922176964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176921176961%_)))
                                      (_%tl176923176966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176921176961%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd176922176964%_))
                                      (let ((_g177794_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd176922176964%_
                                                '0))))
                                        (begin
                                          (let ((_g177795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g177794_)
                                                       (##values-length
                                                        _g177794_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g177795_ 2)))
                                                (error "Context expects 2 values"
                                                       _g177795_)))
                                          (let ((_%target176924176969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g177794_ 0)))
                                                (_%tl176926176971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g177794_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176926176971%_))
                                                (letrec ((_%loop176927176974%_
                                                          (lambda (_%hd176925176977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr176931176979%_
                           _%bind176932176980%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd176925176977%_))
                        (let ((_%e176928176982%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd176925176977%_))))
                          (let ((_%lp-hd176929176985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176928176982%_)))
                                (_%lp-tl176930176987%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176928176982%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd176929176985%_))
                                (let ((_%e176935176990%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd176929176985%_))))
                                  (let ((_%hd176936176993%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176935176990%_)))
                                        (_%tl176937176995%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176935176990%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176937176995%_))
                                        (let ((_%e176938176998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176937176995%_))))
                                          (let ((_%hd176939177001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176938176998%_)))
                                                (_%tl176940177003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176938176998%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176940177003%_))
                                                (_%loop176927176974%_
                                                 _%lp-tl176930176987%_
                                                 (cons _%hd176939177001%_
                                                       _%expr176931176979%_)
                                                 (cons _%hd176936176993%_
                                                       _%bind176932176980%_))
                                                (_%g176913176948%_
                                                 _%g176914176951%_))))
                                        (_%g176913176948%_
                                         _%g176914176951%_))))
                                (_%g176913176948%_ _%g176914176951%_))))
                        (let ((_%expr176933177006%_
                               (reverse _%expr176931176979%_))
                              (_%bind176934177007%_
                               (reverse _%bind176932176980%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176923176966%_))
                              (let ((_%e176941177009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176923176966%_))))
                                (let ((_%hd176942177012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176941177009%_)))
                                      (_%tl176943177014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176941177009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176943177014%_))
                                      ((lambda (_%g176915177017%_
                                                _%g176916177018%_
                                                _%g176917177019%_)
                                         (let ((_%$e177050%_
                                                (let ((__tmp177798
                                                       (lambda (_%g177038177040%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self176910%_
                                                            _%g177038177040%_))))
                                                      (__tmp177796
                                                       (let ((__tmp177797
                                                              (lambda (_%g177042177045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g177043177047%_)
                        (cons _%g177042177045%_ _%g177043177047%_))))
                 (declare (not safe))
                 (__foldr1 __tmp177797 '() _%g176916177018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp177798
                                                   __tmp177796))))
                                           (if _%$e177050%_
                                               _%$e177050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self176910%_
                                                  _%g176915177017%_)))))
                                       _%hd176942177012%_
                                       _%expr176933177006%_
                                       _%bind176934177007%_)
                                      (_%g176913176948%_ _%g176914176951%_))))
                              (_%g176913176948%_ _%g176914176951%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop176927176974%_
                                                   _%target176924176969%_
                                                   '()
                                                   '()))
                                                (_%g176913176948%_
                                                 _%g176914176951%_)))))
                                      (_%g176913176948%_ _%g176914176951%_))))
                              (_%g176913176948%_ _%g176914176951%_))))
                      (_%g176913176948%_ _%g176914176951%_)))))
          (_%g176912177053%_ _%stx176911%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self176854%_ _%stx176855%_)
        (let* ((_%g176857176870%_
                (lambda (_%g176858176867%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176858176867%_))))
               (_%g176856176907%_
                (lambda (_%g176858176873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176858176873%_))
                      (let ((_%e176860176875%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176858176873%_))))
                        (let ((_%hd176861176878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176860176875%_)))
                              (_%tl176862176880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176860176875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176862176880%_))
                              (let ((_%e176863176883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176862176880%_))))
                                (let ((_%hd176864176886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176863176883%_)))
                                      (_%tl176865176888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176863176883%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176865176888%_))
                                      ((lambda (_%g176859176891%_)
                                         (let ((__tmp177800
                                                (lambda (_%g176902176904%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g176859176891%_
                                                     _%g176902176904%_))))
                                               (__tmp177799
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self176854%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp177800 __tmp177799)))
                                       _%hd176864176886%_)
                                      (_%g176857176870%_ _%g176858176873%_))))
                              (_%g176857176870%_ _%g176858176873%_))))
                      (_%g176857176870%_ _%g176858176873%_)))))
          (_%g176856176907%_ _%stx176855%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self176779%_ _%stx176780%_)
        (let* ((_%g176782176799%_
                (lambda (_%g176783176796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176783176796%_))))
               (_%g176781176851%_
                (lambda (_%g176783176802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176783176802%_))
                      (let ((_%e176786176804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176783176802%_))))
                        (let ((_%hd176787176807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176786176804%_)))
                              (_%tl176788176809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176786176804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176788176809%_))
                              (let ((_%e176789176812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176788176809%_))))
                                (let ((_%hd176790176815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176789176812%_)))
                                      (_%tl176791176817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176789176812%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176791176817%_))
                                      (let ((_%e176792176820%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176791176817%_))))
                                        (let ((_%hd176793176823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176792176820%_)))
                                              (_%tl176794176825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176792176820%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176794176825%_))
                                              ((lambda (_%g176784176828%_
                                                        _%g176785176829%_)
                                                 (let ((_%$e176848%_
                                                        (let ((__tmp177802
                                                               (lambda (_%g176843176845%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g176785176829%_
                            _%g176843176845%_))))
                      (__tmp177801
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self176779%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp177802 __tmp177801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e176848%_
                                                       _%$e176848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self176779%_
                                                          _%g176784176828%_)))))
                                               _%hd176793176823%_
                                               _%hd176790176815%_)
                                              (_%g176782176799%_
                                               _%g176783176802%_))))
                                      (_%g176782176799%_ _%g176783176802%_))))
                              (_%g176782176799%_ _%g176783176802%_))))
                      (_%g176782176799%_ _%g176783176802%_)))))
          (_%g176781176851%_ _%stx176780%_))))))
