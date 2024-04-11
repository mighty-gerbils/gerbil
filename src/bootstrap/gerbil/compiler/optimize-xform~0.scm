(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712823028)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151759 (list gxc#::void::t))
            (__tmp151758 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151759
         '()
         __tmp151758
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args151745%_
        (apply make-instance gxc#::collect-mutators::t _%$args151745%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151760
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
        (__make-promise __tmp151760)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx151737%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self151740%_
                (let ((__obj151748
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151748))
               (__tmp151761
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151740%_ _%stx151737%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151761
           gxc#current-compile-method
           _%self151740%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151763 (list gxc#::basic-xform-expression::t))
            (__tmp151762 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151763
         '(id new-id)
         __tmp151762
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args151734%_
        (apply make-instance gxc#::expression-subst::t _%$args151734%_)))
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
      (let ((__tmp151764
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
        (__make-promise __tmp151764)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords151704%_
               _%id151700151705%_
               _%new-id151701151707%_
               _%stx151709%_)
        (let* ((_%id151712%_
                (if (eq? _%id151700151705%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id151700151705%_))
               (_%new-id151714%_
                (if (eq? _%new-id151701151707%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id151701151707%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self151716%_
                  (let ((__obj151750
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151750
                       _%id151712%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151750
                       _%new-id151714%_
                       '2
                       '#f
                       '#f))
                    __obj151750))
                 (__tmp151765
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151716%_ _%stx151709%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151765
             gxc#current-compile-method
             _%self151716%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords151723%_ . _%args151724%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords151723%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151723%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151723%_
                  'new-id:
                  absent-value))
               _%args151724%_)))
    (define gxc#apply-expression-subst
      (lambda _%args151702151730%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args151702151730%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151767 (list gxc#::basic-xform-expression::t))
            (__tmp151766 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151767
         '(subst)
         __tmp151766
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args151696%_
        (apply make-instance gxc#::expression-subst*::t _%$args151696%_)))
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
      (let ((__tmp151768
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
        (__make-promise __tmp151768)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords151670%_ _%subst151667151671%_ _%stx151673%_)
        (let ((_%subst151676%_
               (if (eq? _%subst151667151671%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst151667151671%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self151678%_
                  (let ((__obj151752
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151752
                       _%subst151676%_
                       '1
                       '#f
                       '#f))
                    __obj151752))
                 (__tmp151769
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151678%_ _%stx151673%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151769
             gxc#current-compile-method
             _%self151678%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords151685%_ . _%args151686%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords151685%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151685%_
                  'subst:
                  absent-value))
               _%args151686%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args151668151692%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args151668151692%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151770 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151770
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args151663%_
        (apply make-instance gxc#::find-expression::t _%$args151663%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151771
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
        (__make-promise __tmp151771)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151773 (list gxc#::find-expression::t))
            (__tmp151772 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151773
         '(ids)
         __tmp151772
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args151659%_
        (apply make-instance gxc#::find-var-refs::t _%$args151659%_)))
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
      (let ((__tmp151774
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
        (__make-promise __tmp151774)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords151633%_ _%ids151630151634%_ _%stx151636%_)
        (let ((_%ids151639%_
               (if (eq? _%ids151630151634%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids151630151634%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self151641%_
                  (let ((__obj151755
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151755
                       _%ids151639%_
                       '1
                       '#f
                       '#f))
                    __obj151755))
                 (__tmp151775
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151641%_ _%stx151636%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151775
             gxc#current-compile-method
             _%self151641%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords151648%_ . _%args151649%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords151648%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151648%_ 'ids: absent-value))
               _%args151649%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args151631151655%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args151631151655%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151777 (list gxc#::collect-expression-refs::t))
            (__tmp151776 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151777
         '()
         __tmp151776
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args151626%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args151626%_)))
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
      (let ((__tmp151778
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
        (__make-promise __tmp151778)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords151600%_ _%table151597151601%_ _%stx151603%_)
        (let ((_%table151606%_
               (if (eq? _%table151597151601%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table151597151601%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self151608%_
                  (let ((__obj151757
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151757
                       _%table151606%_
                       '1
                       '#f
                       '#f))
                    __obj151757))
                 (__tmp151779
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151608%_ _%stx151603%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151779
             gxc#current-compile-method
             _%self151608%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords151615%_ . _%args151616%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords151615%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151615%_
                  'table:
                  absent-value))
               _%args151616%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args151598151622%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args151598151622%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self151526%_ _%stx151527%_)
        (let* ((_%g151529151546%_
                (lambda (_%g151530151543%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151530151543%_))))
               (_%g151528151593%_
                (lambda (_%g151530151549%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151530151549%_))
                      (let ((_%e151533151551%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151530151549%_))))
                        (let ((_%hd151534151554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151533151551%_)))
                              (_%tl151535151556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151533151551%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151535151556%_))
                              (let ((_%e151536151559%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151535151556%_))))
                                (let ((_%hd151537151562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151536151559%_)))
                                      (_%tl151538151564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151536151559%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151538151564%_))
                                      (let ((_%e151539151567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151538151564%_))))
                                        (let ((_%hd151540151570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151539151567%_)))
                                              (_%tl151541151572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151539151567%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151541151572%_))
                                              ((lambda (_%L151575%_
                                                        _%L151576%_)
                                                 (let ((_%sym151591%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151576%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym151591%_))
                                                   (let ((__tmp151780
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151780
                                                      _%sym151591%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151526%_
                                                      _%L151575%_))))
                                               _%hd151540151570%_
                                               _%hd151537151562%_)
                                              (_%g151529151546%_
                                               _%g151530151549%_))))
                                      (_%g151529151546%_ _%g151530151549%_))))
                              (_%g151529151546%_ _%g151530151549%_))))
                      (_%g151529151546%_ _%g151530151549%_)))))
          (_%g151528151593%_ _%stx151527%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self151474%_ _%stx151475%_)
        (let* ((_%g151477151490%_
                (lambda (_%g151478151487%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151478151487%_))))
               (_%g151476151523%_
                (lambda (_%g151478151493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151478151493%_))
                      (let ((_%e151480151495%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151478151493%_))))
                        (let ((_%hd151481151498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151480151495%_)))
                              (_%tl151482151500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151480151495%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151482151500%_))
                              (let ((_%e151483151503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151482151500%_))))
                                (let ((_%hd151484151506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151483151503%_)))
                                      (_%tl151485151508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151483151503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151485151508%_))
                                      ((lambda (_%L151511%_)
                                         (if (let ((__tmp151781
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self151474%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L151511%_
                                                __tmp151781))
                                             (let ((__tmp151782
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self151474%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151782
                                                _%stx151475%_))
                                             _%stx151475%_))
                                       _%hd151484151506%_)
                                      (_%g151477151490%_ _%g151478151493%_))))
                              (_%g151477151490%_ _%g151478151493%_))))
                      (_%g151477151490%_ _%g151478151493%_)))))
          (_%g151476151523%_ _%stx151475%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self151414%_ _%stx151415%_)
        (let* ((_%g151417151430%_
                (lambda (_%g151418151427%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151418151427%_))))
               (_%g151416151471%_
                (lambda (_%g151418151433%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151418151433%_))
                      (let ((_%e151420151435%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151418151433%_))))
                        (let ((_%hd151421151438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151420151435%_)))
                              (_%tl151422151440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151420151435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151422151440%_))
                              (let ((_%e151423151443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151422151440%_))))
                                (let ((_%hd151424151446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151423151443%_)))
                                      (_%tl151425151448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151423151443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151425151448%_))
                                      ((lambda (_%L151451%_)
                                         (let ((_%$e151465%_
                                                (let ((__tmp151784
                                                       (lambda (_%sub151463%_)
                                                         (let ((__tmp151785
                                                                (car _%sub151463%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L151451%_
                                                            __tmp151785))))
                                                      (__tmp151783
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self151414%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151784
                                                          __tmp151783))))
                                           (if _%$e151465%_
                                               ((lambda (_%sub151468%_)
                                                  (let ((__tmp151786
                                                         (cons '%#ref
                                                               (cons (cdr _%sub151468%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151786
                                                     _%stx151415%_)))
                                                _%$e151465%_)
                                               _%stx151415%_)))
                                       _%hd151424151446%_)
                                      (_%g151417151430%_ _%g151418151433%_))))
                              (_%g151417151430%_ _%g151418151433%_))))
                      (_%g151417151430%_ _%g151418151433%_)))))
          (_%g151416151471%_ _%stx151415%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151343%_ _%stx151344%_)
        (let* ((_%g151346151363%_
                (lambda (_%g151347151360%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151347151360%_))))
               (_%g151345151411%_
                (lambda (_%g151347151366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151347151366%_))
                      (let ((_%e151350151368%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151347151366%_))))
                        (let ((_%hd151351151371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151350151368%_)))
                              (_%tl151352151373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151350151368%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151352151373%_))
                              (let ((_%e151353151376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151352151373%_))))
                                (let ((_%hd151354151379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151353151376%_)))
                                      (_%tl151355151381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151353151376%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151355151381%_))
                                      (let ((_%e151356151384%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151355151381%_))))
                                        (let ((_%hd151357151387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151356151384%_)))
                                              (_%tl151358151389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151356151384%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151358151389%_))
                                              ((lambda (_%L151392%_
                                                        _%L151393%_)
                                                 (let ((_%new-expr151408%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151343%_
                                                           _%L151392%_)))
                                                       (_%new-xid151409%_
                                                        (if (let ((__tmp151787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151343%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151393%_ __tmp151787))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151343%_ 'new-id))
                    _%L151393%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151788
                                                          (cons '%#set!
                                                                (cons _%new-xid151409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151408%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151788
                                                      _%stx151344%_))))
                                               _%hd151357151387%_
                                               _%hd151354151379%_)
                                              (_%g151346151363%_
                                               _%g151347151366%_))))
                                      (_%g151346151363%_ _%g151347151366%_))))
                              (_%g151346151363%_ _%g151347151366%_))))
                      (_%g151346151363%_ _%g151347151366%_)))))
          (_%g151345151411%_ _%stx151344%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151266%_ _%stx151267%_)
        (let* ((_%g151269151286%_
                (lambda (_%g151270151283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151270151283%_))))
               (_%g151268151340%_
                (lambda (_%g151270151289%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151270151289%_))
                      (let ((_%e151273151291%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151270151289%_))))
                        (let ((_%hd151274151294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151273151291%_)))
                              (_%tl151275151296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151273151291%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151275151296%_))
                              (let ((_%e151276151299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151275151296%_))))
                                (let ((_%hd151277151302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151276151299%_)))
                                      (_%tl151278151304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151276151299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151278151304%_))
                                      (let ((_%e151279151307%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151278151304%_))))
                                        (let ((_%hd151280151310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151279151307%_)))
                                              (_%tl151281151312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151279151307%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151281151312%_))
                                              ((lambda (_%L151315%_
                                                        _%L151316%_)
                                                 (let ((_%new-expr151337%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151266%_
                                                           _%L151315%_)))
                                                       (_%new-xid151338%_
                                                        (let ((_%$e151333%_
                                                               (let ((__tmp151790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151331%_)
                                (let ((__tmp151791 (car _%sub151331%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151316%_
                                   __tmp151791))))
                             (__tmp151789
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151266%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151790 __tmp151789))))
                  (if _%$e151333%_ (cdr _%$e151333%_) _%L151316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151792
                                                          (cons '%#set!
                                                                (cons _%new-xid151338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151337%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151792
                                                      _%stx151267%_))))
                                               _%hd151280151310%_
                                               _%hd151277151302%_)
                                              (_%g151269151286%_
                                               _%g151270151289%_))))
                                      (_%g151269151286%_ _%g151270151289%_))))
                              (_%g151269151286%_ _%g151270151289%_))))
                      (_%g151269151286%_ _%g151270151289%_)))))
          (_%g151268151340%_ _%stx151267%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151212%_ _%stx151213%_)
        (let* ((_%g151215151228%_
                (lambda (_%g151216151225%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151216151225%_))))
               (_%g151214151263%_
                (lambda (_%g151216151231%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151216151231%_))
                      (let ((_%e151218151233%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151216151231%_))))
                        (let ((_%hd151219151236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151218151233%_)))
                              (_%tl151220151238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151218151233%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151220151238%_))
                              (let ((_%e151221151241%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151220151238%_))))
                                (let ((_%hd151222151244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151221151241%_)))
                                      (_%tl151223151246%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151221151241%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151223151246%_))
                                      ((lambda (_%L151249%_)
                                         (let* ((_%eid151261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151249%_)))
                                                (__tmp151793
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151212%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151793
                                            _%eid151261%_
                                            1+
                                            '0)))
                                       _%hd151222151244%_)
                                      (_%g151215151228%_ _%g151216151231%_))))
                              (_%g151215151228%_ _%g151216151231%_))))
                      (_%g151215151228%_ _%g151216151231%_)))))
          (_%g151214151263%_ _%stx151213%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151142%_ _%stx151143%_)
        (let* ((_%g151145151162%_
                (lambda (_%g151146151159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151146151159%_))))
               (_%g151144151209%_
                (lambda (_%g151146151165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151146151165%_))
                      (let ((_%e151149151167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151146151165%_))))
                        (let ((_%hd151150151170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151149151167%_)))
                              (_%tl151151151172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151149151167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151151151172%_))
                              (let ((_%e151152151175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151151151172%_))))
                                (let ((_%hd151153151178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151152151175%_)))
                                      (_%tl151154151180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151152151175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151154151180%_))
                                      (let ((_%e151155151183%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151154151180%_))))
                                        (let ((_%hd151156151186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151155151183%_)))
                                              (_%tl151157151188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151155151183%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151157151188%_))
                                              ((lambda (_%L151191%_
                                                        _%L151192%_)
                                                 (let ((_%eid151207%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151192%_))))
                                                   (let ((__tmp151794
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151142%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151794
                                                      _%eid151207%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151142%_
                                                      _%L151191%_))))
                                               _%hd151156151186%_
                                               _%hd151153151178%_)
                                              (_%g151145151162%_
                                               _%g151146151165%_))))
                                      (_%g151145151162%_ _%g151146151165%_))))
                              (_%g151145151162%_ _%g151146151165%_))))
                      (_%g151145151162%_ _%g151146151165%_)))))
          (_%g151144151209%_ _%stx151143%_))))
    (define gxc#find-body%
      (lambda (_%self151055%_ _%stx151056%_)
        (let* ((_%g151058151077%_
                (lambda (_%g151059151074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151059151074%_))))
               (_%g151057151139%_
                (lambda (_%g151059151080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151059151080%_))
                      (let ((_%e151061151082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151059151080%_))))
                        (let ((_%hd151062151085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151061151082%_)))
                              (_%tl151063151087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151061151082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151063151087%_))
                              (let ((_g151795_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151063151087%_
                                        '0))))
                                (begin
                                  (let ((_g151796_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151795_)
                                               (##vector-length _g151795_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151796_ 2)))
                                        (error "Context expects 2 values"
                                               _g151796_)))
                                  (let ((_%target151064151090%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151795_ 0)))
                                        (_%tl151066151092%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151795_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151066151092%_))
                                        (letrec ((_%loop151067151095%_
                                                  (lambda (_%hd151065151098%_
                                                           _%expr151071151100%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151065151098%_))
                                                        (let ((_%e151068151103%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151065151098%_))))
                  (let ((_%lp-hd151069151106%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151068151103%_)))
                        (_%lp-tl151070151108%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151068151103%_))))
                    (_%loop151067151095%_
                     _%lp-tl151070151108%_
                     (cons _%lp-hd151069151106%_ _%expr151071151100%_))))
                (let ((_%expr151072151111%_ (reverse _%expr151071151100%_)))
                  ((lambda (_%L151114%_)
                     (let ((__tmp151799
                            (lambda (_%g151127151129%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151055%_
                                 _%g151127151129%_))))
                           (__tmp151797
                            (let ((__tmp151798
                                   (lambda (_%g151131151134%_
                                            _%g151132151136%_)
                                     (cons _%g151131151134%_
                                           _%g151132151136%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151798 '() _%L151114%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151799 __tmp151797)))
                   _%expr151072151111%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151067151095%_
                                           _%target151064151090%_
                                           '()))
                                        (_%g151058151077%_
                                         _%g151059151080%_)))))
                              (_%g151058151077%_ _%g151059151080%_))))
                      (_%g151058151077%_ _%g151059151080%_)))))
          (_%g151057151139%_ _%stx151056%_))))
    (define gxc#find-let-values%
      (lambda (_%self150905%_ _%stx150906%_)
        (let* ((_%g150908150943%_
                (lambda (_%g150909150940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150909150940%_))))
               (_%g150907151052%_
                (lambda (_%g150909150946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150909150946%_))
                      (let ((_%e150913150948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150909150946%_))))
                        (let ((_%hd150914150951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150913150948%_)))
                              (_%tl150915150953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150913150948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150915150953%_))
                              (let ((_%e150916150956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150915150953%_))))
                                (let ((_%hd150917150959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150916150956%_)))
                                      (_%tl150918150961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150916150956%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd150917150959%_))
                                      (let ((_g151800_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd150917150959%_
                                                '0))))
                                        (begin
                                          (let ((_g151801_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151800_)
                                                       (##vector-length
                                                        _g151800_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151801_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151801_)))
                                          (let ((_%target150919150964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151800_ 0)))
                                                (_%tl150921150966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151800_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150921150966%_))
                                                (letrec ((_%loop150922150969%_
                                                          (lambda (_%hd150920150972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr150926150974%_
                           _%bind150927150976%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd150920150972%_))
                        (let ((_%e150923150979%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd150920150972%_))))
                          (let ((_%lp-hd150924150982%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150923150979%_)))
                                (_%lp-tl150925150984%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150923150979%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd150924150982%_))
                                (let ((_%e150933150987%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd150924150982%_))))
                                  (let ((_%hd150934150990%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150933150987%_)))
                                        (_%tl150935150992%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150933150987%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150935150992%_))
                                        (let ((_%e150936150995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150935150992%_))))
                                          (let ((_%hd150937150998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150936150995%_)))
                                                (_%tl150938151000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150936150995%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150938151000%_))
                                                (_%loop150922150969%_
                                                 _%lp-tl150925150984%_
                                                 (cons _%hd150937150998%_
                                                       _%expr150926150974%_)
                                                 (cons _%hd150934150990%_
                                                       _%bind150927150976%_))
                                                (_%g150908150943%_
                                                 _%g150909150946%_))))
                                        (_%g150908150943%_
                                         _%g150909150946%_))))
                                (_%g150908150943%_ _%g150909150946%_))))
                        (let ((_%expr150928151003%_
                               (reverse _%expr150926150974%_))
                              (_%bind150929151005%_
                               (reverse _%bind150927150976%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150918150961%_))
                              (let ((_%e150930151008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150918150961%_))))
                                (let ((_%hd150931151011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150930151008%_)))
                                      (_%tl150932151013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150930151008%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150932151013%_))
                                      ((lambda (_%L151016%_
                                                _%L151017%_
                                                _%L151018%_)
                                         (let ((_%$e151049%_
                                                (let ((__tmp151804
                                                       (lambda (_%g151037151039%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self150905%_
                                                            _%g151037151039%_))))
                                                      (__tmp151802
                                                       (let ((__tmp151803
                                                              (lambda (_%g151041151044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151042151046%_)
                        (cons _%g151041151044%_ _%g151042151046%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151803 '() _%L151017%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151804
                                                   __tmp151802))))
                                           (if _%$e151049%_
                                               _%$e151049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150905%_
                                                  _%L151016%_)))))
                                       _%hd150931151011%_
                                       _%expr150928151003%_
                                       _%bind150929151005%_)
                                      (_%g150908150943%_ _%g150909150946%_))))
                              (_%g150908150943%_ _%g150909150946%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop150922150969%_
                                                   _%target150919150964%_
                                                   '()
                                                   '()))
                                                (_%g150908150943%_
                                                 _%g150909150946%_)))))
                                      (_%g150908150943%_ _%g150909150946%_))))
                              (_%g150908150943%_ _%g150909150946%_))))
                      (_%g150908150943%_ _%g150909150946%_)))))
          (_%g150907151052%_ _%stx150906%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self150849%_ _%stx150850%_)
        (let* ((_%g150852150865%_
                (lambda (_%g150853150862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150853150862%_))))
               (_%g150851150902%_
                (lambda (_%g150853150868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150853150868%_))
                      (let ((_%e150855150870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150853150868%_))))
                        (let ((_%hd150856150873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150855150870%_)))
                              (_%tl150857150875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150855150870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150857150875%_))
                              (let ((_%e150858150878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150857150875%_))))
                                (let ((_%hd150859150881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150858150878%_)))
                                      (_%tl150860150883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150858150878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150860150883%_))
                                      ((lambda (_%L150886%_)
                                         (let ((__tmp151806
                                                (lambda (_%g150897150899%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L150886%_
                                                     _%g150897150899%_))))
                                               (__tmp151805
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self150849%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151806 __tmp151805)))
                                       _%hd150859150881%_)
                                      (_%g150852150865%_ _%g150853150868%_))))
                              (_%g150852150865%_ _%g150853150868%_))))
                      (_%g150852150865%_ _%g150853150868%_)))))
          (_%g150851150902%_ _%stx150850%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self150774%_ _%stx150775%_)
        (let* ((_%g150777150794%_
                (lambda (_%g150778150791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150778150791%_))))
               (_%g150776150846%_
                (lambda (_%g150778150797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150778150797%_))
                      (let ((_%e150781150799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150778150797%_))))
                        (let ((_%hd150782150802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150781150799%_)))
                              (_%tl150783150804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150781150799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150783150804%_))
                              (let ((_%e150784150807%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150783150804%_))))
                                (let ((_%hd150785150810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150784150807%_)))
                                      (_%tl150786150812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150784150807%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150786150812%_))
                                      (let ((_%e150787150815%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150786150812%_))))
                                        (let ((_%hd150788150818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150787150815%_)))
                                              (_%tl150789150820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150787150815%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150789150820%_))
                                              ((lambda (_%L150823%_
                                                        _%L150824%_)
                                                 (let ((_%$e150843%_
                                                        (let ((__tmp151808
                                                               (lambda (_%g150838150840%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L150824%_
                            _%g150838150840%_))))
                      (__tmp151807
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self150774%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151808 __tmp151807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e150843%_
                                                       _%$e150843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self150774%_
                                                          _%L150823%_)))))
                                               _%hd150788150818%_
                                               _%hd150785150810%_)
                                              (_%g150777150794%_
                                               _%g150778150797%_))))
                                      (_%g150777150794%_ _%g150778150797%_))))
                              (_%g150777150794%_ _%g150778150797%_))))
                      (_%g150777150794%_ _%g150778150797%_)))))
          (_%g150776150846%_ _%stx150775%_))))))
