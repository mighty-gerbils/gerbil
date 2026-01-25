(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1769382897)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp166163 (list gxc#::void::t))
            (__tmp166162 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp166163
         '()
         __tmp166162
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args166149%_
        (apply make-instance gxc#::collect-mutators::t _%$args166149%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp166164
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
        (__make-atomic-promise __tmp166164)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx166141%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self166144%_
                (let ((__obj166152
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj166152))
               (__tmp166165
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self166144%_ _%stx166141%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp166165
           gxc#current-compile-method
           _%self166144%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp166167 (list gxc#::basic-xform-expression::t))
            (__tmp166166 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp166167
         '(id new-id)
         __tmp166166
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args166138%_
        (apply make-instance gxc#::expression-subst::t _%$args166138%_)))
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
      (let ((__tmp166168
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
        (__make-atomic-promise __tmp166168)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords166110%_
               _%id166106166111%_
               _%new-id166107166112%_
               _%stx166113%_)
        (let* ((_%id166116%_
                (if (eq? _%id166106166111%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id166106166111%_))
               (_%new-id166118%_
                (if (eq? _%new-id166107166112%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id166107166112%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self166120%_
                  (let ((__obj166154
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166154
                       _%id166116%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166154
                       _%new-id166118%_
                       '2
                       '#f
                       '#f))
                    __obj166154))
                 (__tmp166169
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self166120%_ _%stx166113%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp166169
             gxc#current-compile-method
             _%self166120%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords166127%_ . _%args166128%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords166127%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords166127%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords166127%_
                  'new-id:
                  absent-value))
               _%args166128%_)))
    (define gxc#apply-expression-subst
      (lambda _%args166108166134%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args166108166134%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp166171 (list gxc#::basic-xform-expression::t))
            (__tmp166170 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp166171
         '(subst)
         __tmp166170
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args166102%_
        (apply make-instance gxc#::expression-subst*::t _%$args166102%_)))
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
      (let ((__tmp166172
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
        (__make-atomic-promise __tmp166172)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords166077%_ _%subst166074166078%_ _%stx166079%_)
        (let ((_%subst166082%_
               (if (eq? _%subst166074166078%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst166074166078%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self166084%_
                  (let ((__obj166156
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166156
                       _%subst166082%_
                       '1
                       '#f
                       '#f))
                    __obj166156))
                 (__tmp166173
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self166084%_ _%stx166079%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp166173
             gxc#current-compile-method
             _%self166084%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords166091%_ . _%args166092%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords166091%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords166091%_
                  'subst:
                  absent-value))
               _%args166092%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args166075166098%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args166075166098%_)))
    (define gxc#::find-expression::t
      (let ((__tmp166174 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp166174
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args166070%_
        (apply make-instance gxc#::find-expression::t _%$args166070%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp166175
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
        (__make-atomic-promise __tmp166175)))
    (define gxc#::find-var-refs::t
      (let ((__tmp166177 (list gxc#::find-expression::t))
            (__tmp166176 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp166177
         '(ids)
         __tmp166176
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args166066%_
        (apply make-instance gxc#::find-var-refs::t _%$args166066%_)))
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
      (let ((__tmp166178
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
        (__make-atomic-promise __tmp166178)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords166041%_ _%ids166038166042%_ _%stx166043%_)
        (let ((_%ids166046%_
               (if (eq? _%ids166038166042%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids166038166042%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self166048%_
                  (let ((__obj166159
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166159
                       _%ids166046%_
                       '1
                       '#f
                       '#f))
                    __obj166159))
                 (__tmp166179
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self166048%_ _%stx166043%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp166179
             gxc#current-compile-method
             _%self166048%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords166055%_ . _%args166056%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords166055%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords166055%_ 'ids: absent-value))
               _%args166056%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args166039166062%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args166039166062%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp166181 (list gxc#::collect-expression-refs::t))
            (__tmp166180 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp166181
         '()
         __tmp166180
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args166034%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args166034%_)))
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
      (let ((__tmp166182
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
        (__make-atomic-promise __tmp166182)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords166009%_ _%table166006166010%_ _%stx166011%_)
        (let ((_%table166014%_
               (if (eq? _%table166006166010%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table166006166010%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self166016%_
                  (let ((__obj166161
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166161
                       _%table166014%_
                       '1
                       '#f
                       '#f))
                    __obj166161))
                 (__tmp166183
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self166016%_ _%stx166011%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp166183
             gxc#current-compile-method
             _%self166016%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords166023%_ . _%args166024%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords166023%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords166023%_
                  'table:
                  absent-value))
               _%args166024%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args166007166030%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args166007166030%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self165935%_ _%stx165936%_)
        (let* ((_%g165938165955%_
                (lambda (_%g165939165952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165939165952%_))))
               (_%g165937166002%_
                (lambda (_%g165939165958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165939165958%_))
                      (let ((_%e165942165960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165939165958%_))))
                        (let ((_%hd165943165963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165942165960%_)))
                              (_%tl165944165965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165942165960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165944165965%_))
                              (let ((_%e165945165968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165944165965%_))))
                                (let ((_%hd165946165971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165945165968%_)))
                                      (_%tl165947165973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165945165968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165947165973%_))
                                      (let ((_%e165948165976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165947165973%_))))
                                        (let ((_%hd165949165979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165948165976%_)))
                                              (_%tl165950165981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165948165976%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165950165981%_))
                                              ((lambda (_%g165940165984%_
                                                        _%g165941165985%_)
                                                 (let ((_%sym166000%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g165941165985%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym166000%_))
                                                   (let ((__tmp166184
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp166184
                                                      _%sym166000%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165935%_
                                                      _%g165940165984%_))))
                                               _%hd165949165979%_
                                               _%hd165946165971%_)
                                              (_%g165938165955%_
                                               _%g165939165958%_))))
                                      (_%g165938165955%_ _%g165939165958%_))))
                              (_%g165938165955%_ _%g165939165958%_))))
                      (_%g165938165955%_ _%g165939165958%_)))))
          (_%g165937166002%_ _%stx165936%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self165883%_ _%stx165884%_)
        (let* ((_%g165886165899%_
                (lambda (_%g165887165896%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165887165896%_))))
               (_%g165885165932%_
                (lambda (_%g165887165902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165887165902%_))
                      (let ((_%e165889165904%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165887165902%_))))
                        (let ((_%hd165890165907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165889165904%_)))
                              (_%tl165891165909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165889165904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165891165909%_))
                              (let ((_%e165892165912%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165891165909%_))))
                                (let ((_%hd165893165915%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165892165912%_)))
                                      (_%tl165894165917%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165892165912%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165894165917%_))
                                      ((lambda (_%g165888165920%_)
                                         (if (let ((__tmp166185
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self165883%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g165888165920%_
                                                __tmp166185))
                                             (let ((__tmp166186
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self165883%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp166186
                                                _%stx165884%_))
                                             _%stx165884%_))
                                       _%hd165893165915%_)
                                      (_%g165886165899%_ _%g165887165902%_))))
                              (_%g165886165899%_ _%g165887165902%_))))
                      (_%g165886165899%_ _%g165887165902%_)))))
          (_%g165885165932%_ _%stx165884%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self165823%_ _%stx165824%_)
        (let* ((_%g165826165839%_
                (lambda (_%g165827165836%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165827165836%_))))
               (_%g165825165880%_
                (lambda (_%g165827165842%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165827165842%_))
                      (let ((_%e165829165844%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165827165842%_))))
                        (let ((_%hd165830165847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165829165844%_)))
                              (_%tl165831165849%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165829165844%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165831165849%_))
                              (let ((_%e165832165852%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165831165849%_))))
                                (let ((_%hd165833165855%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165832165852%_)))
                                      (_%tl165834165857%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165832165852%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165834165857%_))
                                      ((lambda (_%g165828165860%_)
                                         (let ((_%$e165874%_
                                                (let ((__tmp166188
                                                       (lambda (_%sub165872%_)
                                                         (let ((__tmp166189
                                                                (car _%sub165872%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g165828165860%_
                                                            __tmp166189))))
                                                      (__tmp166187
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self165823%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp166188
                                                          __tmp166187))))
                                           (if _%$e165874%_
                                               ((lambda (_%sub165877%_)
                                                  (let ((__tmp166190
                                                         (cons '%#ref
                                                               (cons (cdr _%sub165877%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp166190
                                                     _%stx165824%_)))
                                                _%$e165874%_)
                                               _%stx165824%_)))
                                       _%hd165833165855%_)
                                      (_%g165826165839%_ _%g165827165842%_))))
                              (_%g165826165839%_ _%g165827165842%_))))
                      (_%g165826165839%_ _%g165827165842%_)))))
          (_%g165825165880%_ _%stx165824%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self165752%_ _%stx165753%_)
        (let* ((_%g165755165772%_
                (lambda (_%g165756165769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165756165769%_))))
               (_%g165754165820%_
                (lambda (_%g165756165775%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165756165775%_))
                      (let ((_%e165759165777%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165756165775%_))))
                        (let ((_%hd165760165780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165759165777%_)))
                              (_%tl165761165782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165759165777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165761165782%_))
                              (let ((_%e165762165785%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165761165782%_))))
                                (let ((_%hd165763165788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165762165785%_)))
                                      (_%tl165764165790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165762165785%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165764165790%_))
                                      (let ((_%e165765165793%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165764165790%_))))
                                        (let ((_%hd165766165796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165765165793%_)))
                                              (_%tl165767165798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165765165793%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165767165798%_))
                                              ((lambda (_%g165757165801%_
                                                        _%g165758165802%_)
                                                 (let ((_%new-expr165817%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165752%_
                                                           _%g165757165801%_)))
                                                       (_%new-xid165818%_
                                                        (if (let ((__tmp166191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self165752%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g165758165802%_ __tmp166191))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self165752%_ 'new-id))
                    _%g165758165802%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp166192
                                                          (cons '%#set!
                                                                (cons _%new-xid165818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165817%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp166192
                                                      _%stx165753%_))))
                                               _%hd165766165796%_
                                               _%hd165763165788%_)
                                              (_%g165755165772%_
                                               _%g165756165775%_))))
                                      (_%g165755165772%_ _%g165756165775%_))))
                              (_%g165755165772%_ _%g165756165775%_))))
                      (_%g165755165772%_ _%g165756165775%_)))))
          (_%g165754165820%_ _%stx165753%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self165675%_ _%stx165676%_)
        (let* ((_%g165678165695%_
                (lambda (_%g165679165692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165679165692%_))))
               (_%g165677165749%_
                (lambda (_%g165679165698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165679165698%_))
                      (let ((_%e165682165700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165679165698%_))))
                        (let ((_%hd165683165703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165682165700%_)))
                              (_%tl165684165705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165682165700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165684165705%_))
                              (let ((_%e165685165708%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165684165705%_))))
                                (let ((_%hd165686165711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165685165708%_)))
                                      (_%tl165687165713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165685165708%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165687165713%_))
                                      (let ((_%e165688165716%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165687165713%_))))
                                        (let ((_%hd165689165719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165688165716%_)))
                                              (_%tl165690165721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165688165716%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165690165721%_))
                                              ((lambda (_%g165680165724%_
                                                        _%g165681165725%_)
                                                 (let ((_%new-expr165746%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165675%_
                                                           _%g165680165724%_)))
                                                       (_%new-xid165747%_
                                                        (let ((_%$e165742%_
                                                               (let ((__tmp166194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub165740%_)
                                (let ((__tmp166195 (car _%sub165740%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g165681165725%_
                                   __tmp166195))))
                             (__tmp166193
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self165675%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp166194 __tmp166193))))
                  (if _%$e165742%_ (cdr _%$e165742%_) _%g165681165725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp166196
                                                          (cons '%#set!
                                                                (cons _%new-xid165747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165746%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp166196
                                                      _%stx165676%_))))
                                               _%hd165689165719%_
                                               _%hd165686165711%_)
                                              (_%g165678165695%_
                                               _%g165679165698%_))))
                                      (_%g165678165695%_ _%g165679165698%_))))
                              (_%g165678165695%_ _%g165679165698%_))))
                      (_%g165678165695%_ _%g165679165698%_)))))
          (_%g165677165749%_ _%stx165676%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self165621%_ _%stx165622%_)
        (let* ((_%g165624165637%_
                (lambda (_%g165625165634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165625165634%_))))
               (_%g165623165672%_
                (lambda (_%g165625165640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165625165640%_))
                      (let ((_%e165627165642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165625165640%_))))
                        (let ((_%hd165628165645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165627165642%_)))
                              (_%tl165629165647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165627165642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165629165647%_))
                              (let ((_%e165630165650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165629165647%_))))
                                (let ((_%hd165631165653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165630165650%_)))
                                      (_%tl165632165655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165630165650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165632165655%_))
                                      ((lambda (_%g165626165658%_)
                                         (let* ((_%eid165670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g165626165658%_)))
                                                (__tmp166197
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self165621%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp166197
                                            _%eid165670%_
                                            1+
                                            '0)))
                                       _%hd165631165653%_)
                                      (_%g165624165637%_ _%g165625165640%_))))
                              (_%g165624165637%_ _%g165625165640%_))))
                      (_%g165624165637%_ _%g165625165640%_)))))
          (_%g165623165672%_ _%stx165622%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self165551%_ _%stx165552%_)
        (let* ((_%g165554165571%_
                (lambda (_%g165555165568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165555165568%_))))
               (_%g165553165618%_
                (lambda (_%g165555165574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165555165574%_))
                      (let ((_%e165558165576%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165555165574%_))))
                        (let ((_%hd165559165579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165558165576%_)))
                              (_%tl165560165581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165558165576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165560165581%_))
                              (let ((_%e165561165584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165560165581%_))))
                                (let ((_%hd165562165587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165561165584%_)))
                                      (_%tl165563165589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165561165584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165563165589%_))
                                      (let ((_%e165564165592%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165563165589%_))))
                                        (let ((_%hd165565165595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165564165592%_)))
                                              (_%tl165566165597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165564165592%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165566165597%_))
                                              ((lambda (_%g165556165600%_
                                                        _%g165557165601%_)
                                                 (let ((_%eid165616%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g165557165601%_))))
                                                   (let ((__tmp166198
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165551%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp166198
                                                      _%eid165616%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165551%_
                                                      _%g165556165600%_))))
                                               _%hd165565165595%_
                                               _%hd165562165587%_)
                                              (_%g165554165571%_
                                               _%g165555165574%_))))
                                      (_%g165554165571%_ _%g165555165574%_))))
                              (_%g165554165571%_ _%g165555165574%_))))
                      (_%g165554165571%_ _%g165555165574%_)))))
          (_%g165553165618%_ _%stx165552%_))))
    (define gxc#find-body%
      (lambda (_%self165466%_ _%stx165467%_)
        (let* ((_%g165469165488%_
                (lambda (_%g165470165485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165470165485%_))))
               (_%g165468165548%_
                (lambda (_%g165470165491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165470165491%_))
                      (let ((_%e165472165493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165470165491%_))))
                        (let ((_%hd165473165496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165472165493%_)))
                              (_%tl165474165498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165472165493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl165474165498%_))
                              (let ((_g166199_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl165474165498%_
                                        '0))))
                                (begin
                                  (let ((_g166200_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g166199_)
                                               (##values-length _g166199_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g166200_ 2)))
                                        (error "Context expects 2 values"
                                               _g166200_)))
                                  (let ((_%target165475165501%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g166199_ 0)))
                                        (_%tl165477165503%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g166199_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165477165503%_))
                                        (letrec ((_%loop165478165506%_
                                                  (lambda (_%hd165476165509%_
                                                           _%expr165482165511%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd165476165509%_))
                                                        (let ((_%e165479165513%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd165476165509%_))))
                  (let ((_%lp-hd165480165516%_
                         (let ()
                           (declare (not safe))
                           (##car _%e165479165513%_)))
                        (_%lp-tl165481165518%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e165479165513%_))))
                    (_%loop165478165506%_
                     _%lp-tl165481165518%_
                     (cons _%lp-hd165480165516%_ _%expr165482165511%_))))
                (let ((_%expr165483165521%_ (reverse _%expr165482165511%_)))
                  ((lambda (_%g165471165523%_)
                     (let ((__tmp166203
                            (lambda (_%g165536165538%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self165466%_
                                 _%g165536165538%_))))
                           (__tmp166201
                            (let ((__tmp166202
                                   (lambda (_%g165540165543%_
                                            _%g165541165545%_)
                                     (cons _%g165540165543%_
                                           _%g165541165545%_))))
                              (declare (not safe))
                              (__foldr1 __tmp166202 '() _%g165471165523%_))))
                       (declare (not safe))
                       (__ormap1 __tmp166203 __tmp166201)))
                   _%expr165483165521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop165478165506%_
                                           _%target165475165501%_
                                           '()))
                                        (_%g165469165488%_
                                         _%g165470165491%_)))))
                              (_%g165469165488%_ _%g165470165491%_))))
                      (_%g165469165488%_ _%g165470165491%_)))))
          (_%g165468165548%_ _%stx165467%_))))
    (define gxc#find-let-values%
      (lambda (_%self165320%_ _%stx165321%_)
        (let* ((_%g165323165358%_
                (lambda (_%g165324165355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165324165355%_))))
               (_%g165322165463%_
                (lambda (_%g165324165361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165324165361%_))
                      (let ((_%e165328165363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165324165361%_))))
                        (let ((_%hd165329165366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165328165363%_)))
                              (_%tl165330165368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165328165363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165330165368%_))
                              (let ((_%e165331165371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165330165368%_))))
                                (let ((_%hd165332165374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165331165371%_)))
                                      (_%tl165333165376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165331165371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd165332165374%_))
                                      (let ((_g166204_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd165332165374%_
                                                '0))))
                                        (begin
                                          (let ((_g166205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g166204_)
                                                       (##values-length
                                                        _g166204_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g166205_ 2)))
                                                (error "Context expects 2 values"
                                                       _g166205_)))
                                          (let ((_%target165334165379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g166204_ 0)))
                                                (_%tl165336165381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g166204_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165336165381%_))
                                                (letrec ((_%loop165337165384%_
                                                          (lambda (_%hd165335165387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr165341165389%_
                           _%bind165342165390%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd165335165387%_))
                        (let ((_%e165338165392%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd165335165387%_))))
                          (let ((_%lp-hd165339165395%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165338165392%_)))
                                (_%lp-tl165340165397%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165338165392%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd165339165395%_))
                                (let ((_%e165345165400%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd165339165395%_))))
                                  (let ((_%hd165346165403%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165345165400%_)))
                                        (_%tl165347165405%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165345165400%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165347165405%_))
                                        (let ((_%e165348165408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165347165405%_))))
                                          (let ((_%hd165349165411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165348165408%_)))
                                                (_%tl165350165413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165348165408%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165350165413%_))
                                                (_%loop165337165384%_
                                                 _%lp-tl165340165397%_
                                                 (cons _%hd165349165411%_
                                                       _%expr165341165389%_)
                                                 (cons _%hd165346165403%_
                                                       _%bind165342165390%_))
                                                (_%g165323165358%_
                                                 _%g165324165361%_))))
                                        (_%g165323165358%_
                                         _%g165324165361%_))))
                                (_%g165323165358%_ _%g165324165361%_))))
                        (let ((_%expr165343165416%_
                               (reverse _%expr165341165389%_))
                              (_%bind165344165417%_
                               (reverse _%bind165342165390%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165333165376%_))
                              (let ((_%e165351165419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165333165376%_))))
                                (let ((_%hd165352165422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165351165419%_)))
                                      (_%tl165353165424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165351165419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165353165424%_))
                                      ((lambda (_%g165325165427%_
                                                _%g165326165428%_
                                                _%g165327165429%_)
                                         (let ((_%$e165460%_
                                                (let ((__tmp166208
                                                       (lambda (_%g165448165450%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self165320%_
                                                            _%g165448165450%_))))
                                                      (__tmp166206
                                                       (let ((__tmp166207
                                                              (lambda (_%g165452165455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g165453165457%_)
                        (cons _%g165452165455%_ _%g165453165457%_))))
                 (declare (not safe))
                 (__foldr1 __tmp166207 '() _%g165326165428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp166208
                                                   __tmp166206))))
                                           (if _%$e165460%_
                                               _%$e165460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165320%_
                                                  _%g165325165427%_)))))
                                       _%hd165352165422%_
                                       _%expr165343165416%_
                                       _%bind165344165417%_)
                                      (_%g165323165358%_ _%g165324165361%_))))
                              (_%g165323165358%_ _%g165324165361%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop165337165384%_
                                                   _%target165334165379%_
                                                   '()
                                                   '()))
                                                (_%g165323165358%_
                                                 _%g165324165361%_)))))
                                      (_%g165323165358%_ _%g165324165361%_))))
                              (_%g165323165358%_ _%g165324165361%_))))
                      (_%g165323165358%_ _%g165324165361%_)))))
          (_%g165322165463%_ _%stx165321%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self165264%_ _%stx165265%_)
        (let* ((_%g165267165280%_
                (lambda (_%g165268165277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165268165277%_))))
               (_%g165266165317%_
                (lambda (_%g165268165283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165268165283%_))
                      (let ((_%e165270165285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165268165283%_))))
                        (let ((_%hd165271165288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165270165285%_)))
                              (_%tl165272165290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165270165285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165272165290%_))
                              (let ((_%e165273165293%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165272165290%_))))
                                (let ((_%hd165274165296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165273165293%_)))
                                      (_%tl165275165298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165273165293%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165275165298%_))
                                      ((lambda (_%g165269165301%_)
                                         (let ((__tmp166210
                                                (lambda (_%g165312165314%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g165269165301%_
                                                     _%g165312165314%_))))
                                               (__tmp166209
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self165264%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp166210 __tmp166209)))
                                       _%hd165274165296%_)
                                      (_%g165267165280%_ _%g165268165283%_))))
                              (_%g165267165280%_ _%g165268165283%_))))
                      (_%g165267165280%_ _%g165268165283%_)))))
          (_%g165266165317%_ _%stx165265%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self165189%_ _%stx165190%_)
        (let* ((_%g165192165209%_
                (lambda (_%g165193165206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165193165206%_))))
               (_%g165191165261%_
                (lambda (_%g165193165212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165193165212%_))
                      (let ((_%e165196165214%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165193165212%_))))
                        (let ((_%hd165197165217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165196165214%_)))
                              (_%tl165198165219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165196165214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165198165219%_))
                              (let ((_%e165199165222%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165198165219%_))))
                                (let ((_%hd165200165225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165199165222%_)))
                                      (_%tl165201165227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165199165222%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165201165227%_))
                                      (let ((_%e165202165230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165201165227%_))))
                                        (let ((_%hd165203165233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165202165230%_)))
                                              (_%tl165204165235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165202165230%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165204165235%_))
                                              ((lambda (_%g165194165238%_
                                                        _%g165195165239%_)
                                                 (let ((_%$e165258%_
                                                        (let ((__tmp166212
                                                               (lambda (_%g165253165255%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g165195165239%_
                            _%g165253165255%_))))
                      (__tmp166211
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self165189%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp166212 __tmp166211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e165258%_
                                                       _%$e165258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165189%_
                                                          _%g165194165238%_)))))
                                               _%hd165203165233%_
                                               _%hd165200165225%_)
                                              (_%g165192165209%_
                                               _%g165193165212%_))))
                                      (_%g165192165209%_ _%g165193165212%_))))
                              (_%g165192165209%_ _%g165193165212%_))))
                      (_%g165192165209%_ _%g165193165212%_)))))
          (_%g165191165261%_ _%stx165190%_))))))
