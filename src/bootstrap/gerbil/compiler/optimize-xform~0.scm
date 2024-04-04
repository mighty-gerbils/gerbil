(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712246557)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151132 (list gxc#::void::t))
            (__tmp151131 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151132
         '()
         __tmp151131
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150872%_
        (apply make-instance gxc#::collect-mutators::t _%$args150872%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151133
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
        (__make-promise __tmp151133)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150864%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150867%_
                (let ((__obj151119
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151119))
               (__tmp151134
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150867%_ _%stx150864%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151134
           gxc#current-compile-method
           _%self150867%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp151136 (list gxc#::void::t))
            (__tmp151135 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp151136
         '()
         __tmp151135
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150861%_
        (apply make-instance gxc#::collect-methods::t _%$args150861%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp151137
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
        (__make-promise __tmp151137)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150853%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150856%_
                (let ((__obj151121
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj151121))
               (__tmp151138
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150856%_ _%stx150853%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151138
           gxc#current-compile-method
           _%self150856%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151140 (list gxc#::basic-xform-expression::t))
            (__tmp151139 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151140
         '(id new-id)
         __tmp151139
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150850%_
        (apply make-instance gxc#::expression-subst::t _%$args150850%_)))
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
      (let ((__tmp151141
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
        (__make-promise __tmp151141)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150820%_
               _%id150816150821%_
               _%new-id150817150823%_
               _%stx150825%_)
        (let* ((_%id150828%_
                (if (eq? _%id150816150821%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150816150821%_))
               (_%new-id150830%_
                (if (eq? _%new-id150817150823%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150817150823%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150832%_
                  (let ((__obj151123
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151123
                       _%id150828%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151123
                       _%new-id150830%_
                       '2
                       '#f
                       '#f))
                    __obj151123))
                 (__tmp151142
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150832%_ _%stx150825%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151142
             gxc#current-compile-method
             _%self150832%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150839%_ . _%args150840%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150839%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150839%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150839%_
                  'new-id:
                  absent-value))
               _%args150840%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150818150846%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150818150846%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151144 (list gxc#::basic-xform-expression::t))
            (__tmp151143 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151144
         '(subst)
         __tmp151143
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150812%_
        (apply make-instance gxc#::expression-subst*::t _%$args150812%_)))
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
      (let ((__tmp151145
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
        (__make-promise __tmp151145)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150786%_ _%subst150783150787%_ _%stx150789%_)
        (let ((_%subst150792%_
               (if (eq? _%subst150783150787%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150783150787%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150794%_
                  (let ((__obj151125
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151125
                       _%subst150792%_
                       '1
                       '#f
                       '#f))
                    __obj151125))
                 (__tmp151146
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150794%_ _%stx150789%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151146
             gxc#current-compile-method
             _%self150794%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150801%_ . _%args150802%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150801%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150801%_
                  'subst:
                  absent-value))
               _%args150802%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150784150808%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150784150808%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151147 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151147
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150779%_
        (apply make-instance gxc#::find-expression::t _%$args150779%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151148
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
        (__make-promise __tmp151148)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151150 (list gxc#::find-expression::t))
            (__tmp151149 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151150
         '(ids)
         __tmp151149
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150775%_
        (apply make-instance gxc#::find-var-refs::t _%$args150775%_)))
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
      (let ((__tmp151151
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
        (__make-promise __tmp151151)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150749%_ _%ids150746150750%_ _%stx150752%_)
        (let ((_%ids150755%_
               (if (eq? _%ids150746150750%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150746150750%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150757%_
                  (let ((__obj151128
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151128
                       _%ids150755%_
                       '1
                       '#f
                       '#f))
                    __obj151128))
                 (__tmp151152
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150757%_ _%stx150752%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151152
             gxc#current-compile-method
             _%self150757%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150764%_ . _%args150765%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150764%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150764%_ 'ids: absent-value))
               _%args150765%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150747150771%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150747150771%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151154 (list gxc#::collect-expression-refs::t))
            (__tmp151153 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151154
         '()
         __tmp151153
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150742%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150742%_)))
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
      (let ((__tmp151155
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
        (__make-promise __tmp151155)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150716%_ _%table150713150717%_ _%stx150719%_)
        (let ((_%table150722%_
               (if (eq? _%table150713150717%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150713150717%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150724%_
                  (let ((__obj151130
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151130
                       _%table150722%_
                       '1
                       '#f
                       '#f))
                    __obj151130))
                 (__tmp151156
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150724%_ _%stx150719%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151156
             gxc#current-compile-method
             _%self150724%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150731%_ . _%args150732%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150731%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150731%_
                  'table:
                  absent-value))
               _%args150732%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150714150738%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150714150738%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150642%_ _%stx150643%_)
        (let* ((_%g150645150662%_
                (lambda (_%g150646150659%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150646150659%_))))
               (_%g150644150709%_
                (lambda (_%g150646150665%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150646150665%_))
                      (let ((_%e150651150667%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150646150665%_))))
                        (let ((_%hd150650150670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150651150667%_)))
                              (_%tl150649150672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150651150667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150649150672%_))
                              (let ((_%e150654150675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150649150672%_))))
                                (let ((_%hd150653150678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150654150675%_)))
                                      (_%tl150652150680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150654150675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150652150680%_))
                                      (let ((_%e150657150683%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150652150680%_))))
                                        (let ((_%hd150656150686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150657150683%_)))
                                              (_%tl150655150688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150657150683%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150655150688%_))
                                              ((lambda (_%L150691%_
                                                        _%L150692%_)
                                                 (let ((_%sym150707%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150692%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150707%_))
                                                   (let ((__tmp151157
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151157
                                                      _%sym150707%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150642%_
                                                      _%L150691%_))))
                                               _%hd150656150686%_
                                               _%hd150653150678%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150645150662%_
                                                 _%g150646150665%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150645150662%_
                                         _%g150646150665%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150645150662%_ _%g150646150665%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150645150662%_ _%g150646150665%_))))))
          (declare (not safe))
          (_%g150644150709%_ _%stx150643%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self150195%_ _%stx150196%_)
        (let* ((_%__stx150875150876%_ _%stx150196%_)
               (_%g150200150302%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150875150876%_)))))
          (let ((_%__kont150877150878%_
                 (lambda (_%L150592%_
                          _%L150593%_
                          _%L150594%_
                          _%L150595%_
                          _%L150596%_)
                   (let ((__tmp151158
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150593%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151158))))
                (_%__kont150879150880%_
                 (lambda (_%L150418%_ _%L150419%_ _%L150420%_ _%L150421%_)
                   (let ((__tmp151159
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150418%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151159))))
                (_%__kont150881150882%_ (lambda () '#!void)))
            (let ((_%__match151010151011%_
                   (lambda (_%e150209150464%_
                            _%hd150208150467%_
                            _%tl150207150469%_
                            _%e150212150472%_
                            _%hd150211150475%_
                            _%tl150210150477%_
                            _%e150215150480%_
                            _%hd150214150483%_
                            _%tl150213150485%_
                            _%e150218150488%_
                            _%hd150217150491%_
                            _%tl150216150493%_
                            _%e150221150496%_
                            _%hd150220150499%_
                            _%tl150219150501%_
                            _%e150224150504%_
                            _%hd150223150507%_
                            _%tl150222150509%_
                            _%e150227150512%_
                            _%hd150226150515%_
                            _%tl150225150517%_
                            _%e150230150520%_
                            _%hd150229150523%_
                            _%tl150228150525%_
                            _%e150233150528%_
                            _%hd150232150531%_
                            _%tl150231150533%_
                            _%e150236150536%_
                            _%hd150235150539%_
                            _%tl150234150541%_
                            _%e150239150544%_
                            _%hd150238150547%_
                            _%tl150237150549%_
                            _%e150242150552%_
                            _%hd150241150555%_
                            _%tl150240150557%_
                            _%e150245150560%_
                            _%hd150244150563%_
                            _%tl150243150565%_
                            _%e150248150568%_
                            _%hd150247150571%_
                            _%tl150246150573%_
                            _%e150251150576%_
                            _%hd150250150579%_
                            _%tl150249150581%_
                            _%e150254150584%_
                            _%hd150253150587%_
                            _%tl150252150589%_)
                     (let ((_%L150592%_ _%hd150253150587%_)
                           (_%L150593%_ _%hd150244150563%_)
                           (_%L150594%_ _%hd150235150539%_)
                           (_%L150595%_ _%hd150226150515%_)
                           (_%L150596%_ _%hd150217150491%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L150596%_
                              'bind-method!))
                           (_%__kont150877150878%_
                            _%L150592%_
                            _%L150593%_
                            _%L150594%_
                            _%L150595%_
                            _%L150596%_)
                           (_%__kont150881150882%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150875150876%_))
                  (let ((_%e150209150464%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150875150876%_))))
                    (let ((_%tl150207150469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150209150464%_)))
                          (_%hd150208150467%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150209150464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150207150469%_))
                          (let ((_%e150212150472%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150207150469%_))))
                            (let ((_%tl150210150477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150212150472%_)))
                                  (_%hd150211150475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150212150472%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150211150475%_))
                                  (let ((_%e150215150480%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150211150475%_))))
                                    (let ((_%tl150213150485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150215150480%_)))
                                          (_%hd150214150483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150215150480%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150214150483%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150214150483%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150213150485%_))
                                                  (let ((_%e150218150488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150213150485%_))))
                                                    (let ((_%tl150216150493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150218150488%_)))
                                                          (_%hd150217150491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150218150488%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150216150493%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl150210150477%_))
                      (let ((_%e150221150496%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl150210150477%_))))
                        (let ((_%tl150219150501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150221150496%_)))
                              (_%hd150220150499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150221150496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd150220150499%_))
                              (let ((_%e150224150504%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd150220150499%_))))
                                (let ((_%tl150222150509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150224150504%_)))
                                      (_%hd150223150507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150224150504%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd150223150507%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd150223150507%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150222150509%_))
                                              (let ((_%e150227150512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150222150509%_))))
                                                (let ((_%tl150225150517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150227150512%_)))
                                                      (_%hd150226150515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150227150512%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150225150517%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl150219150501%_))
                                                          (let ((_%e150230150520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl150219150501%_))))
                    (let ((_%tl150228150525%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150230150520%_)))
                          (_%hd150229150523%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150230150520%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150229150523%_))
                          (let ((_%e150233150528%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150229150523%_))))
                            (let ((_%tl150231150533%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150233150528%_)))
                                  (_%hd150232150531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150233150528%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd150232150531%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd150232150531%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl150231150533%_))
                                          (let ((_%e150236150536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl150231150533%_))))
                                            (let ((_%tl150234150541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e150236150536%_)))
                                                  (_%hd150235150539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e150236150536%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150234150541%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl150228150525%_))
                                                      (let ((_%e150239150544%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl150228150525%_))))
                (let ((_%tl150237150549%_
                       (let () (declare (not safe)) (##cdr _%e150239150544%_)))
                      (_%hd150238150547%_
                       (let ()
                         (declare (not safe))
                         (##car _%e150239150544%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd150238150547%_))
                      (let ((_%e150242150552%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd150238150547%_))))
                        (let ((_%tl150240150557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150242150552%_)))
                              (_%hd150241150555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150242150552%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd150241150555%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd150241150555%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150240150557%_))
                                      (let ((_%e150245150560%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150240150557%_))))
                                        (let ((_%tl150243150565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150245150560%_)))
                                              (_%hd150244150563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150245150560%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150243150565%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150237150549%_))
                                                  (let ((_%e150248150568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150237150549%_))))
                                                    (let ((_%tl150246150573%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150248150568%_)))
                                                          (_%hd150247150571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150248150568%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd150247150571%_))
                                                          (let ((_%e150251150576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd150247150571%_))))
                    (let ((_%tl150249150581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150251150576%_)))
                          (_%hd150250150579%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150251150576%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd150250150579%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd150250150579%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl150249150581%_))
                                  (let ((_%e150254150584%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl150249150581%_))))
                                    (let ((_%tl150252150589%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150254150584%_)))
                                          (_%hd150253150587%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150254150584%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl150252150589%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150246150573%_))
                                              (_%__match151010151011%_
                                               _%e150209150464%_
                                               _%hd150208150467%_
                                               _%tl150207150469%_
                                               _%e150212150472%_
                                               _%hd150211150475%_
                                               _%tl150210150477%_
                                               _%e150215150480%_
                                               _%hd150214150483%_
                                               _%tl150213150485%_
                                               _%e150218150488%_
                                               _%hd150217150491%_
                                               _%tl150216150493%_
                                               _%e150221150496%_
                                               _%hd150220150499%_
                                               _%tl150219150501%_
                                               _%e150224150504%_
                                               _%hd150223150507%_
                                               _%tl150222150509%_
                                               _%e150227150512%_
                                               _%hd150226150515%_
                                               _%tl150225150517%_
                                               _%e150230150520%_
                                               _%hd150229150523%_
                                               _%tl150228150525%_
                                               _%e150233150528%_
                                               _%hd150232150531%_
                                               _%tl150231150533%_
                                               _%e150236150536%_
                                               _%hd150235150539%_
                                               _%tl150234150541%_
                                               _%e150239150544%_
                                               _%hd150238150547%_
                                               _%tl150237150549%_
                                               _%e150242150552%_
                                               _%hd150241150555%_
                                               _%tl150240150557%_
                                               _%e150245150560%_
                                               _%hd150244150563%_
                                               _%tl150243150565%_
                                               _%e150248150568%_
                                               _%hd150247150571%_
                                               _%tl150246150573%_
                                               _%e150251150576%_
                                               _%hd150250150579%_
                                               _%tl150249150581%_
                                               _%e150254150584%_
                                               _%hd150253150587%_
                                               _%tl150252150589%_)
                                              (_%__kont150881150882%_))
                                          (_%__kont150881150882%_))))
                                  (_%__kont150881150882%_))
                              (_%__kont150881150882%_))
                          (_%__kont150881150882%_))))
                  (_%__kont150881150882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150237150549%_))
                                                      (if (let ((__tmp151160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp151160 'bind-method!))
                  (let ((_%L150418%_ _%hd150244150563%_)
                        (_%L150419%_ _%hd150235150539%_)
                        (_%L150420%_ _%hd150226150515%_)
                        (_%L150421%_ _%hd150217150491%_))
                    (_%__kont150879150880%_
                     _%L150418%_
                     _%L150419%_
                     _%L150420%_
                     _%L150421%_))
                  (_%__kont150881150882%_))
              (_%__kont150881150882%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150881150882%_))))
                                      (_%__kont150881150882%_))
                                  (_%__kont150881150882%_))
                              (_%__kont150881150882%_))))
                      (_%__kont150881150882%_))))
              (_%__kont150881150882%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150881150882%_))))
                                          (_%__kont150881150882%_))
                                      (_%__kont150881150882%_))
                                  (_%__kont150881150882%_))))
                          (_%__kont150881150882%_))))
                  (_%__kont150881150882%_))
              (_%__kont150881150882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150881150882%_))
                                          (_%__kont150881150882%_))
                                      (_%__kont150881150882%_))))
                              (_%__kont150881150882%_))))
                      (_%__kont150881150882%_))
                  (_%__kont150881150882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150881150882%_))
                                              (_%__kont150881150882%_))
                                          (_%__kont150881150882%_))))
                                  (_%__kont150881150882%_))))
                          (_%__kont150881150882%_))))
                  (_%__kont150881150882%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self150143%_ _%stx150144%_)
        (let* ((_%g150146150159%_
                (lambda (_%g150147150156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150147150156%_))))
               (_%g150145150192%_
                (lambda (_%g150147150162%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150147150162%_))
                      (let ((_%e150151150164%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150147150162%_))))
                        (let ((_%hd150150150167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150151150164%_)))
                              (_%tl150149150169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150151150164%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150149150169%_))
                              (let ((_%e150154150172%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150149150169%_))))
                                (let ((_%hd150153150175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150154150172%_)))
                                      (_%tl150152150177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150154150172%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150152150177%_))
                                      ((lambda (_%L150180%_)
                                         (if (let ((__tmp151161
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self150143%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150180%_
                                                __tmp151161))
                                             (let ((__tmp151162
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self150143%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151162
                                                _%stx150144%_))
                                             _%stx150144%_))
                                       _%hd150153150175%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150146150159%_
                                         _%g150147150162%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150146150159%_ _%g150147150162%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150146150159%_ _%g150147150162%_))))))
          (declare (not safe))
          (_%g150145150192%_ _%stx150144%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self150083%_ _%stx150084%_)
        (let* ((_%g150086150099%_
                (lambda (_%g150087150096%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150087150096%_))))
               (_%g150085150140%_
                (lambda (_%g150087150102%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150087150102%_))
                      (let ((_%e150091150104%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150087150102%_))))
                        (let ((_%hd150090150107%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150091150104%_)))
                              (_%tl150089150109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150091150104%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150089150109%_))
                              (let ((_%e150094150112%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150089150109%_))))
                                (let ((_%hd150093150115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150094150112%_)))
                                      (_%tl150092150117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150094150112%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150092150117%_))
                                      ((lambda (_%L150120%_)
                                         (let ((_%$e150134%_
                                                (let ((__tmp151164
                                                       (lambda (_%sub150132%_)
                                                         (let ((__tmp151165
                                                                (car _%sub150132%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L150120%_
                                                            __tmp151165))))
                                                      (__tmp151163
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self150083%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151164
                                                          __tmp151163))))
                                           (if _%$e150134%_
                                               ((lambda (_%sub150137%_)
                                                  (let ((__tmp151166
                                                         (cons '%#ref
                                                               (cons (cdr _%sub150137%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151166
                                                     _%stx150084%_)))
                                                _%$e150134%_)
                                               (let () _%stx150084%_))))
                                       _%hd150093150115%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150086150099%_
                                         _%g150087150102%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150086150099%_ _%g150087150102%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150086150099%_ _%g150087150102%_))))))
          (declare (not safe))
          (_%g150085150140%_ _%stx150084%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self150012%_ _%stx150013%_)
        (let* ((_%g150015150032%_
                (lambda (_%g150016150029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150016150029%_))))
               (_%g150014150080%_
                (lambda (_%g150016150035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150016150035%_))
                      (let ((_%e150021150037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150016150035%_))))
                        (let ((_%hd150020150040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150021150037%_)))
                              (_%tl150019150042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150021150037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150019150042%_))
                              (let ((_%e150024150045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150019150042%_))))
                                (let ((_%hd150023150048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150024150045%_)))
                                      (_%tl150022150050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150024150045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150022150050%_))
                                      (let ((_%e150027150053%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150022150050%_))))
                                        (let ((_%hd150026150056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150027150053%_)))
                                              (_%tl150025150058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150027150053%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150025150058%_))
                                              ((lambda (_%L150061%_
                                                        _%L150062%_)
                                                 (let ((_%new-expr150077%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self150012%_
                                                           _%L150061%_)))
                                                       (_%new-xid150078%_
                                                        (if (let ((__tmp151167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self150012%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L150062%_ __tmp151167))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self150012%_ 'new-id))
                    _%L150062%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151168
                                                          (cons '%#set!
                                                                (cons _%new-xid150078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150077%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151168
                                                      _%stx150013%_))))
                                               _%hd150026150056%_
                                               _%hd150023150048%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150015150032%_
                                                 _%g150016150035%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150015150032%_
                                         _%g150016150035%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150015150032%_ _%g150016150035%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150015150032%_ _%g150016150035%_))))))
          (declare (not safe))
          (_%g150014150080%_ _%stx150013%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149935%_ _%stx149936%_)
        (let* ((_%g149938149955%_
                (lambda (_%g149939149952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149939149952%_))))
               (_%g149937150009%_
                (lambda (_%g149939149958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149939149958%_))
                      (let ((_%e149944149960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149939149958%_))))
                        (let ((_%hd149943149963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149944149960%_)))
                              (_%tl149942149965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149944149960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149942149965%_))
                              (let ((_%e149947149968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149942149965%_))))
                                (let ((_%hd149946149971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149947149968%_)))
                                      (_%tl149945149973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149947149968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149945149973%_))
                                      (let ((_%e149950149976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149945149973%_))))
                                        (let ((_%hd149949149979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149950149976%_)))
                                              (_%tl149948149981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149950149976%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149948149981%_))
                                              ((lambda (_%L149984%_
                                                        _%L149985%_)
                                                 (let ((_%new-expr150006%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149935%_
                                                           _%L149984%_)))
                                                       (_%new-xid150007%_
                                                        (let ((_%$e150002%_
                                                               (let ((__tmp151170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub150000%_)
                                (let ((__tmp151171 (car _%sub150000%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149985%_
                                   __tmp151171))))
                             (__tmp151169
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149935%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151170 __tmp151169))))
                  (if _%$e150002%_ (cdr _%$e150002%_) (let () _%L149985%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151172
                                                          (cons '%#set!
                                                                (cons _%new-xid150007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150006%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151172
                                                      _%stx149936%_))))
                                               _%hd149949149979%_
                                               _%hd149946149971%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149938149955%_
                                                 _%g149939149958%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149938149955%_
                                         _%g149939149958%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149938149955%_ _%g149939149958%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149938149955%_ _%g149939149958%_))))))
          (declare (not safe))
          (_%g149937150009%_ _%stx149936%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149881%_ _%stx149882%_)
        (let* ((_%g149884149897%_
                (lambda (_%g149885149894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149885149894%_))))
               (_%g149883149932%_
                (lambda (_%g149885149900%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149885149900%_))
                      (let ((_%e149889149902%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149885149900%_))))
                        (let ((_%hd149888149905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149889149902%_)))
                              (_%tl149887149907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149889149902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149887149907%_))
                              (let ((_%e149892149910%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149887149907%_))))
                                (let ((_%hd149891149913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149892149910%_)))
                                      (_%tl149890149915%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149892149910%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149890149915%_))
                                      ((lambda (_%L149918%_)
                                         (let* ((_%eid149930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149918%_)))
                                                (__tmp151173
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149881%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151173
                                            _%eid149930%_
                                            1+
                                            '0)))
                                       _%hd149891149913%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149884149897%_
                                         _%g149885149900%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149884149897%_ _%g149885149900%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149884149897%_ _%g149885149900%_))))))
          (declare (not safe))
          (_%g149883149932%_ _%stx149882%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149811%_ _%stx149812%_)
        (let* ((_%g149814149831%_
                (lambda (_%g149815149828%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149815149828%_))))
               (_%g149813149878%_
                (lambda (_%g149815149834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149815149834%_))
                      (let ((_%e149820149836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149815149834%_))))
                        (let ((_%hd149819149839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149820149836%_)))
                              (_%tl149818149841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149820149836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149818149841%_))
                              (let ((_%e149823149844%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149818149841%_))))
                                (let ((_%hd149822149847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149823149844%_)))
                                      (_%tl149821149849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149823149844%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149821149849%_))
                                      (let ((_%e149826149852%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149821149849%_))))
                                        (let ((_%hd149825149855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149826149852%_)))
                                              (_%tl149824149857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149826149852%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149824149857%_))
                                              ((lambda (_%L149860%_
                                                        _%L149861%_)
                                                 (let ((_%eid149876%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149861%_))))
                                                   (let ((__tmp151174
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149811%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151174
                                                      _%eid149876%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149811%_
                                                      _%L149860%_))))
                                               _%hd149825149855%_
                                               _%hd149822149847%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149814149831%_
                                                 _%g149815149834%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149814149831%_
                                         _%g149815149834%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149814149831%_ _%g149815149834%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149814149831%_ _%g149815149834%_))))))
          (declare (not safe))
          (_%g149813149878%_ _%stx149812%_))))
    (define gxc#find-body%
      (lambda (_%self149724%_ _%stx149725%_)
        (let* ((_%g149727149746%_
                (lambda (_%g149728149743%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149728149743%_))))
               (_%g149726149808%_
                (lambda (_%g149728149749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149728149749%_))
                      (let ((_%e149732149751%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149728149749%_))))
                        (let ((_%hd149731149754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149732149751%_)))
                              (_%tl149730149756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149732149751%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149730149756%_))
                              (let ((_g151175_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149730149756%_
                                        '0))))
                                (begin
                                  (let ((_g151176_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151175_)
                                               (##vector-length _g151175_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151176_ 2)))
                                        (error "Context expects 2 values"
                                               _g151176_)))
                                  (let ((_%target149733149759%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151175_ 0)))
                                        (_%tl149735149761%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151175_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149735149761%_))
                                        (letrec ((_%loop149736149764%_
                                                  (lambda (_%hd149734149767%_
                                                           _%expr149740149769%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149734149767%_))
                                                        (let ((_%e149737149772%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149734149767%_))))
                  (let ((_%lp-hd149738149775%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149737149772%_)))
                        (_%lp-tl149739149777%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149737149772%_))))
                    (let ((__tmp151177
                           (cons _%lp-hd149738149775%_ _%expr149740149769%_)))
                      (declare (not safe))
                      (_%loop149736149764%_
                       _%lp-tl149739149777%_
                       __tmp151177))))
                (let ((_%expr149741149780%_ (reverse _%expr149740149769%_)))
                  ((lambda (_%L149783%_)
                     (let ((__tmp151180
                            (lambda (_%g149796149798%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149724%_
                                 _%g149796149798%_))))
                           (__tmp151178
                            (let ((__tmp151179
                                   (lambda (_%g149800149803%_
                                            _%g149801149805%_)
                                     (cons _%g149800149803%_
                                           _%g149801149805%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151179 '() _%L149783%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151180 __tmp151178)))
                   _%expr149741149780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149736149764%_
                                             _%target149733149759%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149727149746%_
                                           _%g149728149749%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149727149746%_ _%g149728149749%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149727149746%_ _%g149728149749%_))))))
          (declare (not safe))
          (_%g149726149808%_ _%stx149725%_))))
    (define gxc#find-let-values%
      (lambda (_%self149574%_ _%stx149575%_)
        (let* ((_%g149577149612%_
                (lambda (_%g149578149609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149578149609%_))))
               (_%g149576149721%_
                (lambda (_%g149578149615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149578149615%_))
                      (let ((_%e149584149617%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149578149615%_))))
                        (let ((_%hd149583149620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149584149617%_)))
                              (_%tl149582149622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149584149617%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149582149622%_))
                              (let ((_%e149587149625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149582149622%_))))
                                (let ((_%hd149586149628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149587149625%_)))
                                      (_%tl149585149630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149587149625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149586149628%_))
                                      (let ((_g151181_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149586149628%_
                                                '0))))
                                        (begin
                                          (let ((_g151182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151181_)
                                                       (##vector-length
                                                        _g151181_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151182_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151182_)))
                                          (let ((_%target149588149633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151181_ 0)))
                                                (_%tl149590149635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151181_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149590149635%_))
                                                (letrec ((_%loop149591149638%_
                                                          (lambda (_%hd149589149641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149595149643%_
                           _%bind149596149645%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149589149641%_))
                        (let ((_%e149592149648%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149589149641%_))))
                          (let ((_%lp-hd149593149651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149592149648%_)))
                                (_%lp-tl149594149653%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149592149648%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149593149651%_))
                                (let ((_%e149601149656%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149593149651%_))))
                                  (let ((_%hd149600149659%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149601149656%_)))
                                        (_%tl149599149661%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149601149656%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149599149661%_))
                                        (let ((_%e149604149664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149599149661%_))))
                                          (let ((_%hd149603149667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149604149664%_)))
                                                (_%tl149602149669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149604149664%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149602149669%_))
                                                (let ((__tmp151184
                                                       (cons _%hd149603149667%_
                                                             _%expr149595149643%_))
                                                      (__tmp151183
                                                       (cons _%hd149600149659%_
                                                             _%bind149596149645%_)))
                                                  (declare (not safe))
                                                  (_%loop149591149638%_
                                                   _%lp-tl149594149653%_
                                                   __tmp151184
                                                   __tmp151183))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149577149612%_
                                                   _%g149578149615%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149577149612%_
                                           _%g149578149615%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g149577149612%_ _%g149578149615%_)))))
                        (let ((_%expr149597149672%_
                               (reverse _%expr149595149643%_))
                              (_%bind149598149674%_
                               (reverse _%bind149596149645%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149585149630%_))
                              (let ((_%e149607149677%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149585149630%_))))
                                (let ((_%hd149606149680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149607149677%_)))
                                      (_%tl149605149682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149607149677%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149605149682%_))
                                      ((lambda (_%L149685%_
                                                _%L149686%_
                                                _%L149687%_)
                                         (let ((_%$e149718%_
                                                (let ((__tmp151187
                                                       (lambda (_%g149706149708%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self149574%_
                                                            _%g149706149708%_))))
                                                      (__tmp151185
                                                       (let ((__tmp151186
                                                              (lambda (_%g149710149713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149711149715%_)
                        (cons _%g149710149713%_ _%g149711149715%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151186 '() _%L149686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151187
                                                   __tmp151185))))
                                           (if _%$e149718%_
                                               _%$e149718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149574%_
                                                  _%L149685%_)))))
                                       _%hd149606149680%_
                                       _%expr149597149672%_
                                       _%bind149598149674%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149577149612%_
                                         _%g149578149615%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149577149612%_ _%g149578149615%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop149591149638%_
                                                     _%target149588149633%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149577149612%_
                                                   _%g149578149615%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149577149612%_
                                         _%g149578149615%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149577149612%_ _%g149578149615%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149577149612%_ _%g149578149615%_))))))
          (declare (not safe))
          (_%g149576149721%_ _%stx149575%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self149518%_ _%stx149519%_)
        (let* ((_%g149521149534%_
                (lambda (_%g149522149531%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149522149531%_))))
               (_%g149520149571%_
                (lambda (_%g149522149537%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149522149537%_))
                      (let ((_%e149526149539%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149522149537%_))))
                        (let ((_%hd149525149542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149526149539%_)))
                              (_%tl149524149544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149526149539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149524149544%_))
                              (let ((_%e149529149547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149524149544%_))))
                                (let ((_%hd149528149550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149529149547%_)))
                                      (_%tl149527149552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149529149547%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149527149552%_))
                                      ((lambda (_%L149555%_)
                                         (let ((__tmp151189
                                                (lambda (_%g149566149568%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L149555%_
                                                     _%g149566149568%_))))
                                               (__tmp151188
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self149518%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151189 __tmp151188)))
                                       _%hd149528149550%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149521149534%_
                                         _%g149522149537%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149521149534%_ _%g149522149537%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149521149534%_ _%g149522149537%_))))))
          (declare (not safe))
          (_%g149520149571%_ _%stx149519%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self149443%_ _%stx149444%_)
        (let* ((_%g149446149463%_
                (lambda (_%g149447149460%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149447149460%_))))
               (_%g149445149515%_
                (lambda (_%g149447149466%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149447149466%_))
                      (let ((_%e149452149468%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149447149466%_))))
                        (let ((_%hd149451149471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149452149468%_)))
                              (_%tl149450149473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149452149468%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149450149473%_))
                              (let ((_%e149455149476%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149450149473%_))))
                                (let ((_%hd149454149479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149455149476%_)))
                                      (_%tl149453149481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149455149476%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149453149481%_))
                                      (let ((_%e149458149484%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149453149481%_))))
                                        (let ((_%hd149457149487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149458149484%_)))
                                              (_%tl149456149489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149458149484%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149456149489%_))
                                              ((lambda (_%L149492%_
                                                        _%L149493%_)
                                                 (let ((_%$e149512%_
                                                        (let ((__tmp151191
                                                               (lambda (_%g149507149509%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L149493%_
                            _%g149507149509%_))))
                      (__tmp151190
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self149443%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151191 __tmp151190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e149512%_
                                                       _%$e149512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149443%_
                                                          _%L149492%_)))))
                                               _%hd149457149487%_
                                               _%hd149454149479%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149446149463%_
                                                 _%g149447149466%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149446149463%_
                                         _%g149447149466%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149446149463%_ _%g149447149466%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149446149463%_ _%g149447149466%_))))))
          (declare (not safe))
          (_%g149445149515%_ _%stx149444%_))))))
