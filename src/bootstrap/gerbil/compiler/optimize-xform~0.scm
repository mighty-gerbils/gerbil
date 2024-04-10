(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712784667)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151039 (list gxc#::void::t))
            (__tmp151038 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151039
         '()
         __tmp151038
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args151025%_
        (apply make-instance gxc#::collect-mutators::t _%$args151025%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151040
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
        (__make-promise __tmp151040)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx151017%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self151020%_
                (let ((__obj151028
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151028))
               (__tmp151041
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151020%_ _%stx151017%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151041
           gxc#current-compile-method
           _%self151020%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151043 (list gxc#::basic-xform-expression::t))
            (__tmp151042 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151043
         '(id new-id)
         __tmp151042
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args151014%_
        (apply make-instance gxc#::expression-subst::t _%$args151014%_)))
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
      (let ((__tmp151044
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
        (__make-promise __tmp151044)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150984%_
               _%id150980150985%_
               _%new-id150981150987%_
               _%stx150989%_)
        (let* ((_%id150992%_
                (if (eq? _%id150980150985%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150980150985%_))
               (_%new-id150994%_
                (if (eq? _%new-id150981150987%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150981150987%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150996%_
                  (let ((__obj151030
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151030
                       _%id150992%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151030
                       _%new-id150994%_
                       '2
                       '#f
                       '#f))
                    __obj151030))
                 (__tmp151045
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150996%_ _%stx150989%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151045
             gxc#current-compile-method
             _%self150996%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords151003%_ . _%args151004%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords151003%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151003%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151003%_
                  'new-id:
                  absent-value))
               _%args151004%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150982151010%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150982151010%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151047 (list gxc#::basic-xform-expression::t))
            (__tmp151046 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151047
         '(subst)
         __tmp151046
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150976%_
        (apply make-instance gxc#::expression-subst*::t _%$args150976%_)))
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
      (let ((__tmp151048
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
        (__make-promise __tmp151048)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150950%_ _%subst150947150951%_ _%stx150953%_)
        (let ((_%subst150956%_
               (if (eq? _%subst150947150951%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150947150951%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150958%_
                  (let ((__obj151032
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151032
                       _%subst150956%_
                       '1
                       '#f
                       '#f))
                    __obj151032))
                 (__tmp151049
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150958%_ _%stx150953%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151049
             gxc#current-compile-method
             _%self150958%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150965%_ . _%args150966%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150965%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150965%_
                  'subst:
                  absent-value))
               _%args150966%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150948150972%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150948150972%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151050 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151050
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150943%_
        (apply make-instance gxc#::find-expression::t _%$args150943%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151051
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
        (__make-promise __tmp151051)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151053 (list gxc#::find-expression::t))
            (__tmp151052 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151053
         '(ids)
         __tmp151052
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150939%_
        (apply make-instance gxc#::find-var-refs::t _%$args150939%_)))
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
      (let ((__tmp151054
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
        (__make-promise __tmp151054)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150913%_ _%ids150910150914%_ _%stx150916%_)
        (let ((_%ids150919%_
               (if (eq? _%ids150910150914%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150910150914%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150921%_
                  (let ((__obj151035
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151035
                       _%ids150919%_
                       '1
                       '#f
                       '#f))
                    __obj151035))
                 (__tmp151055
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150921%_ _%stx150916%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151055
             gxc#current-compile-method
             _%self150921%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150928%_ . _%args150929%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150928%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150928%_ 'ids: absent-value))
               _%args150929%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150911150935%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150911150935%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151057 (list gxc#::collect-expression-refs::t))
            (__tmp151056 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151057
         '()
         __tmp151056
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150906%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150906%_)))
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
      (let ((__tmp151058
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
        (__make-promise __tmp151058)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150880%_ _%table150877150881%_ _%stx150883%_)
        (let ((_%table150886%_
               (if (eq? _%table150877150881%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150877150881%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150888%_
                  (let ((__obj151037
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151037
                       _%table150886%_
                       '1
                       '#f
                       '#f))
                    __obj151037))
                 (__tmp151059
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150888%_ _%stx150883%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151059
             gxc#current-compile-method
             _%self150888%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150895%_ . _%args150896%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150895%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150895%_
                  'table:
                  absent-value))
               _%args150896%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150878150902%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150878150902%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150806%_ _%stx150807%_)
        (let* ((_%g150809150826%_
                (lambda (_%g150810150823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150810150823%_))))
               (_%g150808150873%_
                (lambda (_%g150810150829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150810150829%_))
                      (let ((_%e150813150831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150810150829%_))))
                        (let ((_%hd150814150834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150813150831%_)))
                              (_%tl150815150836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150813150831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150815150836%_))
                              (let ((_%e150816150839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150815150836%_))))
                                (let ((_%hd150817150842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150816150839%_)))
                                      (_%tl150818150844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150816150839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150818150844%_))
                                      (let ((_%e150819150847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150818150844%_))))
                                        (let ((_%hd150820150850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150819150847%_)))
                                              (_%tl150821150852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150819150847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150821150852%_))
                                              ((lambda (_%L150855%_
                                                        _%L150856%_)
                                                 (let ((_%sym150871%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150856%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150871%_))
                                                   (let ((__tmp151060
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151060
                                                      _%sym150871%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150806%_
                                                      _%L150855%_))))
                                               _%hd150820150850%_
                                               _%hd150817150842%_)
                                              (_%g150809150826%_
                                               _%g150810150829%_))))
                                      (_%g150809150826%_ _%g150810150829%_))))
                              (_%g150809150826%_ _%g150810150829%_))))
                      (_%g150809150826%_ _%g150810150829%_)))))
          (_%g150808150873%_ _%stx150807%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self150754%_ _%stx150755%_)
        (let* ((_%g150757150770%_
                (lambda (_%g150758150767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150758150767%_))))
               (_%g150756150803%_
                (lambda (_%g150758150773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150758150773%_))
                      (let ((_%e150760150775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150758150773%_))))
                        (let ((_%hd150761150778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150760150775%_)))
                              (_%tl150762150780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150760150775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150762150780%_))
                              (let ((_%e150763150783%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150762150780%_))))
                                (let ((_%hd150764150786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150763150783%_)))
                                      (_%tl150765150788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150763150783%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150765150788%_))
                                      ((lambda (_%L150791%_)
                                         (if (let ((__tmp151061
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self150754%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150791%_
                                                __tmp151061))
                                             (let ((__tmp151062
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self150754%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151062
                                                _%stx150755%_))
                                             _%stx150755%_))
                                       _%hd150764150786%_)
                                      (_%g150757150770%_ _%g150758150773%_))))
                              (_%g150757150770%_ _%g150758150773%_))))
                      (_%g150757150770%_ _%g150758150773%_)))))
          (_%g150756150803%_ _%stx150755%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self150694%_ _%stx150695%_)
        (let* ((_%g150697150710%_
                (lambda (_%g150698150707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150698150707%_))))
               (_%g150696150751%_
                (lambda (_%g150698150713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150698150713%_))
                      (let ((_%e150700150715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150698150713%_))))
                        (let ((_%hd150701150718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150700150715%_)))
                              (_%tl150702150720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150700150715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150702150720%_))
                              (let ((_%e150703150723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150702150720%_))))
                                (let ((_%hd150704150726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150703150723%_)))
                                      (_%tl150705150728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150703150723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150705150728%_))
                                      ((lambda (_%L150731%_)
                                         (let ((_%$e150745%_
                                                (let ((__tmp151064
                                                       (lambda (_%sub150743%_)
                                                         (let ((__tmp151065
                                                                (car _%sub150743%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L150731%_
                                                            __tmp151065))))
                                                      (__tmp151063
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self150694%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151064
                                                          __tmp151063))))
                                           (if _%$e150745%_
                                               ((lambda (_%sub150748%_)
                                                  (let ((__tmp151066
                                                         (cons '%#ref
                                                               (cons (cdr _%sub150748%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151066
                                                     _%stx150695%_)))
                                                _%$e150745%_)
                                               _%stx150695%_)))
                                       _%hd150704150726%_)
                                      (_%g150697150710%_ _%g150698150713%_))))
                              (_%g150697150710%_ _%g150698150713%_))))
                      (_%g150697150710%_ _%g150698150713%_)))))
          (_%g150696150751%_ _%stx150695%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self150623%_ _%stx150624%_)
        (let* ((_%g150626150643%_
                (lambda (_%g150627150640%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150627150640%_))))
               (_%g150625150691%_
                (lambda (_%g150627150646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150627150646%_))
                      (let ((_%e150630150648%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150627150646%_))))
                        (let ((_%hd150631150651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150630150648%_)))
                              (_%tl150632150653%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150630150648%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150632150653%_))
                              (let ((_%e150633150656%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150632150653%_))))
                                (let ((_%hd150634150659%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150633150656%_)))
                                      (_%tl150635150661%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150633150656%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150635150661%_))
                                      (let ((_%e150636150664%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150635150661%_))))
                                        (let ((_%hd150637150667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150636150664%_)))
                                              (_%tl150638150669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150636150664%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150638150669%_))
                                              ((lambda (_%L150672%_
                                                        _%L150673%_)
                                                 (let ((_%new-expr150688%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self150623%_
                                                           _%L150672%_)))
                                                       (_%new-xid150689%_
                                                        (if (let ((__tmp151067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self150623%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L150673%_ __tmp151067))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self150623%_ 'new-id))
                    _%L150673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151068
                                                          (cons '%#set!
                                                                (cons _%new-xid150689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150688%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151068
                                                      _%stx150624%_))))
                                               _%hd150637150667%_
                                               _%hd150634150659%_)
                                              (_%g150626150643%_
                                               _%g150627150646%_))))
                                      (_%g150626150643%_ _%g150627150646%_))))
                              (_%g150626150643%_ _%g150627150646%_))))
                      (_%g150626150643%_ _%g150627150646%_)))))
          (_%g150625150691%_ _%stx150624%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self150546%_ _%stx150547%_)
        (let* ((_%g150549150566%_
                (lambda (_%g150550150563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150550150563%_))))
               (_%g150548150620%_
                (lambda (_%g150550150569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150550150569%_))
                      (let ((_%e150553150571%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150550150569%_))))
                        (let ((_%hd150554150574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150553150571%_)))
                              (_%tl150555150576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150553150571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150555150576%_))
                              (let ((_%e150556150579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150555150576%_))))
                                (let ((_%hd150557150582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150556150579%_)))
                                      (_%tl150558150584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150556150579%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150558150584%_))
                                      (let ((_%e150559150587%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150558150584%_))))
                                        (let ((_%hd150560150590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150559150587%_)))
                                              (_%tl150561150592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150559150587%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150561150592%_))
                                              ((lambda (_%L150595%_
                                                        _%L150596%_)
                                                 (let ((_%new-expr150617%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self150546%_
                                                           _%L150595%_)))
                                                       (_%new-xid150618%_
                                                        (let ((_%$e150613%_
                                                               (let ((__tmp151070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub150611%_)
                                (let ((__tmp151071 (car _%sub150611%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L150596%_
                                   __tmp151071))))
                             (__tmp151069
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self150546%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151070 __tmp151069))))
                  (if _%$e150613%_ (cdr _%$e150613%_) _%L150596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151072
                                                          (cons '%#set!
                                                                (cons _%new-xid150618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150617%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151072
                                                      _%stx150547%_))))
                                               _%hd150560150590%_
                                               _%hd150557150582%_)
                                              (_%g150549150566%_
                                               _%g150550150569%_))))
                                      (_%g150549150566%_ _%g150550150569%_))))
                              (_%g150549150566%_ _%g150550150569%_))))
                      (_%g150549150566%_ _%g150550150569%_)))))
          (_%g150548150620%_ _%stx150547%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self150492%_ _%stx150493%_)
        (let* ((_%g150495150508%_
                (lambda (_%g150496150505%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150496150505%_))))
               (_%g150494150543%_
                (lambda (_%g150496150511%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150496150511%_))
                      (let ((_%e150498150513%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150496150511%_))))
                        (let ((_%hd150499150516%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150498150513%_)))
                              (_%tl150500150518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150498150513%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150500150518%_))
                              (let ((_%e150501150521%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150500150518%_))))
                                (let ((_%hd150502150524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150501150521%_)))
                                      (_%tl150503150526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150501150521%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150503150526%_))
                                      ((lambda (_%L150529%_)
                                         (let* ((_%eid150541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L150529%_)))
                                                (__tmp151073
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self150492%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151073
                                            _%eid150541%_
                                            1+
                                            '0)))
                                       _%hd150502150524%_)
                                      (_%g150495150508%_ _%g150496150511%_))))
                              (_%g150495150508%_ _%g150496150511%_))))
                      (_%g150495150508%_ _%g150496150511%_)))))
          (_%g150494150543%_ _%stx150493%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self150422%_ _%stx150423%_)
        (let* ((_%g150425150442%_
                (lambda (_%g150426150439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150426150439%_))))
               (_%g150424150489%_
                (lambda (_%g150426150445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150426150445%_))
                      (let ((_%e150429150447%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150426150445%_))))
                        (let ((_%hd150430150450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150429150447%_)))
                              (_%tl150431150452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150429150447%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150431150452%_))
                              (let ((_%e150432150455%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150431150452%_))))
                                (let ((_%hd150433150458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150432150455%_)))
                                      (_%tl150434150460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150432150455%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150434150460%_))
                                      (let ((_%e150435150463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150434150460%_))))
                                        (let ((_%hd150436150466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150435150463%_)))
                                              (_%tl150437150468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150435150463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150437150468%_))
                                              ((lambda (_%L150471%_
                                                        _%L150472%_)
                                                 (let ((_%eid150487%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150472%_))))
                                                   (let ((__tmp151074
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self150422%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151074
                                                      _%eid150487%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150422%_
                                                      _%L150471%_))))
                                               _%hd150436150466%_
                                               _%hd150433150458%_)
                                              (_%g150425150442%_
                                               _%g150426150445%_))))
                                      (_%g150425150442%_ _%g150426150445%_))))
                              (_%g150425150442%_ _%g150426150445%_))))
                      (_%g150425150442%_ _%g150426150445%_)))))
          (_%g150424150489%_ _%stx150423%_))))
    (define gxc#find-body%
      (lambda (_%self150335%_ _%stx150336%_)
        (let* ((_%g150338150357%_
                (lambda (_%g150339150354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150339150354%_))))
               (_%g150337150419%_
                (lambda (_%g150339150360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150339150360%_))
                      (let ((_%e150341150362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150339150360%_))))
                        (let ((_%hd150342150365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150341150362%_)))
                              (_%tl150343150367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150341150362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl150343150367%_))
                              (let ((_g151075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl150343150367%_
                                        '0))))
                                (begin
                                  (let ((_g151076_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151075_)
                                               (##vector-length _g151075_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151076_ 2)))
                                        (error "Context expects 2 values"
                                               _g151076_)))
                                  (let ((_%target150344150370%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151075_ 0)))
                                        (_%tl150346150372%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151075_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl150346150372%_))
                                        (letrec ((_%loop150347150375%_
                                                  (lambda (_%hd150345150378%_
                                                           _%expr150351150380%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd150345150378%_))
                                                        (let ((_%e150348150383%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd150345150378%_))))
                  (let ((_%lp-hd150349150386%_
                         (let ()
                           (declare (not safe))
                           (##car _%e150348150383%_)))
                        (_%lp-tl150350150388%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e150348150383%_))))
                    (_%loop150347150375%_
                     _%lp-tl150350150388%_
                     (cons _%lp-hd150349150386%_ _%expr150351150380%_))))
                (let ((_%expr150352150391%_ (reverse _%expr150351150380%_)))
                  ((lambda (_%L150394%_)
                     (let ((__tmp151079
                            (lambda (_%g150407150409%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self150335%_
                                 _%g150407150409%_))))
                           (__tmp151077
                            (let ((__tmp151078
                                   (lambda (_%g150411150414%_
                                            _%g150412150416%_)
                                     (cons _%g150411150414%_
                                           _%g150412150416%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151078 '() _%L150394%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151079 __tmp151077)))
                   _%expr150352150391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop150347150375%_
                                           _%target150344150370%_
                                           '()))
                                        (_%g150338150357%_
                                         _%g150339150360%_)))))
                              (_%g150338150357%_ _%g150339150360%_))))
                      (_%g150338150357%_ _%g150339150360%_)))))
          (_%g150337150419%_ _%stx150336%_))))
    (define gxc#find-let-values%
      (lambda (_%self150185%_ _%stx150186%_)
        (let* ((_%g150188150223%_
                (lambda (_%g150189150220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150189150220%_))))
               (_%g150187150332%_
                (lambda (_%g150189150226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150189150226%_))
                      (let ((_%e150193150228%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150189150226%_))))
                        (let ((_%hd150194150231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150193150228%_)))
                              (_%tl150195150233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150193150228%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150195150233%_))
                              (let ((_%e150196150236%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150195150233%_))))
                                (let ((_%hd150197150239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150196150236%_)))
                                      (_%tl150198150241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150196150236%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd150197150239%_))
                                      (let ((_g151080_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd150197150239%_
                                                '0))))
                                        (begin
                                          (let ((_g151081_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151080_)
                                                       (##vector-length
                                                        _g151080_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151081_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151081_)))
                                          (let ((_%target150199150244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151080_ 0)))
                                                (_%tl150201150246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151080_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150201150246%_))
                                                (letrec ((_%loop150202150249%_
                                                          (lambda (_%hd150200150252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr150206150254%_
                           _%bind150207150256%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd150200150252%_))
                        (let ((_%e150203150259%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd150200150252%_))))
                          (let ((_%lp-hd150204150262%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150203150259%_)))
                                (_%lp-tl150205150264%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150203150259%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd150204150262%_))
                                (let ((_%e150213150267%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd150204150262%_))))
                                  (let ((_%hd150214150270%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150213150267%_)))
                                        (_%tl150215150272%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150213150267%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150215150272%_))
                                        (let ((_%e150216150275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150215150272%_))))
                                          (let ((_%hd150217150278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150216150275%_)))
                                                (_%tl150218150280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150216150275%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150218150280%_))
                                                (_%loop150202150249%_
                                                 _%lp-tl150205150264%_
                                                 (cons _%hd150217150278%_
                                                       _%expr150206150254%_)
                                                 (cons _%hd150214150270%_
                                                       _%bind150207150256%_))
                                                (_%g150188150223%_
                                                 _%g150189150226%_))))
                                        (_%g150188150223%_
                                         _%g150189150226%_))))
                                (_%g150188150223%_ _%g150189150226%_))))
                        (let ((_%expr150208150283%_
                               (reverse _%expr150206150254%_))
                              (_%bind150209150285%_
                               (reverse _%bind150207150256%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150198150241%_))
                              (let ((_%e150210150288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150198150241%_))))
                                (let ((_%hd150211150291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150210150288%_)))
                                      (_%tl150212150293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150210150288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150212150293%_))
                                      ((lambda (_%L150296%_
                                                _%L150297%_
                                                _%L150298%_)
                                         (let ((_%$e150329%_
                                                (let ((__tmp151084
                                                       (lambda (_%g150317150319%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self150185%_
                                                            _%g150317150319%_))))
                                                      (__tmp151082
                                                       (let ((__tmp151083
                                                              (lambda (_%g150321150324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g150322150326%_)
                        (cons _%g150321150324%_ _%g150322150326%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151083 '() _%L150297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151084
                                                   __tmp151082))))
                                           (if _%$e150329%_
                                               _%$e150329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150185%_
                                                  _%L150296%_)))))
                                       _%hd150211150291%_
                                       _%expr150208150283%_
                                       _%bind150209150285%_)
                                      (_%g150188150223%_ _%g150189150226%_))))
                              (_%g150188150223%_ _%g150189150226%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop150202150249%_
                                                   _%target150199150244%_
                                                   '()
                                                   '()))
                                                (_%g150188150223%_
                                                 _%g150189150226%_)))))
                                      (_%g150188150223%_ _%g150189150226%_))))
                              (_%g150188150223%_ _%g150189150226%_))))
                      (_%g150188150223%_ _%g150189150226%_)))))
          (_%g150187150332%_ _%stx150186%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self150129%_ _%stx150130%_)
        (let* ((_%g150132150145%_
                (lambda (_%g150133150142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150133150142%_))))
               (_%g150131150182%_
                (lambda (_%g150133150148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150133150148%_))
                      (let ((_%e150135150150%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150133150148%_))))
                        (let ((_%hd150136150153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150135150150%_)))
                              (_%tl150137150155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150135150150%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150137150155%_))
                              (let ((_%e150138150158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150137150155%_))))
                                (let ((_%hd150139150161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150138150158%_)))
                                      (_%tl150140150163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150138150158%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150140150163%_))
                                      ((lambda (_%L150166%_)
                                         (let ((__tmp151086
                                                (lambda (_%g150177150179%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L150166%_
                                                     _%g150177150179%_))))
                                               (__tmp151085
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self150129%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151086 __tmp151085)))
                                       _%hd150139150161%_)
                                      (_%g150132150145%_ _%g150133150148%_))))
                              (_%g150132150145%_ _%g150133150148%_))))
                      (_%g150132150145%_ _%g150133150148%_)))))
          (_%g150131150182%_ _%stx150130%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self150054%_ _%stx150055%_)
        (let* ((_%g150057150074%_
                (lambda (_%g150058150071%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150058150071%_))))
               (_%g150056150126%_
                (lambda (_%g150058150077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150058150077%_))
                      (let ((_%e150061150079%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150058150077%_))))
                        (let ((_%hd150062150082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150061150079%_)))
                              (_%tl150063150084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150061150079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150063150084%_))
                              (let ((_%e150064150087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150063150084%_))))
                                (let ((_%hd150065150090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150064150087%_)))
                                      (_%tl150066150092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150064150087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150066150092%_))
                                      (let ((_%e150067150095%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150066150092%_))))
                                        (let ((_%hd150068150098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150067150095%_)))
                                              (_%tl150069150100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150067150095%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150069150100%_))
                                              ((lambda (_%L150103%_
                                                        _%L150104%_)
                                                 (let ((_%$e150123%_
                                                        (let ((__tmp151088
                                                               (lambda (_%g150118150120%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L150104%_
                            _%g150118150120%_))))
                      (__tmp151087
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self150054%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151088 __tmp151087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e150123%_
                                                       _%$e150123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self150054%_
                                                          _%L150103%_)))))
                                               _%hd150068150098%_
                                               _%hd150065150090%_)
                                              (_%g150057150074%_
                                               _%g150058150077%_))))
                                      (_%g150057150074%_ _%g150058150077%_))))
                              (_%g150057150074%_ _%g150058150077%_))))
                      (_%g150057150074%_ _%g150058150077%_)))))
          (_%g150056150126%_ _%stx150055%_))))))
