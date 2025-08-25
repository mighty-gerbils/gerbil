(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1756142921)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp161084 (list gxc#::void::t))
            (__tmp161083 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp161084
         '()
         __tmp161083
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args161070%_
        (apply make-instance gxc#::collect-mutators::t _%$args161070%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp161085
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
        (__make-promise __tmp161085)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx161062%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self161065%_
                (let ((__obj161073
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj161073))
               (__tmp161086
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self161065%_ _%stx161062%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161086
           gxc#current-compile-method
           _%self161065%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp161088 (list gxc#::basic-xform-expression::t))
            (__tmp161087 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp161088
         '(id new-id)
         __tmp161087
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args161059%_
        (apply make-instance gxc#::expression-subst::t _%$args161059%_)))
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
      (let ((__tmp161089
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
        (__make-promise __tmp161089)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords161029%_
               _%id161025161030%_
               _%new-id161026161032%_
               _%stx161034%_)
        (let* ((_%id161037%_
                (if (eq? _%id161025161030%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id161025161030%_))
               (_%new-id161039%_
                (if (eq? _%new-id161026161032%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id161026161032%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self161041%_
                  (let ((__obj161075
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161075
                       _%id161037%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161075
                       _%new-id161039%_
                       '2
                       '#f
                       '#f))
                    __obj161075))
                 (__tmp161090
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self161041%_ _%stx161034%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161090
             gxc#current-compile-method
             _%self161041%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords161048%_ . _%args161049%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords161048%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161048%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161048%_
                  'new-id:
                  absent-value))
               _%args161049%_)))
    (define gxc#apply-expression-subst
      (lambda _%args161027161055%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args161027161055%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp161092 (list gxc#::basic-xform-expression::t))
            (__tmp161091 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp161092
         '(subst)
         __tmp161091
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args161021%_
        (apply make-instance gxc#::expression-subst*::t _%$args161021%_)))
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
      (let ((__tmp161093
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
        (__make-promise __tmp161093)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords160995%_ _%subst160992160996%_ _%stx160998%_)
        (let ((_%subst161001%_
               (if (eq? _%subst160992160996%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst160992160996%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self161003%_
                  (let ((__obj161077
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161077
                       _%subst161001%_
                       '1
                       '#f
                       '#f))
                    __obj161077))
                 (__tmp161094
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self161003%_ _%stx160998%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161094
             gxc#current-compile-method
             _%self161003%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords161010%_ . _%args161011%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords161010%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161010%_
                  'subst:
                  absent-value))
               _%args161011%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args160993161017%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args160993161017%_)))
    (define gxc#::find-expression::t
      (let ((__tmp161095 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp161095
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args160988%_
        (apply make-instance gxc#::find-expression::t _%$args160988%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp161096
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
        (__make-promise __tmp161096)))
    (define gxc#::find-var-refs::t
      (let ((__tmp161098 (list gxc#::find-expression::t))
            (__tmp161097 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp161098
         '(ids)
         __tmp161097
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args160984%_
        (apply make-instance gxc#::find-var-refs::t _%$args160984%_)))
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
      (let ((__tmp161099
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
        (__make-promise __tmp161099)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords160958%_ _%ids160955160959%_ _%stx160961%_)
        (let ((_%ids160964%_
               (if (eq? _%ids160955160959%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids160955160959%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self160966%_
                  (let ((__obj161080
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161080
                       _%ids160964%_
                       '1
                       '#f
                       '#f))
                    __obj161080))
                 (__tmp161100
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self160966%_ _%stx160961%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161100
             gxc#current-compile-method
             _%self160966%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords160973%_ . _%args160974%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords160973%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords160973%_ 'ids: absent-value))
               _%args160974%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args160956160980%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args160956160980%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp161102 (list gxc#::collect-expression-refs::t))
            (__tmp161101 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp161102
         '()
         __tmp161101
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args160951%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args160951%_)))
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
      (let ((__tmp161103
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
        (__make-promise __tmp161103)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords160925%_ _%table160922160926%_ _%stx160928%_)
        (let ((_%table160931%_
               (if (eq? _%table160922160926%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table160922160926%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self160933%_
                  (let ((__obj161082
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161082
                       _%table160931%_
                       '1
                       '#f
                       '#f))
                    __obj161082))
                 (__tmp161104
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self160933%_ _%stx160928%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161104
             gxc#current-compile-method
             _%self160933%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords160940%_ . _%args160941%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords160940%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords160940%_
                  'table:
                  absent-value))
               _%args160941%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args160923160947%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args160923160947%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self160851%_ _%stx160852%_)
        (let* ((_%g160854160871%_
                (lambda (_%g160855160868%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160855160868%_))))
               (_%g160853160918%_
                (lambda (_%g160855160874%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160855160874%_))
                      (let ((_%e160858160876%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160855160874%_))))
                        (let ((_%hd160859160879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160858160876%_)))
                              (_%tl160860160881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160858160876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160860160881%_))
                              (let ((_%e160861160884%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160860160881%_))))
                                (let ((_%hd160862160887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160861160884%_)))
                                      (_%tl160863160889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160861160884%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160863160889%_))
                                      (let ((_%e160864160892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160863160889%_))))
                                        (let ((_%hd160865160895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160864160892%_)))
                                              (_%tl160866160897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160864160892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160866160897%_))
                                              ((lambda (_%L160900%_
                                                        _%L160901%_)
                                                 (let ((_%sym160916%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L160901%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym160916%_))
                                                   (let ((__tmp161105
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp161105
                                                      _%sym160916%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self160851%_
                                                      _%L160900%_))))
                                               _%hd160865160895%_
                                               _%hd160862160887%_)
                                              (_%g160854160871%_
                                               _%g160855160874%_))))
                                      (_%g160854160871%_ _%g160855160874%_))))
                              (_%g160854160871%_ _%g160855160874%_))))
                      (_%g160854160871%_ _%g160855160874%_)))))
          (_%g160853160918%_ _%stx160852%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self160799%_ _%stx160800%_)
        (let* ((_%g160802160815%_
                (lambda (_%g160803160812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160803160812%_))))
               (_%g160801160848%_
                (lambda (_%g160803160818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160803160818%_))
                      (let ((_%e160805160820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160803160818%_))))
                        (let ((_%hd160806160823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160805160820%_)))
                              (_%tl160807160825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160805160820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160807160825%_))
                              (let ((_%e160808160828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160807160825%_))))
                                (let ((_%hd160809160831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160808160828%_)))
                                      (_%tl160810160833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160808160828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160810160833%_))
                                      ((lambda (_%L160836%_)
                                         (if (let ((__tmp161106
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self160799%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L160836%_
                                                __tmp161106))
                                             (let ((__tmp161107
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self160799%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp161107
                                                _%stx160800%_))
                                             _%stx160800%_))
                                       _%hd160809160831%_)
                                      (_%g160802160815%_ _%g160803160818%_))))
                              (_%g160802160815%_ _%g160803160818%_))))
                      (_%g160802160815%_ _%g160803160818%_)))))
          (_%g160801160848%_ _%stx160800%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self160739%_ _%stx160740%_)
        (let* ((_%g160742160755%_
                (lambda (_%g160743160752%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160743160752%_))))
               (_%g160741160796%_
                (lambda (_%g160743160758%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160743160758%_))
                      (let ((_%e160745160760%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160743160758%_))))
                        (let ((_%hd160746160763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160745160760%_)))
                              (_%tl160747160765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160745160760%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160747160765%_))
                              (let ((_%e160748160768%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160747160765%_))))
                                (let ((_%hd160749160771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160748160768%_)))
                                      (_%tl160750160773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160748160768%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160750160773%_))
                                      ((lambda (_%L160776%_)
                                         (let ((_%$e160790%_
                                                (let ((__tmp161109
                                                       (lambda (_%sub160788%_)
                                                         (let ((__tmp161110
                                                                (car _%sub160788%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L160776%_
                                                            __tmp161110))))
                                                      (__tmp161108
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self160739%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp161109
                                                          __tmp161108))))
                                           (if _%$e160790%_
                                               ((lambda (_%sub160793%_)
                                                  (let ((__tmp161111
                                                         (cons '%#ref
                                                               (cons (cdr _%sub160793%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp161111
                                                     _%stx160740%_)))
                                                _%$e160790%_)
                                               _%stx160740%_)))
                                       _%hd160749160771%_)
                                      (_%g160742160755%_ _%g160743160758%_))))
                              (_%g160742160755%_ _%g160743160758%_))))
                      (_%g160742160755%_ _%g160743160758%_)))))
          (_%g160741160796%_ _%stx160740%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self160668%_ _%stx160669%_)
        (let* ((_%g160671160688%_
                (lambda (_%g160672160685%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160672160685%_))))
               (_%g160670160736%_
                (lambda (_%g160672160691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160672160691%_))
                      (let ((_%e160675160693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160672160691%_))))
                        (let ((_%hd160676160696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160675160693%_)))
                              (_%tl160677160698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160675160693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160677160698%_))
                              (let ((_%e160678160701%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160677160698%_))))
                                (let ((_%hd160679160704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160678160701%_)))
                                      (_%tl160680160706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160678160701%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160680160706%_))
                                      (let ((_%e160681160709%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160680160706%_))))
                                        (let ((_%hd160682160712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160681160709%_)))
                                              (_%tl160683160714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160681160709%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160683160714%_))
                                              ((lambda (_%L160717%_
                                                        _%L160718%_)
                                                 (let ((_%new-expr160733%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self160668%_
                                                           _%L160717%_)))
                                                       (_%new-xid160734%_
                                                        (if (let ((__tmp161112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self160668%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L160718%_ __tmp161112))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self160668%_ 'new-id))
                    _%L160718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp161113
                                                          (cons '%#set!
                                                                (cons _%new-xid160734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr160733%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp161113
                                                      _%stx160669%_))))
                                               _%hd160682160712%_
                                               _%hd160679160704%_)
                                              (_%g160671160688%_
                                               _%g160672160691%_))))
                                      (_%g160671160688%_ _%g160672160691%_))))
                              (_%g160671160688%_ _%g160672160691%_))))
                      (_%g160671160688%_ _%g160672160691%_)))))
          (_%g160670160736%_ _%stx160669%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self160591%_ _%stx160592%_)
        (let* ((_%g160594160611%_
                (lambda (_%g160595160608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160595160608%_))))
               (_%g160593160665%_
                (lambda (_%g160595160614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160595160614%_))
                      (let ((_%e160598160616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160595160614%_))))
                        (let ((_%hd160599160619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160598160616%_)))
                              (_%tl160600160621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160598160616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160600160621%_))
                              (let ((_%e160601160624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160600160621%_))))
                                (let ((_%hd160602160627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160601160624%_)))
                                      (_%tl160603160629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160601160624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160603160629%_))
                                      (let ((_%e160604160632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160603160629%_))))
                                        (let ((_%hd160605160635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160604160632%_)))
                                              (_%tl160606160637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160604160632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160606160637%_))
                                              ((lambda (_%L160640%_
                                                        _%L160641%_)
                                                 (let ((_%new-expr160662%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self160591%_
                                                           _%L160640%_)))
                                                       (_%new-xid160663%_
                                                        (let ((_%$e160658%_
                                                               (let ((__tmp161115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub160656%_)
                                (let ((__tmp161116 (car _%sub160656%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L160641%_
                                   __tmp161116))))
                             (__tmp161114
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self160591%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp161115 __tmp161114))))
                  (if _%$e160658%_ (cdr _%$e160658%_) _%L160641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp161117
                                                          (cons '%#set!
                                                                (cons _%new-xid160663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr160662%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp161117
                                                      _%stx160592%_))))
                                               _%hd160605160635%_
                                               _%hd160602160627%_)
                                              (_%g160594160611%_
                                               _%g160595160614%_))))
                                      (_%g160594160611%_ _%g160595160614%_))))
                              (_%g160594160611%_ _%g160595160614%_))))
                      (_%g160594160611%_ _%g160595160614%_)))))
          (_%g160593160665%_ _%stx160592%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self160537%_ _%stx160538%_)
        (let* ((_%g160540160553%_
                (lambda (_%g160541160550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160541160550%_))))
               (_%g160539160588%_
                (lambda (_%g160541160556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160541160556%_))
                      (let ((_%e160543160558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160541160556%_))))
                        (let ((_%hd160544160561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160543160558%_)))
                              (_%tl160545160563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160543160558%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160545160563%_))
                              (let ((_%e160546160566%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160545160563%_))))
                                (let ((_%hd160547160569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160546160566%_)))
                                      (_%tl160548160571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160546160566%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160548160571%_))
                                      ((lambda (_%L160574%_)
                                         (let* ((_%eid160586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L160574%_)))
                                                (__tmp161118
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self160537%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp161118
                                            _%eid160586%_
                                            1+
                                            '0)))
                                       _%hd160547160569%_)
                                      (_%g160540160553%_ _%g160541160556%_))))
                              (_%g160540160553%_ _%g160541160556%_))))
                      (_%g160540160553%_ _%g160541160556%_)))))
          (_%g160539160588%_ _%stx160538%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self160467%_ _%stx160468%_)
        (let* ((_%g160470160487%_
                (lambda (_%g160471160484%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160471160484%_))))
               (_%g160469160534%_
                (lambda (_%g160471160490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160471160490%_))
                      (let ((_%e160474160492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160471160490%_))))
                        (let ((_%hd160475160495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160474160492%_)))
                              (_%tl160476160497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160474160492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160476160497%_))
                              (let ((_%e160477160500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160476160497%_))))
                                (let ((_%hd160478160503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160477160500%_)))
                                      (_%tl160479160505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160477160500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160479160505%_))
                                      (let ((_%e160480160508%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160479160505%_))))
                                        (let ((_%hd160481160511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160480160508%_)))
                                              (_%tl160482160513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160480160508%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160482160513%_))
                                              ((lambda (_%L160516%_
                                                        _%L160517%_)
                                                 (let ((_%eid160532%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L160517%_))))
                                                   (let ((__tmp161119
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self160467%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp161119
                                                      _%eid160532%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self160467%_
                                                      _%L160516%_))))
                                               _%hd160481160511%_
                                               _%hd160478160503%_)
                                              (_%g160470160487%_
                                               _%g160471160490%_))))
                                      (_%g160470160487%_ _%g160471160490%_))))
                              (_%g160470160487%_ _%g160471160490%_))))
                      (_%g160470160487%_ _%g160471160490%_)))))
          (_%g160469160534%_ _%stx160468%_))))
    (define gxc#find-body%
      (lambda (_%self160380%_ _%stx160381%_)
        (let* ((_%g160383160402%_
                (lambda (_%g160384160399%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160384160399%_))))
               (_%g160382160464%_
                (lambda (_%g160384160405%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160384160405%_))
                      (let ((_%e160386160407%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160384160405%_))))
                        (let ((_%hd160387160410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160386160407%_)))
                              (_%tl160388160412%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160386160407%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160388160412%_))
                              (let ((_g161120_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160388160412%_
                                        '0))))
                                (begin
                                  (let ((_g161121_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161120_)
                                               (##values-length _g161120_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161121_ 2)))
                                        (error "Context expects 2 values"
                                               _g161121_)))
                                  (let ((_%target160389160415%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161120_ 0)))
                                        (_%tl160391160417%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161120_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160391160417%_))
                                        (letrec ((_%loop160392160420%_
                                                  (lambda (_%hd160390160423%_
                                                           _%expr160396160425%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160390160423%_))
                                                        (let ((_%e160393160428%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160390160423%_))))
                  (let ((_%lp-hd160394160431%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160393160428%_)))
                        (_%lp-tl160395160433%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160393160428%_))))
                    (_%loop160392160420%_
                     _%lp-tl160395160433%_
                     (cons _%lp-hd160394160431%_ _%expr160396160425%_))))
                (let ((_%expr160397160436%_ (reverse _%expr160396160425%_)))
                  ((lambda (_%L160439%_)
                     (let ((__tmp161124
                            (lambda (_%g160452160454%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self160380%_
                                 _%g160452160454%_))))
                           (__tmp161122
                            (let ((__tmp161123
                                   (lambda (_%g160456160459%_
                                            _%g160457160461%_)
                                     (cons _%g160456160459%_
                                           _%g160457160461%_))))
                              (declare (not safe))
                              (__foldr1 __tmp161123 '() _%L160439%_))))
                       (declare (not safe))
                       (__ormap1 __tmp161124 __tmp161122)))
                   _%expr160397160436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160392160420%_
                                           _%target160389160415%_
                                           '()))
                                        (_%g160383160402%_
                                         _%g160384160405%_)))))
                              (_%g160383160402%_ _%g160384160405%_))))
                      (_%g160383160402%_ _%g160384160405%_)))))
          (_%g160382160464%_ _%stx160381%_))))
    (define gxc#find-let-values%
      (lambda (_%self160230%_ _%stx160231%_)
        (let* ((_%g160233160268%_
                (lambda (_%g160234160265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160234160265%_))))
               (_%g160232160377%_
                (lambda (_%g160234160271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160234160271%_))
                      (let ((_%e160238160273%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160234160271%_))))
                        (let ((_%hd160239160276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160238160273%_)))
                              (_%tl160240160278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160238160273%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160240160278%_))
                              (let ((_%e160241160281%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160240160278%_))))
                                (let ((_%hd160242160284%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160241160281%_)))
                                      (_%tl160243160286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160241160281%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160242160284%_))
                                      (let ((_g161125_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160242160284%_
                                                '0))))
                                        (begin
                                          (let ((_g161126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161125_)
                                                       (##values-length
                                                        _g161125_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161126_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161126_)))
                                          (let ((_%target160244160289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161125_ 0)))
                                                (_%tl160246160291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161125_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160246160291%_))
                                                (letrec ((_%loop160247160294%_
                                                          (lambda (_%hd160245160297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160251160299%_
                           _%bind160252160301%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160245160297%_))
                        (let ((_%e160248160304%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160245160297%_))))
                          (let ((_%lp-hd160249160307%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160248160304%_)))
                                (_%lp-tl160250160309%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160248160304%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160249160307%_))
                                (let ((_%e160255160312%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160249160307%_))))
                                  (let ((_%hd160256160315%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160255160312%_)))
                                        (_%tl160257160317%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160255160312%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160257160317%_))
                                        (let ((_%e160258160320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160257160317%_))))
                                          (let ((_%hd160259160323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160258160320%_)))
                                                (_%tl160260160325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160258160320%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160260160325%_))
                                                (_%loop160247160294%_
                                                 _%lp-tl160250160309%_
                                                 (cons _%hd160259160323%_
                                                       _%expr160251160299%_)
                                                 (cons _%hd160256160315%_
                                                       _%bind160252160301%_))
                                                (_%g160233160268%_
                                                 _%g160234160271%_))))
                                        (_%g160233160268%_
                                         _%g160234160271%_))))
                                (_%g160233160268%_ _%g160234160271%_))))
                        (let ((_%expr160253160328%_
                               (reverse _%expr160251160299%_))
                              (_%bind160254160330%_
                               (reverse _%bind160252160301%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160243160286%_))
                              (let ((_%e160261160333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160243160286%_))))
                                (let ((_%hd160262160336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160261160333%_)))
                                      (_%tl160263160338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160261160333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160263160338%_))
                                      ((lambda (_%L160341%_
                                                _%L160342%_
                                                _%L160343%_)
                                         (let ((_%$e160374%_
                                                (let ((__tmp161129
                                                       (lambda (_%g160362160364%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self160230%_
                                                            _%g160362160364%_))))
                                                      (__tmp161127
                                                       (let ((__tmp161128
                                                              (lambda (_%g160366160369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g160367160371%_)
                        (cons _%g160366160369%_ _%g160367160371%_))))
                 (declare (not safe))
                 (__foldr1 __tmp161128 '() _%L160342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp161129
                                                   __tmp161127))))
                                           (if _%$e160374%_
                                               _%$e160374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self160230%_
                                                  _%L160341%_)))))
                                       _%hd160262160336%_
                                       _%expr160253160328%_
                                       _%bind160254160330%_)
                                      (_%g160233160268%_ _%g160234160271%_))))
                              (_%g160233160268%_ _%g160234160271%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160247160294%_
                                                   _%target160244160289%_
                                                   '()
                                                   '()))
                                                (_%g160233160268%_
                                                 _%g160234160271%_)))))
                                      (_%g160233160268%_ _%g160234160271%_))))
                              (_%g160233160268%_ _%g160234160271%_))))
                      (_%g160233160268%_ _%g160234160271%_)))))
          (_%g160232160377%_ _%stx160231%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self160174%_ _%stx160175%_)
        (let* ((_%g160177160190%_
                (lambda (_%g160178160187%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160178160187%_))))
               (_%g160176160227%_
                (lambda (_%g160178160193%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160178160193%_))
                      (let ((_%e160180160195%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160178160193%_))))
                        (let ((_%hd160181160198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160180160195%_)))
                              (_%tl160182160200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160180160195%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160182160200%_))
                              (let ((_%e160183160203%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160182160200%_))))
                                (let ((_%hd160184160206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160183160203%_)))
                                      (_%tl160185160208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160183160203%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160185160208%_))
                                      ((lambda (_%L160211%_)
                                         (let ((__tmp161131
                                                (lambda (_%g160222160224%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L160211%_
                                                     _%g160222160224%_))))
                                               (__tmp161130
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self160174%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp161131 __tmp161130)))
                                       _%hd160184160206%_)
                                      (_%g160177160190%_ _%g160178160193%_))))
                              (_%g160177160190%_ _%g160178160193%_))))
                      (_%g160177160190%_ _%g160178160193%_)))))
          (_%g160176160227%_ _%stx160175%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self160099%_ _%stx160100%_)
        (let* ((_%g160102160119%_
                (lambda (_%g160103160116%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160103160116%_))))
               (_%g160101160171%_
                (lambda (_%g160103160122%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160103160122%_))
                      (let ((_%e160106160124%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160103160122%_))))
                        (let ((_%hd160107160127%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160106160124%_)))
                              (_%tl160108160129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160106160124%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160108160129%_))
                              (let ((_%e160109160132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160108160129%_))))
                                (let ((_%hd160110160135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160109160132%_)))
                                      (_%tl160111160137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160109160132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160111160137%_))
                                      (let ((_%e160112160140%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160111160137%_))))
                                        (let ((_%hd160113160143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160112160140%_)))
                                              (_%tl160114160145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160112160140%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160114160145%_))
                                              ((lambda (_%L160148%_
                                                        _%L160149%_)
                                                 (let ((_%$e160168%_
                                                        (let ((__tmp161133
                                                               (lambda (_%g160163160165%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L160149%_
                            _%g160163160165%_))))
                      (__tmp161132
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self160099%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp161133 __tmp161132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e160168%_
                                                       _%$e160168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self160099%_
                                                          _%L160148%_)))))
                                               _%hd160113160143%_
                                               _%hd160110160135%_)
                                              (_%g160102160119%_
                                               _%g160103160122%_))))
                                      (_%g160102160119%_ _%g160103160122%_))))
                              (_%g160102160119%_ _%g160103160122%_))))
                      (_%g160102160119%_ _%g160103160122%_)))))
          (_%g160101160171%_ _%stx160100%_))))))
