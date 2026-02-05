(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770333058)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp177732 (list gxc#::void::t))
            (__tmp177731 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp177732
         '()
         __tmp177731
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args177718%_
        (apply make-instance gxc#::collect-mutators::t _%$args177718%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp177733
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
        (__make-atomic-promise __tmp177733)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx177710%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self177713%_
                (let ((__obj177721
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj177721))
               (__tmp177734
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177713%_ _%stx177710%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp177734
           gxc#current-compile-method
           _%self177713%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp177736 (list gxc#::basic-xform-expression::t))
            (__tmp177735 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp177736
         '(id new-id)
         __tmp177735
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args177707%_
        (apply make-instance gxc#::expression-subst::t _%$args177707%_)))
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
      (let ((__tmp177737
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
        (__make-atomic-promise __tmp177737)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords177679%_
               _%id177675177680%_
               _%new-id177676177681%_
               _%stx177682%_)
        (let* ((_%id177685%_
                (if (eq? _%id177675177680%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id177675177680%_))
               (_%new-id177687%_
                (if (eq? _%new-id177676177681%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id177676177681%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self177689%_
                  (let ((__obj177723
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177723
                       _%id177685%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177723
                       _%new-id177687%_
                       '2
                       '#f
                       '#f))
                    __obj177723))
                 (__tmp177738
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177689%_ _%stx177682%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177738
             gxc#current-compile-method
             _%self177689%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords177696%_ . _%args177697%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords177696%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177696%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177696%_
                  'new-id:
                  absent-value))
               _%args177697%_)))
    (define gxc#apply-expression-subst
      (lambda _%args177677177703%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args177677177703%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp177740 (list gxc#::basic-xform-expression::t))
            (__tmp177739 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp177740
         '(subst)
         __tmp177739
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args177671%_
        (apply make-instance gxc#::expression-subst*::t _%$args177671%_)))
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
      (let ((__tmp177741
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
        (__make-atomic-promise __tmp177741)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords177646%_ _%subst177643177647%_ _%stx177648%_)
        (let ((_%subst177651%_
               (if (eq? _%subst177643177647%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst177643177647%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self177653%_
                  (let ((__obj177725
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177725
                       _%subst177651%_
                       '1
                       '#f
                       '#f))
                    __obj177725))
                 (__tmp177742
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177653%_ _%stx177648%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177742
             gxc#current-compile-method
             _%self177653%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords177660%_ . _%args177661%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords177660%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177660%_
                  'subst:
                  absent-value))
               _%args177661%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args177644177667%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args177644177667%_)))
    (define gxc#::find-expression::t
      (let ((__tmp177743 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp177743
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args177639%_
        (apply make-instance gxc#::find-expression::t _%$args177639%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp177744
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
        (__make-atomic-promise __tmp177744)))
    (define gxc#::find-var-refs::t
      (let ((__tmp177746 (list gxc#::find-expression::t))
            (__tmp177745 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp177746
         '(ids)
         __tmp177745
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args177635%_
        (apply make-instance gxc#::find-var-refs::t _%$args177635%_)))
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
      (let ((__tmp177747
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
        (__make-atomic-promise __tmp177747)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords177610%_ _%ids177607177611%_ _%stx177612%_)
        (let ((_%ids177615%_
               (if (eq? _%ids177607177611%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids177607177611%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self177617%_
                  (let ((__obj177728
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177728
                       _%ids177615%_
                       '1
                       '#f
                       '#f))
                    __obj177728))
                 (__tmp177748
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177617%_ _%stx177612%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177748
             gxc#current-compile-method
             _%self177617%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords177624%_ . _%args177625%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords177624%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords177624%_ 'ids: absent-value))
               _%args177625%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args177608177631%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args177608177631%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp177750 (list gxc#::collect-expression-refs::t))
            (__tmp177749 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp177750
         '()
         __tmp177749
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args177603%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args177603%_)))
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
      (let ((__tmp177751
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
        (__make-atomic-promise __tmp177751)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords177578%_ _%table177575177579%_ _%stx177580%_)
        (let ((_%table177583%_
               (if (eq? _%table177575177579%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table177575177579%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self177585%_
                  (let ((__obj177730
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177730
                       _%table177583%_
                       '1
                       '#f
                       '#f))
                    __obj177730))
                 (__tmp177752
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177585%_ _%stx177580%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp177752
             gxc#current-compile-method
             _%self177585%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords177592%_ . _%args177593%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords177592%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177592%_
                  'table:
                  absent-value))
               _%args177593%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args177576177599%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args177576177599%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self177504%_ _%stx177505%_)
        (let* ((_%g177507177524%_
                (lambda (_%g177508177521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177508177521%_))))
               (_%g177506177571%_
                (lambda (_%g177508177527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177508177527%_))
                      (let ((_%e177511177529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177508177527%_))))
                        (let ((_%hd177512177532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177511177529%_)))
                              (_%tl177513177534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177511177529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177513177534%_))
                              (let ((_%e177514177537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177513177534%_))))
                                (let ((_%hd177515177540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177514177537%_)))
                                      (_%tl177516177542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177514177537%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177516177542%_))
                                      (let ((_%e177517177545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177516177542%_))))
                                        (let ((_%hd177518177548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177517177545%_)))
                                              (_%tl177519177550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177517177545%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177519177550%_))
                                              ((lambda (_%g177509177553%_
                                                        _%g177510177554%_)
                                                 (let ((_%sym177569%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177510177554%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym177569%_))
                                                   (let ((__tmp177753
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp177753
                                                      _%sym177569%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177504%_
                                                      _%g177509177553%_))))
                                               _%hd177518177548%_
                                               _%hd177515177540%_)
                                              (_%g177507177524%_
                                               _%g177508177527%_))))
                                      (_%g177507177524%_ _%g177508177527%_))))
                              (_%g177507177524%_ _%g177508177527%_))))
                      (_%g177507177524%_ _%g177508177527%_)))))
          (_%g177506177571%_ _%stx177505%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self177452%_ _%stx177453%_)
        (let* ((_%g177455177468%_
                (lambda (_%g177456177465%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177456177465%_))))
               (_%g177454177501%_
                (lambda (_%g177456177471%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177456177471%_))
                      (let ((_%e177458177473%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177456177471%_))))
                        (let ((_%hd177459177476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177458177473%_)))
                              (_%tl177460177478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177458177473%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177460177478%_))
                              (let ((_%e177461177481%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177460177478%_))))
                                (let ((_%hd177462177484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177461177481%_)))
                                      (_%tl177463177486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177461177481%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177463177486%_))
                                      ((lambda (_%g177457177489%_)
                                         (if (let ((__tmp177754
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self177452%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g177457177489%_
                                                __tmp177754))
                                             (let ((__tmp177755
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self177452%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177755
                                                _%stx177453%_))
                                             _%stx177453%_))
                                       _%hd177462177484%_)
                                      (_%g177455177468%_ _%g177456177471%_))))
                              (_%g177455177468%_ _%g177456177471%_))))
                      (_%g177455177468%_ _%g177456177471%_)))))
          (_%g177454177501%_ _%stx177453%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self177392%_ _%stx177393%_)
        (let* ((_%g177395177408%_
                (lambda (_%g177396177405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177396177405%_))))
               (_%g177394177449%_
                (lambda (_%g177396177411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177396177411%_))
                      (let ((_%e177398177413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177396177411%_))))
                        (let ((_%hd177399177416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177398177413%_)))
                              (_%tl177400177418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177398177413%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177400177418%_))
                              (let ((_%e177401177421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177400177418%_))))
                                (let ((_%hd177402177424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177401177421%_)))
                                      (_%tl177403177426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177401177421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177403177426%_))
                                      ((lambda (_%g177397177429%_)
                                         (let ((_%$e177443%_
                                                (let ((__tmp177757
                                                       (lambda (_%sub177441%_)
                                                         (let ((__tmp177758
                                                                (car _%sub177441%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g177397177429%_
                                                            __tmp177758))))
                                                      (__tmp177756
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self177392%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp177757
                                                          __tmp177756))))
                                           (if _%$e177443%_
                                               ((lambda (_%sub177446%_)
                                                  (let ((__tmp177759
                                                         (cons '%#ref
                                                               (cons (cdr _%sub177446%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp177759
                                                     _%stx177393%_)))
                                                _%$e177443%_)
                                               _%stx177393%_)))
                                       _%hd177402177424%_)
                                      (_%g177395177408%_ _%g177396177411%_))))
                              (_%g177395177408%_ _%g177396177411%_))))
                      (_%g177395177408%_ _%g177396177411%_)))))
          (_%g177394177449%_ _%stx177393%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self177321%_ _%stx177322%_)
        (let* ((_%g177324177341%_
                (lambda (_%g177325177338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177325177338%_))))
               (_%g177323177389%_
                (lambda (_%g177325177344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177325177344%_))
                      (let ((_%e177328177346%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177325177344%_))))
                        (let ((_%hd177329177349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177328177346%_)))
                              (_%tl177330177351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177328177346%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177330177351%_))
                              (let ((_%e177331177354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177330177351%_))))
                                (let ((_%hd177332177357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177331177354%_)))
                                      (_%tl177333177359%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177331177354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177333177359%_))
                                      (let ((_%e177334177362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177333177359%_))))
                                        (let ((_%hd177335177365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177334177362%_)))
                                              (_%tl177336177367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177334177362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177336177367%_))
                                              ((lambda (_%g177326177370%_
                                                        _%g177327177371%_)
                                                 (let ((_%new-expr177386%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177321%_
                                                           _%g177326177370%_)))
                                                       (_%new-xid177387%_
                                                        (if (let ((__tmp177760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self177321%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g177327177371%_ __tmp177760))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self177321%_ 'new-id))
                    _%g177327177371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177761
                                                          (cons '%#set!
                                                                (cons _%new-xid177387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177386%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177761
                                                      _%stx177322%_))))
                                               _%hd177335177365%_
                                               _%hd177332177357%_)
                                              (_%g177324177341%_
                                               _%g177325177344%_))))
                                      (_%g177324177341%_ _%g177325177344%_))))
                              (_%g177324177341%_ _%g177325177344%_))))
                      (_%g177324177341%_ _%g177325177344%_)))))
          (_%g177323177389%_ _%stx177322%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self177244%_ _%stx177245%_)
        (let* ((_%g177247177264%_
                (lambda (_%g177248177261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177248177261%_))))
               (_%g177246177318%_
                (lambda (_%g177248177267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177248177267%_))
                      (let ((_%e177251177269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177248177267%_))))
                        (let ((_%hd177252177272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177251177269%_)))
                              (_%tl177253177274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177251177269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177253177274%_))
                              (let ((_%e177254177277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177253177274%_))))
                                (let ((_%hd177255177280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177254177277%_)))
                                      (_%tl177256177282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177254177277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177256177282%_))
                                      (let ((_%e177257177285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177256177282%_))))
                                        (let ((_%hd177258177288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177257177285%_)))
                                              (_%tl177259177290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177257177285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177259177290%_))
                                              ((lambda (_%g177249177293%_
                                                        _%g177250177294%_)
                                                 (let ((_%new-expr177315%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self177244%_
                                                           _%g177249177293%_)))
                                                       (_%new-xid177316%_
                                                        (let ((_%$e177311%_
                                                               (let ((__tmp177763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub177309%_)
                                (let ((__tmp177764 (car _%sub177309%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g177250177294%_
                                   __tmp177764))))
                             (__tmp177762
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self177244%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp177763 __tmp177762))))
                  (if _%$e177311%_ (cdr _%$e177311%_) _%g177250177294%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp177765
                                                          (cons '%#set!
                                                                (cons _%new-xid177316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr177315%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177765
                                                      _%stx177245%_))))
                                               _%hd177258177288%_
                                               _%hd177255177280%_)
                                              (_%g177247177264%_
                                               _%g177248177267%_))))
                                      (_%g177247177264%_ _%g177248177267%_))))
                              (_%g177247177264%_ _%g177248177267%_))))
                      (_%g177247177264%_ _%g177248177267%_)))))
          (_%g177246177318%_ _%stx177245%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self177190%_ _%stx177191%_)
        (let* ((_%g177193177206%_
                (lambda (_%g177194177203%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177194177203%_))))
               (_%g177192177241%_
                (lambda (_%g177194177209%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177194177209%_))
                      (let ((_%e177196177211%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177194177209%_))))
                        (let ((_%hd177197177214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177196177211%_)))
                              (_%tl177198177216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177196177211%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177198177216%_))
                              (let ((_%e177199177219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177198177216%_))))
                                (let ((_%hd177200177222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177199177219%_)))
                                      (_%tl177201177224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177199177219%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177201177224%_))
                                      ((lambda (_%g177195177227%_)
                                         (let* ((_%eid177239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g177195177227%_)))
                                                (__tmp177766
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self177190%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp177766
                                            _%eid177239%_
                                            1+
                                            '0)))
                                       _%hd177200177222%_)
                                      (_%g177193177206%_ _%g177194177209%_))))
                              (_%g177193177206%_ _%g177194177209%_))))
                      (_%g177193177206%_ _%g177194177209%_)))))
          (_%g177192177241%_ _%stx177191%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self177120%_ _%stx177121%_)
        (let* ((_%g177123177140%_
                (lambda (_%g177124177137%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177124177137%_))))
               (_%g177122177187%_
                (lambda (_%g177124177143%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177124177143%_))
                      (let ((_%e177127177145%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177124177143%_))))
                        (let ((_%hd177128177148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177127177145%_)))
                              (_%tl177129177150%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177127177145%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177129177150%_))
                              (let ((_%e177130177153%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177129177150%_))))
                                (let ((_%hd177131177156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177130177153%_)))
                                      (_%tl177132177158%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177130177153%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl177132177158%_))
                                      (let ((_%e177133177161%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl177132177158%_))))
                                        (let ((_%hd177134177164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177133177161%_)))
                                              (_%tl177135177166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177133177161%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177135177166%_))
                                              ((lambda (_%g177125177169%_
                                                        _%g177126177170%_)
                                                 (let ((_%eid177185%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g177126177170%_))))
                                                   (let ((__tmp177767
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self177120%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp177767
                                                      _%eid177185%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self177120%_
                                                      _%g177125177169%_))))
                                               _%hd177134177164%_
                                               _%hd177131177156%_)
                                              (_%g177123177140%_
                                               _%g177124177143%_))))
                                      (_%g177123177140%_ _%g177124177143%_))))
                              (_%g177123177140%_ _%g177124177143%_))))
                      (_%g177123177140%_ _%g177124177143%_)))))
          (_%g177122177187%_ _%stx177121%_))))
    (define gxc#find-body%
      (lambda (_%self177035%_ _%stx177036%_)
        (let* ((_%g177038177057%_
                (lambda (_%g177039177054%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g177039177054%_))))
               (_%g177037177117%_
                (lambda (_%g177039177060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g177039177060%_))
                      (let ((_%e177041177062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g177039177060%_))))
                        (let ((_%hd177042177065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177041177062%_)))
                              (_%tl177043177067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177041177062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl177043177067%_))
                              (let ((_g177768_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl177043177067%_
                                        '0))))
                                (begin
                                  (let ((_g177769_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g177768_)
                                               (##values-length _g177768_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g177769_ 2)))
                                        (error "Context expects 2 values"
                                               _g177769_)))
                                  (let ((_%target177044177070%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177768_ 0)))
                                        (_%tl177046177072%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g177768_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl177046177072%_))
                                        (letrec ((_%loop177047177075%_
                                                  (lambda (_%hd177045177078%_
                                                           _%expr177051177080%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd177045177078%_))
                                                        (let ((_%e177048177082%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd177045177078%_))))
                  (let ((_%lp-hd177049177085%_
                         (let ()
                           (declare (not safe))
                           (##car _%e177048177082%_)))
                        (_%lp-tl177050177087%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e177048177082%_))))
                    (_%loop177047177075%_
                     _%lp-tl177050177087%_
                     (cons _%lp-hd177049177085%_ _%expr177051177080%_))))
                (let ((_%expr177052177090%_ (reverse _%expr177051177080%_)))
                  ((lambda (_%g177040177092%_)
                     (let ((__tmp177772
                            (lambda (_%g177105177107%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self177035%_
                                 _%g177105177107%_))))
                           (__tmp177770
                            (let ((__tmp177771
                                   (lambda (_%g177109177112%_
                                            _%g177110177114%_)
                                     (cons _%g177109177112%_
                                           _%g177110177114%_))))
                              (declare (not safe))
                              (__foldr1 __tmp177771 '() _%g177040177092%_))))
                       (declare (not safe))
                       (__ormap1 __tmp177772 __tmp177770)))
                   _%expr177052177090%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop177047177075%_
                                           _%target177044177070%_
                                           '()))
                                        (_%g177038177057%_
                                         _%g177039177060%_)))))
                              (_%g177038177057%_ _%g177039177060%_))))
                      (_%g177038177057%_ _%g177039177060%_)))))
          (_%g177037177117%_ _%stx177036%_))))
    (define gxc#find-let-values%
      (lambda (_%self176889%_ _%stx176890%_)
        (let* ((_%g176892176927%_
                (lambda (_%g176893176924%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176893176924%_))))
               (_%g176891177032%_
                (lambda (_%g176893176930%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176893176930%_))
                      (let ((_%e176897176932%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176893176930%_))))
                        (let ((_%hd176898176935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176897176932%_)))
                              (_%tl176899176937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176897176932%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176899176937%_))
                              (let ((_%e176900176940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176899176937%_))))
                                (let ((_%hd176901176943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176900176940%_)))
                                      (_%tl176902176945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176900176940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd176901176943%_))
                                      (let ((_g177773_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd176901176943%_
                                                '0))))
                                        (begin
                                          (let ((_g177774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g177773_)
                                                       (##values-length
                                                        _g177773_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g177774_ 2)))
                                                (error "Context expects 2 values"
                                                       _g177774_)))
                                          (let ((_%target176903176948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g177773_ 0)))
                                                (_%tl176905176950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g177773_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176905176950%_))
                                                (letrec ((_%loop176906176953%_
                                                          (lambda (_%hd176904176956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr176910176958%_
                           _%bind176911176959%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd176904176956%_))
                        (let ((_%e176907176961%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd176904176956%_))))
                          (let ((_%lp-hd176908176964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176907176961%_)))
                                (_%lp-tl176909176966%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176907176961%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd176908176964%_))
                                (let ((_%e176914176969%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd176908176964%_))))
                                  (let ((_%hd176915176972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176914176969%_)))
                                        (_%tl176916176974%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176914176969%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176916176974%_))
                                        (let ((_%e176917176977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176916176974%_))))
                                          (let ((_%hd176918176980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176917176977%_)))
                                                (_%tl176919176982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176917176977%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176919176982%_))
                                                (_%loop176906176953%_
                                                 _%lp-tl176909176966%_
                                                 (cons _%hd176918176980%_
                                                       _%expr176910176958%_)
                                                 (cons _%hd176915176972%_
                                                       _%bind176911176959%_))
                                                (_%g176892176927%_
                                                 _%g176893176930%_))))
                                        (_%g176892176927%_
                                         _%g176893176930%_))))
                                (_%g176892176927%_ _%g176893176930%_))))
                        (let ((_%expr176912176985%_
                               (reverse _%expr176910176958%_))
                              (_%bind176913176986%_
                               (reverse _%bind176911176959%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176902176945%_))
                              (let ((_%e176920176988%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176902176945%_))))
                                (let ((_%hd176921176991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176920176988%_)))
                                      (_%tl176922176993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176920176988%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176922176993%_))
                                      ((lambda (_%g176894176996%_
                                                _%g176895176997%_
                                                _%g176896176998%_)
                                         (let ((_%$e177029%_
                                                (let ((__tmp177777
                                                       (lambda (_%g177017177019%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self176889%_
                                                            _%g177017177019%_))))
                                                      (__tmp177775
                                                       (let ((__tmp177776
                                                              (lambda (_%g177021177024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g177022177026%_)
                        (cons _%g177021177024%_ _%g177022177026%_))))
                 (declare (not safe))
                 (__foldr1 __tmp177776 '() _%g176895176997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp177777
                                                   __tmp177775))))
                                           (if _%$e177029%_
                                               _%$e177029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self176889%_
                                                  _%g176894176996%_)))))
                                       _%hd176921176991%_
                                       _%expr176912176985%_
                                       _%bind176913176986%_)
                                      (_%g176892176927%_ _%g176893176930%_))))
                              (_%g176892176927%_ _%g176893176930%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop176906176953%_
                                                   _%target176903176948%_
                                                   '()
                                                   '()))
                                                (_%g176892176927%_
                                                 _%g176893176930%_)))))
                                      (_%g176892176927%_ _%g176893176930%_))))
                              (_%g176892176927%_ _%g176893176930%_))))
                      (_%g176892176927%_ _%g176893176930%_)))))
          (_%g176891177032%_ _%stx176890%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self176833%_ _%stx176834%_)
        (let* ((_%g176836176849%_
                (lambda (_%g176837176846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176837176846%_))))
               (_%g176835176886%_
                (lambda (_%g176837176852%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176837176852%_))
                      (let ((_%e176839176854%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176837176852%_))))
                        (let ((_%hd176840176857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176839176854%_)))
                              (_%tl176841176859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176839176854%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176841176859%_))
                              (let ((_%e176842176862%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176841176859%_))))
                                (let ((_%hd176843176865%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176842176862%_)))
                                      (_%tl176844176867%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176842176862%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176844176867%_))
                                      ((lambda (_%g176838176870%_)
                                         (let ((__tmp177779
                                                (lambda (_%g176881176883%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g176838176870%_
                                                     _%g176881176883%_))))
                                               (__tmp177778
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self176833%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp177779 __tmp177778)))
                                       _%hd176843176865%_)
                                      (_%g176836176849%_ _%g176837176852%_))))
                              (_%g176836176849%_ _%g176837176852%_))))
                      (_%g176836176849%_ _%g176837176852%_)))))
          (_%g176835176886%_ _%stx176834%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self176758%_ _%stx176759%_)
        (let* ((_%g176761176778%_
                (lambda (_%g176762176775%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g176762176775%_))))
               (_%g176760176830%_
                (lambda (_%g176762176781%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g176762176781%_))
                      (let ((_%e176765176783%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g176762176781%_))))
                        (let ((_%hd176766176786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176765176783%_)))
                              (_%tl176767176788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176765176783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl176767176788%_))
                              (let ((_%e176768176791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl176767176788%_))))
                                (let ((_%hd176769176794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e176768176791%_)))
                                      (_%tl176770176796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e176768176791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176770176796%_))
                                      (let ((_%e176771176799%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176770176796%_))))
                                        (let ((_%hd176772176802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176771176799%_)))
                                              (_%tl176773176804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176771176799%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176773176804%_))
                                              ((lambda (_%g176763176807%_
                                                        _%g176764176808%_)
                                                 (let ((_%$e176827%_
                                                        (let ((__tmp177781
                                                               (lambda (_%g176822176824%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g176764176808%_
                            _%g176822176824%_))))
                      (__tmp177780
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self176758%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp177781 __tmp177780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e176827%_
                                                       _%$e176827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self176758%_
                                                          _%g176763176807%_)))))
                                               _%hd176772176802%_
                                               _%hd176769176794%_)
                                              (_%g176761176778%_
                                               _%g176762176781%_))))
                                      (_%g176761176778%_ _%g176762176781%_))))
                              (_%g176761176778%_ _%g176762176781%_))))
                      (_%g176761176778%_ _%g176762176781%_)))))
          (_%g176760176830%_ _%stx176759%_))))))
