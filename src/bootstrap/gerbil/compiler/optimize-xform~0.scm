(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1771036680)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp394080 (list gxc#::void::t))
            (__tmp394079 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp394080
         '()
         __tmp394079
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args394066%_
        (apply make-instance gxc#::collect-mutators::t _%$args394066%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp394081
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
        (__make-atomic-promise __tmp394081)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx394058%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self394061%_
                (let ((__obj394069
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj394069))
               (__tmp394082
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self394061%_ _%stx394058%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp394082
           gxc#current-compile-method
           _%self394061%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp394084 (list gxc#::basic-xform-expression::t))
            (__tmp394083 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp394084
         '(id new-id)
         __tmp394083
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args394055%_
        (apply make-instance gxc#::expression-subst::t _%$args394055%_)))
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
      (let ((__tmp394085
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
        (__make-atomic-promise __tmp394085)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords394027%_
               _%id394023394028%_
               _%new-id394024394029%_
               _%stx394030%_)
        (let* ((_%id394033%_
                (if (eq? _%id394023394028%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id394023394028%_))
               (_%new-id394035%_
                (if (eq? _%new-id394024394029%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id394024394029%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self394037%_
                  (let ((__obj394071
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj394071
                       _%id394033%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj394071
                       _%new-id394035%_
                       '2
                       '#f
                       '#f))
                    __obj394071))
                 (__tmp394086
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self394037%_ _%stx394030%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp394086
             gxc#current-compile-method
             _%self394037%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords394044%_ . _%args394045%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords394044%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords394044%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords394044%_
                  'new-id:
                  absent-value))
               _%args394045%_)))
    (define gxc#apply-expression-subst
      (lambda _%args394025394051%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args394025394051%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp394088 (list gxc#::basic-xform-expression::t))
            (__tmp394087 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp394088
         '(subst)
         __tmp394087
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args394019%_
        (apply make-instance gxc#::expression-subst*::t _%$args394019%_)))
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
      (let ((__tmp394089
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
        (__make-atomic-promise __tmp394089)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords393994%_ _%subst393991393995%_ _%stx393996%_)
        (let ((_%subst393999%_
               (if (eq? _%subst393991393995%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst393991393995%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self394001%_
                  (let ((__obj394073
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj394073
                       _%subst393999%_
                       '1
                       '#f
                       '#f))
                    __obj394073))
                 (__tmp394090
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self394001%_ _%stx393996%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp394090
             gxc#current-compile-method
             _%self394001%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords394008%_ . _%args394009%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords394008%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords394008%_
                  'subst:
                  absent-value))
               _%args394009%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args393992394015%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args393992394015%_)))
    (define gxc#::find-expression::t
      (let ((__tmp394091 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp394091
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args393987%_
        (apply make-instance gxc#::find-expression::t _%$args393987%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp394092
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
        (__make-atomic-promise __tmp394092)))
    (define gxc#::find-var-refs::t
      (let ((__tmp394094 (list gxc#::find-expression::t))
            (__tmp394093 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp394094
         '(ids)
         __tmp394093
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args393983%_
        (apply make-instance gxc#::find-var-refs::t _%$args393983%_)))
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
      (let ((__tmp394095
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
        (__make-atomic-promise __tmp394095)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords393958%_ _%ids393955393959%_ _%stx393960%_)
        (let ((_%ids393963%_
               (if (eq? _%ids393955393959%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids393955393959%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self393965%_
                  (let ((__obj394076
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj394076
                       _%ids393963%_
                       '1
                       '#f
                       '#f))
                    __obj394076))
                 (__tmp394096
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self393965%_ _%stx393960%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp394096
             gxc#current-compile-method
             _%self393965%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords393972%_ . _%args393973%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords393972%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords393972%_ 'ids: absent-value))
               _%args393973%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args393956393979%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args393956393979%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp394098 (list gxc#::collect-expression-refs::t))
            (__tmp394097 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp394098
         '()
         __tmp394097
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args393951%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args393951%_)))
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
      (let ((__tmp394099
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
        (__make-atomic-promise __tmp394099)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords393926%_ _%table393923393927%_ _%stx393928%_)
        (let ((_%table393931%_
               (if (eq? _%table393923393927%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table393923393927%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self393933%_
                  (let ((__obj394078
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj394078
                       _%table393931%_
                       '1
                       '#f
                       '#f))
                    __obj394078))
                 (__tmp394100
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self393933%_ _%stx393928%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp394100
             gxc#current-compile-method
             _%self393933%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords393940%_ . _%args393941%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords393940%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords393940%_
                  'table:
                  absent-value))
               _%args393941%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args393924393947%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args393924393947%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self393852%_ _%stx393853%_)
        (let* ((_%g393855393872%_
                (lambda (_%g393856393869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393856393869%_))))
               (_%g393854393919%_
                (lambda (_%g393856393875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393856393875%_))
                      (let ((_%e393859393877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393856393875%_))))
                        (let ((_%hd393860393880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393859393877%_)))
                              (_%tl393861393882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393859393877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393861393882%_))
                              (let ((_%e393862393885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393861393882%_))))
                                (let ((_%hd393863393888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393862393885%_)))
                                      (_%tl393864393890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393862393885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl393864393890%_))
                                      (let ((_%e393865393893%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl393864393890%_))))
                                        (let ((_%hd393866393896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e393865393893%_)))
                                              (_%tl393867393898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e393865393893%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl393867393898%_))
                                              ((lambda (_%g393857393901%_
                                                        _%g393858393902%_)
                                                 (let ((_%sym393917%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g393858393902%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym393917%_))
                                                   (let ((__tmp394101
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp394101
                                                      _%sym393917%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self393852%_
                                                      _%g393857393901%_))))
                                               _%hd393866393896%_
                                               _%hd393863393888%_)
                                              (_%g393855393872%_
                                               _%g393856393875%_))))
                                      (_%g393855393872%_ _%g393856393875%_))))
                              (_%g393855393872%_ _%g393856393875%_))))
                      (_%g393855393872%_ _%g393856393875%_)))))
          (_%g393854393919%_ _%stx393853%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self393800%_ _%stx393801%_)
        (let* ((_%g393803393816%_
                (lambda (_%g393804393813%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393804393813%_))))
               (_%g393802393849%_
                (lambda (_%g393804393819%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393804393819%_))
                      (let ((_%e393806393821%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393804393819%_))))
                        (let ((_%hd393807393824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393806393821%_)))
                              (_%tl393808393826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393806393821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393808393826%_))
                              (let ((_%e393809393829%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393808393826%_))))
                                (let ((_%hd393810393832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393809393829%_)))
                                      (_%tl393811393834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393809393829%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl393811393834%_))
                                      ((lambda (_%g393805393837%_)
                                         (if (let ((__tmp394102
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self393800%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g393805393837%_
                                                __tmp394102))
                                             (let ((__tmp394103
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self393800%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp394103
                                                _%stx393801%_))
                                             _%stx393801%_))
                                       _%hd393810393832%_)
                                      (_%g393803393816%_ _%g393804393819%_))))
                              (_%g393803393816%_ _%g393804393819%_))))
                      (_%g393803393816%_ _%g393804393819%_)))))
          (_%g393802393849%_ _%stx393801%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self393740%_ _%stx393741%_)
        (let* ((_%g393743393756%_
                (lambda (_%g393744393753%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393744393753%_))))
               (_%g393742393797%_
                (lambda (_%g393744393759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393744393759%_))
                      (let ((_%e393746393761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393744393759%_))))
                        (let ((_%hd393747393764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393746393761%_)))
                              (_%tl393748393766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393746393761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393748393766%_))
                              (let ((_%e393749393769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393748393766%_))))
                                (let ((_%hd393750393772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393749393769%_)))
                                      (_%tl393751393774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393749393769%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl393751393774%_))
                                      ((lambda (_%g393745393777%_)
                                         (let ((_%$e393791%_
                                                (let ((__tmp394105
                                                       (lambda (_%sub393789%_)
                                                         (let ((__tmp394106
                                                                (car _%sub393789%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g393745393777%_
                                                            __tmp394106))))
                                                      (__tmp394104
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self393740%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp394105
                                                          __tmp394104))))
                                           (if _%$e393791%_
                                               ((lambda (_%sub393794%_)
                                                  (let ((__tmp394107
                                                         (cons '%#ref
                                                               (cons (cdr _%sub393794%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp394107
                                                     _%stx393741%_)))
                                                _%$e393791%_)
                                               _%stx393741%_)))
                                       _%hd393750393772%_)
                                      (_%g393743393756%_ _%g393744393759%_))))
                              (_%g393743393756%_ _%g393744393759%_))))
                      (_%g393743393756%_ _%g393744393759%_)))))
          (_%g393742393797%_ _%stx393741%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self393669%_ _%stx393670%_)
        (let* ((_%g393672393689%_
                (lambda (_%g393673393686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393673393686%_))))
               (_%g393671393737%_
                (lambda (_%g393673393692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393673393692%_))
                      (let ((_%e393676393694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393673393692%_))))
                        (let ((_%hd393677393697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393676393694%_)))
                              (_%tl393678393699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393676393694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393678393699%_))
                              (let ((_%e393679393702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393678393699%_))))
                                (let ((_%hd393680393705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393679393702%_)))
                                      (_%tl393681393707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393679393702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl393681393707%_))
                                      (let ((_%e393682393710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl393681393707%_))))
                                        (let ((_%hd393683393713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e393682393710%_)))
                                              (_%tl393684393715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e393682393710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl393684393715%_))
                                              ((lambda (_%g393674393718%_
                                                        _%g393675393719%_)
                                                 (let ((_%new-expr393734%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self393669%_
                                                           _%g393674393718%_)))
                                                       (_%new-xid393735%_
                                                        (if (let ((__tmp394108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self393669%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g393675393719%_ __tmp394108))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self393669%_ 'new-id))
                    _%g393675393719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp394109
                                                          (cons '%#set!
                                                                (cons _%new-xid393735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr393734%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp394109
                                                      _%stx393670%_))))
                                               _%hd393683393713%_
                                               _%hd393680393705%_)
                                              (_%g393672393689%_
                                               _%g393673393692%_))))
                                      (_%g393672393689%_ _%g393673393692%_))))
                              (_%g393672393689%_ _%g393673393692%_))))
                      (_%g393672393689%_ _%g393673393692%_)))))
          (_%g393671393737%_ _%stx393670%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self393592%_ _%stx393593%_)
        (let* ((_%g393595393612%_
                (lambda (_%g393596393609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393596393609%_))))
               (_%g393594393666%_
                (lambda (_%g393596393615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393596393615%_))
                      (let ((_%e393599393617%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393596393615%_))))
                        (let ((_%hd393600393620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393599393617%_)))
                              (_%tl393601393622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393599393617%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393601393622%_))
                              (let ((_%e393602393625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393601393622%_))))
                                (let ((_%hd393603393628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393602393625%_)))
                                      (_%tl393604393630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393602393625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl393604393630%_))
                                      (let ((_%e393605393633%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl393604393630%_))))
                                        (let ((_%hd393606393636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e393605393633%_)))
                                              (_%tl393607393638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e393605393633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl393607393638%_))
                                              ((lambda (_%g393597393641%_
                                                        _%g393598393642%_)
                                                 (let ((_%new-expr393663%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self393592%_
                                                           _%g393597393641%_)))
                                                       (_%new-xid393664%_
                                                        (let ((_%$e393659%_
                                                               (let ((__tmp394111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub393657%_)
                                (let ((__tmp394112 (car _%sub393657%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g393598393642%_
                                   __tmp394112))))
                             (__tmp394110
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self393592%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp394111 __tmp394110))))
                  (if _%$e393659%_ (cdr _%$e393659%_) _%g393598393642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp394113
                                                          (cons '%#set!
                                                                (cons _%new-xid393664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr393663%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp394113
                                                      _%stx393593%_))))
                                               _%hd393606393636%_
                                               _%hd393603393628%_)
                                              (_%g393595393612%_
                                               _%g393596393615%_))))
                                      (_%g393595393612%_ _%g393596393615%_))))
                              (_%g393595393612%_ _%g393596393615%_))))
                      (_%g393595393612%_ _%g393596393615%_)))))
          (_%g393594393666%_ _%stx393593%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self393538%_ _%stx393539%_)
        (let* ((_%g393541393554%_
                (lambda (_%g393542393551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393542393551%_))))
               (_%g393540393589%_
                (lambda (_%g393542393557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393542393557%_))
                      (let ((_%e393544393559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393542393557%_))))
                        (let ((_%hd393545393562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393544393559%_)))
                              (_%tl393546393564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393544393559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393546393564%_))
                              (let ((_%e393547393567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393546393564%_))))
                                (let ((_%hd393548393570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393547393567%_)))
                                      (_%tl393549393572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393547393567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl393549393572%_))
                                      ((lambda (_%g393543393575%_)
                                         (let* ((_%eid393587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g393543393575%_)))
                                                (__tmp394114
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self393538%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp394114
                                            _%eid393587%_
                                            1+
                                            '0)))
                                       _%hd393548393570%_)
                                      (_%g393541393554%_ _%g393542393557%_))))
                              (_%g393541393554%_ _%g393542393557%_))))
                      (_%g393541393554%_ _%g393542393557%_)))))
          (_%g393540393589%_ _%stx393539%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self393468%_ _%stx393469%_)
        (let* ((_%g393471393488%_
                (lambda (_%g393472393485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393472393485%_))))
               (_%g393470393535%_
                (lambda (_%g393472393491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393472393491%_))
                      (let ((_%e393475393493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393472393491%_))))
                        (let ((_%hd393476393496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393475393493%_)))
                              (_%tl393477393498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393475393493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393477393498%_))
                              (let ((_%e393478393501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393477393498%_))))
                                (let ((_%hd393479393504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393478393501%_)))
                                      (_%tl393480393506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393478393501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl393480393506%_))
                                      (let ((_%e393481393509%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl393480393506%_))))
                                        (let ((_%hd393482393512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e393481393509%_)))
                                              (_%tl393483393514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e393481393509%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl393483393514%_))
                                              ((lambda (_%g393473393517%_
                                                        _%g393474393518%_)
                                                 (let ((_%eid393533%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g393474393518%_))))
                                                   (let ((__tmp394115
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self393468%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp394115
                                                      _%eid393533%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self393468%_
                                                      _%g393473393517%_))))
                                               _%hd393482393512%_
                                               _%hd393479393504%_)
                                              (_%g393471393488%_
                                               _%g393472393491%_))))
                                      (_%g393471393488%_ _%g393472393491%_))))
                              (_%g393471393488%_ _%g393472393491%_))))
                      (_%g393471393488%_ _%g393472393491%_)))))
          (_%g393470393535%_ _%stx393469%_))))
    (define gxc#find-body%
      (lambda (_%self393383%_ _%stx393384%_)
        (let* ((_%g393386393405%_
                (lambda (_%g393387393402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393387393402%_))))
               (_%g393385393465%_
                (lambda (_%g393387393408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393387393408%_))
                      (let ((_%e393389393410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393387393408%_))))
                        (let ((_%hd393390393413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393389393410%_)))
                              (_%tl393391393415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393389393410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl393391393415%_))
                              (let ((_g394116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl393391393415%_
                                        '0))))
                                (begin
                                  (let ((_g394117_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g394116_)
                                               (##values-length _g394116_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g394117_ 2)))
                                        (error "Context expects 2 values"
                                               _g394117_)))
                                  (let ((_%target393392393418%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g394116_ 0)))
                                        (_%tl393394393420%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g394116_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl393394393420%_))
                                        (letrec ((_%loop393395393423%_
                                                  (lambda (_%hd393393393426%_
                                                           _%expr393399393428%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd393393393426%_))
                                                        (let ((_%e393396393430%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd393393393426%_))))
                  (let ((_%lp-hd393397393433%_
                         (let ()
                           (declare (not safe))
                           (##car _%e393396393430%_)))
                        (_%lp-tl393398393435%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e393396393430%_))))
                    (_%loop393395393423%_
                     _%lp-tl393398393435%_
                     (cons _%lp-hd393397393433%_ _%expr393399393428%_))))
                (let ((_%expr393400393438%_ (reverse _%expr393399393428%_)))
                  ((lambda (_%g393388393440%_)
                     (let ((__tmp394120
                            (lambda (_%g393453393455%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self393383%_
                                 _%g393453393455%_))))
                           (__tmp394118
                            (let ((__tmp394119
                                   (lambda (_%g393457393460%_
                                            _%g393458393462%_)
                                     (cons _%g393457393460%_
                                           _%g393458393462%_))))
                              (declare (not safe))
                              (foldr__0 __tmp394119 '() _%g393388393440%_))))
                       (declare (not safe))
                       (ormap__0 __tmp394120 __tmp394118)))
                   _%expr393400393438%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop393395393423%_
                                           _%target393392393418%_
                                           '()))
                                        (_%g393386393405%_
                                         _%g393387393408%_)))))
                              (_%g393386393405%_ _%g393387393408%_))))
                      (_%g393386393405%_ _%g393387393408%_)))))
          (_%g393385393465%_ _%stx393384%_))))
    (define gxc#find-let-values%
      (lambda (_%self393237%_ _%stx393238%_)
        (let* ((_%g393240393275%_
                (lambda (_%g393241393272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393241393272%_))))
               (_%g393239393380%_
                (lambda (_%g393241393278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393241393278%_))
                      (let ((_%e393245393280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393241393278%_))))
                        (let ((_%hd393246393283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393245393280%_)))
                              (_%tl393247393285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393245393280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393247393285%_))
                              (let ((_%e393248393288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393247393285%_))))
                                (let ((_%hd393249393291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393248393288%_)))
                                      (_%tl393250393293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393248393288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd393249393291%_))
                                      (let ((_g394121_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd393249393291%_
                                                '0))))
                                        (begin
                                          (let ((_g394122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g394121_)
                                                       (##values-length
                                                        _g394121_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g394122_ 2)))
                                                (error "Context expects 2 values"
                                                       _g394122_)))
                                          (let ((_%target393251393296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g394121_ 0)))
                                                (_%tl393253393298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g394121_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl393253393298%_))
                                                (letrec ((_%loop393254393301%_
                                                          (lambda (_%hd393252393304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr393258393306%_
                           _%bind393259393307%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd393252393304%_))
                        (let ((_%e393255393309%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd393252393304%_))))
                          (let ((_%lp-hd393256393312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e393255393309%_)))
                                (_%lp-tl393257393314%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e393255393309%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd393256393312%_))
                                (let ((_%e393262393317%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd393256393312%_))))
                                  (let ((_%hd393263393320%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e393262393317%_)))
                                        (_%tl393264393322%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e393262393317%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl393264393322%_))
                                        (let ((_%e393265393325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl393264393322%_))))
                                          (let ((_%hd393266393328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e393265393325%_)))
                                                (_%tl393267393330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e393265393325%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl393267393330%_))
                                                (_%loop393254393301%_
                                                 _%lp-tl393257393314%_
                                                 (cons _%hd393266393328%_
                                                       _%expr393258393306%_)
                                                 (cons _%hd393263393320%_
                                                       _%bind393259393307%_))
                                                (_%g393240393275%_
                                                 _%g393241393278%_))))
                                        (_%g393240393275%_
                                         _%g393241393278%_))))
                                (_%g393240393275%_ _%g393241393278%_))))
                        (let ((_%expr393260393333%_
                               (reverse _%expr393258393306%_))
                              (_%bind393261393334%_
                               (reverse _%bind393259393307%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393250393293%_))
                              (let ((_%e393268393336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393250393293%_))))
                                (let ((_%hd393269393339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393268393336%_)))
                                      (_%tl393270393341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393268393336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl393270393341%_))
                                      ((lambda (_%g393242393344%_
                                                _%g393243393345%_
                                                _%g393244393346%_)
                                         (let ((_%$e393377%_
                                                (let ((__tmp394125
                                                       (lambda (_%g393365393367%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self393237%_
                                                            _%g393365393367%_))))
                                                      (__tmp394123
                                                       (let ((__tmp394124
                                                              (lambda (_%g393369393372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g393370393374%_)
                        (cons _%g393369393372%_ _%g393370393374%_))))
                 (declare (not safe))
                 (foldr__0 __tmp394124 '() _%g393243393345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp394125
                                                   __tmp394123))))
                                           (if _%$e393377%_
                                               _%$e393377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self393237%_
                                                  _%g393242393344%_)))))
                                       _%hd393269393339%_
                                       _%expr393260393333%_
                                       _%bind393261393334%_)
                                      (_%g393240393275%_ _%g393241393278%_))))
                              (_%g393240393275%_ _%g393241393278%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop393254393301%_
                                                   _%target393251393296%_
                                                   '()
                                                   '()))
                                                (_%g393240393275%_
                                                 _%g393241393278%_)))))
                                      (_%g393240393275%_ _%g393241393278%_))))
                              (_%g393240393275%_ _%g393241393278%_))))
                      (_%g393240393275%_ _%g393241393278%_)))))
          (_%g393239393380%_ _%stx393238%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self393181%_ _%stx393182%_)
        (let* ((_%g393184393197%_
                (lambda (_%g393185393194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393185393194%_))))
               (_%g393183393234%_
                (lambda (_%g393185393200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393185393200%_))
                      (let ((_%e393187393202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393185393200%_))))
                        (let ((_%hd393188393205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393187393202%_)))
                              (_%tl393189393207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393187393202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393189393207%_))
                              (let ((_%e393190393210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393189393207%_))))
                                (let ((_%hd393191393213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393190393210%_)))
                                      (_%tl393192393215%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393190393210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl393192393215%_))
                                      ((lambda (_%g393186393218%_)
                                         (let ((__tmp394127
                                                (lambda (_%g393229393231%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g393186393218%_
                                                     _%g393229393231%_))))
                                               (__tmp394126
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self393181%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp394127 __tmp394126)))
                                       _%hd393191393213%_)
                                      (_%g393184393197%_ _%g393185393200%_))))
                              (_%g393184393197%_ _%g393185393200%_))))
                      (_%g393184393197%_ _%g393185393200%_)))))
          (_%g393183393234%_ _%stx393182%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self393106%_ _%stx393107%_)
        (let* ((_%g393109393126%_
                (lambda (_%g393110393123%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g393110393123%_))))
               (_%g393108393178%_
                (lambda (_%g393110393129%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g393110393129%_))
                      (let ((_%e393113393131%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g393110393129%_))))
                        (let ((_%hd393114393134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e393113393131%_)))
                              (_%tl393115393136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e393113393131%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl393115393136%_))
                              (let ((_%e393116393139%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl393115393136%_))))
                                (let ((_%hd393117393142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e393116393139%_)))
                                      (_%tl393118393144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e393116393139%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl393118393144%_))
                                      (let ((_%e393119393147%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl393118393144%_))))
                                        (let ((_%hd393120393150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e393119393147%_)))
                                              (_%tl393121393152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e393119393147%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl393121393152%_))
                                              ((lambda (_%g393111393155%_
                                                        _%g393112393156%_)
                                                 (let ((_%$e393175%_
                                                        (let ((__tmp394129
                                                               (lambda (_%g393170393172%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g393112393156%_
                            _%g393170393172%_))))
                      (__tmp394128
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self393106%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp394129 __tmp394128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e393175%_
                                                       _%$e393175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self393106%_
                                                          _%g393111393155%_)))))
                                               _%hd393120393150%_
                                               _%hd393117393142%_)
                                              (_%g393109393126%_
                                               _%g393110393129%_))))
                                      (_%g393109393126%_ _%g393110393129%_))))
                              (_%g393109393126%_ _%g393110393129%_))))
                      (_%g393109393126%_ _%g393110393129%_)))))
          (_%g393108393178%_ _%stx393107%_))))))
