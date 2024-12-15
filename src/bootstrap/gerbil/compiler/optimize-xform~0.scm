(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1734280448)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp154887 (list gxc#::void::t))
            (__tmp154886 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp154887
         '()
         __tmp154886
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args154873%_
        (apply make-instance gxc#::collect-mutators::t _%$args154873%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp154888
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
        (__make-promise __tmp154888)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx154865%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self154868%_
                (let ((__obj154876
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj154876))
               (__tmp154889
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154868%_ _%stx154865%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp154889
           gxc#current-compile-method
           _%self154868%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp154891 (list gxc#::basic-xform-expression::t))
            (__tmp154890 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp154891
         '(id new-id)
         __tmp154890
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args154862%_
        (apply make-instance gxc#::expression-subst::t _%$args154862%_)))
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
      (let ((__tmp154892
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
        (__make-promise __tmp154892)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords154832%_
               _%id154828154833%_
               _%new-id154829154835%_
               _%stx154837%_)
        (let* ((_%id154840%_
                (if (eq? _%id154828154833%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id154828154833%_))
               (_%new-id154842%_
                (if (eq? _%new-id154829154835%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id154829154835%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self154844%_
                  (let ((__obj154878
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154878
                       _%id154840%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154878
                       _%new-id154842%_
                       '2
                       '#f
                       '#f))
                    __obj154878))
                 (__tmp154893
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154844%_ _%stx154837%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154893
             gxc#current-compile-method
             _%self154844%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords154851%_ . _%args154852%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords154851%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154851%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154851%_
                  'new-id:
                  absent-value))
               _%args154852%_)))
    (define gxc#apply-expression-subst
      (lambda _%args154830154858%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args154830154858%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp154895 (list gxc#::basic-xform-expression::t))
            (__tmp154894 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp154895
         '(subst)
         __tmp154894
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args154824%_
        (apply make-instance gxc#::expression-subst*::t _%$args154824%_)))
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
      (let ((__tmp154896
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
        (__make-promise __tmp154896)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords154798%_ _%subst154795154799%_ _%stx154801%_)
        (let ((_%subst154804%_
               (if (eq? _%subst154795154799%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst154795154799%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self154806%_
                  (let ((__obj154880
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154880
                       _%subst154804%_
                       '1
                       '#f
                       '#f))
                    __obj154880))
                 (__tmp154897
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154806%_ _%stx154801%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154897
             gxc#current-compile-method
             _%self154806%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords154813%_ . _%args154814%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords154813%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154813%_
                  'subst:
                  absent-value))
               _%args154814%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args154796154820%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args154796154820%_)))
    (define gxc#::find-expression::t
      (let ((__tmp154898 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp154898
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args154791%_
        (apply make-instance gxc#::find-expression::t _%$args154791%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp154899
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
        (__make-promise __tmp154899)))
    (define gxc#::find-var-refs::t
      (let ((__tmp154901 (list gxc#::find-expression::t))
            (__tmp154900 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp154901
         '(ids)
         __tmp154900
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args154787%_
        (apply make-instance gxc#::find-var-refs::t _%$args154787%_)))
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
      (let ((__tmp154902
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
        (__make-promise __tmp154902)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords154761%_ _%ids154758154762%_ _%stx154764%_)
        (let ((_%ids154767%_
               (if (eq? _%ids154758154762%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids154758154762%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self154769%_
                  (let ((__obj154883
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154883
                       _%ids154767%_
                       '1
                       '#f
                       '#f))
                    __obj154883))
                 (__tmp154903
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154769%_ _%stx154764%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154903
             gxc#current-compile-method
             _%self154769%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords154776%_ . _%args154777%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords154776%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154776%_ 'ids: absent-value))
               _%args154777%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args154759154783%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args154759154783%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp154905 (list gxc#::collect-expression-refs::t))
            (__tmp154904 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp154905
         '()
         __tmp154904
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args154754%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args154754%_)))
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
      (let ((__tmp154906
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
        (__make-promise __tmp154906)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords154728%_ _%table154725154729%_ _%stx154731%_)
        (let ((_%table154734%_
               (if (eq? _%table154725154729%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table154725154729%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self154736%_
                  (let ((__obj154885
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154885
                       _%table154734%_
                       '1
                       '#f
                       '#f))
                    __obj154885))
                 (__tmp154907
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154736%_ _%stx154731%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154907
             gxc#current-compile-method
             _%self154736%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords154743%_ . _%args154744%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords154743%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154743%_
                  'table:
                  absent-value))
               _%args154744%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args154726154750%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args154726154750%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self154654%_ _%stx154655%_)
        (let* ((_%g154657154674%_
                (lambda (_%g154658154671%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154658154671%_))))
               (_%g154656154721%_
                (lambda (_%g154658154677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154658154677%_))
                      (let ((_%e154661154679%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154658154677%_))))
                        (let ((_%hd154662154682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154661154679%_)))
                              (_%tl154663154684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154661154679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154663154684%_))
                              (let ((_%e154664154687%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154663154684%_))))
                                (let ((_%hd154665154690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154664154687%_)))
                                      (_%tl154666154692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154664154687%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154666154692%_))
                                      (let ((_%e154667154695%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154666154692%_))))
                                        (let ((_%hd154668154698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154667154695%_)))
                                              (_%tl154669154700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154667154695%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154669154700%_))
                                              ((lambda (_%L154703%_
                                                        _%L154704%_)
                                                 (let ((_%sym154719%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154704%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym154719%_))
                                                   (let ((__tmp154908
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp154908
                                                      _%sym154719%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154654%_
                                                      _%L154703%_))))
                                               _%hd154668154698%_
                                               _%hd154665154690%_)
                                              (_%g154657154674%_
                                               _%g154658154677%_))))
                                      (_%g154657154674%_ _%g154658154677%_))))
                              (_%g154657154674%_ _%g154658154677%_))))
                      (_%g154657154674%_ _%g154658154677%_)))))
          (_%g154656154721%_ _%stx154655%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self154602%_ _%stx154603%_)
        (let* ((_%g154605154618%_
                (lambda (_%g154606154615%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154606154615%_))))
               (_%g154604154651%_
                (lambda (_%g154606154621%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154606154621%_))
                      (let ((_%e154608154623%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154606154621%_))))
                        (let ((_%hd154609154626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154608154623%_)))
                              (_%tl154610154628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154608154623%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154610154628%_))
                              (let ((_%e154611154631%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154610154628%_))))
                                (let ((_%hd154612154634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154611154631%_)))
                                      (_%tl154613154636%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154611154631%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154613154636%_))
                                      ((lambda (_%L154639%_)
                                         (if (let ((__tmp154909
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self154602%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154639%_
                                                __tmp154909))
                                             (let ((__tmp154910
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self154602%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154910
                                                _%stx154603%_))
                                             _%stx154603%_))
                                       _%hd154612154634%_)
                                      (_%g154605154618%_ _%g154606154621%_))))
                              (_%g154605154618%_ _%g154606154621%_))))
                      (_%g154605154618%_ _%g154606154621%_)))))
          (_%g154604154651%_ _%stx154603%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self154542%_ _%stx154543%_)
        (let* ((_%g154545154558%_
                (lambda (_%g154546154555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154546154555%_))))
               (_%g154544154599%_
                (lambda (_%g154546154561%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154546154561%_))
                      (let ((_%e154548154563%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154546154561%_))))
                        (let ((_%hd154549154566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154548154563%_)))
                              (_%tl154550154568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154548154563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154550154568%_))
                              (let ((_%e154551154571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154550154568%_))))
                                (let ((_%hd154552154574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154551154571%_)))
                                      (_%tl154553154576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154551154571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154553154576%_))
                                      ((lambda (_%L154579%_)
                                         (let ((_%$e154593%_
                                                (let ((__tmp154912
                                                       (lambda (_%sub154591%_)
                                                         (let ((__tmp154913
                                                                (car _%sub154591%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L154579%_
                                                            __tmp154913))))
                                                      (__tmp154911
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self154542%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp154912
                                                          __tmp154911))))
                                           (if _%$e154593%_
                                               ((lambda (_%sub154596%_)
                                                  (let ((__tmp154914
                                                         (cons '%#ref
                                                               (cons (cdr _%sub154596%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp154914
                                                     _%stx154543%_)))
                                                _%$e154593%_)
                                               _%stx154543%_)))
                                       _%hd154552154574%_)
                                      (_%g154545154558%_ _%g154546154561%_))))
                              (_%g154545154558%_ _%g154546154561%_))))
                      (_%g154545154558%_ _%g154546154561%_)))))
          (_%g154544154599%_ _%stx154543%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self154471%_ _%stx154472%_)
        (let* ((_%g154474154491%_
                (lambda (_%g154475154488%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154475154488%_))))
               (_%g154473154539%_
                (lambda (_%g154475154494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154475154494%_))
                      (let ((_%e154478154496%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154475154494%_))))
                        (let ((_%hd154479154499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154478154496%_)))
                              (_%tl154480154501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154478154496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154480154501%_))
                              (let ((_%e154481154504%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154480154501%_))))
                                (let ((_%hd154482154507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154481154504%_)))
                                      (_%tl154483154509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154481154504%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154483154509%_))
                                      (let ((_%e154484154512%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154483154509%_))))
                                        (let ((_%hd154485154515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154484154512%_)))
                                              (_%tl154486154517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154484154512%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154486154517%_))
                                              ((lambda (_%L154520%_
                                                        _%L154521%_)
                                                 (let ((_%new-expr154536%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154471%_
                                                           _%L154520%_)))
                                                       (_%new-xid154537%_
                                                        (if (let ((__tmp154915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self154471%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L154521%_ __tmp154915))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self154471%_ 'new-id))
                    _%L154521%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154916
                                                          (cons '%#set!
                                                                (cons _%new-xid154537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154536%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154916
                                                      _%stx154472%_))))
                                               _%hd154485154515%_
                                               _%hd154482154507%_)
                                              (_%g154474154491%_
                                               _%g154475154494%_))))
                                      (_%g154474154491%_ _%g154475154494%_))))
                              (_%g154474154491%_ _%g154475154494%_))))
                      (_%g154474154491%_ _%g154475154494%_)))))
          (_%g154473154539%_ _%stx154472%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self154394%_ _%stx154395%_)
        (let* ((_%g154397154414%_
                (lambda (_%g154398154411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154398154411%_))))
               (_%g154396154468%_
                (lambda (_%g154398154417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154398154417%_))
                      (let ((_%e154401154419%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154398154417%_))))
                        (let ((_%hd154402154422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154401154419%_)))
                              (_%tl154403154424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154401154419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154403154424%_))
                              (let ((_%e154404154427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154403154424%_))))
                                (let ((_%hd154405154430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154404154427%_)))
                                      (_%tl154406154432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154404154427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154406154432%_))
                                      (let ((_%e154407154435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154406154432%_))))
                                        (let ((_%hd154408154438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154407154435%_)))
                                              (_%tl154409154440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154407154435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154409154440%_))
                                              ((lambda (_%L154443%_
                                                        _%L154444%_)
                                                 (let ((_%new-expr154465%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154394%_
                                                           _%L154443%_)))
                                                       (_%new-xid154466%_
                                                        (let ((_%$e154461%_
                                                               (let ((__tmp154918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub154459%_)
                                (let ((__tmp154919 (car _%sub154459%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L154444%_
                                   __tmp154919))))
                             (__tmp154917
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self154394%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp154918 __tmp154917))))
                  (if _%$e154461%_ (cdr _%$e154461%_) _%L154444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154920
                                                          (cons '%#set!
                                                                (cons _%new-xid154466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154465%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154920
                                                      _%stx154395%_))))
                                               _%hd154408154438%_
                                               _%hd154405154430%_)
                                              (_%g154397154414%_
                                               _%g154398154417%_))))
                                      (_%g154397154414%_ _%g154398154417%_))))
                              (_%g154397154414%_ _%g154398154417%_))))
                      (_%g154397154414%_ _%g154398154417%_)))))
          (_%g154396154468%_ _%stx154395%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self154340%_ _%stx154341%_)
        (let* ((_%g154343154356%_
                (lambda (_%g154344154353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154344154353%_))))
               (_%g154342154391%_
                (lambda (_%g154344154359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154344154359%_))
                      (let ((_%e154346154361%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154344154359%_))))
                        (let ((_%hd154347154364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154346154361%_)))
                              (_%tl154348154366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154346154361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154348154366%_))
                              (let ((_%e154349154369%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154348154366%_))))
                                (let ((_%hd154350154372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154349154369%_)))
                                      (_%tl154351154374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154349154369%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154351154374%_))
                                      ((lambda (_%L154377%_)
                                         (let* ((_%eid154389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L154377%_)))
                                                (__tmp154921
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self154340%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp154921
                                            _%eid154389%_
                                            1+
                                            '0)))
                                       _%hd154350154372%_)
                                      (_%g154343154356%_ _%g154344154359%_))))
                              (_%g154343154356%_ _%g154344154359%_))))
                      (_%g154343154356%_ _%g154344154359%_)))))
          (_%g154342154391%_ _%stx154341%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self154270%_ _%stx154271%_)
        (let* ((_%g154273154290%_
                (lambda (_%g154274154287%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154274154287%_))))
               (_%g154272154337%_
                (lambda (_%g154274154293%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154274154293%_))
                      (let ((_%e154277154295%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154274154293%_))))
                        (let ((_%hd154278154298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154277154295%_)))
                              (_%tl154279154300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154277154295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154279154300%_))
                              (let ((_%e154280154303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154279154300%_))))
                                (let ((_%hd154281154306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154280154303%_)))
                                      (_%tl154282154308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154280154303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154282154308%_))
                                      (let ((_%e154283154311%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154282154308%_))))
                                        (let ((_%hd154284154314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154283154311%_)))
                                              (_%tl154285154316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154283154311%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154285154316%_))
                                              ((lambda (_%L154319%_
                                                        _%L154320%_)
                                                 (let ((_%eid154335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154320%_))))
                                                   (let ((__tmp154922
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self154270%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp154922
                                                      _%eid154335%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154270%_
                                                      _%L154319%_))))
                                               _%hd154284154314%_
                                               _%hd154281154306%_)
                                              (_%g154273154290%_
                                               _%g154274154293%_))))
                                      (_%g154273154290%_ _%g154274154293%_))))
                              (_%g154273154290%_ _%g154274154293%_))))
                      (_%g154273154290%_ _%g154274154293%_)))))
          (_%g154272154337%_ _%stx154271%_))))
    (define gxc#find-body%
      (lambda (_%self154183%_ _%stx154184%_)
        (let* ((_%g154186154205%_
                (lambda (_%g154187154202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154187154202%_))))
               (_%g154185154267%_
                (lambda (_%g154187154208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154187154208%_))
                      (let ((_%e154189154210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154187154208%_))))
                        (let ((_%hd154190154213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154189154210%_)))
                              (_%tl154191154215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154189154210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl154191154215%_))
                              (let ((_g154923_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl154191154215%_
                                        '0))))
                                (begin
                                  (let ((_g154924_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g154923_)
                                               (##values-length _g154923_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g154924_ 2)))
                                        (error "Context expects 2 values"
                                               _g154924_)))
                                  (let ((_%target154192154218%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154923_ 0)))
                                        (_%tl154194154220%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154923_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154194154220%_))
                                        (letrec ((_%loop154195154223%_
                                                  (lambda (_%hd154193154226%_
                                                           _%expr154199154228%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154193154226%_))
                                                        (let ((_%e154196154231%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154193154226%_))))
                  (let ((_%lp-hd154197154234%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154196154231%_)))
                        (_%lp-tl154198154236%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154196154231%_))))
                    (_%loop154195154223%_
                     _%lp-tl154198154236%_
                     (cons _%lp-hd154197154234%_ _%expr154199154228%_))))
                (let ((_%expr154200154239%_ (reverse _%expr154199154228%_)))
                  ((lambda (_%L154242%_)
                     (let ((__tmp154927
                            (lambda (_%g154255154257%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154183%_
                                 _%g154255154257%_))))
                           (__tmp154925
                            (let ((__tmp154926
                                   (lambda (_%g154259154262%_
                                            _%g154260154264%_)
                                     (cons _%g154259154262%_
                                           _%g154260154264%_))))
                              (declare (not safe))
                              (__foldr1 __tmp154926 '() _%L154242%_))))
                       (declare (not safe))
                       (__ormap1 __tmp154927 __tmp154925)))
                   _%expr154200154239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop154195154223%_
                                           _%target154192154218%_
                                           '()))
                                        (_%g154186154205%_
                                         _%g154187154208%_)))))
                              (_%g154186154205%_ _%g154187154208%_))))
                      (_%g154186154205%_ _%g154187154208%_)))))
          (_%g154185154267%_ _%stx154184%_))))
    (define gxc#find-let-values%
      (lambda (_%self154033%_ _%stx154034%_)
        (let* ((_%g154036154071%_
                (lambda (_%g154037154068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154037154068%_))))
               (_%g154035154180%_
                (lambda (_%g154037154074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154037154074%_))
                      (let ((_%e154041154076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154037154074%_))))
                        (let ((_%hd154042154079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154041154076%_)))
                              (_%tl154043154081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154041154076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154043154081%_))
                              (let ((_%e154044154084%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154043154081%_))))
                                (let ((_%hd154045154087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154044154084%_)))
                                      (_%tl154046154089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154044154084%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd154045154087%_))
                                      (let ((_g154928_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd154045154087%_
                                                '0))))
                                        (begin
                                          (let ((_g154929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g154928_)
                                                       (##values-length
                                                        _g154928_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g154929_ 2)))
                                                (error "Context expects 2 values"
                                                       _g154929_)))
                                          (let ((_%target154047154092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g154928_ 0)))
                                                (_%tl154049154094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g154928_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154049154094%_))
                                                (letrec ((_%loop154050154097%_
                                                          (lambda (_%hd154048154100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr154054154102%_
                           _%bind154055154104%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154048154100%_))
                        (let ((_%e154051154107%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154048154100%_))))
                          (let ((_%lp-hd154052154110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154051154107%_)))
                                (_%lp-tl154053154112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154051154107%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd154052154110%_))
                                (let ((_%e154061154115%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd154052154110%_))))
                                  (let ((_%hd154062154118%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154061154115%_)))
                                        (_%tl154063154120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154061154115%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154063154120%_))
                                        (let ((_%e154064154123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154063154120%_))))
                                          (let ((_%hd154065154126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154064154123%_)))
                                                (_%tl154066154128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154064154123%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154066154128%_))
                                                (_%loop154050154097%_
                                                 _%lp-tl154053154112%_
                                                 (cons _%hd154065154126%_
                                                       _%expr154054154102%_)
                                                 (cons _%hd154062154118%_
                                                       _%bind154055154104%_))
                                                (_%g154036154071%_
                                                 _%g154037154074%_))))
                                        (_%g154036154071%_
                                         _%g154037154074%_))))
                                (_%g154036154071%_ _%g154037154074%_))))
                        (let ((_%expr154056154131%_
                               (reverse _%expr154054154102%_))
                              (_%bind154057154133%_
                               (reverse _%bind154055154104%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154046154089%_))
                              (let ((_%e154058154136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154046154089%_))))
                                (let ((_%hd154059154139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154058154136%_)))
                                      (_%tl154060154141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154058154136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154060154141%_))
                                      ((lambda (_%L154144%_
                                                _%L154145%_
                                                _%L154146%_)
                                         (let ((_%$e154177%_
                                                (let ((__tmp154932
                                                       (lambda (_%g154165154167%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self154033%_
                                                            _%g154165154167%_))))
                                                      (__tmp154930
                                                       (let ((__tmp154931
                                                              (lambda (_%g154169154172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g154170154174%_)
                        (cons _%g154169154172%_ _%g154170154174%_))))
                 (declare (not safe))
                 (__foldr1 __tmp154931 '() _%L154145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp154932
                                                   __tmp154930))))
                                           (if _%$e154177%_
                                               _%$e154177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self154033%_
                                                  _%L154144%_)))))
                                       _%hd154059154139%_
                                       _%expr154056154131%_
                                       _%bind154057154133%_)
                                      (_%g154036154071%_ _%g154037154074%_))))
                              (_%g154036154071%_ _%g154037154074%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop154050154097%_
                                                   _%target154047154092%_
                                                   '()
                                                   '()))
                                                (_%g154036154071%_
                                                 _%g154037154074%_)))))
                                      (_%g154036154071%_ _%g154037154074%_))))
                              (_%g154036154071%_ _%g154037154074%_))))
                      (_%g154036154071%_ _%g154037154074%_)))))
          (_%g154035154180%_ _%stx154034%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self153977%_ _%stx153978%_)
        (let* ((_%g153980153993%_
                (lambda (_%g153981153990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153981153990%_))))
               (_%g153979154030%_
                (lambda (_%g153981153996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153981153996%_))
                      (let ((_%e153983153998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153981153996%_))))
                        (let ((_%hd153984154001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153983153998%_)))
                              (_%tl153985154003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153983153998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153985154003%_))
                              (let ((_%e153986154006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153985154003%_))))
                                (let ((_%hd153987154009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153986154006%_)))
                                      (_%tl153988154011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153986154006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153988154011%_))
                                      ((lambda (_%L154014%_)
                                         (let ((__tmp154934
                                                (lambda (_%g154025154027%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154014%_
                                                     _%g154025154027%_))))
                                               (__tmp154933
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self153977%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp154934 __tmp154933)))
                                       _%hd153987154009%_)
                                      (_%g153980153993%_ _%g153981153996%_))))
                              (_%g153980153993%_ _%g153981153996%_))))
                      (_%g153980153993%_ _%g153981153996%_)))))
          (_%g153979154030%_ _%stx153978%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self153902%_ _%stx153903%_)
        (let* ((_%g153905153922%_
                (lambda (_%g153906153919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153906153919%_))))
               (_%g153904153974%_
                (lambda (_%g153906153925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153906153925%_))
                      (let ((_%e153909153927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153906153925%_))))
                        (let ((_%hd153910153930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153909153927%_)))
                              (_%tl153911153932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153909153927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153911153932%_))
                              (let ((_%e153912153935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153911153932%_))))
                                (let ((_%hd153913153938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153912153935%_)))
                                      (_%tl153914153940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153912153935%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153914153940%_))
                                      (let ((_%e153915153943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153914153940%_))))
                                        (let ((_%hd153916153946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153915153943%_)))
                                              (_%tl153917153948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153915153943%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153917153948%_))
                                              ((lambda (_%L153951%_
                                                        _%L153952%_)
                                                 (let ((_%$e153971%_
                                                        (let ((__tmp154936
                                                               (lambda (_%g153966153968%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L153952%_
                            _%g153966153968%_))))
                      (__tmp154935
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self153902%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp154936 __tmp154935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e153971%_
                                                       _%$e153971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153902%_
                                                          _%L153951%_)))))
                                               _%hd153916153946%_
                                               _%hd153913153938%_)
                                              (_%g153905153922%_
                                               _%g153906153925%_))))
                                      (_%g153905153922%_ _%g153906153925%_))))
                              (_%g153905153922%_ _%g153906153925%_))))
                      (_%g153905153922%_ _%g153906153925%_)))))
          (_%g153904153974%_ _%stx153903%_))))))
