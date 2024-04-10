(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712757957)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150163 (list gxc#::void::t))
            (__tmp150162 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150163
         '()
         __tmp150162
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150149%_
        (apply make-instance gxc#::collect-mutators::t _%$args150149%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150164
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
        (__make-promise __tmp150164)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150141%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150144%_
                (let ((__obj150152
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150152))
               (__tmp150165
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150144%_ _%stx150141%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150165
           gxc#current-compile-method
           _%self150144%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150167 (list gxc#::basic-xform-expression::t))
            (__tmp150166 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150167
         '(id new-id)
         __tmp150166
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150138%_
        (apply make-instance gxc#::expression-subst::t _%$args150138%_)))
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
      (let ((__tmp150168
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
        (__make-promise __tmp150168)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150108%_
               _%id150104150109%_
               _%new-id150105150111%_
               _%stx150113%_)
        (let* ((_%id150116%_
                (if (eq? _%id150104150109%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150104150109%_))
               (_%new-id150118%_
                (if (eq? _%new-id150105150111%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150105150111%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150120%_
                  (let ((__obj150154
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150154
                       _%id150116%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150154
                       _%new-id150118%_
                       '2
                       '#f
                       '#f))
                    __obj150154))
                 (__tmp150169
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150120%_ _%stx150113%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150169
             gxc#current-compile-method
             _%self150120%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150127%_ . _%args150128%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150127%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150127%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150127%_
                  'new-id:
                  absent-value))
               _%args150128%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150106150134%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150106150134%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150171 (list gxc#::basic-xform-expression::t))
            (__tmp150170 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150171
         '(subst)
         __tmp150170
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150100%_
        (apply make-instance gxc#::expression-subst*::t _%$args150100%_)))
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
      (let ((__tmp150172
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
        (__make-promise __tmp150172)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150074%_ _%subst150071150075%_ _%stx150077%_)
        (let ((_%subst150080%_
               (if (eq? _%subst150071150075%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150071150075%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150082%_
                  (let ((__obj150156
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150156
                       _%subst150080%_
                       '1
                       '#f
                       '#f))
                    __obj150156))
                 (__tmp150173
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150082%_ _%stx150077%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150173
             gxc#current-compile-method
             _%self150082%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150089%_ . _%args150090%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150089%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150089%_
                  'subst:
                  absent-value))
               _%args150090%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150072150096%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150072150096%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150174 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150174
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150067%_
        (apply make-instance gxc#::find-expression::t _%$args150067%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150175
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
        (__make-promise __tmp150175)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150177 (list gxc#::find-expression::t))
            (__tmp150176 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150177
         '(ids)
         __tmp150176
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150063%_
        (apply make-instance gxc#::find-var-refs::t _%$args150063%_)))
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
      (let ((__tmp150178
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
        (__make-promise __tmp150178)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150037%_ _%ids150034150038%_ _%stx150040%_)
        (let ((_%ids150043%_
               (if (eq? _%ids150034150038%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150034150038%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150045%_
                  (let ((__obj150159
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150159
                       _%ids150043%_
                       '1
                       '#f
                       '#f))
                    __obj150159))
                 (__tmp150179
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150045%_ _%stx150040%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150179
             gxc#current-compile-method
             _%self150045%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150052%_ . _%args150053%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150052%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150052%_ 'ids: absent-value))
               _%args150053%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150035150059%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150035150059%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150181 (list gxc#::collect-expression-refs::t))
            (__tmp150180 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150181
         '()
         __tmp150180
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150030%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150030%_)))
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
      (let ((__tmp150182
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
        (__make-promise __tmp150182)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150004%_ _%table150001150005%_ _%stx150007%_)
        (let ((_%table150010%_
               (if (eq? _%table150001150005%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150001150005%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150012%_
                  (let ((__obj150161
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150161
                       _%table150010%_
                       '1
                       '#f
                       '#f))
                    __obj150161))
                 (__tmp150183
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150012%_ _%stx150007%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150183
             gxc#current-compile-method
             _%self150012%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150019%_ . _%args150020%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150019%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150019%_
                  'table:
                  absent-value))
               _%args150020%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150002150026%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150002150026%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149930%_ _%stx149931%_)
        (let* ((_%g149933149950%_
                (lambda (_%g149934149947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149934149947%_))))
               (_%g149932149997%_
                (lambda (_%g149934149953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149934149953%_))
                      (let ((_%e149937149955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149934149953%_))))
                        (let ((_%hd149938149958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149937149955%_)))
                              (_%tl149939149960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149937149955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149939149960%_))
                              (let ((_%e149940149963%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149939149960%_))))
                                (let ((_%hd149941149966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149940149963%_)))
                                      (_%tl149942149968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149940149963%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149942149968%_))
                                      (let ((_%e149943149971%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149942149968%_))))
                                        (let ((_%hd149944149974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149943149971%_)))
                                              (_%tl149945149976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149943149971%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149945149976%_))
                                              ((lambda (_%L149979%_
                                                        _%L149980%_)
                                                 (let ((_%sym149995%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149980%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym149995%_))
                                                   (let ((__tmp150184
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150184
                                                      _%sym149995%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149930%_
                                                      _%L149979%_))))
                                               _%hd149944149974%_
                                               _%hd149941149966%_)
                                              (_%g149933149950%_
                                               _%g149934149953%_))))
                                      (_%g149933149950%_ _%g149934149953%_))))
                              (_%g149933149950%_ _%g149934149953%_))))
                      (_%g149933149950%_ _%g149934149953%_)))))
          (_%g149932149997%_ _%stx149931%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149878%_ _%stx149879%_)
        (let* ((_%g149881149894%_
                (lambda (_%g149882149891%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149882149891%_))))
               (_%g149880149927%_
                (lambda (_%g149882149897%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149882149897%_))
                      (let ((_%e149884149899%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149882149897%_))))
                        (let ((_%hd149885149902%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149884149899%_)))
                              (_%tl149886149904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149884149899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149886149904%_))
                              (let ((_%e149887149907%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149886149904%_))))
                                (let ((_%hd149888149910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149887149907%_)))
                                      (_%tl149889149912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149887149907%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149889149912%_))
                                      ((lambda (_%L149915%_)
                                         (if (let ((__tmp150185
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149878%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149915%_
                                                __tmp150185))
                                             (let ((__tmp150186
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149878%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150186
                                                _%stx149879%_))
                                             _%stx149879%_))
                                       _%hd149888149910%_)
                                      (_%g149881149894%_ _%g149882149897%_))))
                              (_%g149881149894%_ _%g149882149897%_))))
                      (_%g149881149894%_ _%g149882149897%_)))))
          (_%g149880149927%_ _%stx149879%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149818%_ _%stx149819%_)
        (let* ((_%g149821149834%_
                (lambda (_%g149822149831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149822149831%_))))
               (_%g149820149875%_
                (lambda (_%g149822149837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149822149837%_))
                      (let ((_%e149824149839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149822149837%_))))
                        (let ((_%hd149825149842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149824149839%_)))
                              (_%tl149826149844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149824149839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149826149844%_))
                              (let ((_%e149827149847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149826149844%_))))
                                (let ((_%hd149828149850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149827149847%_)))
                                      (_%tl149829149852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149827149847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149829149852%_))
                                      ((lambda (_%L149855%_)
                                         (let ((_%$e149869%_
                                                (let ((__tmp150188
                                                       (lambda (_%sub149867%_)
                                                         (let ((__tmp150189
                                                                (car _%sub149867%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149855%_
                                                            __tmp150189))))
                                                      (__tmp150187
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149818%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150188
                                                          __tmp150187))))
                                           (if _%$e149869%_
                                               ((lambda (_%sub149872%_)
                                                  (let ((__tmp150190
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149872%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150190
                                                     _%stx149819%_)))
                                                _%$e149869%_)
                                               _%stx149819%_)))
                                       _%hd149828149850%_)
                                      (_%g149821149834%_ _%g149822149837%_))))
                              (_%g149821149834%_ _%g149822149837%_))))
                      (_%g149821149834%_ _%g149822149837%_)))))
          (_%g149820149875%_ _%stx149819%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149747%_ _%stx149748%_)
        (let* ((_%g149750149767%_
                (lambda (_%g149751149764%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149751149764%_))))
               (_%g149749149815%_
                (lambda (_%g149751149770%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149751149770%_))
                      (let ((_%e149754149772%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149751149770%_))))
                        (let ((_%hd149755149775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149754149772%_)))
                              (_%tl149756149777%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149754149772%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149756149777%_))
                              (let ((_%e149757149780%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149756149777%_))))
                                (let ((_%hd149758149783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149757149780%_)))
                                      (_%tl149759149785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149757149780%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149759149785%_))
                                      (let ((_%e149760149788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149759149785%_))))
                                        (let ((_%hd149761149791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149760149788%_)))
                                              (_%tl149762149793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149760149788%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149762149793%_))
                                              ((lambda (_%L149796%_
                                                        _%L149797%_)
                                                 (let ((_%new-expr149812%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149747%_
                                                           _%L149796%_)))
                                                       (_%new-xid149813%_
                                                        (if (let ((__tmp150191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149747%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149797%_ __tmp150191))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149747%_ 'new-id))
                    _%L149797%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150192
                                                          (cons '%#set!
                                                                (cons _%new-xid149813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149812%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150192
                                                      _%stx149748%_))))
                                               _%hd149761149791%_
                                               _%hd149758149783%_)
                                              (_%g149750149767%_
                                               _%g149751149770%_))))
                                      (_%g149750149767%_ _%g149751149770%_))))
                              (_%g149750149767%_ _%g149751149770%_))))
                      (_%g149750149767%_ _%g149751149770%_)))))
          (_%g149749149815%_ _%stx149748%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149670%_ _%stx149671%_)
        (let* ((_%g149673149690%_
                (lambda (_%g149674149687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149674149687%_))))
               (_%g149672149744%_
                (lambda (_%g149674149693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149674149693%_))
                      (let ((_%e149677149695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149674149693%_))))
                        (let ((_%hd149678149698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149677149695%_)))
                              (_%tl149679149700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149677149695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149679149700%_))
                              (let ((_%e149680149703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149679149700%_))))
                                (let ((_%hd149681149706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149680149703%_)))
                                      (_%tl149682149708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149680149703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149682149708%_))
                                      (let ((_%e149683149711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149682149708%_))))
                                        (let ((_%hd149684149714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149683149711%_)))
                                              (_%tl149685149716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149683149711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149685149716%_))
                                              ((lambda (_%L149719%_
                                                        _%L149720%_)
                                                 (let ((_%new-expr149741%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149670%_
                                                           _%L149719%_)))
                                                       (_%new-xid149742%_
                                                        (let ((_%$e149737%_
                                                               (let ((__tmp150194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149735%_)
                                (let ((__tmp150195 (car _%sub149735%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149720%_
                                   __tmp150195))))
                             (__tmp150193
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149670%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150194 __tmp150193))))
                  (if _%$e149737%_ (cdr _%$e149737%_) _%L149720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150196
                                                          (cons '%#set!
                                                                (cons _%new-xid149742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149741%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150196
                                                      _%stx149671%_))))
                                               _%hd149684149714%_
                                               _%hd149681149706%_)
                                              (_%g149673149690%_
                                               _%g149674149693%_))))
                                      (_%g149673149690%_ _%g149674149693%_))))
                              (_%g149673149690%_ _%g149674149693%_))))
                      (_%g149673149690%_ _%g149674149693%_)))))
          (_%g149672149744%_ _%stx149671%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149616%_ _%stx149617%_)
        (let* ((_%g149619149632%_
                (lambda (_%g149620149629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149620149629%_))))
               (_%g149618149667%_
                (lambda (_%g149620149635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149620149635%_))
                      (let ((_%e149622149637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149620149635%_))))
                        (let ((_%hd149623149640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149622149637%_)))
                              (_%tl149624149642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149622149637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149624149642%_))
                              (let ((_%e149625149645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149624149642%_))))
                                (let ((_%hd149626149648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149625149645%_)))
                                      (_%tl149627149650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149625149645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149627149650%_))
                                      ((lambda (_%L149653%_)
                                         (let* ((_%eid149665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149653%_)))
                                                (__tmp150197
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149616%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150197
                                            _%eid149665%_
                                            1+
                                            '0)))
                                       _%hd149626149648%_)
                                      (_%g149619149632%_ _%g149620149635%_))))
                              (_%g149619149632%_ _%g149620149635%_))))
                      (_%g149619149632%_ _%g149620149635%_)))))
          (_%g149618149667%_ _%stx149617%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149546%_ _%stx149547%_)
        (let* ((_%g149549149566%_
                (lambda (_%g149550149563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149550149563%_))))
               (_%g149548149613%_
                (lambda (_%g149550149569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149550149569%_))
                      (let ((_%e149553149571%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149550149569%_))))
                        (let ((_%hd149554149574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149553149571%_)))
                              (_%tl149555149576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149553149571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149555149576%_))
                              (let ((_%e149556149579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149555149576%_))))
                                (let ((_%hd149557149582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149556149579%_)))
                                      (_%tl149558149584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149556149579%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149558149584%_))
                                      (let ((_%e149559149587%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149558149584%_))))
                                        (let ((_%hd149560149590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149559149587%_)))
                                              (_%tl149561149592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149559149587%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149561149592%_))
                                              ((lambda (_%L149595%_
                                                        _%L149596%_)
                                                 (let ((_%eid149611%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149596%_))))
                                                   (let ((__tmp150198
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149546%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150198
                                                      _%eid149611%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149546%_
                                                      _%L149595%_))))
                                               _%hd149560149590%_
                                               _%hd149557149582%_)
                                              (_%g149549149566%_
                                               _%g149550149569%_))))
                                      (_%g149549149566%_ _%g149550149569%_))))
                              (_%g149549149566%_ _%g149550149569%_))))
                      (_%g149549149566%_ _%g149550149569%_)))))
          (_%g149548149613%_ _%stx149547%_))))
    (define gxc#find-body%
      (lambda (_%self149459%_ _%stx149460%_)
        (let* ((_%g149462149481%_
                (lambda (_%g149463149478%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149463149478%_))))
               (_%g149461149543%_
                (lambda (_%g149463149484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149463149484%_))
                      (let ((_%e149465149486%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149463149484%_))))
                        (let ((_%hd149466149489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149465149486%_)))
                              (_%tl149467149491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149465149486%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149467149491%_))
                              (let ((_g150199_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149467149491%_
                                        '0))))
                                (begin
                                  (let ((_g150200_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150199_)
                                               (##vector-length _g150199_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150200_ 2)))
                                        (error "Context expects 2 values"
                                               _g150200_)))
                                  (let ((_%target149468149494%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150199_ 0)))
                                        (_%tl149470149496%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150199_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149470149496%_))
                                        (letrec ((_%loop149471149499%_
                                                  (lambda (_%hd149469149502%_
                                                           _%expr149475149504%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149469149502%_))
                                                        (let ((_%e149472149507%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149469149502%_))))
                  (let ((_%lp-hd149473149510%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149472149507%_)))
                        (_%lp-tl149474149512%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149472149507%_))))
                    (_%loop149471149499%_
                     _%lp-tl149474149512%_
                     (cons _%lp-hd149473149510%_ _%expr149475149504%_))))
                (let ((_%expr149476149515%_ (reverse _%expr149475149504%_)))
                  ((lambda (_%L149518%_)
                     (let ((__tmp150203
                            (lambda (_%g149531149533%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149459%_
                                 _%g149531149533%_))))
                           (__tmp150201
                            (let ((__tmp150202
                                   (lambda (_%g149535149538%_
                                            _%g149536149540%_)
                                     (cons _%g149535149538%_
                                           _%g149536149540%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150202 '() _%L149518%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150203 __tmp150201)))
                   _%expr149476149515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149471149499%_
                                           _%target149468149494%_
                                           '()))
                                        (_%g149462149481%_
                                         _%g149463149484%_)))))
                              (_%g149462149481%_ _%g149463149484%_))))
                      (_%g149462149481%_ _%g149463149484%_)))))
          (_%g149461149543%_ _%stx149460%_))))
    (define gxc#find-let-values%
      (lambda (_%self149309%_ _%stx149310%_)
        (let* ((_%g149312149347%_
                (lambda (_%g149313149344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149313149344%_))))
               (_%g149311149456%_
                (lambda (_%g149313149350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149313149350%_))
                      (let ((_%e149317149352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149313149350%_))))
                        (let ((_%hd149318149355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149317149352%_)))
                              (_%tl149319149357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149317149352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149319149357%_))
                              (let ((_%e149320149360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149319149357%_))))
                                (let ((_%hd149321149363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149320149360%_)))
                                      (_%tl149322149365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149320149360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149321149363%_))
                                      (let ((_g150204_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149321149363%_
                                                '0))))
                                        (begin
                                          (let ((_g150205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150204_)
                                                       (##vector-length
                                                        _g150204_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150205_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150205_)))
                                          (let ((_%target149323149368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150204_ 0)))
                                                (_%tl149325149370%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150204_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149325149370%_))
                                                (letrec ((_%loop149326149373%_
                                                          (lambda (_%hd149324149376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149330149378%_
                           _%bind149331149380%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149324149376%_))
                        (let ((_%e149327149383%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149324149376%_))))
                          (let ((_%lp-hd149328149386%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149327149383%_)))
                                (_%lp-tl149329149388%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149327149383%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149328149386%_))
                                (let ((_%e149337149391%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149328149386%_))))
                                  (let ((_%hd149338149394%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149337149391%_)))
                                        (_%tl149339149396%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149337149391%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149339149396%_))
                                        (let ((_%e149340149399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149339149396%_))))
                                          (let ((_%hd149341149402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149340149399%_)))
                                                (_%tl149342149404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149340149399%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149342149404%_))
                                                (_%loop149326149373%_
                                                 _%lp-tl149329149388%_
                                                 (cons _%hd149341149402%_
                                                       _%expr149330149378%_)
                                                 (cons _%hd149338149394%_
                                                       _%bind149331149380%_))
                                                (_%g149312149347%_
                                                 _%g149313149350%_))))
                                        (_%g149312149347%_
                                         _%g149313149350%_))))
                                (_%g149312149347%_ _%g149313149350%_))))
                        (let ((_%expr149332149407%_
                               (reverse _%expr149330149378%_))
                              (_%bind149333149409%_
                               (reverse _%bind149331149380%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149322149365%_))
                              (let ((_%e149334149412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149322149365%_))))
                                (let ((_%hd149335149415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149334149412%_)))
                                      (_%tl149336149417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149334149412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149336149417%_))
                                      ((lambda (_%L149420%_
                                                _%L149421%_
                                                _%L149422%_)
                                         (let ((_%$e149453%_
                                                (let ((__tmp150208
                                                       (lambda (_%g149441149443%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self149309%_
                                                            _%g149441149443%_))))
                                                      (__tmp150206
                                                       (let ((__tmp150207
                                                              (lambda (_%g149445149448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149446149450%_)
                        (cons _%g149445149448%_ _%g149446149450%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150207 '() _%L149421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150208
                                                   __tmp150206))))
                                           (if _%$e149453%_
                                               _%$e149453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149309%_
                                                  _%L149420%_)))))
                                       _%hd149335149415%_
                                       _%expr149332149407%_
                                       _%bind149333149409%_)
                                      (_%g149312149347%_ _%g149313149350%_))))
                              (_%g149312149347%_ _%g149313149350%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop149326149373%_
                                                   _%target149323149368%_
                                                   '()
                                                   '()))
                                                (_%g149312149347%_
                                                 _%g149313149350%_)))))
                                      (_%g149312149347%_ _%g149313149350%_))))
                              (_%g149312149347%_ _%g149313149350%_))))
                      (_%g149312149347%_ _%g149313149350%_)))))
          (_%g149311149456%_ _%stx149310%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self149253%_ _%stx149254%_)
        (let* ((_%g149256149269%_
                (lambda (_%g149257149266%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149257149266%_))))
               (_%g149255149306%_
                (lambda (_%g149257149272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149257149272%_))
                      (let ((_%e149259149274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149257149272%_))))
                        (let ((_%hd149260149277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149259149274%_)))
                              (_%tl149261149279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149259149274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149261149279%_))
                              (let ((_%e149262149282%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149261149279%_))))
                                (let ((_%hd149263149285%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149262149282%_)))
                                      (_%tl149264149287%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149262149282%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149264149287%_))
                                      ((lambda (_%L149290%_)
                                         (let ((__tmp150210
                                                (lambda (_%g149301149303%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L149290%_
                                                     _%g149301149303%_))))
                                               (__tmp150209
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self149253%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150210 __tmp150209)))
                                       _%hd149263149285%_)
                                      (_%g149256149269%_ _%g149257149272%_))))
                              (_%g149256149269%_ _%g149257149272%_))))
                      (_%g149256149269%_ _%g149257149272%_)))))
          (_%g149255149306%_ _%stx149254%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self149178%_ _%stx149179%_)
        (let* ((_%g149181149198%_
                (lambda (_%g149182149195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149182149195%_))))
               (_%g149180149250%_
                (lambda (_%g149182149201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149182149201%_))
                      (let ((_%e149185149203%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149182149201%_))))
                        (let ((_%hd149186149206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149185149203%_)))
                              (_%tl149187149208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149185149203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149187149208%_))
                              (let ((_%e149188149211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149187149208%_))))
                                (let ((_%hd149189149214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149188149211%_)))
                                      (_%tl149190149216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149188149211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149190149216%_))
                                      (let ((_%e149191149219%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149190149216%_))))
                                        (let ((_%hd149192149222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149191149219%_)))
                                              (_%tl149193149224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149191149219%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149193149224%_))
                                              ((lambda (_%L149227%_
                                                        _%L149228%_)
                                                 (let ((_%$e149247%_
                                                        (let ((__tmp150212
                                                               (lambda (_%g149242149244%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L149228%_
                            _%g149242149244%_))))
                      (__tmp150211
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self149178%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150212 __tmp150211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e149247%_
                                                       _%$e149247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149178%_
                                                          _%L149227%_)))))
                                               _%hd149192149222%_
                                               _%hd149189149214%_)
                                              (_%g149181149198%_
                                               _%g149182149201%_))))
                                      (_%g149181149198%_ _%g149182149201%_))))
                              (_%g149181149198%_ _%g149182149201%_))))
                      (_%g149181149198%_ _%g149182149201%_)))))
          (_%g149180149250%_ _%stx149179%_))))))
