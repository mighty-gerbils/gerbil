(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1742226234)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp155095 (list gxc#::void::t))
            (__tmp155094 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp155095
         '()
         __tmp155094
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args155081%_
        (apply make-instance gxc#::collect-mutators::t _%$args155081%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp155096
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
        (__make-promise __tmp155096)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx155073%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self155076%_
                (let ((__obj155084
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj155084))
               (__tmp155097
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155076%_ _%stx155073%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp155097
           gxc#current-compile-method
           _%self155076%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp155099 (list gxc#::basic-xform-expression::t))
            (__tmp155098 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp155099
         '(id new-id)
         __tmp155098
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args155070%_
        (apply make-instance gxc#::expression-subst::t _%$args155070%_)))
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
      (let ((__tmp155100
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
        (__make-promise __tmp155100)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords155040%_
               _%id155036155041%_
               _%new-id155037155043%_
               _%stx155045%_)
        (let* ((_%id155048%_
                (if (eq? _%id155036155041%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id155036155041%_))
               (_%new-id155050%_
                (if (eq? _%new-id155037155043%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id155037155043%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self155052%_
                  (let ((__obj155086
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155086
                       _%id155048%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155086
                       _%new-id155050%_
                       '2
                       '#f
                       '#f))
                    __obj155086))
                 (__tmp155101
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155052%_ _%stx155045%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155101
             gxc#current-compile-method
             _%self155052%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords155059%_ . _%args155060%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords155059%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155059%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155059%_
                  'new-id:
                  absent-value))
               _%args155060%_)))
    (define gxc#apply-expression-subst
      (lambda _%args155038155066%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args155038155066%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp155103 (list gxc#::basic-xform-expression::t))
            (__tmp155102 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp155103
         '(subst)
         __tmp155102
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args155032%_
        (apply make-instance gxc#::expression-subst*::t _%$args155032%_)))
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
      (let ((__tmp155104
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
        (__make-promise __tmp155104)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords155006%_ _%subst155003155007%_ _%stx155009%_)
        (let ((_%subst155012%_
               (if (eq? _%subst155003155007%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst155003155007%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self155014%_
                  (let ((__obj155088
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155088
                       _%subst155012%_
                       '1
                       '#f
                       '#f))
                    __obj155088))
                 (__tmp155105
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155014%_ _%stx155009%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155105
             gxc#current-compile-method
             _%self155014%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords155021%_ . _%args155022%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords155021%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155021%_
                  'subst:
                  absent-value))
               _%args155022%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args155004155028%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args155004155028%_)))
    (define gxc#::find-expression::t
      (let ((__tmp155106 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp155106
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args154999%_
        (apply make-instance gxc#::find-expression::t _%$args154999%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp155107
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
        (__make-promise __tmp155107)))
    (define gxc#::find-var-refs::t
      (let ((__tmp155109 (list gxc#::find-expression::t))
            (__tmp155108 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp155109
         '(ids)
         __tmp155108
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args154995%_
        (apply make-instance gxc#::find-var-refs::t _%$args154995%_)))
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
      (let ((__tmp155110
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
        (__make-promise __tmp155110)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords154969%_ _%ids154966154970%_ _%stx154972%_)
        (let ((_%ids154975%_
               (if (eq? _%ids154966154970%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids154966154970%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self154977%_
                  (let ((__obj155091
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155091
                       _%ids154975%_
                       '1
                       '#f
                       '#f))
                    __obj155091))
                 (__tmp155111
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154977%_ _%stx154972%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155111
             gxc#current-compile-method
             _%self154977%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords154984%_ . _%args154985%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords154984%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154984%_ 'ids: absent-value))
               _%args154985%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args154967154991%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args154967154991%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp155113 (list gxc#::collect-expression-refs::t))
            (__tmp155112 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp155113
         '()
         __tmp155112
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args154962%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args154962%_)))
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
      (let ((__tmp155114
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
        (__make-promise __tmp155114)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords154936%_ _%table154933154937%_ _%stx154939%_)
        (let ((_%table154942%_
               (if (eq? _%table154933154937%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table154933154937%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self154944%_
                  (let ((__obj155093
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj155093
                       _%table154942%_
                       '1
                       '#f
                       '#f))
                    __obj155093))
                 (__tmp155115
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154944%_ _%stx154939%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp155115
             gxc#current-compile-method
             _%self154944%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords154951%_ . _%args154952%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords154951%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154951%_
                  'table:
                  absent-value))
               _%args154952%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args154934154958%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args154934154958%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self154862%_ _%stx154863%_)
        (let* ((_%g154865154882%_
                (lambda (_%g154866154879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154866154879%_))))
               (_%g154864154929%_
                (lambda (_%g154866154885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154866154885%_))
                      (let ((_%e154869154887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154866154885%_))))
                        (let ((_%hd154870154890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154869154887%_)))
                              (_%tl154871154892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154869154887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154871154892%_))
                              (let ((_%e154872154895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154871154892%_))))
                                (let ((_%hd154873154898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154872154895%_)))
                                      (_%tl154874154900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154872154895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154874154900%_))
                                      (let ((_%e154875154903%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154874154900%_))))
                                        (let ((_%hd154876154906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154875154903%_)))
                                              (_%tl154877154908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154875154903%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154877154908%_))
                                              ((lambda (_%L154911%_
                                                        _%L154912%_)
                                                 (let ((_%sym154927%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154912%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym154927%_))
                                                   (let ((__tmp155116
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp155116
                                                      _%sym154927%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154862%_
                                                      _%L154911%_))))
                                               _%hd154876154906%_
                                               _%hd154873154898%_)
                                              (_%g154865154882%_
                                               _%g154866154885%_))))
                                      (_%g154865154882%_ _%g154866154885%_))))
                              (_%g154865154882%_ _%g154866154885%_))))
                      (_%g154865154882%_ _%g154866154885%_)))))
          (_%g154864154929%_ _%stx154863%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self154810%_ _%stx154811%_)
        (let* ((_%g154813154826%_
                (lambda (_%g154814154823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154814154823%_))))
               (_%g154812154859%_
                (lambda (_%g154814154829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154814154829%_))
                      (let ((_%e154816154831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154814154829%_))))
                        (let ((_%hd154817154834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154816154831%_)))
                              (_%tl154818154836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154816154831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154818154836%_))
                              (let ((_%e154819154839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154818154836%_))))
                                (let ((_%hd154820154842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154819154839%_)))
                                      (_%tl154821154844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154819154839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154821154844%_))
                                      ((lambda (_%L154847%_)
                                         (if (let ((__tmp155117
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self154810%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154847%_
                                                __tmp155117))
                                             (let ((__tmp155118
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self154810%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155118
                                                _%stx154811%_))
                                             _%stx154811%_))
                                       _%hd154820154842%_)
                                      (_%g154813154826%_ _%g154814154829%_))))
                              (_%g154813154826%_ _%g154814154829%_))))
                      (_%g154813154826%_ _%g154814154829%_)))))
          (_%g154812154859%_ _%stx154811%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self154750%_ _%stx154751%_)
        (let* ((_%g154753154766%_
                (lambda (_%g154754154763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154754154763%_))))
               (_%g154752154807%_
                (lambda (_%g154754154769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154754154769%_))
                      (let ((_%e154756154771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154754154769%_))))
                        (let ((_%hd154757154774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154756154771%_)))
                              (_%tl154758154776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154756154771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154758154776%_))
                              (let ((_%e154759154779%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154758154776%_))))
                                (let ((_%hd154760154782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154759154779%_)))
                                      (_%tl154761154784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154759154779%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154761154784%_))
                                      ((lambda (_%L154787%_)
                                         (let ((_%$e154801%_
                                                (let ((__tmp155120
                                                       (lambda (_%sub154799%_)
                                                         (let ((__tmp155121
                                                                (car _%sub154799%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L154787%_
                                                            __tmp155121))))
                                                      (__tmp155119
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self154750%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp155120
                                                          __tmp155119))))
                                           (if _%$e154801%_
                                               ((lambda (_%sub154804%_)
                                                  (let ((__tmp155122
                                                         (cons '%#ref
                                                               (cons (cdr _%sub154804%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp155122
                                                     _%stx154751%_)))
                                                _%$e154801%_)
                                               _%stx154751%_)))
                                       _%hd154760154782%_)
                                      (_%g154753154766%_ _%g154754154769%_))))
                              (_%g154753154766%_ _%g154754154769%_))))
                      (_%g154753154766%_ _%g154754154769%_)))))
          (_%g154752154807%_ _%stx154751%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self154679%_ _%stx154680%_)
        (let* ((_%g154682154699%_
                (lambda (_%g154683154696%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154683154696%_))))
               (_%g154681154747%_
                (lambda (_%g154683154702%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154683154702%_))
                      (let ((_%e154686154704%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154683154702%_))))
                        (let ((_%hd154687154707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154686154704%_)))
                              (_%tl154688154709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154686154704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154688154709%_))
                              (let ((_%e154689154712%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154688154709%_))))
                                (let ((_%hd154690154715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154689154712%_)))
                                      (_%tl154691154717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154689154712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154691154717%_))
                                      (let ((_%e154692154720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154691154717%_))))
                                        (let ((_%hd154693154723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154692154720%_)))
                                              (_%tl154694154725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154692154720%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154694154725%_))
                                              ((lambda (_%L154728%_
                                                        _%L154729%_)
                                                 (let ((_%new-expr154744%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154679%_
                                                           _%L154728%_)))
                                                       (_%new-xid154745%_
                                                        (if (let ((__tmp155123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self154679%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L154729%_ __tmp155123))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self154679%_ 'new-id))
                    _%L154729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp155124
                                                          (cons '%#set!
                                                                (cons _%new-xid154745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154744%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155124
                                                      _%stx154680%_))))
                                               _%hd154693154723%_
                                               _%hd154690154715%_)
                                              (_%g154682154699%_
                                               _%g154683154702%_))))
                                      (_%g154682154699%_ _%g154683154702%_))))
                              (_%g154682154699%_ _%g154683154702%_))))
                      (_%g154682154699%_ _%g154683154702%_)))))
          (_%g154681154747%_ _%stx154680%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self154602%_ _%stx154603%_)
        (let* ((_%g154605154622%_
                (lambda (_%g154606154619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154606154619%_))))
               (_%g154604154676%_
                (lambda (_%g154606154625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154606154625%_))
                      (let ((_%e154609154627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154606154625%_))))
                        (let ((_%hd154610154630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154609154627%_)))
                              (_%tl154611154632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154609154627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154611154632%_))
                              (let ((_%e154612154635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154611154632%_))))
                                (let ((_%hd154613154638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154612154635%_)))
                                      (_%tl154614154640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154612154635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154614154640%_))
                                      (let ((_%e154615154643%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154614154640%_))))
                                        (let ((_%hd154616154646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154615154643%_)))
                                              (_%tl154617154648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154615154643%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154617154648%_))
                                              ((lambda (_%L154651%_
                                                        _%L154652%_)
                                                 (let ((_%new-expr154673%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154602%_
                                                           _%L154651%_)))
                                                       (_%new-xid154674%_
                                                        (let ((_%$e154669%_
                                                               (let ((__tmp155126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub154667%_)
                                (let ((__tmp155127 (car _%sub154667%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L154652%_
                                   __tmp155127))))
                             (__tmp155125
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self154602%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp155126 __tmp155125))))
                  (if _%$e154669%_ (cdr _%$e154669%_) _%L154652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp155128
                                                          (cons '%#set!
                                                                (cons _%new-xid154674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154673%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155128
                                                      _%stx154603%_))))
                                               _%hd154616154646%_
                                               _%hd154613154638%_)
                                              (_%g154605154622%_
                                               _%g154606154625%_))))
                                      (_%g154605154622%_ _%g154606154625%_))))
                              (_%g154605154622%_ _%g154606154625%_))))
                      (_%g154605154622%_ _%g154606154625%_)))))
          (_%g154604154676%_ _%stx154603%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self154548%_ _%stx154549%_)
        (let* ((_%g154551154564%_
                (lambda (_%g154552154561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154552154561%_))))
               (_%g154550154599%_
                (lambda (_%g154552154567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154552154567%_))
                      (let ((_%e154554154569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154552154567%_))))
                        (let ((_%hd154555154572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154554154569%_)))
                              (_%tl154556154574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154554154569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154556154574%_))
                              (let ((_%e154557154577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154556154574%_))))
                                (let ((_%hd154558154580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154557154577%_)))
                                      (_%tl154559154582%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154557154577%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154559154582%_))
                                      ((lambda (_%L154585%_)
                                         (let* ((_%eid154597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L154585%_)))
                                                (__tmp155129
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self154548%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp155129
                                            _%eid154597%_
                                            1+
                                            '0)))
                                       _%hd154558154580%_)
                                      (_%g154551154564%_ _%g154552154567%_))))
                              (_%g154551154564%_ _%g154552154567%_))))
                      (_%g154551154564%_ _%g154552154567%_)))))
          (_%g154550154599%_ _%stx154549%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self154478%_ _%stx154479%_)
        (let* ((_%g154481154498%_
                (lambda (_%g154482154495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154482154495%_))))
               (_%g154480154545%_
                (lambda (_%g154482154501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154482154501%_))
                      (let ((_%e154485154503%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154482154501%_))))
                        (let ((_%hd154486154506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154485154503%_)))
                              (_%tl154487154508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154485154503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154487154508%_))
                              (let ((_%e154488154511%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154487154508%_))))
                                (let ((_%hd154489154514%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154488154511%_)))
                                      (_%tl154490154516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154488154511%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154490154516%_))
                                      (let ((_%e154491154519%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154490154516%_))))
                                        (let ((_%hd154492154522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154491154519%_)))
                                              (_%tl154493154524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154491154519%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154493154524%_))
                                              ((lambda (_%L154527%_
                                                        _%L154528%_)
                                                 (let ((_%eid154543%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154528%_))))
                                                   (let ((__tmp155130
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self154478%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp155130
                                                      _%eid154543%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154478%_
                                                      _%L154527%_))))
                                               _%hd154492154522%_
                                               _%hd154489154514%_)
                                              (_%g154481154498%_
                                               _%g154482154501%_))))
                                      (_%g154481154498%_ _%g154482154501%_))))
                              (_%g154481154498%_ _%g154482154501%_))))
                      (_%g154481154498%_ _%g154482154501%_)))))
          (_%g154480154545%_ _%stx154479%_))))
    (define gxc#find-body%
      (lambda (_%self154391%_ _%stx154392%_)
        (let* ((_%g154394154413%_
                (lambda (_%g154395154410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154395154410%_))))
               (_%g154393154475%_
                (lambda (_%g154395154416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154395154416%_))
                      (let ((_%e154397154418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154395154416%_))))
                        (let ((_%hd154398154421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154397154418%_)))
                              (_%tl154399154423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154397154418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl154399154423%_))
                              (let ((_g155131_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl154399154423%_
                                        '0))))
                                (begin
                                  (let ((_g155132_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g155131_)
                                               (##values-length _g155131_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g155132_ 2)))
                                        (error "Context expects 2 values"
                                               _g155132_)))
                                  (let ((_%target154400154426%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g155131_ 0)))
                                        (_%tl154402154428%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g155131_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154402154428%_))
                                        (letrec ((_%loop154403154431%_
                                                  (lambda (_%hd154401154434%_
                                                           _%expr154407154436%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154401154434%_))
                                                        (let ((_%e154404154439%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154401154434%_))))
                  (let ((_%lp-hd154405154442%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154404154439%_)))
                        (_%lp-tl154406154444%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154404154439%_))))
                    (_%loop154403154431%_
                     _%lp-tl154406154444%_
                     (cons _%lp-hd154405154442%_ _%expr154407154436%_))))
                (let ((_%expr154408154447%_ (reverse _%expr154407154436%_)))
                  ((lambda (_%L154450%_)
                     (let ((__tmp155135
                            (lambda (_%g154463154465%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154391%_
                                 _%g154463154465%_))))
                           (__tmp155133
                            (let ((__tmp155134
                                   (lambda (_%g154467154470%_
                                            _%g154468154472%_)
                                     (cons _%g154467154470%_
                                           _%g154468154472%_))))
                              (declare (not safe))
                              (__foldr1 __tmp155134 '() _%L154450%_))))
                       (declare (not safe))
                       (__ormap1 __tmp155135 __tmp155133)))
                   _%expr154408154447%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop154403154431%_
                                           _%target154400154426%_
                                           '()))
                                        (_%g154394154413%_
                                         _%g154395154416%_)))))
                              (_%g154394154413%_ _%g154395154416%_))))
                      (_%g154394154413%_ _%g154395154416%_)))))
          (_%g154393154475%_ _%stx154392%_))))
    (define gxc#find-let-values%
      (lambda (_%self154241%_ _%stx154242%_)
        (let* ((_%g154244154279%_
                (lambda (_%g154245154276%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154245154276%_))))
               (_%g154243154388%_
                (lambda (_%g154245154282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154245154282%_))
                      (let ((_%e154249154284%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154245154282%_))))
                        (let ((_%hd154250154287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154249154284%_)))
                              (_%tl154251154289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154249154284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154251154289%_))
                              (let ((_%e154252154292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154251154289%_))))
                                (let ((_%hd154253154295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154252154292%_)))
                                      (_%tl154254154297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154252154292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd154253154295%_))
                                      (let ((_g155136_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd154253154295%_
                                                '0))))
                                        (begin
                                          (let ((_g155137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g155136_)
                                                       (##values-length
                                                        _g155136_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g155137_ 2)))
                                                (error "Context expects 2 values"
                                                       _g155137_)))
                                          (let ((_%target154255154300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g155136_ 0)))
                                                (_%tl154257154302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g155136_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154257154302%_))
                                                (letrec ((_%loop154258154305%_
                                                          (lambda (_%hd154256154308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr154262154310%_
                           _%bind154263154312%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154256154308%_))
                        (let ((_%e154259154315%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154256154308%_))))
                          (let ((_%lp-hd154260154318%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154259154315%_)))
                                (_%lp-tl154261154320%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154259154315%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd154260154318%_))
                                (let ((_%e154269154323%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd154260154318%_))))
                                  (let ((_%hd154270154326%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154269154323%_)))
                                        (_%tl154271154328%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154269154323%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154271154328%_))
                                        (let ((_%e154272154331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154271154328%_))))
                                          (let ((_%hd154273154334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154272154331%_)))
                                                (_%tl154274154336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154272154331%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154274154336%_))
                                                (_%loop154258154305%_
                                                 _%lp-tl154261154320%_
                                                 (cons _%hd154273154334%_
                                                       _%expr154262154310%_)
                                                 (cons _%hd154270154326%_
                                                       _%bind154263154312%_))
                                                (_%g154244154279%_
                                                 _%g154245154282%_))))
                                        (_%g154244154279%_
                                         _%g154245154282%_))))
                                (_%g154244154279%_ _%g154245154282%_))))
                        (let ((_%expr154264154339%_
                               (reverse _%expr154262154310%_))
                              (_%bind154265154341%_
                               (reverse _%bind154263154312%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154254154297%_))
                              (let ((_%e154266154344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154254154297%_))))
                                (let ((_%hd154267154347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154266154344%_)))
                                      (_%tl154268154349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154266154344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154268154349%_))
                                      ((lambda (_%L154352%_
                                                _%L154353%_
                                                _%L154354%_)
                                         (let ((_%$e154385%_
                                                (let ((__tmp155140
                                                       (lambda (_%g154373154375%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self154241%_
                                                            _%g154373154375%_))))
                                                      (__tmp155138
                                                       (let ((__tmp155139
                                                              (lambda (_%g154377154380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g154378154382%_)
                        (cons _%g154377154380%_ _%g154378154382%_))))
                 (declare (not safe))
                 (__foldr1 __tmp155139 '() _%L154353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp155140
                                                   __tmp155138))))
                                           (if _%$e154385%_
                                               _%$e154385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self154241%_
                                                  _%L154352%_)))))
                                       _%hd154267154347%_
                                       _%expr154264154339%_
                                       _%bind154265154341%_)
                                      (_%g154244154279%_ _%g154245154282%_))))
                              (_%g154244154279%_ _%g154245154282%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop154258154305%_
                                                   _%target154255154300%_
                                                   '()
                                                   '()))
                                                (_%g154244154279%_
                                                 _%g154245154282%_)))))
                                      (_%g154244154279%_ _%g154245154282%_))))
                              (_%g154244154279%_ _%g154245154282%_))))
                      (_%g154244154279%_ _%g154245154282%_)))))
          (_%g154243154388%_ _%stx154242%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self154185%_ _%stx154186%_)
        (let* ((_%g154188154201%_
                (lambda (_%g154189154198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154189154198%_))))
               (_%g154187154238%_
                (lambda (_%g154189154204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154189154204%_))
                      (let ((_%e154191154206%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154189154204%_))))
                        (let ((_%hd154192154209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154191154206%_)))
                              (_%tl154193154211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154191154206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154193154211%_))
                              (let ((_%e154194154214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154193154211%_))))
                                (let ((_%hd154195154217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154194154214%_)))
                                      (_%tl154196154219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154194154214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154196154219%_))
                                      ((lambda (_%L154222%_)
                                         (let ((__tmp155142
                                                (lambda (_%g154233154235%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154222%_
                                                     _%g154233154235%_))))
                                               (__tmp155141
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self154185%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp155142 __tmp155141)))
                                       _%hd154195154217%_)
                                      (_%g154188154201%_ _%g154189154204%_))))
                              (_%g154188154201%_ _%g154189154204%_))))
                      (_%g154188154201%_ _%g154189154204%_)))))
          (_%g154187154238%_ _%stx154186%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self154110%_ _%stx154111%_)
        (let* ((_%g154113154130%_
                (lambda (_%g154114154127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154114154127%_))))
               (_%g154112154182%_
                (lambda (_%g154114154133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154114154133%_))
                      (let ((_%e154117154135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154114154133%_))))
                        (let ((_%hd154118154138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154117154135%_)))
                              (_%tl154119154140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154117154135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154119154140%_))
                              (let ((_%e154120154143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154119154140%_))))
                                (let ((_%hd154121154146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154120154143%_)))
                                      (_%tl154122154148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154120154143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154122154148%_))
                                      (let ((_%e154123154151%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154122154148%_))))
                                        (let ((_%hd154124154154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154123154151%_)))
                                              (_%tl154125154156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154123154151%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154125154156%_))
                                              ((lambda (_%L154159%_
                                                        _%L154160%_)
                                                 (let ((_%$e154179%_
                                                        (let ((__tmp155144
                                                               (lambda (_%g154174154176%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L154160%_
                            _%g154174154176%_))))
                      (__tmp155143
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self154110%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp155144 __tmp155143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e154179%_
                                                       _%$e154179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self154110%_
                                                          _%L154159%_)))))
                                               _%hd154124154154%_
                                               _%hd154121154146%_)
                                              (_%g154113154130%_
                                               _%g154114154133%_))))
                                      (_%g154113154130%_ _%g154114154133%_))))
                              (_%g154113154130%_ _%g154114154133%_))))
                      (_%g154113154130%_ _%g154114154133%_)))))
          (_%g154112154182%_ _%stx154111%_))))))
