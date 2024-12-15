(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1734225196)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp154897 (list gxc#::void::t))
            (__tmp154896 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp154897
         '()
         __tmp154896
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args154883%_
        (apply make-instance gxc#::collect-mutators::t _%$args154883%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp154898
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
        (__make-promise __tmp154898)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx154875%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self154878%_
                (let ((__obj154886
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj154886))
               (__tmp154899
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154878%_ _%stx154875%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp154899
           gxc#current-compile-method
           _%self154878%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp154901 (list gxc#::basic-xform-expression::t))
            (__tmp154900 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp154901
         '(id new-id)
         __tmp154900
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args154872%_
        (apply make-instance gxc#::expression-subst::t _%$args154872%_)))
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
      (let ((__tmp154902
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
        (__make-promise __tmp154902)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords154842%_
               _%id154838154843%_
               _%new-id154839154845%_
               _%stx154847%_)
        (let* ((_%id154850%_
                (if (eq? _%id154838154843%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id154838154843%_))
               (_%new-id154852%_
                (if (eq? _%new-id154839154845%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id154839154845%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self154854%_
                  (let ((__obj154888
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154888
                       _%id154850%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154888
                       _%new-id154852%_
                       '2
                       '#f
                       '#f))
                    __obj154888))
                 (__tmp154903
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154854%_ _%stx154847%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154903
             gxc#current-compile-method
             _%self154854%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords154861%_ . _%args154862%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords154861%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154861%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154861%_
                  'new-id:
                  absent-value))
               _%args154862%_)))
    (define gxc#apply-expression-subst
      (lambda _%args154840154868%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args154840154868%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp154905 (list gxc#::basic-xform-expression::t))
            (__tmp154904 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp154905
         '(subst)
         __tmp154904
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args154834%_
        (apply make-instance gxc#::expression-subst*::t _%$args154834%_)))
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
      (let ((__tmp154906
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
        (__make-promise __tmp154906)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords154808%_ _%subst154805154809%_ _%stx154811%_)
        (let ((_%subst154814%_
               (if (eq? _%subst154805154809%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst154805154809%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self154816%_
                  (let ((__obj154890
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154890
                       _%subst154814%_
                       '1
                       '#f
                       '#f))
                    __obj154890))
                 (__tmp154907
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154816%_ _%stx154811%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154907
             gxc#current-compile-method
             _%self154816%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords154823%_ . _%args154824%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords154823%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154823%_
                  'subst:
                  absent-value))
               _%args154824%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args154806154830%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args154806154830%_)))
    (define gxc#::find-expression::t
      (let ((__tmp154908 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp154908
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args154801%_
        (apply make-instance gxc#::find-expression::t _%$args154801%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp154909
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
        (__make-promise __tmp154909)))
    (define gxc#::find-var-refs::t
      (let ((__tmp154911 (list gxc#::find-expression::t))
            (__tmp154910 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp154911
         '(ids)
         __tmp154910
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args154797%_
        (apply make-instance gxc#::find-var-refs::t _%$args154797%_)))
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
      (let ((__tmp154912
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
        (__make-promise __tmp154912)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords154771%_ _%ids154768154772%_ _%stx154774%_)
        (let ((_%ids154777%_
               (if (eq? _%ids154768154772%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids154768154772%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self154779%_
                  (let ((__obj154893
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154893
                       _%ids154777%_
                       '1
                       '#f
                       '#f))
                    __obj154893))
                 (__tmp154913
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154779%_ _%stx154774%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154913
             gxc#current-compile-method
             _%self154779%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords154786%_ . _%args154787%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords154786%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154786%_ 'ids: absent-value))
               _%args154787%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args154769154793%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args154769154793%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp154915 (list gxc#::collect-expression-refs::t))
            (__tmp154914 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp154915
         '()
         __tmp154914
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args154764%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args154764%_)))
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
      (let ((__tmp154916
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
        (__make-promise __tmp154916)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords154738%_ _%table154735154739%_ _%stx154741%_)
        (let ((_%table154744%_
               (if (eq? _%table154735154739%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table154735154739%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self154746%_
                  (let ((__obj154895
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154895
                       _%table154744%_
                       '1
                       '#f
                       '#f))
                    __obj154895))
                 (__tmp154917
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154746%_ _%stx154741%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154917
             gxc#current-compile-method
             _%self154746%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords154753%_ . _%args154754%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords154753%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154753%_
                  'table:
                  absent-value))
               _%args154754%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args154736154760%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args154736154760%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self154664%_ _%stx154665%_)
        (let* ((_%g154667154684%_
                (lambda (_%g154668154681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154668154681%_))))
               (_%g154666154731%_
                (lambda (_%g154668154687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154668154687%_))
                      (let ((_%e154671154689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154668154687%_))))
                        (let ((_%hd154672154692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154671154689%_)))
                              (_%tl154673154694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154671154689%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154673154694%_))
                              (let ((_%e154674154697%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154673154694%_))))
                                (let ((_%hd154675154700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154674154697%_)))
                                      (_%tl154676154702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154674154697%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154676154702%_))
                                      (let ((_%e154677154705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154676154702%_))))
                                        (let ((_%hd154678154708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154677154705%_)))
                                              (_%tl154679154710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154677154705%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154679154710%_))
                                              ((lambda (_%L154713%_
                                                        _%L154714%_)
                                                 (let ((_%sym154729%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154714%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym154729%_))
                                                   (let ((__tmp154918
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp154918
                                                      _%sym154729%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154664%_
                                                      _%L154713%_))))
                                               _%hd154678154708%_
                                               _%hd154675154700%_)
                                              (_%g154667154684%_
                                               _%g154668154687%_))))
                                      (_%g154667154684%_ _%g154668154687%_))))
                              (_%g154667154684%_ _%g154668154687%_))))
                      (_%g154667154684%_ _%g154668154687%_)))))
          (_%g154666154731%_ _%stx154665%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self154612%_ _%stx154613%_)
        (let* ((_%g154615154628%_
                (lambda (_%g154616154625%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154616154625%_))))
               (_%g154614154661%_
                (lambda (_%g154616154631%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154616154631%_))
                      (let ((_%e154618154633%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154616154631%_))))
                        (let ((_%hd154619154636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154618154633%_)))
                              (_%tl154620154638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154618154633%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154620154638%_))
                              (let ((_%e154621154641%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154620154638%_))))
                                (let ((_%hd154622154644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154621154641%_)))
                                      (_%tl154623154646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154621154641%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154623154646%_))
                                      ((lambda (_%L154649%_)
                                         (if (let ((__tmp154919
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self154612%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154649%_
                                                __tmp154919))
                                             (let ((__tmp154920
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self154612%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154920
                                                _%stx154613%_))
                                             _%stx154613%_))
                                       _%hd154622154644%_)
                                      (_%g154615154628%_ _%g154616154631%_))))
                              (_%g154615154628%_ _%g154616154631%_))))
                      (_%g154615154628%_ _%g154616154631%_)))))
          (_%g154614154661%_ _%stx154613%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self154552%_ _%stx154553%_)
        (let* ((_%g154555154568%_
                (lambda (_%g154556154565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154556154565%_))))
               (_%g154554154609%_
                (lambda (_%g154556154571%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154556154571%_))
                      (let ((_%e154558154573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154556154571%_))))
                        (let ((_%hd154559154576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154558154573%_)))
                              (_%tl154560154578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154558154573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154560154578%_))
                              (let ((_%e154561154581%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154560154578%_))))
                                (let ((_%hd154562154584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154561154581%_)))
                                      (_%tl154563154586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154561154581%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154563154586%_))
                                      ((lambda (_%L154589%_)
                                         (let ((_%$e154603%_
                                                (let ((__tmp154922
                                                       (lambda (_%sub154601%_)
                                                         (let ((__tmp154923
                                                                (car _%sub154601%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L154589%_
                                                            __tmp154923))))
                                                      (__tmp154921
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self154552%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp154922
                                                          __tmp154921))))
                                           (if _%$e154603%_
                                               ((lambda (_%sub154606%_)
                                                  (let ((__tmp154924
                                                         (cons '%#ref
                                                               (cons (cdr _%sub154606%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp154924
                                                     _%stx154553%_)))
                                                _%$e154603%_)
                                               _%stx154553%_)))
                                       _%hd154562154584%_)
                                      (_%g154555154568%_ _%g154556154571%_))))
                              (_%g154555154568%_ _%g154556154571%_))))
                      (_%g154555154568%_ _%g154556154571%_)))))
          (_%g154554154609%_ _%stx154553%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self154481%_ _%stx154482%_)
        (let* ((_%g154484154501%_
                (lambda (_%g154485154498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154485154498%_))))
               (_%g154483154549%_
                (lambda (_%g154485154504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154485154504%_))
                      (let ((_%e154488154506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154485154504%_))))
                        (let ((_%hd154489154509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154488154506%_)))
                              (_%tl154490154511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154488154506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154490154511%_))
                              (let ((_%e154491154514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154490154511%_))))
                                (let ((_%hd154492154517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154491154514%_)))
                                      (_%tl154493154519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154491154514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154493154519%_))
                                      (let ((_%e154494154522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154493154519%_))))
                                        (let ((_%hd154495154525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154494154522%_)))
                                              (_%tl154496154527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154494154522%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154496154527%_))
                                              ((lambda (_%L154530%_
                                                        _%L154531%_)
                                                 (let ((_%new-expr154546%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154481%_
                                                           _%L154530%_)))
                                                       (_%new-xid154547%_
                                                        (if (let ((__tmp154925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self154481%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L154531%_ __tmp154925))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self154481%_ 'new-id))
                    _%L154531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154926
                                                          (cons '%#set!
                                                                (cons _%new-xid154547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154546%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154926
                                                      _%stx154482%_))))
                                               _%hd154495154525%_
                                               _%hd154492154517%_)
                                              (_%g154484154501%_
                                               _%g154485154504%_))))
                                      (_%g154484154501%_ _%g154485154504%_))))
                              (_%g154484154501%_ _%g154485154504%_))))
                      (_%g154484154501%_ _%g154485154504%_)))))
          (_%g154483154549%_ _%stx154482%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self154404%_ _%stx154405%_)
        (let* ((_%g154407154424%_
                (lambda (_%g154408154421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154408154421%_))))
               (_%g154406154478%_
                (lambda (_%g154408154427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154408154427%_))
                      (let ((_%e154411154429%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154408154427%_))))
                        (let ((_%hd154412154432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154411154429%_)))
                              (_%tl154413154434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154411154429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154413154434%_))
                              (let ((_%e154414154437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154413154434%_))))
                                (let ((_%hd154415154440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154414154437%_)))
                                      (_%tl154416154442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154414154437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154416154442%_))
                                      (let ((_%e154417154445%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154416154442%_))))
                                        (let ((_%hd154418154448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154417154445%_)))
                                              (_%tl154419154450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154417154445%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154419154450%_))
                                              ((lambda (_%L154453%_
                                                        _%L154454%_)
                                                 (let ((_%new-expr154475%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154404%_
                                                           _%L154453%_)))
                                                       (_%new-xid154476%_
                                                        (let ((_%$e154471%_
                                                               (let ((__tmp154928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub154469%_)
                                (let ((__tmp154929 (car _%sub154469%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L154454%_
                                   __tmp154929))))
                             (__tmp154927
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self154404%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp154928 __tmp154927))))
                  (if _%$e154471%_ (cdr _%$e154471%_) _%L154454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154930
                                                          (cons '%#set!
                                                                (cons _%new-xid154476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154475%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154930
                                                      _%stx154405%_))))
                                               _%hd154418154448%_
                                               _%hd154415154440%_)
                                              (_%g154407154424%_
                                               _%g154408154427%_))))
                                      (_%g154407154424%_ _%g154408154427%_))))
                              (_%g154407154424%_ _%g154408154427%_))))
                      (_%g154407154424%_ _%g154408154427%_)))))
          (_%g154406154478%_ _%stx154405%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self154350%_ _%stx154351%_)
        (let* ((_%g154353154366%_
                (lambda (_%g154354154363%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154354154363%_))))
               (_%g154352154401%_
                (lambda (_%g154354154369%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154354154369%_))
                      (let ((_%e154356154371%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154354154369%_))))
                        (let ((_%hd154357154374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154356154371%_)))
                              (_%tl154358154376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154356154371%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154358154376%_))
                              (let ((_%e154359154379%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154358154376%_))))
                                (let ((_%hd154360154382%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154359154379%_)))
                                      (_%tl154361154384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154359154379%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154361154384%_))
                                      ((lambda (_%L154387%_)
                                         (let* ((_%eid154399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L154387%_)))
                                                (__tmp154931
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self154350%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp154931
                                            _%eid154399%_
                                            1+
                                            '0)))
                                       _%hd154360154382%_)
                                      (_%g154353154366%_ _%g154354154369%_))))
                              (_%g154353154366%_ _%g154354154369%_))))
                      (_%g154353154366%_ _%g154354154369%_)))))
          (_%g154352154401%_ _%stx154351%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self154280%_ _%stx154281%_)
        (let* ((_%g154283154300%_
                (lambda (_%g154284154297%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154284154297%_))))
               (_%g154282154347%_
                (lambda (_%g154284154303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154284154303%_))
                      (let ((_%e154287154305%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154284154303%_))))
                        (let ((_%hd154288154308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154287154305%_)))
                              (_%tl154289154310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154287154305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154289154310%_))
                              (let ((_%e154290154313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154289154310%_))))
                                (let ((_%hd154291154316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154290154313%_)))
                                      (_%tl154292154318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154290154313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154292154318%_))
                                      (let ((_%e154293154321%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154292154318%_))))
                                        (let ((_%hd154294154324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154293154321%_)))
                                              (_%tl154295154326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154293154321%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154295154326%_))
                                              ((lambda (_%L154329%_
                                                        _%L154330%_)
                                                 (let ((_%eid154345%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154330%_))))
                                                   (let ((__tmp154932
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self154280%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp154932
                                                      _%eid154345%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154280%_
                                                      _%L154329%_))))
                                               _%hd154294154324%_
                                               _%hd154291154316%_)
                                              (_%g154283154300%_
                                               _%g154284154303%_))))
                                      (_%g154283154300%_ _%g154284154303%_))))
                              (_%g154283154300%_ _%g154284154303%_))))
                      (_%g154283154300%_ _%g154284154303%_)))))
          (_%g154282154347%_ _%stx154281%_))))
    (define gxc#find-body%
      (lambda (_%self154193%_ _%stx154194%_)
        (let* ((_%g154196154215%_
                (lambda (_%g154197154212%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154197154212%_))))
               (_%g154195154277%_
                (lambda (_%g154197154218%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154197154218%_))
                      (let ((_%e154199154220%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154197154218%_))))
                        (let ((_%hd154200154223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154199154220%_)))
                              (_%tl154201154225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154199154220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl154201154225%_))
                              (let ((_g154933_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl154201154225%_
                                        '0))))
                                (begin
                                  (let ((_g154934_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g154933_)
                                               (##values-length _g154933_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g154934_ 2)))
                                        (error "Context expects 2 values"
                                               _g154934_)))
                                  (let ((_%target154202154228%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154933_ 0)))
                                        (_%tl154204154230%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154933_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154204154230%_))
                                        (letrec ((_%loop154205154233%_
                                                  (lambda (_%hd154203154236%_
                                                           _%expr154209154238%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154203154236%_))
                                                        (let ((_%e154206154241%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154203154236%_))))
                  (let ((_%lp-hd154207154244%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154206154241%_)))
                        (_%lp-tl154208154246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154206154241%_))))
                    (_%loop154205154233%_
                     _%lp-tl154208154246%_
                     (cons _%lp-hd154207154244%_ _%expr154209154238%_))))
                (let ((_%expr154210154249%_ (reverse _%expr154209154238%_)))
                  ((lambda (_%L154252%_)
                     (let ((__tmp154937
                            (lambda (_%g154265154267%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154193%_
                                 _%g154265154267%_))))
                           (__tmp154935
                            (let ((__tmp154936
                                   (lambda (_%g154269154272%_
                                            _%g154270154274%_)
                                     (cons _%g154269154272%_
                                           _%g154270154274%_))))
                              (declare (not safe))
                              (__foldr1 __tmp154936 '() _%L154252%_))))
                       (declare (not safe))
                       (__ormap1 __tmp154937 __tmp154935)))
                   _%expr154210154249%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop154205154233%_
                                           _%target154202154228%_
                                           '()))
                                        (_%g154196154215%_
                                         _%g154197154218%_)))))
                              (_%g154196154215%_ _%g154197154218%_))))
                      (_%g154196154215%_ _%g154197154218%_)))))
          (_%g154195154277%_ _%stx154194%_))))
    (define gxc#find-let-values%
      (lambda (_%self154043%_ _%stx154044%_)
        (let* ((_%g154046154081%_
                (lambda (_%g154047154078%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154047154078%_))))
               (_%g154045154190%_
                (lambda (_%g154047154084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154047154084%_))
                      (let ((_%e154051154086%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154047154084%_))))
                        (let ((_%hd154052154089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154051154086%_)))
                              (_%tl154053154091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154051154086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154053154091%_))
                              (let ((_%e154054154094%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154053154091%_))))
                                (let ((_%hd154055154097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154054154094%_)))
                                      (_%tl154056154099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154054154094%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd154055154097%_))
                                      (let ((_g154938_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd154055154097%_
                                                '0))))
                                        (begin
                                          (let ((_g154939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g154938_)
                                                       (##values-length
                                                        _g154938_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g154939_ 2)))
                                                (error "Context expects 2 values"
                                                       _g154939_)))
                                          (let ((_%target154057154102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g154938_ 0)))
                                                (_%tl154059154104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g154938_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154059154104%_))
                                                (letrec ((_%loop154060154107%_
                                                          (lambda (_%hd154058154110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr154064154112%_
                           _%bind154065154114%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154058154110%_))
                        (let ((_%e154061154117%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154058154110%_))))
                          (let ((_%lp-hd154062154120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154061154117%_)))
                                (_%lp-tl154063154122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154061154117%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd154062154120%_))
                                (let ((_%e154071154125%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd154062154120%_))))
                                  (let ((_%hd154072154128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154071154125%_)))
                                        (_%tl154073154130%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154071154125%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154073154130%_))
                                        (let ((_%e154074154133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154073154130%_))))
                                          (let ((_%hd154075154136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154074154133%_)))
                                                (_%tl154076154138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154074154133%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154076154138%_))
                                                (_%loop154060154107%_
                                                 _%lp-tl154063154122%_
                                                 (cons _%hd154075154136%_
                                                       _%expr154064154112%_)
                                                 (cons _%hd154072154128%_
                                                       _%bind154065154114%_))
                                                (_%g154046154081%_
                                                 _%g154047154084%_))))
                                        (_%g154046154081%_
                                         _%g154047154084%_))))
                                (_%g154046154081%_ _%g154047154084%_))))
                        (let ((_%expr154066154141%_
                               (reverse _%expr154064154112%_))
                              (_%bind154067154143%_
                               (reverse _%bind154065154114%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154056154099%_))
                              (let ((_%e154068154146%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154056154099%_))))
                                (let ((_%hd154069154149%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154068154146%_)))
                                      (_%tl154070154151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154068154146%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154070154151%_))
                                      ((lambda (_%L154154%_
                                                _%L154155%_
                                                _%L154156%_)
                                         (let ((_%$e154187%_
                                                (let ((__tmp154942
                                                       (lambda (_%g154175154177%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self154043%_
                                                            _%g154175154177%_))))
                                                      (__tmp154940
                                                       (let ((__tmp154941
                                                              (lambda (_%g154179154182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g154180154184%_)
                        (cons _%g154179154182%_ _%g154180154184%_))))
                 (declare (not safe))
                 (__foldr1 __tmp154941 '() _%L154155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp154942
                                                   __tmp154940))))
                                           (if _%$e154187%_
                                               _%$e154187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self154043%_
                                                  _%L154154%_)))))
                                       _%hd154069154149%_
                                       _%expr154066154141%_
                                       _%bind154067154143%_)
                                      (_%g154046154081%_ _%g154047154084%_))))
                              (_%g154046154081%_ _%g154047154084%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop154060154107%_
                                                   _%target154057154102%_
                                                   '()
                                                   '()))
                                                (_%g154046154081%_
                                                 _%g154047154084%_)))))
                                      (_%g154046154081%_ _%g154047154084%_))))
                              (_%g154046154081%_ _%g154047154084%_))))
                      (_%g154046154081%_ _%g154047154084%_)))))
          (_%g154045154190%_ _%stx154044%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self153987%_ _%stx153988%_)
        (let* ((_%g153990154003%_
                (lambda (_%g153991154000%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153991154000%_))))
               (_%g153989154040%_
                (lambda (_%g153991154006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153991154006%_))
                      (let ((_%e153993154008%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153991154006%_))))
                        (let ((_%hd153994154011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153993154008%_)))
                              (_%tl153995154013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153993154008%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153995154013%_))
                              (let ((_%e153996154016%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153995154013%_))))
                                (let ((_%hd153997154019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153996154016%_)))
                                      (_%tl153998154021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153996154016%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153998154021%_))
                                      ((lambda (_%L154024%_)
                                         (let ((__tmp154944
                                                (lambda (_%g154035154037%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154024%_
                                                     _%g154035154037%_))))
                                               (__tmp154943
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self153987%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp154944 __tmp154943)))
                                       _%hd153997154019%_)
                                      (_%g153990154003%_ _%g153991154006%_))))
                              (_%g153990154003%_ _%g153991154006%_))))
                      (_%g153990154003%_ _%g153991154006%_)))))
          (_%g153989154040%_ _%stx153988%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self153912%_ _%stx153913%_)
        (let* ((_%g153915153932%_
                (lambda (_%g153916153929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153916153929%_))))
               (_%g153914153984%_
                (lambda (_%g153916153935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153916153935%_))
                      (let ((_%e153919153937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153916153935%_))))
                        (let ((_%hd153920153940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153919153937%_)))
                              (_%tl153921153942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153919153937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153921153942%_))
                              (let ((_%e153922153945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153921153942%_))))
                                (let ((_%hd153923153948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153922153945%_)))
                                      (_%tl153924153950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153922153945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153924153950%_))
                                      (let ((_%e153925153953%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153924153950%_))))
                                        (let ((_%hd153926153956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153925153953%_)))
                                              (_%tl153927153958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153925153953%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153927153958%_))
                                              ((lambda (_%L153961%_
                                                        _%L153962%_)
                                                 (let ((_%$e153981%_
                                                        (let ((__tmp154946
                                                               (lambda (_%g153976153978%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L153962%_
                            _%g153976153978%_))))
                      (__tmp154945
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self153912%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp154946 __tmp154945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e153981%_
                                                       _%$e153981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153912%_
                                                          _%L153961%_)))))
                                               _%hd153926153956%_
                                               _%hd153923153948%_)
                                              (_%g153915153932%_
                                               _%g153916153935%_))))
                                      (_%g153915153932%_ _%g153916153935%_))))
                              (_%g153915153932%_ _%g153916153935%_))))
                      (_%g153915153932%_ _%g153916153935%_)))))
          (_%g153914153984%_ _%stx153913%_))))))
