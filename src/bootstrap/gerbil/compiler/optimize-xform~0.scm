(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770243152)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp176206 (list gxc#::void::t))
            (__tmp176205 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp176206
         '()
         __tmp176205
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args176192%_
        (apply make-instance gxc#::collect-mutators::t _%$args176192%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp176207
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
        (__make-atomic-promise __tmp176207)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx176184%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self176187%_
                (let ((__obj176195
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj176195))
               (__tmp176208
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176187%_ _%stx176184%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp176208
           gxc#current-compile-method
           _%self176187%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp176210 (list gxc#::basic-xform-expression::t))
            (__tmp176209 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp176210
         '(id new-id)
         __tmp176209
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args176181%_
        (apply make-instance gxc#::expression-subst::t _%$args176181%_)))
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
      (let ((__tmp176211
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
        (__make-atomic-promise __tmp176211)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords176153%_
               _%id176149176154%_
               _%new-id176150176155%_
               _%stx176156%_)
        (let* ((_%id176159%_
                (if (eq? _%id176149176154%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id176149176154%_))
               (_%new-id176161%_
                (if (eq? _%new-id176150176155%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id176150176155%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self176163%_
                  (let ((__obj176197
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176197
                       _%id176159%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176197
                       _%new-id176161%_
                       '2
                       '#f
                       '#f))
                    __obj176197))
                 (__tmp176212
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176163%_ _%stx176156%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp176212
             gxc#current-compile-method
             _%self176163%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords176170%_ . _%args176171%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords176170%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords176170%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176170%_
                  'new-id:
                  absent-value))
               _%args176171%_)))
    (define gxc#apply-expression-subst
      (lambda _%args176151176177%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args176151176177%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp176214 (list gxc#::basic-xform-expression::t))
            (__tmp176213 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp176214
         '(subst)
         __tmp176213
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args176145%_
        (apply make-instance gxc#::expression-subst*::t _%$args176145%_)))
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
      (let ((__tmp176215
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
        (__make-atomic-promise __tmp176215)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords176120%_ _%subst176117176121%_ _%stx176122%_)
        (let ((_%subst176125%_
               (if (eq? _%subst176117176121%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst176117176121%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self176127%_
                  (let ((__obj176199
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176199
                       _%subst176125%_
                       '1
                       '#f
                       '#f))
                    __obj176199))
                 (__tmp176216
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176127%_ _%stx176122%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp176216
             gxc#current-compile-method
             _%self176127%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords176134%_ . _%args176135%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords176134%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176134%_
                  'subst:
                  absent-value))
               _%args176135%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args176118176141%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args176118176141%_)))
    (define gxc#::find-expression::t
      (let ((__tmp176217 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp176217
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args176113%_
        (apply make-instance gxc#::find-expression::t _%$args176113%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp176218
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
        (__make-atomic-promise __tmp176218)))
    (define gxc#::find-var-refs::t
      (let ((__tmp176220 (list gxc#::find-expression::t))
            (__tmp176219 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp176220
         '(ids)
         __tmp176219
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args176109%_
        (apply make-instance gxc#::find-var-refs::t _%$args176109%_)))
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
      (let ((__tmp176221
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
        (__make-atomic-promise __tmp176221)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords176084%_ _%ids176081176085%_ _%stx176086%_)
        (let ((_%ids176089%_
               (if (eq? _%ids176081176085%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids176081176085%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self176091%_
                  (let ((__obj176202
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176202
                       _%ids176089%_
                       '1
                       '#f
                       '#f))
                    __obj176202))
                 (__tmp176222
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176091%_ _%stx176086%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp176222
             gxc#current-compile-method
             _%self176091%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords176098%_ . _%args176099%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords176098%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords176098%_ 'ids: absent-value))
               _%args176099%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args176082176105%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args176082176105%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp176224 (list gxc#::collect-expression-refs::t))
            (__tmp176223 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp176224
         '()
         __tmp176223
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args176077%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args176077%_)))
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
      (let ((__tmp176225
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
        (__make-atomic-promise __tmp176225)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords176052%_ _%table176049176053%_ _%stx176054%_)
        (let ((_%table176057%_
               (if (eq? _%table176049176053%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table176049176053%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self176059%_
                  (let ((__obj176204
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176204
                       _%table176057%_
                       '1
                       '#f
                       '#f))
                    __obj176204))
                 (__tmp176226
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176059%_ _%stx176054%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp176226
             gxc#current-compile-method
             _%self176059%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords176066%_ . _%args176067%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords176066%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176066%_
                  'table:
                  absent-value))
               _%args176067%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args176050176073%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args176050176073%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self175978%_ _%stx175979%_)
        (let* ((_%g175981175998%_
                (lambda (_%g175982175995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175982175995%_))))
               (_%g175980176045%_
                (lambda (_%g175982176001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175982176001%_))
                      (let ((_%e175985176003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175982176001%_))))
                        (let ((_%hd175986176006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175985176003%_)))
                              (_%tl175987176008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175985176003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175987176008%_))
                              (let ((_%e175988176011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175987176008%_))))
                                (let ((_%hd175989176014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175988176011%_)))
                                      (_%tl175990176016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175988176011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175990176016%_))
                                      (let ((_%e175991176019%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175990176016%_))))
                                        (let ((_%hd175992176022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175991176019%_)))
                                              (_%tl175993176024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175991176019%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175993176024%_))
                                              ((lambda (_%g175983176027%_
                                                        _%g175984176028%_)
                                                 (let ((_%sym176043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g175984176028%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym176043%_))
                                                   (let ((__tmp176227
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp176227
                                                      _%sym176043%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self175978%_
                                                      _%g175983176027%_))))
                                               _%hd175992176022%_
                                               _%hd175989176014%_)
                                              (_%g175981175998%_
                                               _%g175982176001%_))))
                                      (_%g175981175998%_ _%g175982176001%_))))
                              (_%g175981175998%_ _%g175982176001%_))))
                      (_%g175981175998%_ _%g175982176001%_)))))
          (_%g175980176045%_ _%stx175979%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self175926%_ _%stx175927%_)
        (let* ((_%g175929175942%_
                (lambda (_%g175930175939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175930175939%_))))
               (_%g175928175975%_
                (lambda (_%g175930175945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175930175945%_))
                      (let ((_%e175932175947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175930175945%_))))
                        (let ((_%hd175933175950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175932175947%_)))
                              (_%tl175934175952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175932175947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175934175952%_))
                              (let ((_%e175935175955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175934175952%_))))
                                (let ((_%hd175936175958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175935175955%_)))
                                      (_%tl175937175960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175935175955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl175937175960%_))
                                      ((lambda (_%g175931175963%_)
                                         (if (let ((__tmp176228
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self175926%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g175931175963%_
                                                __tmp176228))
                                             (let ((__tmp176229
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self175926%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176229
                                                _%stx175927%_))
                                             _%stx175927%_))
                                       _%hd175936175958%_)
                                      (_%g175929175942%_ _%g175930175945%_))))
                              (_%g175929175942%_ _%g175930175945%_))))
                      (_%g175929175942%_ _%g175930175945%_)))))
          (_%g175928175975%_ _%stx175927%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self175866%_ _%stx175867%_)
        (let* ((_%g175869175882%_
                (lambda (_%g175870175879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175870175879%_))))
               (_%g175868175923%_
                (lambda (_%g175870175885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175870175885%_))
                      (let ((_%e175872175887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175870175885%_))))
                        (let ((_%hd175873175890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175872175887%_)))
                              (_%tl175874175892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175872175887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175874175892%_))
                              (let ((_%e175875175895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175874175892%_))))
                                (let ((_%hd175876175898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175875175895%_)))
                                      (_%tl175877175900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175875175895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl175877175900%_))
                                      ((lambda (_%g175871175903%_)
                                         (let ((_%$e175917%_
                                                (let ((__tmp176231
                                                       (lambda (_%sub175915%_)
                                                         (let ((__tmp176232
                                                                (car _%sub175915%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g175871175903%_
                                                            __tmp176232))))
                                                      (__tmp176230
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self175866%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp176231
                                                          __tmp176230))))
                                           (if _%$e175917%_
                                               ((lambda (_%sub175920%_)
                                                  (let ((__tmp176233
                                                         (cons '%#ref
                                                               (cons (cdr _%sub175920%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp176233
                                                     _%stx175867%_)))
                                                _%$e175917%_)
                                               _%stx175867%_)))
                                       _%hd175876175898%_)
                                      (_%g175869175882%_ _%g175870175885%_))))
                              (_%g175869175882%_ _%g175870175885%_))))
                      (_%g175869175882%_ _%g175870175885%_)))))
          (_%g175868175923%_ _%stx175867%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self175795%_ _%stx175796%_)
        (let* ((_%g175798175815%_
                (lambda (_%g175799175812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175799175812%_))))
               (_%g175797175863%_
                (lambda (_%g175799175818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175799175818%_))
                      (let ((_%e175802175820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175799175818%_))))
                        (let ((_%hd175803175823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175802175820%_)))
                              (_%tl175804175825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175802175820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175804175825%_))
                              (let ((_%e175805175828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175804175825%_))))
                                (let ((_%hd175806175831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175805175828%_)))
                                      (_%tl175807175833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175805175828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175807175833%_))
                                      (let ((_%e175808175836%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175807175833%_))))
                                        (let ((_%hd175809175839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175808175836%_)))
                                              (_%tl175810175841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175808175836%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175810175841%_))
                                              ((lambda (_%g175800175844%_
                                                        _%g175801175845%_)
                                                 (let ((_%new-expr175860%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self175795%_
                                                           _%g175800175844%_)))
                                                       (_%new-xid175861%_
                                                        (if (let ((__tmp176234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self175795%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g175801175845%_ __tmp176234))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self175795%_ 'new-id))
                    _%g175801175845%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp176235
                                                          (cons '%#set!
                                                                (cons _%new-xid175861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr175860%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176235
                                                      _%stx175796%_))))
                                               _%hd175809175839%_
                                               _%hd175806175831%_)
                                              (_%g175798175815%_
                                               _%g175799175818%_))))
                                      (_%g175798175815%_ _%g175799175818%_))))
                              (_%g175798175815%_ _%g175799175818%_))))
                      (_%g175798175815%_ _%g175799175818%_)))))
          (_%g175797175863%_ _%stx175796%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self175718%_ _%stx175719%_)
        (let* ((_%g175721175738%_
                (lambda (_%g175722175735%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175722175735%_))))
               (_%g175720175792%_
                (lambda (_%g175722175741%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175722175741%_))
                      (let ((_%e175725175743%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175722175741%_))))
                        (let ((_%hd175726175746%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175725175743%_)))
                              (_%tl175727175748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175725175743%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175727175748%_))
                              (let ((_%e175728175751%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175727175748%_))))
                                (let ((_%hd175729175754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175728175751%_)))
                                      (_%tl175730175756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175728175751%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175730175756%_))
                                      (let ((_%e175731175759%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175730175756%_))))
                                        (let ((_%hd175732175762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175731175759%_)))
                                              (_%tl175733175764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175731175759%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175733175764%_))
                                              ((lambda (_%g175723175767%_
                                                        _%g175724175768%_)
                                                 (let ((_%new-expr175789%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self175718%_
                                                           _%g175723175767%_)))
                                                       (_%new-xid175790%_
                                                        (let ((_%$e175785%_
                                                               (let ((__tmp176237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub175783%_)
                                (let ((__tmp176238 (car _%sub175783%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g175724175768%_
                                   __tmp176238))))
                             (__tmp176236
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self175718%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp176237 __tmp176236))))
                  (if _%$e175785%_ (cdr _%$e175785%_) _%g175724175768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp176239
                                                          (cons '%#set!
                                                                (cons _%new-xid175790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr175789%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176239
                                                      _%stx175719%_))))
                                               _%hd175732175762%_
                                               _%hd175729175754%_)
                                              (_%g175721175738%_
                                               _%g175722175741%_))))
                                      (_%g175721175738%_ _%g175722175741%_))))
                              (_%g175721175738%_ _%g175722175741%_))))
                      (_%g175721175738%_ _%g175722175741%_)))))
          (_%g175720175792%_ _%stx175719%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self175664%_ _%stx175665%_)
        (let* ((_%g175667175680%_
                (lambda (_%g175668175677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175668175677%_))))
               (_%g175666175715%_
                (lambda (_%g175668175683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175668175683%_))
                      (let ((_%e175670175685%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175668175683%_))))
                        (let ((_%hd175671175688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175670175685%_)))
                              (_%tl175672175690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175670175685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175672175690%_))
                              (let ((_%e175673175693%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175672175690%_))))
                                (let ((_%hd175674175696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175673175693%_)))
                                      (_%tl175675175698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175673175693%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl175675175698%_))
                                      ((lambda (_%g175669175701%_)
                                         (let* ((_%eid175713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g175669175701%_)))
                                                (__tmp176240
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self175664%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp176240
                                            _%eid175713%_
                                            1+
                                            '0)))
                                       _%hd175674175696%_)
                                      (_%g175667175680%_ _%g175668175683%_))))
                              (_%g175667175680%_ _%g175668175683%_))))
                      (_%g175667175680%_ _%g175668175683%_)))))
          (_%g175666175715%_ _%stx175665%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self175594%_ _%stx175595%_)
        (let* ((_%g175597175614%_
                (lambda (_%g175598175611%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175598175611%_))))
               (_%g175596175661%_
                (lambda (_%g175598175617%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175598175617%_))
                      (let ((_%e175601175619%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175598175617%_))))
                        (let ((_%hd175602175622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175601175619%_)))
                              (_%tl175603175624%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175601175619%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175603175624%_))
                              (let ((_%e175604175627%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175603175624%_))))
                                (let ((_%hd175605175630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175604175627%_)))
                                      (_%tl175606175632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175604175627%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175606175632%_))
                                      (let ((_%e175607175635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175606175632%_))))
                                        (let ((_%hd175608175638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175607175635%_)))
                                              (_%tl175609175640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175607175635%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175609175640%_))
                                              ((lambda (_%g175599175643%_
                                                        _%g175600175644%_)
                                                 (let ((_%eid175659%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g175600175644%_))))
                                                   (let ((__tmp176241
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self175594%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp176241
                                                      _%eid175659%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self175594%_
                                                      _%g175599175643%_))))
                                               _%hd175608175638%_
                                               _%hd175605175630%_)
                                              (_%g175597175614%_
                                               _%g175598175617%_))))
                                      (_%g175597175614%_ _%g175598175617%_))))
                              (_%g175597175614%_ _%g175598175617%_))))
                      (_%g175597175614%_ _%g175598175617%_)))))
          (_%g175596175661%_ _%stx175595%_))))
    (define gxc#find-body%
      (lambda (_%self175509%_ _%stx175510%_)
        (let* ((_%g175512175531%_
                (lambda (_%g175513175528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175513175528%_))))
               (_%g175511175591%_
                (lambda (_%g175513175534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175513175534%_))
                      (let ((_%e175515175536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175513175534%_))))
                        (let ((_%hd175516175539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175515175536%_)))
                              (_%tl175517175541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175515175536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl175517175541%_))
                              (let ((_g176242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl175517175541%_
                                        '0))))
                                (begin
                                  (let ((_g176243_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g176242_)
                                               (##values-length _g176242_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g176243_ 2)))
                                        (error "Context expects 2 values"
                                               _g176243_)))
                                  (let ((_%target175518175544%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g176242_ 0)))
                                        (_%tl175520175546%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g176242_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl175520175546%_))
                                        (letrec ((_%loop175521175549%_
                                                  (lambda (_%hd175519175552%_
                                                           _%expr175525175554%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd175519175552%_))
                                                        (let ((_%e175522175556%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd175519175552%_))))
                  (let ((_%lp-hd175523175559%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175522175556%_)))
                        (_%lp-tl175524175561%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175522175556%_))))
                    (_%loop175521175549%_
                     _%lp-tl175524175561%_
                     (cons _%lp-hd175523175559%_ _%expr175525175554%_))))
                (let ((_%expr175526175564%_ (reverse _%expr175525175554%_)))
                  ((lambda (_%g175514175566%_)
                     (let ((__tmp176246
                            (lambda (_%g175579175581%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self175509%_
                                 _%g175579175581%_))))
                           (__tmp176244
                            (let ((__tmp176245
                                   (lambda (_%g175583175586%_
                                            _%g175584175588%_)
                                     (cons _%g175583175586%_
                                           _%g175584175588%_))))
                              (declare (not safe))
                              (__foldr1 __tmp176245 '() _%g175514175566%_))))
                       (declare (not safe))
                       (__ormap1 __tmp176246 __tmp176244)))
                   _%expr175526175564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop175521175549%_
                                           _%target175518175544%_
                                           '()))
                                        (_%g175512175531%_
                                         _%g175513175534%_)))))
                              (_%g175512175531%_ _%g175513175534%_))))
                      (_%g175512175531%_ _%g175513175534%_)))))
          (_%g175511175591%_ _%stx175510%_))))
    (define gxc#find-let-values%
      (lambda (_%self175363%_ _%stx175364%_)
        (let* ((_%g175366175401%_
                (lambda (_%g175367175398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175367175398%_))))
               (_%g175365175506%_
                (lambda (_%g175367175404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175367175404%_))
                      (let ((_%e175371175406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175367175404%_))))
                        (let ((_%hd175372175409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175371175406%_)))
                              (_%tl175373175411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175371175406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175373175411%_))
                              (let ((_%e175374175414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175373175411%_))))
                                (let ((_%hd175375175417%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175374175414%_)))
                                      (_%tl175376175419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175374175414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd175375175417%_))
                                      (let ((_g176247_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd175375175417%_
                                                '0))))
                                        (begin
                                          (let ((_g176248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g176247_)
                                                       (##values-length
                                                        _g176247_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g176248_ 2)))
                                                (error "Context expects 2 values"
                                                       _g176248_)))
                                          (let ((_%target175377175422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g176247_ 0)))
                                                (_%tl175379175424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g176247_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl175379175424%_))
                                                (letrec ((_%loop175380175427%_
                                                          (lambda (_%hd175378175430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr175384175432%_
                           _%bind175385175433%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd175378175430%_))
                        (let ((_%e175381175435%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd175378175430%_))))
                          (let ((_%lp-hd175382175438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e175381175435%_)))
                                (_%lp-tl175383175440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e175381175435%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd175382175438%_))
                                (let ((_%e175388175443%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd175382175438%_))))
                                  (let ((_%hd175389175446%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175388175443%_)))
                                        (_%tl175390175448%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175388175443%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl175390175448%_))
                                        (let ((_%e175391175451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl175390175448%_))))
                                          (let ((_%hd175392175454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175391175451%_)))
                                                (_%tl175393175456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175391175451%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl175393175456%_))
                                                (_%loop175380175427%_
                                                 _%lp-tl175383175440%_
                                                 (cons _%hd175392175454%_
                                                       _%expr175384175432%_)
                                                 (cons _%hd175389175446%_
                                                       _%bind175385175433%_))
                                                (_%g175366175401%_
                                                 _%g175367175404%_))))
                                        (_%g175366175401%_
                                         _%g175367175404%_))))
                                (_%g175366175401%_ _%g175367175404%_))))
                        (let ((_%expr175386175459%_
                               (reverse _%expr175384175432%_))
                              (_%bind175387175460%_
                               (reverse _%bind175385175433%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175376175419%_))
                              (let ((_%e175394175462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175376175419%_))))
                                (let ((_%hd175395175465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175394175462%_)))
                                      (_%tl175396175467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175394175462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl175396175467%_))
                                      ((lambda (_%g175368175470%_
                                                _%g175369175471%_
                                                _%g175370175472%_)
                                         (let ((_%$e175503%_
                                                (let ((__tmp176251
                                                       (lambda (_%g175491175493%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self175363%_
                                                            _%g175491175493%_))))
                                                      (__tmp176249
                                                       (let ((__tmp176250
                                                              (lambda (_%g175495175498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g175496175500%_)
                        (cons _%g175495175498%_ _%g175496175500%_))))
                 (declare (not safe))
                 (__foldr1 __tmp176250 '() _%g175369175471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp176251
                                                   __tmp176249))))
                                           (if _%$e175503%_
                                               _%$e175503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self175363%_
                                                  _%g175368175470%_)))))
                                       _%hd175395175465%_
                                       _%expr175386175459%_
                                       _%bind175387175460%_)
                                      (_%g175366175401%_ _%g175367175404%_))))
                              (_%g175366175401%_ _%g175367175404%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop175380175427%_
                                                   _%target175377175422%_
                                                   '()
                                                   '()))
                                                (_%g175366175401%_
                                                 _%g175367175404%_)))))
                                      (_%g175366175401%_ _%g175367175404%_))))
                              (_%g175366175401%_ _%g175367175404%_))))
                      (_%g175366175401%_ _%g175367175404%_)))))
          (_%g175365175506%_ _%stx175364%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self175307%_ _%stx175308%_)
        (let* ((_%g175310175323%_
                (lambda (_%g175311175320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175311175320%_))))
               (_%g175309175360%_
                (lambda (_%g175311175326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175311175326%_))
                      (let ((_%e175313175328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175311175326%_))))
                        (let ((_%hd175314175331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175313175328%_)))
                              (_%tl175315175333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175313175328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175315175333%_))
                              (let ((_%e175316175336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175315175333%_))))
                                (let ((_%hd175317175339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175316175336%_)))
                                      (_%tl175318175341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175316175336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl175318175341%_))
                                      ((lambda (_%g175312175344%_)
                                         (let ((__tmp176253
                                                (lambda (_%g175355175357%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g175312175344%_
                                                     _%g175355175357%_))))
                                               (__tmp176252
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self175307%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp176253 __tmp176252)))
                                       _%hd175317175339%_)
                                      (_%g175310175323%_ _%g175311175326%_))))
                              (_%g175310175323%_ _%g175311175326%_))))
                      (_%g175310175323%_ _%g175311175326%_)))))
          (_%g175309175360%_ _%stx175308%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self175232%_ _%stx175233%_)
        (let* ((_%g175235175252%_
                (lambda (_%g175236175249%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g175236175249%_))))
               (_%g175234175304%_
                (lambda (_%g175236175255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g175236175255%_))
                      (let ((_%e175239175257%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g175236175255%_))))
                        (let ((_%hd175240175260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175239175257%_)))
                              (_%tl175241175262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175239175257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl175241175262%_))
                              (let ((_%e175242175265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl175241175262%_))))
                                (let ((_%hd175243175268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e175242175265%_)))
                                      (_%tl175244175270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e175242175265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175244175270%_))
                                      (let ((_%e175245175273%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175244175270%_))))
                                        (let ((_%hd175246175276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175245175273%_)))
                                              (_%tl175247175278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175245175273%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175247175278%_))
                                              ((lambda (_%g175237175281%_
                                                        _%g175238175282%_)
                                                 (let ((_%$e175301%_
                                                        (let ((__tmp176255
                                                               (lambda (_%g175296175298%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g175238175282%_
                            _%g175296175298%_))))
                      (__tmp176254
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self175232%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp176255 __tmp176254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e175301%_
                                                       _%$e175301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self175232%_
                                                          _%g175237175281%_)))))
                                               _%hd175246175276%_
                                               _%hd175243175268%_)
                                              (_%g175235175252%_
                                               _%g175236175255%_))))
                                      (_%g175235175252%_ _%g175236175255%_))))
                              (_%g175235175252%_ _%g175236175255%_))))
                      (_%g175235175252%_ _%g175236175255%_)))))
          (_%g175234175304%_ _%stx175233%_))))))
