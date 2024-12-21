(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1734357964)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp154986 (list gxc#::void::t))
            (__tmp154985 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp154986
         '()
         __tmp154985
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args154972%_
        (apply make-instance gxc#::collect-mutators::t _%$args154972%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp154987
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
        (__make-promise __tmp154987)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx154964%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self154967%_
                (let ((__obj154975
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj154975))
               (__tmp154988
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154967%_ _%stx154964%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp154988
           gxc#current-compile-method
           _%self154967%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp154990 (list gxc#::basic-xform-expression::t))
            (__tmp154989 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp154990
         '(id new-id)
         __tmp154989
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args154961%_
        (apply make-instance gxc#::expression-subst::t _%$args154961%_)))
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
      (let ((__tmp154991
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
        (__make-promise __tmp154991)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords154931%_
               _%id154927154932%_
               _%new-id154928154934%_
               _%stx154936%_)
        (let* ((_%id154939%_
                (if (eq? _%id154927154932%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id154927154932%_))
               (_%new-id154941%_
                (if (eq? _%new-id154928154934%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id154928154934%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self154943%_
                  (let ((__obj154977
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154977
                       _%id154939%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154977
                       _%new-id154941%_
                       '2
                       '#f
                       '#f))
                    __obj154977))
                 (__tmp154992
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154943%_ _%stx154936%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154992
             gxc#current-compile-method
             _%self154943%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords154950%_ . _%args154951%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords154950%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154950%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154950%_
                  'new-id:
                  absent-value))
               _%args154951%_)))
    (define gxc#apply-expression-subst
      (lambda _%args154929154957%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args154929154957%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp154994 (list gxc#::basic-xform-expression::t))
            (__tmp154993 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp154994
         '(subst)
         __tmp154993
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args154923%_
        (apply make-instance gxc#::expression-subst*::t _%$args154923%_)))
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
      (let ((__tmp154995
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
        (__make-promise __tmp154995)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords154897%_ _%subst154894154898%_ _%stx154900%_)
        (let ((_%subst154903%_
               (if (eq? _%subst154894154898%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst154894154898%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self154905%_
                  (let ((__obj154979
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154979
                       _%subst154903%_
                       '1
                       '#f
                       '#f))
                    __obj154979))
                 (__tmp154996
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154905%_ _%stx154900%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154996
             gxc#current-compile-method
             _%self154905%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords154912%_ . _%args154913%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords154912%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154912%_
                  'subst:
                  absent-value))
               _%args154913%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args154895154919%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args154895154919%_)))
    (define gxc#::find-expression::t
      (let ((__tmp154997 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp154997
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args154890%_
        (apply make-instance gxc#::find-expression::t _%$args154890%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp154998
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
        (__make-promise __tmp154998)))
    (define gxc#::find-var-refs::t
      (let ((__tmp155000 (list gxc#::find-expression::t))
            (__tmp154999 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp155000
         '(ids)
         __tmp154999
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args154886%_
        (apply make-instance gxc#::find-var-refs::t _%$args154886%_)))
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
      (let ((__tmp155001
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
        (__make-promise __tmp155001)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords154860%_ _%ids154857154861%_ _%stx154863%_)
        (let ((_%ids154866%_
               (if (eq? _%ids154857154861%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids154857154861%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self154868%_
                  (let ((__obj154982
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154982
                       _%ids154866%_
                       '1
                       '#f
                       '#f))
                    __obj154982))
                 (__tmp155002
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154868%_ _%stx154863%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155002
             gxc#current-compile-method
             _%self154868%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords154875%_ . _%args154876%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords154875%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154875%_ 'ids: absent-value))
               _%args154876%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args154858154882%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args154858154882%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp155004 (list gxc#::collect-expression-refs::t))
            (__tmp155003 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp155004
         '()
         __tmp155003
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args154853%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args154853%_)))
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
      (let ((__tmp155005
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
        (__make-promise __tmp155005)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords154827%_ _%table154824154828%_ _%stx154830%_)
        (let ((_%table154833%_
               (if (eq? _%table154824154828%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table154824154828%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self154835%_
                  (let ((__obj154984
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154984
                       _%table154833%_
                       '1
                       '#f
                       '#f))
                    __obj154984))
                 (__tmp155006
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154835%_ _%stx154830%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155006
             gxc#current-compile-method
             _%self154835%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords154842%_ . _%args154843%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords154842%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154842%_
                  'table:
                  absent-value))
               _%args154843%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args154825154849%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args154825154849%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self154753%_ _%stx154754%_)
        (let* ((_%g154756154773%_
                (lambda (_%g154757154770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154757154770%_))))
               (_%g154755154820%_
                (lambda (_%g154757154776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154757154776%_))
                      (let ((_%e154760154778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154757154776%_))))
                        (let ((_%hd154761154781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154760154778%_)))
                              (_%tl154762154783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154760154778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154762154783%_))
                              (let ((_%e154763154786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154762154783%_))))
                                (let ((_%hd154764154789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154763154786%_)))
                                      (_%tl154765154791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154763154786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154765154791%_))
                                      (let ((_%e154766154794%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154765154791%_))))
                                        (let ((_%hd154767154797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154766154794%_)))
                                              (_%tl154768154799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154766154794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154768154799%_))
                                              ((lambda (_%L154802%_
                                                        _%L154803%_)
                                                 (let ((_%sym154818%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154803%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym154818%_))
                                                   (let ((__tmp155007
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp155007
                                                      _%sym154818%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154753%_
                                                      _%L154802%_))))
                                               _%hd154767154797%_
                                               _%hd154764154789%_)
                                              (_%g154756154773%_
                                               _%g154757154776%_))))
                                      (_%g154756154773%_ _%g154757154776%_))))
                              (_%g154756154773%_ _%g154757154776%_))))
                      (_%g154756154773%_ _%g154757154776%_)))))
          (_%g154755154820%_ _%stx154754%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self154701%_ _%stx154702%_)
        (let* ((_%g154704154717%_
                (lambda (_%g154705154714%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154705154714%_))))
               (_%g154703154750%_
                (lambda (_%g154705154720%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154705154720%_))
                      (let ((_%e154707154722%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154705154720%_))))
                        (let ((_%hd154708154725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154707154722%_)))
                              (_%tl154709154727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154707154722%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154709154727%_))
                              (let ((_%e154710154730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154709154727%_))))
                                (let ((_%hd154711154733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154710154730%_)))
                                      (_%tl154712154735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154710154730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154712154735%_))
                                      ((lambda (_%L154738%_)
                                         (if (let ((__tmp155008
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self154701%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154738%_
                                                __tmp155008))
                                             (let ((__tmp155009
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self154701%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155009
                                                _%stx154702%_))
                                             _%stx154702%_))
                                       _%hd154711154733%_)
                                      (_%g154704154717%_ _%g154705154720%_))))
                              (_%g154704154717%_ _%g154705154720%_))))
                      (_%g154704154717%_ _%g154705154720%_)))))
          (_%g154703154750%_ _%stx154702%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self154641%_ _%stx154642%_)
        (let* ((_%g154644154657%_
                (lambda (_%g154645154654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154645154654%_))))
               (_%g154643154698%_
                (lambda (_%g154645154660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154645154660%_))
                      (let ((_%e154647154662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154645154660%_))))
                        (let ((_%hd154648154665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154647154662%_)))
                              (_%tl154649154667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154647154662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154649154667%_))
                              (let ((_%e154650154670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154649154667%_))))
                                (let ((_%hd154651154673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154650154670%_)))
                                      (_%tl154652154675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154650154670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154652154675%_))
                                      ((lambda (_%L154678%_)
                                         (let ((_%$e154692%_
                                                (let ((__tmp155011
                                                       (lambda (_%sub154690%_)
                                                         (let ((__tmp155012
                                                                (car _%sub154690%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L154678%_
                                                            __tmp155012))))
                                                      (__tmp155010
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self154641%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp155011
                                                          __tmp155010))))
                                           (if _%$e154692%_
                                               ((lambda (_%sub154695%_)
                                                  (let ((__tmp155013
                                                         (cons '%#ref
                                                               (cons (cdr _%sub154695%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp155013
                                                     _%stx154642%_)))
                                                _%$e154692%_)
                                               _%stx154642%_)))
                                       _%hd154651154673%_)
                                      (_%g154644154657%_ _%g154645154660%_))))
                              (_%g154644154657%_ _%g154645154660%_))))
                      (_%g154644154657%_ _%g154645154660%_)))))
          (_%g154643154698%_ _%stx154642%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self154570%_ _%stx154571%_)
        (let* ((_%g154573154590%_
                (lambda (_%g154574154587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154574154587%_))))
               (_%g154572154638%_
                (lambda (_%g154574154593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154574154593%_))
                      (let ((_%e154577154595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154574154593%_))))
                        (let ((_%hd154578154598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154577154595%_)))
                              (_%tl154579154600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154577154595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154579154600%_))
                              (let ((_%e154580154603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154579154600%_))))
                                (let ((_%hd154581154606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154580154603%_)))
                                      (_%tl154582154608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154580154603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154582154608%_))
                                      (let ((_%e154583154611%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154582154608%_))))
                                        (let ((_%hd154584154614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154583154611%_)))
                                              (_%tl154585154616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154583154611%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154585154616%_))
                                              ((lambda (_%L154619%_
                                                        _%L154620%_)
                                                 (let ((_%new-expr154635%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154570%_
                                                           _%L154619%_)))
                                                       (_%new-xid154636%_
                                                        (if (let ((__tmp155014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self154570%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L154620%_ __tmp155014))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self154570%_ 'new-id))
                    _%L154620%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp155015
                                                          (cons '%#set!
                                                                (cons _%new-xid154636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154635%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155015
                                                      _%stx154571%_))))
                                               _%hd154584154614%_
                                               _%hd154581154606%_)
                                              (_%g154573154590%_
                                               _%g154574154593%_))))
                                      (_%g154573154590%_ _%g154574154593%_))))
                              (_%g154573154590%_ _%g154574154593%_))))
                      (_%g154573154590%_ _%g154574154593%_)))))
          (_%g154572154638%_ _%stx154571%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self154493%_ _%stx154494%_)
        (let* ((_%g154496154513%_
                (lambda (_%g154497154510%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154497154510%_))))
               (_%g154495154567%_
                (lambda (_%g154497154516%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154497154516%_))
                      (let ((_%e154500154518%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154497154516%_))))
                        (let ((_%hd154501154521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154500154518%_)))
                              (_%tl154502154523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154500154518%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154502154523%_))
                              (let ((_%e154503154526%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154502154523%_))))
                                (let ((_%hd154504154529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154503154526%_)))
                                      (_%tl154505154531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154503154526%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154505154531%_))
                                      (let ((_%e154506154534%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154505154531%_))))
                                        (let ((_%hd154507154537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154506154534%_)))
                                              (_%tl154508154539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154506154534%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154508154539%_))
                                              ((lambda (_%L154542%_
                                                        _%L154543%_)
                                                 (let ((_%new-expr154564%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154493%_
                                                           _%L154542%_)))
                                                       (_%new-xid154565%_
                                                        (let ((_%$e154560%_
                                                               (let ((__tmp155017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub154558%_)
                                (let ((__tmp155018 (car _%sub154558%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L154543%_
                                   __tmp155018))))
                             (__tmp155016
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self154493%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp155017 __tmp155016))))
                  (if _%$e154560%_ (cdr _%$e154560%_) _%L154543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp155019
                                                          (cons '%#set!
                                                                (cons _%new-xid154565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154564%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155019
                                                      _%stx154494%_))))
                                               _%hd154507154537%_
                                               _%hd154504154529%_)
                                              (_%g154496154513%_
                                               _%g154497154516%_))))
                                      (_%g154496154513%_ _%g154497154516%_))))
                              (_%g154496154513%_ _%g154497154516%_))))
                      (_%g154496154513%_ _%g154497154516%_)))))
          (_%g154495154567%_ _%stx154494%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self154439%_ _%stx154440%_)
        (let* ((_%g154442154455%_
                (lambda (_%g154443154452%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154443154452%_))))
               (_%g154441154490%_
                (lambda (_%g154443154458%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154443154458%_))
                      (let ((_%e154445154460%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154443154458%_))))
                        (let ((_%hd154446154463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154445154460%_)))
                              (_%tl154447154465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154445154460%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154447154465%_))
                              (let ((_%e154448154468%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154447154465%_))))
                                (let ((_%hd154449154471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154448154468%_)))
                                      (_%tl154450154473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154448154468%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154450154473%_))
                                      ((lambda (_%L154476%_)
                                         (let* ((_%eid154488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L154476%_)))
                                                (__tmp155020
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self154439%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp155020
                                            _%eid154488%_
                                            1+
                                            '0)))
                                       _%hd154449154471%_)
                                      (_%g154442154455%_ _%g154443154458%_))))
                              (_%g154442154455%_ _%g154443154458%_))))
                      (_%g154442154455%_ _%g154443154458%_)))))
          (_%g154441154490%_ _%stx154440%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self154369%_ _%stx154370%_)
        (let* ((_%g154372154389%_
                (lambda (_%g154373154386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154373154386%_))))
               (_%g154371154436%_
                (lambda (_%g154373154392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154373154392%_))
                      (let ((_%e154376154394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154373154392%_))))
                        (let ((_%hd154377154397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154376154394%_)))
                              (_%tl154378154399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154376154394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154378154399%_))
                              (let ((_%e154379154402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154378154399%_))))
                                (let ((_%hd154380154405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154379154402%_)))
                                      (_%tl154381154407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154379154402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154381154407%_))
                                      (let ((_%e154382154410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154381154407%_))))
                                        (let ((_%hd154383154413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154382154410%_)))
                                              (_%tl154384154415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154382154410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154384154415%_))
                                              ((lambda (_%L154418%_
                                                        _%L154419%_)
                                                 (let ((_%eid154434%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154419%_))))
                                                   (let ((__tmp155021
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self154369%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp155021
                                                      _%eid154434%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154369%_
                                                      _%L154418%_))))
                                               _%hd154383154413%_
                                               _%hd154380154405%_)
                                              (_%g154372154389%_
                                               _%g154373154392%_))))
                                      (_%g154372154389%_ _%g154373154392%_))))
                              (_%g154372154389%_ _%g154373154392%_))))
                      (_%g154372154389%_ _%g154373154392%_)))))
          (_%g154371154436%_ _%stx154370%_))))
    (define gxc#find-body%
      (lambda (_%self154282%_ _%stx154283%_)
        (let* ((_%g154285154304%_
                (lambda (_%g154286154301%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154286154301%_))))
               (_%g154284154366%_
                (lambda (_%g154286154307%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154286154307%_))
                      (let ((_%e154288154309%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154286154307%_))))
                        (let ((_%hd154289154312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154288154309%_)))
                              (_%tl154290154314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154288154309%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl154290154314%_))
                              (let ((_g155022_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl154290154314%_
                                        '0))))
                                (begin
                                  (let ((_g155023_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g155022_)
                                               (##values-length _g155022_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g155023_ 2)))
                                        (error "Context expects 2 values"
                                               _g155023_)))
                                  (let ((_%target154291154317%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g155022_ 0)))
                                        (_%tl154293154319%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g155022_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154293154319%_))
                                        (letrec ((_%loop154294154322%_
                                                  (lambda (_%hd154292154325%_
                                                           _%expr154298154327%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154292154325%_))
                                                        (let ((_%e154295154330%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154292154325%_))))
                  (let ((_%lp-hd154296154333%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154295154330%_)))
                        (_%lp-tl154297154335%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154295154330%_))))
                    (_%loop154294154322%_
                     _%lp-tl154297154335%_
                     (cons _%lp-hd154296154333%_ _%expr154298154327%_))))
                (let ((_%expr154299154338%_ (reverse _%expr154298154327%_)))
                  ((lambda (_%L154341%_)
                     (let ((__tmp155026
                            (lambda (_%g154354154356%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154282%_
                                 _%g154354154356%_))))
                           (__tmp155024
                            (let ((__tmp155025
                                   (lambda (_%g154358154361%_
                                            _%g154359154363%_)
                                     (cons _%g154358154361%_
                                           _%g154359154363%_))))
                              (declare (not safe))
                              (__foldr1 __tmp155025 '() _%L154341%_))))
                       (declare (not safe))
                       (__ormap1 __tmp155026 __tmp155024)))
                   _%expr154299154338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop154294154322%_
                                           _%target154291154317%_
                                           '()))
                                        (_%g154285154304%_
                                         _%g154286154307%_)))))
                              (_%g154285154304%_ _%g154286154307%_))))
                      (_%g154285154304%_ _%g154286154307%_)))))
          (_%g154284154366%_ _%stx154283%_))))
    (define gxc#find-let-values%
      (lambda (_%self154132%_ _%stx154133%_)
        (let* ((_%g154135154170%_
                (lambda (_%g154136154167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154136154167%_))))
               (_%g154134154279%_
                (lambda (_%g154136154173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154136154173%_))
                      (let ((_%e154140154175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154136154173%_))))
                        (let ((_%hd154141154178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154140154175%_)))
                              (_%tl154142154180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154140154175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154142154180%_))
                              (let ((_%e154143154183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154142154180%_))))
                                (let ((_%hd154144154186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154143154183%_)))
                                      (_%tl154145154188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154143154183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd154144154186%_))
                                      (let ((_g155027_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd154144154186%_
                                                '0))))
                                        (begin
                                          (let ((_g155028_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g155027_)
                                                       (##values-length
                                                        _g155027_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g155028_ 2)))
                                                (error "Context expects 2 values"
                                                       _g155028_)))
                                          (let ((_%target154146154191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g155027_ 0)))
                                                (_%tl154148154193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g155027_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154148154193%_))
                                                (letrec ((_%loop154149154196%_
                                                          (lambda (_%hd154147154199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr154153154201%_
                           _%bind154154154203%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154147154199%_))
                        (let ((_%e154150154206%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154147154199%_))))
                          (let ((_%lp-hd154151154209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154150154206%_)))
                                (_%lp-tl154152154211%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154150154206%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd154151154209%_))
                                (let ((_%e154160154214%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd154151154209%_))))
                                  (let ((_%hd154161154217%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154160154214%_)))
                                        (_%tl154162154219%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154160154214%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154162154219%_))
                                        (let ((_%e154163154222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154162154219%_))))
                                          (let ((_%hd154164154225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154163154222%_)))
                                                (_%tl154165154227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154163154222%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154165154227%_))
                                                (_%loop154149154196%_
                                                 _%lp-tl154152154211%_
                                                 (cons _%hd154164154225%_
                                                       _%expr154153154201%_)
                                                 (cons _%hd154161154217%_
                                                       _%bind154154154203%_))
                                                (_%g154135154170%_
                                                 _%g154136154173%_))))
                                        (_%g154135154170%_
                                         _%g154136154173%_))))
                                (_%g154135154170%_ _%g154136154173%_))))
                        (let ((_%expr154155154230%_
                               (reverse _%expr154153154201%_))
                              (_%bind154156154232%_
                               (reverse _%bind154154154203%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154145154188%_))
                              (let ((_%e154157154235%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154145154188%_))))
                                (let ((_%hd154158154238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154157154235%_)))
                                      (_%tl154159154240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154157154235%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154159154240%_))
                                      ((lambda (_%L154243%_
                                                _%L154244%_
                                                _%L154245%_)
                                         (let ((_%$e154276%_
                                                (let ((__tmp155031
                                                       (lambda (_%g154264154266%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self154132%_
                                                            _%g154264154266%_))))
                                                      (__tmp155029
                                                       (let ((__tmp155030
                                                              (lambda (_%g154268154271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g154269154273%_)
                        (cons _%g154268154271%_ _%g154269154273%_))))
                 (declare (not safe))
                 (__foldr1 __tmp155030 '() _%L154244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp155031
                                                   __tmp155029))))
                                           (if _%$e154276%_
                                               _%$e154276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self154132%_
                                                  _%L154243%_)))))
                                       _%hd154158154238%_
                                       _%expr154155154230%_
                                       _%bind154156154232%_)
                                      (_%g154135154170%_ _%g154136154173%_))))
                              (_%g154135154170%_ _%g154136154173%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop154149154196%_
                                                   _%target154146154191%_
                                                   '()
                                                   '()))
                                                (_%g154135154170%_
                                                 _%g154136154173%_)))))
                                      (_%g154135154170%_ _%g154136154173%_))))
                              (_%g154135154170%_ _%g154136154173%_))))
                      (_%g154135154170%_ _%g154136154173%_)))))
          (_%g154134154279%_ _%stx154133%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self154076%_ _%stx154077%_)
        (let* ((_%g154079154092%_
                (lambda (_%g154080154089%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154080154089%_))))
               (_%g154078154129%_
                (lambda (_%g154080154095%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154080154095%_))
                      (let ((_%e154082154097%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154080154095%_))))
                        (let ((_%hd154083154100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154082154097%_)))
                              (_%tl154084154102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154082154097%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154084154102%_))
                              (let ((_%e154085154105%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154084154102%_))))
                                (let ((_%hd154086154108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154085154105%_)))
                                      (_%tl154087154110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154085154105%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154087154110%_))
                                      ((lambda (_%L154113%_)
                                         (let ((__tmp155033
                                                (lambda (_%g154124154126%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154113%_
                                                     _%g154124154126%_))))
                                               (__tmp155032
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self154076%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp155033 __tmp155032)))
                                       _%hd154086154108%_)
                                      (_%g154079154092%_ _%g154080154095%_))))
                              (_%g154079154092%_ _%g154080154095%_))))
                      (_%g154079154092%_ _%g154080154095%_)))))
          (_%g154078154129%_ _%stx154077%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self154001%_ _%stx154002%_)
        (let* ((_%g154004154021%_
                (lambda (_%g154005154018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154005154018%_))))
               (_%g154003154073%_
                (lambda (_%g154005154024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154005154024%_))
                      (let ((_%e154008154026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154005154024%_))))
                        (let ((_%hd154009154029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154008154026%_)))
                              (_%tl154010154031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154008154026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154010154031%_))
                              (let ((_%e154011154034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154010154031%_))))
                                (let ((_%hd154012154037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154011154034%_)))
                                      (_%tl154013154039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154011154034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154013154039%_))
                                      (let ((_%e154014154042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154013154039%_))))
                                        (let ((_%hd154015154045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154014154042%_)))
                                              (_%tl154016154047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154014154042%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154016154047%_))
                                              ((lambda (_%L154050%_
                                                        _%L154051%_)
                                                 (let ((_%$e154070%_
                                                        (let ((__tmp155035
                                                               (lambda (_%g154065154067%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L154051%_
                            _%g154065154067%_))))
                      (__tmp155034
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self154001%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp155035 __tmp155034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e154070%_
                                                       _%$e154070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self154001%_
                                                          _%L154050%_)))))
                                               _%hd154015154045%_
                                               _%hd154012154037%_)
                                              (_%g154004154021%_
                                               _%g154005154024%_))))
                                      (_%g154004154021%_ _%g154005154024%_))))
                              (_%g154004154021%_ _%g154005154024%_))))
                      (_%g154004154021%_ _%g154005154024%_)))))
          (_%g154003154073%_ _%stx154002%_))))))
