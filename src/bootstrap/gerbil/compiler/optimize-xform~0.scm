(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712269047)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151041 (list gxc#::void::t))
            (__tmp151040 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151041
         '()
         __tmp151040
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150781%_
        (apply make-instance gxc#::collect-mutators::t _%$args150781%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151042
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
        (__make-promise __tmp151042)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150773%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150776%_
                (let ((__obj151028
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151028))
               (__tmp151043
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150776%_ _%stx150773%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151043
           gxc#current-compile-method
           _%self150776%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp151045 (list gxc#::void::t))
            (__tmp151044 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp151045
         '()
         __tmp151044
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150770%_
        (apply make-instance gxc#::collect-methods::t _%$args150770%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp151046
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call-unchecked
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (__make-promise __tmp151046)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150762%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150765%_
                (let ((__obj151030
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj151030))
               (__tmp151047
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150765%_ _%stx150762%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151047
           gxc#current-compile-method
           _%self150765%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151049 (list gxc#::basic-xform-expression::t))
            (__tmp151048 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151049
         '(id new-id)
         __tmp151048
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150759%_
        (apply make-instance gxc#::expression-subst::t _%$args150759%_)))
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
      (let ((__tmp151050
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
        (__make-promise __tmp151050)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150729%_
               _%id150725150730%_
               _%new-id150726150732%_
               _%stx150734%_)
        (let* ((_%id150737%_
                (if (eq? _%id150725150730%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150725150730%_))
               (_%new-id150739%_
                (if (eq? _%new-id150726150732%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150726150732%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150741%_
                  (let ((__obj151032
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151032
                       _%id150737%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151032
                       _%new-id150739%_
                       '2
                       '#f
                       '#f))
                    __obj151032))
                 (__tmp151051
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150741%_ _%stx150734%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151051
             gxc#current-compile-method
             _%self150741%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150748%_ . _%args150749%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150748%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150748%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150748%_
                  'new-id:
                  absent-value))
               _%args150749%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150727150755%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150727150755%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151053 (list gxc#::basic-xform-expression::t))
            (__tmp151052 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151053
         '(subst)
         __tmp151052
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150721%_
        (apply make-instance gxc#::expression-subst*::t _%$args150721%_)))
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
      (let ((__tmp151054
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
        (__make-promise __tmp151054)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150695%_ _%subst150692150696%_ _%stx150698%_)
        (let ((_%subst150701%_
               (if (eq? _%subst150692150696%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150692150696%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150703%_
                  (let ((__obj151034
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151034
                       _%subst150701%_
                       '1
                       '#f
                       '#f))
                    __obj151034))
                 (__tmp151055
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150703%_ _%stx150698%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151055
             gxc#current-compile-method
             _%self150703%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150710%_ . _%args150711%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150710%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150710%_
                  'subst:
                  absent-value))
               _%args150711%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150693150717%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150693150717%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151056 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151056
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150688%_
        (apply make-instance gxc#::find-expression::t _%$args150688%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151057
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
        (__make-promise __tmp151057)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151059 (list gxc#::find-expression::t))
            (__tmp151058 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151059
         '(ids)
         __tmp151058
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150684%_
        (apply make-instance gxc#::find-var-refs::t _%$args150684%_)))
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
      (let ((__tmp151060
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
        (__make-promise __tmp151060)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150658%_ _%ids150655150659%_ _%stx150661%_)
        (let ((_%ids150664%_
               (if (eq? _%ids150655150659%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150655150659%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150666%_
                  (let ((__obj151037
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151037
                       _%ids150664%_
                       '1
                       '#f
                       '#f))
                    __obj151037))
                 (__tmp151061
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150666%_ _%stx150661%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151061
             gxc#current-compile-method
             _%self150666%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150673%_ . _%args150674%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150673%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150673%_ 'ids: absent-value))
               _%args150674%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150656150680%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150656150680%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151063 (list gxc#::collect-expression-refs::t))
            (__tmp151062 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151063
         '()
         __tmp151062
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150651%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150651%_)))
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
      (let ((__tmp151064
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
        (__make-promise __tmp151064)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150625%_ _%table150622150626%_ _%stx150628%_)
        (let ((_%table150631%_
               (if (eq? _%table150622150626%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150622150626%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150633%_
                  (let ((__obj151039
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151039
                       _%table150631%_
                       '1
                       '#f
                       '#f))
                    __obj151039))
                 (__tmp151065
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150633%_ _%stx150628%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151065
             gxc#current-compile-method
             _%self150633%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150640%_ . _%args150641%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150640%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150640%_
                  'table:
                  absent-value))
               _%args150641%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150623150647%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150623150647%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150551%_ _%stx150552%_)
        (let* ((_%g150554150571%_
                (lambda (_%g150555150568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150555150568%_))))
               (_%g150553150618%_
                (lambda (_%g150555150574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150555150574%_))
                      (let ((_%e150560150576%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150555150574%_))))
                        (let ((_%hd150559150579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150560150576%_)))
                              (_%tl150558150581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150560150576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150558150581%_))
                              (let ((_%e150563150584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150558150581%_))))
                                (let ((_%hd150562150587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150563150584%_)))
                                      (_%tl150561150589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150563150584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150561150589%_))
                                      (let ((_%e150566150592%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150561150589%_))))
                                        (let ((_%hd150565150595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150566150592%_)))
                                              (_%tl150564150597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150566150592%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150564150597%_))
                                              ((lambda (_%L150600%_
                                                        _%L150601%_)
                                                 (let ((_%sym150616%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150601%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150616%_))
                                                   (let ((__tmp151066
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151066
                                                      _%sym150616%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150551%_
                                                      _%L150600%_))))
                                               _%hd150565150595%_
                                               _%hd150562150587%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150554150571%_
                                                 _%g150555150574%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150554150571%_
                                         _%g150555150574%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150554150571%_ _%g150555150574%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150554150571%_ _%g150555150574%_))))))
          (declare (not safe))
          (_%g150553150618%_ _%stx150552%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self150104%_ _%stx150105%_)
        (let* ((_%__stx150784150785%_ _%stx150105%_)
               (_%g150109150211%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150784150785%_)))))
          (let ((_%__kont150786150787%_
                 (lambda (_%L150501%_
                          _%L150502%_
                          _%L150503%_
                          _%L150504%_
                          _%L150505%_)
                   (let ((__tmp151067
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150502%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151067))))
                (_%__kont150788150789%_
                 (lambda (_%L150327%_ _%L150328%_ _%L150329%_ _%L150330%_)
                   (let ((__tmp151068
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150327%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151068))))
                (_%__kont150790150791%_ (lambda () '#!void)))
            (let ((_%__match150919150920%_
                   (lambda (_%e150118150373%_
                            _%hd150117150376%_
                            _%tl150116150378%_
                            _%e150121150381%_
                            _%hd150120150384%_
                            _%tl150119150386%_
                            _%e150124150389%_
                            _%hd150123150392%_
                            _%tl150122150394%_
                            _%e150127150397%_
                            _%hd150126150400%_
                            _%tl150125150402%_
                            _%e150130150405%_
                            _%hd150129150408%_
                            _%tl150128150410%_
                            _%e150133150413%_
                            _%hd150132150416%_
                            _%tl150131150418%_
                            _%e150136150421%_
                            _%hd150135150424%_
                            _%tl150134150426%_
                            _%e150139150429%_
                            _%hd150138150432%_
                            _%tl150137150434%_
                            _%e150142150437%_
                            _%hd150141150440%_
                            _%tl150140150442%_
                            _%e150145150445%_
                            _%hd150144150448%_
                            _%tl150143150450%_
                            _%e150148150453%_
                            _%hd150147150456%_
                            _%tl150146150458%_
                            _%e150151150461%_
                            _%hd150150150464%_
                            _%tl150149150466%_
                            _%e150154150469%_
                            _%hd150153150472%_
                            _%tl150152150474%_
                            _%e150157150477%_
                            _%hd150156150480%_
                            _%tl150155150482%_
                            _%e150160150485%_
                            _%hd150159150488%_
                            _%tl150158150490%_
                            _%e150163150493%_
                            _%hd150162150496%_
                            _%tl150161150498%_)
                     (let ((_%L150501%_ _%hd150162150496%_)
                           (_%L150502%_ _%hd150153150472%_)
                           (_%L150503%_ _%hd150144150448%_)
                           (_%L150504%_ _%hd150135150424%_)
                           (_%L150505%_ _%hd150126150400%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L150505%_
                              'bind-method!))
                           (_%__kont150786150787%_
                            _%L150501%_
                            _%L150502%_
                            _%L150503%_
                            _%L150504%_
                            _%L150505%_)
                           (_%__kont150790150791%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150784150785%_))
                  (let ((_%e150118150373%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150784150785%_))))
                    (let ((_%tl150116150378%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150118150373%_)))
                          (_%hd150117150376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150118150373%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150116150378%_))
                          (let ((_%e150121150381%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150116150378%_))))
                            (let ((_%tl150119150386%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150121150381%_)))
                                  (_%hd150120150384%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150121150381%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150120150384%_))
                                  (let ((_%e150124150389%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150120150384%_))))
                                    (let ((_%tl150122150394%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150124150389%_)))
                                          (_%hd150123150392%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150124150389%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150123150392%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150123150392%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150122150394%_))
                                                  (let ((_%e150127150397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150122150394%_))))
                                                    (let ((_%tl150125150402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150127150397%_)))
                                                          (_%hd150126150400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150127150397%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150125150402%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl150119150386%_))
                      (let ((_%e150130150405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl150119150386%_))))
                        (let ((_%tl150128150410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150130150405%_)))
                              (_%hd150129150408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150130150405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd150129150408%_))
                              (let ((_%e150133150413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd150129150408%_))))
                                (let ((_%tl150131150418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150133150413%_)))
                                      (_%hd150132150416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150133150413%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd150132150416%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd150132150416%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150131150418%_))
                                              (let ((_%e150136150421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150131150418%_))))
                                                (let ((_%tl150134150426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150136150421%_)))
                                                      (_%hd150135150424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150136150421%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150134150426%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl150128150410%_))
                                                          (let ((_%e150139150429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl150128150410%_))))
                    (let ((_%tl150137150434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150139150429%_)))
                          (_%hd150138150432%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150139150429%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150138150432%_))
                          (let ((_%e150142150437%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150138150432%_))))
                            (let ((_%tl150140150442%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150142150437%_)))
                                  (_%hd150141150440%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150142150437%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd150141150440%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd150141150440%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl150140150442%_))
                                          (let ((_%e150145150445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl150140150442%_))))
                                            (let ((_%tl150143150450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e150145150445%_)))
                                                  (_%hd150144150448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e150145150445%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150143150450%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl150137150434%_))
                                                      (let ((_%e150148150453%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl150137150434%_))))
                (let ((_%tl150146150458%_
                       (let () (declare (not safe)) (##cdr _%e150148150453%_)))
                      (_%hd150147150456%_
                       (let ()
                         (declare (not safe))
                         (##car _%e150148150453%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd150147150456%_))
                      (let ((_%e150151150461%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd150147150456%_))))
                        (let ((_%tl150149150466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150151150461%_)))
                              (_%hd150150150464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150151150461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd150150150464%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd150150150464%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150149150466%_))
                                      (let ((_%e150154150469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150149150466%_))))
                                        (let ((_%tl150152150474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150154150469%_)))
                                              (_%hd150153150472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150154150469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150152150474%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150146150458%_))
                                                  (let ((_%e150157150477%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150146150458%_))))
                                                    (let ((_%tl150155150482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150157150477%_)))
                                                          (_%hd150156150480%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150157150477%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd150156150480%_))
                                                          (let ((_%e150160150485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd150156150480%_))))
                    (let ((_%tl150158150490%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150160150485%_)))
                          (_%hd150159150488%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150160150485%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd150159150488%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd150159150488%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl150158150490%_))
                                  (let ((_%e150163150493%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl150158150490%_))))
                                    (let ((_%tl150161150498%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150163150493%_)))
                                          (_%hd150162150496%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150163150493%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl150161150498%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150155150482%_))
                                              (_%__match150919150920%_
                                               _%e150118150373%_
                                               _%hd150117150376%_
                                               _%tl150116150378%_
                                               _%e150121150381%_
                                               _%hd150120150384%_
                                               _%tl150119150386%_
                                               _%e150124150389%_
                                               _%hd150123150392%_
                                               _%tl150122150394%_
                                               _%e150127150397%_
                                               _%hd150126150400%_
                                               _%tl150125150402%_
                                               _%e150130150405%_
                                               _%hd150129150408%_
                                               _%tl150128150410%_
                                               _%e150133150413%_
                                               _%hd150132150416%_
                                               _%tl150131150418%_
                                               _%e150136150421%_
                                               _%hd150135150424%_
                                               _%tl150134150426%_
                                               _%e150139150429%_
                                               _%hd150138150432%_
                                               _%tl150137150434%_
                                               _%e150142150437%_
                                               _%hd150141150440%_
                                               _%tl150140150442%_
                                               _%e150145150445%_
                                               _%hd150144150448%_
                                               _%tl150143150450%_
                                               _%e150148150453%_
                                               _%hd150147150456%_
                                               _%tl150146150458%_
                                               _%e150151150461%_
                                               _%hd150150150464%_
                                               _%tl150149150466%_
                                               _%e150154150469%_
                                               _%hd150153150472%_
                                               _%tl150152150474%_
                                               _%e150157150477%_
                                               _%hd150156150480%_
                                               _%tl150155150482%_
                                               _%e150160150485%_
                                               _%hd150159150488%_
                                               _%tl150158150490%_
                                               _%e150163150493%_
                                               _%hd150162150496%_
                                               _%tl150161150498%_)
                                              (_%__kont150790150791%_))
                                          (_%__kont150790150791%_))))
                                  (_%__kont150790150791%_))
                              (_%__kont150790150791%_))
                          (_%__kont150790150791%_))))
                  (_%__kont150790150791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150146150458%_))
                                                      (if (let ((__tmp151069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp151069 'bind-method!))
                  (let ((_%L150327%_ _%hd150153150472%_)
                        (_%L150328%_ _%hd150144150448%_)
                        (_%L150329%_ _%hd150135150424%_)
                        (_%L150330%_ _%hd150126150400%_))
                    (_%__kont150788150789%_
                     _%L150327%_
                     _%L150328%_
                     _%L150329%_
                     _%L150330%_))
                  (_%__kont150790150791%_))
              (_%__kont150790150791%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150790150791%_))))
                                      (_%__kont150790150791%_))
                                  (_%__kont150790150791%_))
                              (_%__kont150790150791%_))))
                      (_%__kont150790150791%_))))
              (_%__kont150790150791%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150790150791%_))))
                                          (_%__kont150790150791%_))
                                      (_%__kont150790150791%_))
                                  (_%__kont150790150791%_))))
                          (_%__kont150790150791%_))))
                  (_%__kont150790150791%_))
              (_%__kont150790150791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150790150791%_))
                                          (_%__kont150790150791%_))
                                      (_%__kont150790150791%_))))
                              (_%__kont150790150791%_))))
                      (_%__kont150790150791%_))
                  (_%__kont150790150791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150790150791%_))
                                              (_%__kont150790150791%_))
                                          (_%__kont150790150791%_))))
                                  (_%__kont150790150791%_))))
                          (_%__kont150790150791%_))))
                  (_%__kont150790150791%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self150052%_ _%stx150053%_)
        (let* ((_%g150055150068%_
                (lambda (_%g150056150065%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150056150065%_))))
               (_%g150054150101%_
                (lambda (_%g150056150071%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150056150071%_))
                      (let ((_%e150060150073%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150056150071%_))))
                        (let ((_%hd150059150076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150060150073%_)))
                              (_%tl150058150078%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150060150073%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150058150078%_))
                              (let ((_%e150063150081%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150058150078%_))))
                                (let ((_%hd150062150084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150063150081%_)))
                                      (_%tl150061150086%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150063150081%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150061150086%_))
                                      ((lambda (_%L150089%_)
                                         (if (let ((__tmp151070
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self150052%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150089%_
                                                __tmp151070))
                                             (let ((__tmp151071
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self150052%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151071
                                                _%stx150053%_))
                                             _%stx150053%_))
                                       _%hd150062150084%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150055150068%_
                                         _%g150056150071%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150055150068%_ _%g150056150071%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150055150068%_ _%g150056150071%_))))))
          (declare (not safe))
          (_%g150054150101%_ _%stx150053%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149992%_ _%stx149993%_)
        (let* ((_%g149995150008%_
                (lambda (_%g149996150005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149996150005%_))))
               (_%g149994150049%_
                (lambda (_%g149996150011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149996150011%_))
                      (let ((_%e150000150013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149996150011%_))))
                        (let ((_%hd149999150016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150000150013%_)))
                              (_%tl149998150018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150000150013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149998150018%_))
                              (let ((_%e150003150021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149998150018%_))))
                                (let ((_%hd150002150024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150003150021%_)))
                                      (_%tl150001150026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150003150021%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150001150026%_))
                                      ((lambda (_%L150029%_)
                                         (let ((_%$e150043%_
                                                (let ((__tmp151073
                                                       (lambda (_%sub150041%_)
                                                         (let ((__tmp151074
                                                                (car _%sub150041%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L150029%_
                                                            __tmp151074))))
                                                      (__tmp151072
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149992%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151073
                                                          __tmp151072))))
                                           (if _%$e150043%_
                                               ((lambda (_%sub150046%_)
                                                  (let ((__tmp151075
                                                         (cons '%#ref
                                                               (cons (cdr _%sub150046%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151075
                                                     _%stx149993%_)))
                                                _%$e150043%_)
                                               (let () _%stx149993%_))))
                                       _%hd150002150024%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149995150008%_
                                         _%g149996150011%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149995150008%_ _%g149996150011%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149995150008%_ _%g149996150011%_))))))
          (declare (not safe))
          (_%g149994150049%_ _%stx149993%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149921%_ _%stx149922%_)
        (let* ((_%g149924149941%_
                (lambda (_%g149925149938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149925149938%_))))
               (_%g149923149989%_
                (lambda (_%g149925149944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149925149944%_))
                      (let ((_%e149930149946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149925149944%_))))
                        (let ((_%hd149929149949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149930149946%_)))
                              (_%tl149928149951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149930149946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149928149951%_))
                              (let ((_%e149933149954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149928149951%_))))
                                (let ((_%hd149932149957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149933149954%_)))
                                      (_%tl149931149959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149933149954%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149931149959%_))
                                      (let ((_%e149936149962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149931149959%_))))
                                        (let ((_%hd149935149965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149936149962%_)))
                                              (_%tl149934149967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149936149962%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149934149967%_))
                                              ((lambda (_%L149970%_
                                                        _%L149971%_)
                                                 (let ((_%new-expr149986%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149921%_
                                                           _%L149970%_)))
                                                       (_%new-xid149987%_
                                                        (if (let ((__tmp151076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149921%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149971%_ __tmp151076))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149921%_ 'new-id))
                    _%L149971%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151077
                                                          (cons '%#set!
                                                                (cons _%new-xid149987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149986%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151077
                                                      _%stx149922%_))))
                                               _%hd149935149965%_
                                               _%hd149932149957%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149924149941%_
                                                 _%g149925149944%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149924149941%_
                                         _%g149925149944%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149924149941%_ _%g149925149944%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149924149941%_ _%g149925149944%_))))))
          (declare (not safe))
          (_%g149923149989%_ _%stx149922%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149844%_ _%stx149845%_)
        (let* ((_%g149847149864%_
                (lambda (_%g149848149861%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149848149861%_))))
               (_%g149846149918%_
                (lambda (_%g149848149867%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149848149867%_))
                      (let ((_%e149853149869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149848149867%_))))
                        (let ((_%hd149852149872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149853149869%_)))
                              (_%tl149851149874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149853149869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149851149874%_))
                              (let ((_%e149856149877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149851149874%_))))
                                (let ((_%hd149855149880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149856149877%_)))
                                      (_%tl149854149882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149856149877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149854149882%_))
                                      (let ((_%e149859149885%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149854149882%_))))
                                        (let ((_%hd149858149888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149859149885%_)))
                                              (_%tl149857149890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149859149885%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149857149890%_))
                                              ((lambda (_%L149893%_
                                                        _%L149894%_)
                                                 (let ((_%new-expr149915%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149844%_
                                                           _%L149893%_)))
                                                       (_%new-xid149916%_
                                                        (let ((_%$e149911%_
                                                               (let ((__tmp151079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149909%_)
                                (let ((__tmp151080 (car _%sub149909%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149894%_
                                   __tmp151080))))
                             (__tmp151078
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149844%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151079 __tmp151078))))
                  (if _%$e149911%_ (cdr _%$e149911%_) (let () _%L149894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151081
                                                          (cons '%#set!
                                                                (cons _%new-xid149916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149915%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151081
                                                      _%stx149845%_))))
                                               _%hd149858149888%_
                                               _%hd149855149880%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149847149864%_
                                                 _%g149848149867%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149847149864%_
                                         _%g149848149867%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149847149864%_ _%g149848149867%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149847149864%_ _%g149848149867%_))))))
          (declare (not safe))
          (_%g149846149918%_ _%stx149845%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149790%_ _%stx149791%_)
        (let* ((_%g149793149806%_
                (lambda (_%g149794149803%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149794149803%_))))
               (_%g149792149841%_
                (lambda (_%g149794149809%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149794149809%_))
                      (let ((_%e149798149811%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149794149809%_))))
                        (let ((_%hd149797149814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149798149811%_)))
                              (_%tl149796149816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149798149811%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149796149816%_))
                              (let ((_%e149801149819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149796149816%_))))
                                (let ((_%hd149800149822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149801149819%_)))
                                      (_%tl149799149824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149801149819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149799149824%_))
                                      ((lambda (_%L149827%_)
                                         (let* ((_%eid149839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149827%_)))
                                                (__tmp151082
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149790%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151082
                                            _%eid149839%_
                                            1+
                                            '0)))
                                       _%hd149800149822%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149793149806%_
                                         _%g149794149809%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149793149806%_ _%g149794149809%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149793149806%_ _%g149794149809%_))))))
          (declare (not safe))
          (_%g149792149841%_ _%stx149791%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149720%_ _%stx149721%_)
        (let* ((_%g149723149740%_
                (lambda (_%g149724149737%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149724149737%_))))
               (_%g149722149787%_
                (lambda (_%g149724149743%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149724149743%_))
                      (let ((_%e149729149745%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149724149743%_))))
                        (let ((_%hd149728149748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149729149745%_)))
                              (_%tl149727149750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149729149745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149727149750%_))
                              (let ((_%e149732149753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149727149750%_))))
                                (let ((_%hd149731149756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149732149753%_)))
                                      (_%tl149730149758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149732149753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149730149758%_))
                                      (let ((_%e149735149761%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149730149758%_))))
                                        (let ((_%hd149734149764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149735149761%_)))
                                              (_%tl149733149766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149735149761%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149733149766%_))
                                              ((lambda (_%L149769%_
                                                        _%L149770%_)
                                                 (let ((_%eid149785%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149770%_))))
                                                   (let ((__tmp151083
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149720%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151083
                                                      _%eid149785%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149720%_
                                                      _%L149769%_))))
                                               _%hd149734149764%_
                                               _%hd149731149756%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149723149740%_
                                                 _%g149724149743%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149723149740%_
                                         _%g149724149743%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149723149740%_ _%g149724149743%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149723149740%_ _%g149724149743%_))))))
          (declare (not safe))
          (_%g149722149787%_ _%stx149721%_))))
    (define gxc#find-body%
      (lambda (_%self149633%_ _%stx149634%_)
        (let* ((_%g149636149655%_
                (lambda (_%g149637149652%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149637149652%_))))
               (_%g149635149717%_
                (lambda (_%g149637149658%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149637149658%_))
                      (let ((_%e149641149660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149637149658%_))))
                        (let ((_%hd149640149663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149641149660%_)))
                              (_%tl149639149665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149641149660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149639149665%_))
                              (let ((_g151084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149639149665%_
                                        '0))))
                                (begin
                                  (let ((_g151085_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151084_)
                                               (##vector-length _g151084_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151085_ 2)))
                                        (error "Context expects 2 values"
                                               _g151085_)))
                                  (let ((_%target149642149668%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151084_ 0)))
                                        (_%tl149644149670%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151084_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149644149670%_))
                                        (letrec ((_%loop149645149673%_
                                                  (lambda (_%hd149643149676%_
                                                           _%expr149649149678%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149643149676%_))
                                                        (let ((_%e149646149681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149643149676%_))))
                  (let ((_%lp-hd149647149684%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149646149681%_)))
                        (_%lp-tl149648149686%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149646149681%_))))
                    (let ((__tmp151086
                           (cons _%lp-hd149647149684%_ _%expr149649149678%_)))
                      (declare (not safe))
                      (_%loop149645149673%_
                       _%lp-tl149648149686%_
                       __tmp151086))))
                (let ((_%expr149650149689%_ (reverse _%expr149649149678%_)))
                  ((lambda (_%L149692%_)
                     (let ((__tmp151089
                            (lambda (_%g149705149707%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149633%_
                                 _%g149705149707%_))))
                           (__tmp151087
                            (let ((__tmp151088
                                   (lambda (_%g149709149712%_
                                            _%g149710149714%_)
                                     (cons _%g149709149712%_
                                           _%g149710149714%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151088 '() _%L149692%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151089 __tmp151087)))
                   _%expr149650149689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149645149673%_
                                             _%target149642149668%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149636149655%_
                                           _%g149637149658%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149636149655%_ _%g149637149658%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149636149655%_ _%g149637149658%_))))))
          (declare (not safe))
          (_%g149635149717%_ _%stx149634%_))))
    (define gxc#find-let-values%
      (lambda (_%self149483%_ _%stx149484%_)
        (let* ((_%g149486149521%_
                (lambda (_%g149487149518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149487149518%_))))
               (_%g149485149630%_
                (lambda (_%g149487149524%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149487149524%_))
                      (let ((_%e149493149526%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149487149524%_))))
                        (let ((_%hd149492149529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149493149526%_)))
                              (_%tl149491149531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149493149526%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149491149531%_))
                              (let ((_%e149496149534%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149491149531%_))))
                                (let ((_%hd149495149537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149496149534%_)))
                                      (_%tl149494149539%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149496149534%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149495149537%_))
                                      (let ((_g151090_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149495149537%_
                                                '0))))
                                        (begin
                                          (let ((_g151091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151090_)
                                                       (##vector-length
                                                        _g151090_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151091_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151091_)))
                                          (let ((_%target149497149542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151090_ 0)))
                                                (_%tl149499149544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151090_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149499149544%_))
                                                (letrec ((_%loop149500149547%_
                                                          (lambda (_%hd149498149550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149504149552%_
                           _%bind149505149554%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149498149550%_))
                        (let ((_%e149501149557%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149498149550%_))))
                          (let ((_%lp-hd149502149560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149501149557%_)))
                                (_%lp-tl149503149562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149501149557%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149502149560%_))
                                (let ((_%e149510149565%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149502149560%_))))
                                  (let ((_%hd149509149568%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149510149565%_)))
                                        (_%tl149508149570%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149510149565%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149508149570%_))
                                        (let ((_%e149513149573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149508149570%_))))
                                          (let ((_%hd149512149576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149513149573%_)))
                                                (_%tl149511149578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149513149573%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149511149578%_))
                                                (let ((__tmp151093
                                                       (cons _%hd149512149576%_
                                                             _%expr149504149552%_))
                                                      (__tmp151092
                                                       (cons _%hd149509149568%_
                                                             _%bind149505149554%_)))
                                                  (declare (not safe))
                                                  (_%loop149500149547%_
                                                   _%lp-tl149503149562%_
                                                   __tmp151093
                                                   __tmp151092))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149486149521%_
                                                   _%g149487149524%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149486149521%_
                                           _%g149487149524%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g149486149521%_ _%g149487149524%_)))))
                        (let ((_%expr149506149581%_
                               (reverse _%expr149504149552%_))
                              (_%bind149507149583%_
                               (reverse _%bind149505149554%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149494149539%_))
                              (let ((_%e149516149586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149494149539%_))))
                                (let ((_%hd149515149589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149516149586%_)))
                                      (_%tl149514149591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149516149586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149514149591%_))
                                      ((lambda (_%L149594%_
                                                _%L149595%_
                                                _%L149596%_)
                                         (let ((_%$e149627%_
                                                (let ((__tmp151096
                                                       (lambda (_%g149615149617%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self149483%_
                                                            _%g149615149617%_))))
                                                      (__tmp151094
                                                       (let ((__tmp151095
                                                              (lambda (_%g149619149622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149620149624%_)
                        (cons _%g149619149622%_ _%g149620149624%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151095 '() _%L149595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151096
                                                   __tmp151094))))
                                           (if _%$e149627%_
                                               _%$e149627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149483%_
                                                  _%L149594%_)))))
                                       _%hd149515149589%_
                                       _%expr149506149581%_
                                       _%bind149507149583%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149486149521%_
                                         _%g149487149524%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149486149521%_ _%g149487149524%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop149500149547%_
                                                     _%target149497149542%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149486149521%_
                                                   _%g149487149524%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149486149521%_
                                         _%g149487149524%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149486149521%_ _%g149487149524%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149486149521%_ _%g149487149524%_))))))
          (declare (not safe))
          (_%g149485149630%_ _%stx149484%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self149427%_ _%stx149428%_)
        (let* ((_%g149430149443%_
                (lambda (_%g149431149440%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149431149440%_))))
               (_%g149429149480%_
                (lambda (_%g149431149446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149431149446%_))
                      (let ((_%e149435149448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149431149446%_))))
                        (let ((_%hd149434149451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149435149448%_)))
                              (_%tl149433149453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149435149448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149433149453%_))
                              (let ((_%e149438149456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149433149453%_))))
                                (let ((_%hd149437149459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149438149456%_)))
                                      (_%tl149436149461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149438149456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149436149461%_))
                                      ((lambda (_%L149464%_)
                                         (let ((__tmp151098
                                                (lambda (_%g149475149477%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L149464%_
                                                     _%g149475149477%_))))
                                               (__tmp151097
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self149427%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151098 __tmp151097)))
                                       _%hd149437149459%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149430149443%_
                                         _%g149431149446%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149430149443%_ _%g149431149446%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149430149443%_ _%g149431149446%_))))))
          (declare (not safe))
          (_%g149429149480%_ _%stx149428%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self149352%_ _%stx149353%_)
        (let* ((_%g149355149372%_
                (lambda (_%g149356149369%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149356149369%_))))
               (_%g149354149424%_
                (lambda (_%g149356149375%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149356149375%_))
                      (let ((_%e149361149377%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149356149375%_))))
                        (let ((_%hd149360149380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149361149377%_)))
                              (_%tl149359149382%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149361149377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149359149382%_))
                              (let ((_%e149364149385%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149359149382%_))))
                                (let ((_%hd149363149388%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149364149385%_)))
                                      (_%tl149362149390%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149364149385%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149362149390%_))
                                      (let ((_%e149367149393%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149362149390%_))))
                                        (let ((_%hd149366149396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149367149393%_)))
                                              (_%tl149365149398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149367149393%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149365149398%_))
                                              ((lambda (_%L149401%_
                                                        _%L149402%_)
                                                 (let ((_%$e149421%_
                                                        (let ((__tmp151100
                                                               (lambda (_%g149416149418%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L149402%_
                            _%g149416149418%_))))
                      (__tmp151099
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self149352%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151100 __tmp151099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e149421%_
                                                       _%$e149421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149352%_
                                                          _%L149401%_)))))
                                               _%hd149366149396%_
                                               _%hd149363149388%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149355149372%_
                                                 _%g149356149375%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149355149372%_
                                         _%g149356149375%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149355149372%_ _%g149356149375%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149355149372%_ _%g149356149375%_))))))
          (declare (not safe))
          (_%g149354149424%_ _%stx149353%_))))))
