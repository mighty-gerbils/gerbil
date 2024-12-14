(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1734215272)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp154103 (list gxc#::void::t))
            (__tmp154102 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp154103
         '()
         __tmp154102
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args154089%_
        (apply make-instance gxc#::collect-mutators::t _%$args154089%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp154104
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
        (__make-promise __tmp154104)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx154081%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self154084%_
                (let ((__obj154092
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj154092))
               (__tmp154105
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154084%_ _%stx154081%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp154105
           gxc#current-compile-method
           _%self154084%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp154107 (list gxc#::basic-xform-expression::t))
            (__tmp154106 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp154107
         '(id new-id)
         __tmp154106
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args154078%_
        (apply make-instance gxc#::expression-subst::t _%$args154078%_)))
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
      (let ((__tmp154108
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
        (__make-promise __tmp154108)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords154048%_
               _%id154044154049%_
               _%new-id154045154051%_
               _%stx154053%_)
        (let* ((_%id154056%_
                (if (eq? _%id154044154049%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id154044154049%_))
               (_%new-id154058%_
                (if (eq? _%new-id154045154051%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id154045154051%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self154060%_
                  (let ((__obj154094
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154094
                       _%id154056%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154094
                       _%new-id154058%_
                       '2
                       '#f
                       '#f))
                    __obj154094))
                 (__tmp154109
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154060%_ _%stx154053%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154109
             gxc#current-compile-method
             _%self154060%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords154067%_ . _%args154068%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords154067%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154067%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154067%_
                  'new-id:
                  absent-value))
               _%args154068%_)))
    (define gxc#apply-expression-subst
      (lambda _%args154046154074%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args154046154074%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp154111 (list gxc#::basic-xform-expression::t))
            (__tmp154110 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp154111
         '(subst)
         __tmp154110
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args154040%_
        (apply make-instance gxc#::expression-subst*::t _%$args154040%_)))
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
      (let ((__tmp154112
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
        (__make-promise __tmp154112)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords154014%_ _%subst154011154015%_ _%stx154017%_)
        (let ((_%subst154020%_
               (if (eq? _%subst154011154015%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst154011154015%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self154022%_
                  (let ((__obj154096
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154096
                       _%subst154020%_
                       '1
                       '#f
                       '#f))
                    __obj154096))
                 (__tmp154113
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154022%_ _%stx154017%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154113
             gxc#current-compile-method
             _%self154022%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords154029%_ . _%args154030%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords154029%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154029%_
                  'subst:
                  absent-value))
               _%args154030%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args154012154036%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args154012154036%_)))
    (define gxc#::find-expression::t
      (let ((__tmp154114 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp154114
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args154007%_
        (apply make-instance gxc#::find-expression::t _%$args154007%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp154115
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
        (__make-promise __tmp154115)))
    (define gxc#::find-var-refs::t
      (let ((__tmp154117 (list gxc#::find-expression::t))
            (__tmp154116 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp154117
         '(ids)
         __tmp154116
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args154003%_
        (apply make-instance gxc#::find-var-refs::t _%$args154003%_)))
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
      (let ((__tmp154118
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
        (__make-promise __tmp154118)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords153977%_ _%ids153974153978%_ _%stx153980%_)
        (let ((_%ids153983%_
               (if (eq? _%ids153974153978%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids153974153978%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self153985%_
                  (let ((__obj154099
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154099
                       _%ids153983%_
                       '1
                       '#f
                       '#f))
                    __obj154099))
                 (__tmp154119
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153985%_ _%stx153980%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154119
             gxc#current-compile-method
             _%self153985%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords153992%_ . _%args153993%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords153992%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153992%_ 'ids: absent-value))
               _%args153993%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args153975153999%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args153975153999%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp154121 (list gxc#::collect-expression-refs::t))
            (__tmp154120 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp154121
         '()
         __tmp154120
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args153970%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args153970%_)))
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
      (let ((__tmp154122
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
        (__make-promise __tmp154122)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords153944%_ _%table153941153945%_ _%stx153947%_)
        (let ((_%table153950%_
               (if (eq? _%table153941153945%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table153941153945%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self153952%_
                  (let ((__obj154101
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154101
                       _%table153950%_
                       '1
                       '#f
                       '#f))
                    __obj154101))
                 (__tmp154123
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153952%_ _%stx153947%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154123
             gxc#current-compile-method
             _%self153952%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords153959%_ . _%args153960%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords153959%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153959%_
                  'table:
                  absent-value))
               _%args153960%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args153942153966%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args153942153966%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self153870%_ _%stx153871%_)
        (let* ((_%g153873153890%_
                (lambda (_%g153874153887%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153874153887%_))))
               (_%g153872153937%_
                (lambda (_%g153874153893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153874153893%_))
                      (let ((_%e153877153895%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153874153893%_))))
                        (let ((_%hd153878153898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153877153895%_)))
                              (_%tl153879153900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153877153895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153879153900%_))
                              (let ((_%e153880153903%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153879153900%_))))
                                (let ((_%hd153881153906%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153880153903%_)))
                                      (_%tl153882153908%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153880153903%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153882153908%_))
                                      (let ((_%e153883153911%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153882153908%_))))
                                        (let ((_%hd153884153914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153883153911%_)))
                                              (_%tl153885153916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153883153911%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153885153916%_))
                                              ((lambda (_%L153919%_
                                                        _%L153920%_)
                                                 (let ((_%sym153935%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153920%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym153935%_))
                                                   (let ((__tmp154124
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp154124
                                                      _%sym153935%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153870%_
                                                      _%L153919%_))))
                                               _%hd153884153914%_
                                               _%hd153881153906%_)
                                              (_%g153873153890%_
                                               _%g153874153893%_))))
                                      (_%g153873153890%_ _%g153874153893%_))))
                              (_%g153873153890%_ _%g153874153893%_))))
                      (_%g153873153890%_ _%g153874153893%_)))))
          (_%g153872153937%_ _%stx153871%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self153818%_ _%stx153819%_)
        (let* ((_%g153821153834%_
                (lambda (_%g153822153831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153822153831%_))))
               (_%g153820153867%_
                (lambda (_%g153822153837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153822153837%_))
                      (let ((_%e153824153839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153822153837%_))))
                        (let ((_%hd153825153842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153824153839%_)))
                              (_%tl153826153844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153824153839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153826153844%_))
                              (let ((_%e153827153847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153826153844%_))))
                                (let ((_%hd153828153850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153827153847%_)))
                                      (_%tl153829153852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153827153847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153829153852%_))
                                      ((lambda (_%L153855%_)
                                         (if (let ((__tmp154125
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self153818%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L153855%_
                                                __tmp154125))
                                             (let ((__tmp154126
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self153818%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154126
                                                _%stx153819%_))
                                             _%stx153819%_))
                                       _%hd153828153850%_)
                                      (_%g153821153834%_ _%g153822153837%_))))
                              (_%g153821153834%_ _%g153822153837%_))))
                      (_%g153821153834%_ _%g153822153837%_)))))
          (_%g153820153867%_ _%stx153819%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self153758%_ _%stx153759%_)
        (let* ((_%g153761153774%_
                (lambda (_%g153762153771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153762153771%_))))
               (_%g153760153815%_
                (lambda (_%g153762153777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153762153777%_))
                      (let ((_%e153764153779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153762153777%_))))
                        (let ((_%hd153765153782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153764153779%_)))
                              (_%tl153766153784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153764153779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153766153784%_))
                              (let ((_%e153767153787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153766153784%_))))
                                (let ((_%hd153768153790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153767153787%_)))
                                      (_%tl153769153792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153767153787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153769153792%_))
                                      ((lambda (_%L153795%_)
                                         (let ((_%$e153809%_
                                                (let ((__tmp154128
                                                       (lambda (_%sub153807%_)
                                                         (let ((__tmp154129
                                                                (car _%sub153807%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L153795%_
                                                            __tmp154129))))
                                                      (__tmp154127
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self153758%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp154128
                                                          __tmp154127))))
                                           (if _%$e153809%_
                                               ((lambda (_%sub153812%_)
                                                  (let ((__tmp154130
                                                         (cons '%#ref
                                                               (cons (cdr _%sub153812%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp154130
                                                     _%stx153759%_)))
                                                _%$e153809%_)
                                               _%stx153759%_)))
                                       _%hd153768153790%_)
                                      (_%g153761153774%_ _%g153762153777%_))))
                              (_%g153761153774%_ _%g153762153777%_))))
                      (_%g153761153774%_ _%g153762153777%_)))))
          (_%g153760153815%_ _%stx153759%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self153687%_ _%stx153688%_)
        (let* ((_%g153690153707%_
                (lambda (_%g153691153704%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153691153704%_))))
               (_%g153689153755%_
                (lambda (_%g153691153710%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153691153710%_))
                      (let ((_%e153694153712%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153691153710%_))))
                        (let ((_%hd153695153715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153694153712%_)))
                              (_%tl153696153717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153694153712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153696153717%_))
                              (let ((_%e153697153720%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153696153717%_))))
                                (let ((_%hd153698153723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153697153720%_)))
                                      (_%tl153699153725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153697153720%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153699153725%_))
                                      (let ((_%e153700153728%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153699153725%_))))
                                        (let ((_%hd153701153731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153700153728%_)))
                                              (_%tl153702153733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153700153728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153702153733%_))
                                              ((lambda (_%L153736%_
                                                        _%L153737%_)
                                                 (let ((_%new-expr153752%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153687%_
                                                           _%L153736%_)))
                                                       (_%new-xid153753%_
                                                        (if (let ((__tmp154131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self153687%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L153737%_ __tmp154131))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self153687%_ 'new-id))
                    _%L153737%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154132
                                                          (cons '%#set!
                                                                (cons _%new-xid153753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153752%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154132
                                                      _%stx153688%_))))
                                               _%hd153701153731%_
                                               _%hd153698153723%_)
                                              (_%g153690153707%_
                                               _%g153691153710%_))))
                                      (_%g153690153707%_ _%g153691153710%_))))
                              (_%g153690153707%_ _%g153691153710%_))))
                      (_%g153690153707%_ _%g153691153710%_)))))
          (_%g153689153755%_ _%stx153688%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self153610%_ _%stx153611%_)
        (let* ((_%g153613153630%_
                (lambda (_%g153614153627%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153614153627%_))))
               (_%g153612153684%_
                (lambda (_%g153614153633%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153614153633%_))
                      (let ((_%e153617153635%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153614153633%_))))
                        (let ((_%hd153618153638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153617153635%_)))
                              (_%tl153619153640%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153617153635%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153619153640%_))
                              (let ((_%e153620153643%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153619153640%_))))
                                (let ((_%hd153621153646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153620153643%_)))
                                      (_%tl153622153648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153620153643%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153622153648%_))
                                      (let ((_%e153623153651%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153622153648%_))))
                                        (let ((_%hd153624153654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153623153651%_)))
                                              (_%tl153625153656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153623153651%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153625153656%_))
                                              ((lambda (_%L153659%_
                                                        _%L153660%_)
                                                 (let ((_%new-expr153681%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153610%_
                                                           _%L153659%_)))
                                                       (_%new-xid153682%_
                                                        (let ((_%$e153677%_
                                                               (let ((__tmp154134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub153675%_)
                                (let ((__tmp154135 (car _%sub153675%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L153660%_
                                   __tmp154135))))
                             (__tmp154133
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self153610%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp154134 __tmp154133))))
                  (if _%$e153677%_ (cdr _%$e153677%_) _%L153660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154136
                                                          (cons '%#set!
                                                                (cons _%new-xid153682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153681%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154136
                                                      _%stx153611%_))))
                                               _%hd153624153654%_
                                               _%hd153621153646%_)
                                              (_%g153613153630%_
                                               _%g153614153633%_))))
                                      (_%g153613153630%_ _%g153614153633%_))))
                              (_%g153613153630%_ _%g153614153633%_))))
                      (_%g153613153630%_ _%g153614153633%_)))))
          (_%g153612153684%_ _%stx153611%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self153556%_ _%stx153557%_)
        (let* ((_%g153559153572%_
                (lambda (_%g153560153569%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153560153569%_))))
               (_%g153558153607%_
                (lambda (_%g153560153575%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153560153575%_))
                      (let ((_%e153562153577%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153560153575%_))))
                        (let ((_%hd153563153580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153562153577%_)))
                              (_%tl153564153582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153562153577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153564153582%_))
                              (let ((_%e153565153585%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153564153582%_))))
                                (let ((_%hd153566153588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153565153585%_)))
                                      (_%tl153567153590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153565153585%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153567153590%_))
                                      ((lambda (_%L153593%_)
                                         (let* ((_%eid153605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L153593%_)))
                                                (__tmp154137
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self153556%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp154137
                                            _%eid153605%_
                                            1+
                                            '0)))
                                       _%hd153566153588%_)
                                      (_%g153559153572%_ _%g153560153575%_))))
                              (_%g153559153572%_ _%g153560153575%_))))
                      (_%g153559153572%_ _%g153560153575%_)))))
          (_%g153558153607%_ _%stx153557%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self153486%_ _%stx153487%_)
        (let* ((_%g153489153506%_
                (lambda (_%g153490153503%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153490153503%_))))
               (_%g153488153553%_
                (lambda (_%g153490153509%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153490153509%_))
                      (let ((_%e153493153511%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153490153509%_))))
                        (let ((_%hd153494153514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153493153511%_)))
                              (_%tl153495153516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153493153511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153495153516%_))
                              (let ((_%e153496153519%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153495153516%_))))
                                (let ((_%hd153497153522%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153496153519%_)))
                                      (_%tl153498153524%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153496153519%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153498153524%_))
                                      (let ((_%e153499153527%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153498153524%_))))
                                        (let ((_%hd153500153530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153499153527%_)))
                                              (_%tl153501153532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153499153527%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153501153532%_))
                                              ((lambda (_%L153535%_
                                                        _%L153536%_)
                                                 (let ((_%eid153551%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153536%_))))
                                                   (let ((__tmp154138
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self153486%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp154138
                                                      _%eid153551%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153486%_
                                                      _%L153535%_))))
                                               _%hd153500153530%_
                                               _%hd153497153522%_)
                                              (_%g153489153506%_
                                               _%g153490153509%_))))
                                      (_%g153489153506%_ _%g153490153509%_))))
                              (_%g153489153506%_ _%g153490153509%_))))
                      (_%g153489153506%_ _%g153490153509%_)))))
          (_%g153488153553%_ _%stx153487%_))))
    (define gxc#find-body%
      (lambda (_%self153399%_ _%stx153400%_)
        (let* ((_%g153402153421%_
                (lambda (_%g153403153418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153403153418%_))))
               (_%g153401153483%_
                (lambda (_%g153403153424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153403153424%_))
                      (let ((_%e153405153426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153403153424%_))))
                        (let ((_%hd153406153429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153405153426%_)))
                              (_%tl153407153431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153405153426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl153407153431%_))
                              (let ((_g154139_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl153407153431%_
                                        '0))))
                                (begin
                                  (let ((_g154140_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g154139_)
                                               (##values-length _g154139_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g154140_ 2)))
                                        (error "Context expects 2 values"
                                               _g154140_)))
                                  (let ((_%target153408153434%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154139_ 0)))
                                        (_%tl153410153436%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154139_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl153410153436%_))
                                        (letrec ((_%loop153411153439%_
                                                  (lambda (_%hd153409153442%_
                                                           _%expr153415153444%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd153409153442%_))
                                                        (let ((_%e153412153447%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd153409153442%_))))
                  (let ((_%lp-hd153413153450%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153412153447%_)))
                        (_%lp-tl153414153452%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153412153447%_))))
                    (_%loop153411153439%_
                     _%lp-tl153414153452%_
                     (cons _%lp-hd153413153450%_ _%expr153415153444%_))))
                (let ((_%expr153416153455%_ (reverse _%expr153415153444%_)))
                  ((lambda (_%L153458%_)
                     (let ((__tmp154143
                            (lambda (_%g153471153473%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self153399%_
                                 _%g153471153473%_))))
                           (__tmp154141
                            (let ((__tmp154142
                                   (lambda (_%g153475153478%_
                                            _%g153476153480%_)
                                     (cons _%g153475153478%_
                                           _%g153476153480%_))))
                              (declare (not safe))
                              (__foldr1 __tmp154142 '() _%L153458%_))))
                       (declare (not safe))
                       (__ormap1 __tmp154143 __tmp154141)))
                   _%expr153416153455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop153411153439%_
                                           _%target153408153434%_
                                           '()))
                                        (_%g153402153421%_
                                         _%g153403153424%_)))))
                              (_%g153402153421%_ _%g153403153424%_))))
                      (_%g153402153421%_ _%g153403153424%_)))))
          (_%g153401153483%_ _%stx153400%_))))
    (define gxc#find-let-values%
      (lambda (_%self153249%_ _%stx153250%_)
        (let* ((_%g153252153287%_
                (lambda (_%g153253153284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153253153284%_))))
               (_%g153251153396%_
                (lambda (_%g153253153290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153253153290%_))
                      (let ((_%e153257153292%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153253153290%_))))
                        (let ((_%hd153258153295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153257153292%_)))
                              (_%tl153259153297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153257153292%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153259153297%_))
                              (let ((_%e153260153300%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153259153297%_))))
                                (let ((_%hd153261153303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153260153300%_)))
                                      (_%tl153262153305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153260153300%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153261153303%_))
                                      (let ((_g154144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd153261153303%_
                                                '0))))
                                        (begin
                                          (let ((_g154145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g154144_)
                                                       (##values-length
                                                        _g154144_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g154145_ 2)))
                                                (error "Context expects 2 values"
                                                       _g154145_)))
                                          (let ((_%target153263153308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g154144_ 0)))
                                                (_%tl153265153310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g154144_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153265153310%_))
                                                (letrec ((_%loop153266153313%_
                                                          (lambda (_%hd153264153316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr153270153318%_
                           _%bind153271153320%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153264153316%_))
                        (let ((_%e153267153323%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153264153316%_))))
                          (let ((_%lp-hd153268153326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153267153323%_)))
                                (_%lp-tl153269153328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153267153323%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd153268153326%_))
                                (let ((_%e153277153331%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd153268153326%_))))
                                  (let ((_%hd153278153334%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e153277153331%_)))
                                        (_%tl153279153336%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e153277153331%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153279153336%_))
                                        (let ((_%e153280153339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153279153336%_))))
                                          (let ((_%hd153281153342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153280153339%_)))
                                                (_%tl153282153344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153280153339%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153282153344%_))
                                                (_%loop153266153313%_
                                                 _%lp-tl153269153328%_
                                                 (cons _%hd153281153342%_
                                                       _%expr153270153318%_)
                                                 (cons _%hd153278153334%_
                                                       _%bind153271153320%_))
                                                (_%g153252153287%_
                                                 _%g153253153290%_))))
                                        (_%g153252153287%_
                                         _%g153253153290%_))))
                                (_%g153252153287%_ _%g153253153290%_))))
                        (let ((_%expr153272153347%_
                               (reverse _%expr153270153318%_))
                              (_%bind153273153349%_
                               (reverse _%bind153271153320%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153262153305%_))
                              (let ((_%e153274153352%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153262153305%_))))
                                (let ((_%hd153275153355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153274153352%_)))
                                      (_%tl153276153357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153274153352%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153276153357%_))
                                      ((lambda (_%L153360%_
                                                _%L153361%_
                                                _%L153362%_)
                                         (let ((_%$e153393%_
                                                (let ((__tmp154148
                                                       (lambda (_%g153381153383%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self153249%_
                                                            _%g153381153383%_))))
                                                      (__tmp154146
                                                       (let ((__tmp154147
                                                              (lambda (_%g153385153388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g153386153390%_)
                        (cons _%g153385153388%_ _%g153386153390%_))))
                 (declare (not safe))
                 (__foldr1 __tmp154147 '() _%L153361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp154148
                                                   __tmp154146))))
                                           (if _%$e153393%_
                                               _%$e153393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153249%_
                                                  _%L153360%_)))))
                                       _%hd153275153355%_
                                       _%expr153272153347%_
                                       _%bind153273153349%_)
                                      (_%g153252153287%_ _%g153253153290%_))))
                              (_%g153252153287%_ _%g153253153290%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop153266153313%_
                                                   _%target153263153308%_
                                                   '()
                                                   '()))
                                                (_%g153252153287%_
                                                 _%g153253153290%_)))))
                                      (_%g153252153287%_ _%g153253153290%_))))
                              (_%g153252153287%_ _%g153253153290%_))))
                      (_%g153252153287%_ _%g153253153290%_)))))
          (_%g153251153396%_ _%stx153250%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self153193%_ _%stx153194%_)
        (let* ((_%g153196153209%_
                (lambda (_%g153197153206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153197153206%_))))
               (_%g153195153246%_
                (lambda (_%g153197153212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153197153212%_))
                      (let ((_%e153199153214%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153197153212%_))))
                        (let ((_%hd153200153217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153199153214%_)))
                              (_%tl153201153219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153199153214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153201153219%_))
                              (let ((_%e153202153222%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153201153219%_))))
                                (let ((_%hd153203153225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153202153222%_)))
                                      (_%tl153204153227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153202153222%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153204153227%_))
                                      ((lambda (_%L153230%_)
                                         (let ((__tmp154150
                                                (lambda (_%g153241153243%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L153230%_
                                                     _%g153241153243%_))))
                                               (__tmp154149
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self153193%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp154150 __tmp154149)))
                                       _%hd153203153225%_)
                                      (_%g153196153209%_ _%g153197153212%_))))
                              (_%g153196153209%_ _%g153197153212%_))))
                      (_%g153196153209%_ _%g153197153212%_)))))
          (_%g153195153246%_ _%stx153194%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self153118%_ _%stx153119%_)
        (let* ((_%g153121153138%_
                (lambda (_%g153122153135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153122153135%_))))
               (_%g153120153190%_
                (lambda (_%g153122153141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153122153141%_))
                      (let ((_%e153125153143%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153122153141%_))))
                        (let ((_%hd153126153146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153125153143%_)))
                              (_%tl153127153148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153125153143%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153127153148%_))
                              (let ((_%e153128153151%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153127153148%_))))
                                (let ((_%hd153129153154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153128153151%_)))
                                      (_%tl153130153156%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153128153151%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153130153156%_))
                                      (let ((_%e153131153159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153130153156%_))))
                                        (let ((_%hd153132153162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153131153159%_)))
                                              (_%tl153133153164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153131153159%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153133153164%_))
                                              ((lambda (_%L153167%_
                                                        _%L153168%_)
                                                 (let ((_%$e153187%_
                                                        (let ((__tmp154152
                                                               (lambda (_%g153182153184%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L153168%_
                            _%g153182153184%_))))
                      (__tmp154151
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self153118%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp154152 __tmp154151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e153187%_
                                                       _%$e153187%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153118%_
                                                          _%L153167%_)))))
                                               _%hd153132153162%_
                                               _%hd153129153154%_)
                                              (_%g153121153138%_
                                               _%g153122153141%_))))
                                      (_%g153121153138%_ _%g153122153141%_))))
                              (_%g153121153138%_ _%g153122153141%_))))
                      (_%g153121153138%_ _%g153122153141%_)))))
          (_%g153120153190%_ _%stx153119%_))))))
