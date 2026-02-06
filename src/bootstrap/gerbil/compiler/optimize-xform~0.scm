(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770342551)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp200733 (list gxc#::void::t))
            (__tmp200732 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp200733
         '()
         __tmp200732
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args200719%_
        (apply make-instance gxc#::collect-mutators::t _%$args200719%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp200734
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
        (__make-atomic-promise __tmp200734)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx200711%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self200714%_
                (let ((__obj200722
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj200722))
               (__tmp200735
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200714%_ _%stx200711%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp200735
           gxc#current-compile-method
           _%self200714%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp200737 (list gxc#::basic-xform-expression::t))
            (__tmp200736 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp200737
         '(id new-id)
         __tmp200736
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args200708%_
        (apply make-instance gxc#::expression-subst::t _%$args200708%_)))
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
      (let ((__tmp200738
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
        (__make-atomic-promise __tmp200738)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords200680%_
               _%id200676200681%_
               _%new-id200677200682%_
               _%stx200683%_)
        (let* ((_%id200686%_
                (if (eq? _%id200676200681%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id200676200681%_))
               (_%new-id200688%_
                (if (eq? _%new-id200677200682%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id200677200682%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self200690%_
                  (let ((__obj200724
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200724
                       _%id200686%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200724
                       _%new-id200688%_
                       '2
                       '#f
                       '#f))
                    __obj200724))
                 (__tmp200739
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200690%_ _%stx200683%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp200739
             gxc#current-compile-method
             _%self200690%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords200697%_ . _%args200698%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords200697%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords200697%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200697%_
                  'new-id:
                  absent-value))
               _%args200698%_)))
    (define gxc#apply-expression-subst
      (lambda _%args200678200704%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args200678200704%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp200741 (list gxc#::basic-xform-expression::t))
            (__tmp200740 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp200741
         '(subst)
         __tmp200740
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args200672%_
        (apply make-instance gxc#::expression-subst*::t _%$args200672%_)))
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
      (let ((__tmp200742
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
        (__make-atomic-promise __tmp200742)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords200647%_ _%subst200644200648%_ _%stx200649%_)
        (let ((_%subst200652%_
               (if (eq? _%subst200644200648%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst200644200648%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self200654%_
                  (let ((__obj200726
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200726
                       _%subst200652%_
                       '1
                       '#f
                       '#f))
                    __obj200726))
                 (__tmp200743
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200654%_ _%stx200649%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp200743
             gxc#current-compile-method
             _%self200654%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords200661%_ . _%args200662%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords200661%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200661%_
                  'subst:
                  absent-value))
               _%args200662%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args200645200668%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args200645200668%_)))
    (define gxc#::find-expression::t
      (let ((__tmp200744 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp200744
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args200640%_
        (apply make-instance gxc#::find-expression::t _%$args200640%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp200745
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
        (__make-atomic-promise __tmp200745)))
    (define gxc#::find-var-refs::t
      (let ((__tmp200747 (list gxc#::find-expression::t))
            (__tmp200746 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp200747
         '(ids)
         __tmp200746
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args200636%_
        (apply make-instance gxc#::find-var-refs::t _%$args200636%_)))
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
      (let ((__tmp200748
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
        (__make-atomic-promise __tmp200748)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords200611%_ _%ids200608200612%_ _%stx200613%_)
        (let ((_%ids200616%_
               (if (eq? _%ids200608200612%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids200608200612%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self200618%_
                  (let ((__obj200729
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200729
                       _%ids200616%_
                       '1
                       '#f
                       '#f))
                    __obj200729))
                 (__tmp200749
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200618%_ _%stx200613%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp200749
             gxc#current-compile-method
             _%self200618%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords200625%_ . _%args200626%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords200625%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords200625%_ 'ids: absent-value))
               _%args200626%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args200609200632%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args200609200632%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp200751 (list gxc#::collect-expression-refs::t))
            (__tmp200750 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp200751
         '()
         __tmp200750
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args200604%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args200604%_)))
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
      (let ((__tmp200752
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
        (__make-atomic-promise __tmp200752)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords200579%_ _%table200576200580%_ _%stx200581%_)
        (let ((_%table200584%_
               (if (eq? _%table200576200580%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table200576200580%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self200586%_
                  (let ((__obj200731
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200731
                       _%table200584%_
                       '1
                       '#f
                       '#f))
                    __obj200731))
                 (__tmp200753
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200586%_ _%stx200581%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp200753
             gxc#current-compile-method
             _%self200586%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords200593%_ . _%args200594%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords200593%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200593%_
                  'table:
                  absent-value))
               _%args200594%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args200577200600%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args200577200600%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self200505%_ _%stx200506%_)
        (let* ((_%g200508200525%_
                (lambda (_%g200509200522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200509200522%_))))
               (_%g200507200572%_
                (lambda (_%g200509200528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200509200528%_))
                      (let ((_%e200512200530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200509200528%_))))
                        (let ((_%hd200513200533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200512200530%_)))
                              (_%tl200514200535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200512200530%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200514200535%_))
                              (let ((_%e200515200538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200514200535%_))))
                                (let ((_%hd200516200541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200515200538%_)))
                                      (_%tl200517200543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200515200538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200517200543%_))
                                      (let ((_%e200518200546%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200517200543%_))))
                                        (let ((_%hd200519200549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200518200546%_)))
                                              (_%tl200520200551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200518200546%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200520200551%_))
                                              ((lambda (_%g200510200554%_
                                                        _%g200511200555%_)
                                                 (let ((_%sym200570%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g200511200555%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym200570%_))
                                                   (let ((__tmp200754
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp200754
                                                      _%sym200570%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200505%_
                                                      _%g200510200554%_))))
                                               _%hd200519200549%_
                                               _%hd200516200541%_)
                                              (_%g200508200525%_
                                               _%g200509200528%_))))
                                      (_%g200508200525%_ _%g200509200528%_))))
                              (_%g200508200525%_ _%g200509200528%_))))
                      (_%g200508200525%_ _%g200509200528%_)))))
          (_%g200507200572%_ _%stx200506%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self200453%_ _%stx200454%_)
        (let* ((_%g200456200469%_
                (lambda (_%g200457200466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200457200466%_))))
               (_%g200455200502%_
                (lambda (_%g200457200472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200457200472%_))
                      (let ((_%e200459200474%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200457200472%_))))
                        (let ((_%hd200460200477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200459200474%_)))
                              (_%tl200461200479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200459200474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200461200479%_))
                              (let ((_%e200462200482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200461200479%_))))
                                (let ((_%hd200463200485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200462200482%_)))
                                      (_%tl200464200487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200462200482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200464200487%_))
                                      ((lambda (_%g200458200490%_)
                                         (if (let ((__tmp200755
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self200453%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g200458200490%_
                                                __tmp200755))
                                             (let ((__tmp200756
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self200453%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp200756
                                                _%stx200454%_))
                                             _%stx200454%_))
                                       _%hd200463200485%_)
                                      (_%g200456200469%_ _%g200457200472%_))))
                              (_%g200456200469%_ _%g200457200472%_))))
                      (_%g200456200469%_ _%g200457200472%_)))))
          (_%g200455200502%_ _%stx200454%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self200393%_ _%stx200394%_)
        (let* ((_%g200396200409%_
                (lambda (_%g200397200406%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200397200406%_))))
               (_%g200395200450%_
                (lambda (_%g200397200412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200397200412%_))
                      (let ((_%e200399200414%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200397200412%_))))
                        (let ((_%hd200400200417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200399200414%_)))
                              (_%tl200401200419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200399200414%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200401200419%_))
                              (let ((_%e200402200422%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200401200419%_))))
                                (let ((_%hd200403200425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200402200422%_)))
                                      (_%tl200404200427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200402200422%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200404200427%_))
                                      ((lambda (_%g200398200430%_)
                                         (let ((_%$e200444%_
                                                (let ((__tmp200758
                                                       (lambda (_%sub200442%_)
                                                         (let ((__tmp200759
                                                                (car _%sub200442%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g200398200430%_
                                                            __tmp200759))))
                                                      (__tmp200757
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self200393%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp200758
                                                          __tmp200757))))
                                           (if _%$e200444%_
                                               ((lambda (_%sub200447%_)
                                                  (let ((__tmp200760
                                                         (cons '%#ref
                                                               (cons (cdr _%sub200447%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp200760
                                                     _%stx200394%_)))
                                                _%$e200444%_)
                                               _%stx200394%_)))
                                       _%hd200403200425%_)
                                      (_%g200396200409%_ _%g200397200412%_))))
                              (_%g200396200409%_ _%g200397200412%_))))
                      (_%g200396200409%_ _%g200397200412%_)))))
          (_%g200395200450%_ _%stx200394%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self200322%_ _%stx200323%_)
        (let* ((_%g200325200342%_
                (lambda (_%g200326200339%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200326200339%_))))
               (_%g200324200390%_
                (lambda (_%g200326200345%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200326200345%_))
                      (let ((_%e200329200347%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200326200345%_))))
                        (let ((_%hd200330200350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200329200347%_)))
                              (_%tl200331200352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200329200347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200331200352%_))
                              (let ((_%e200332200355%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200331200352%_))))
                                (let ((_%hd200333200358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200332200355%_)))
                                      (_%tl200334200360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200332200355%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200334200360%_))
                                      (let ((_%e200335200363%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200334200360%_))))
                                        (let ((_%hd200336200366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200335200363%_)))
                                              (_%tl200337200368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200335200363%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200337200368%_))
                                              ((lambda (_%g200327200371%_
                                                        _%g200328200372%_)
                                                 (let ((_%new-expr200387%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self200322%_
                                                           _%g200327200371%_)))
                                                       (_%new-xid200388%_
                                                        (if (let ((__tmp200761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self200322%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g200328200372%_ __tmp200761))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self200322%_ 'new-id))
                    _%g200328200372%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp200762
                                                          (cons '%#set!
                                                                (cons _%new-xid200388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr200387%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp200762
                                                      _%stx200323%_))))
                                               _%hd200336200366%_
                                               _%hd200333200358%_)
                                              (_%g200325200342%_
                                               _%g200326200345%_))))
                                      (_%g200325200342%_ _%g200326200345%_))))
                              (_%g200325200342%_ _%g200326200345%_))))
                      (_%g200325200342%_ _%g200326200345%_)))))
          (_%g200324200390%_ _%stx200323%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self200245%_ _%stx200246%_)
        (let* ((_%g200248200265%_
                (lambda (_%g200249200262%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200249200262%_))))
               (_%g200247200319%_
                (lambda (_%g200249200268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200249200268%_))
                      (let ((_%e200252200270%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200249200268%_))))
                        (let ((_%hd200253200273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200252200270%_)))
                              (_%tl200254200275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200252200270%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200254200275%_))
                              (let ((_%e200255200278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200254200275%_))))
                                (let ((_%hd200256200281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200255200278%_)))
                                      (_%tl200257200283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200255200278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200257200283%_))
                                      (let ((_%e200258200286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200257200283%_))))
                                        (let ((_%hd200259200289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200258200286%_)))
                                              (_%tl200260200291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200258200286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200260200291%_))
                                              ((lambda (_%g200250200294%_
                                                        _%g200251200295%_)
                                                 (let ((_%new-expr200316%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self200245%_
                                                           _%g200250200294%_)))
                                                       (_%new-xid200317%_
                                                        (let ((_%$e200312%_
                                                               (let ((__tmp200764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub200310%_)
                                (let ((__tmp200765 (car _%sub200310%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g200251200295%_
                                   __tmp200765))))
                             (__tmp200763
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self200245%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp200764 __tmp200763))))
                  (if _%$e200312%_ (cdr _%$e200312%_) _%g200251200295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp200766
                                                          (cons '%#set!
                                                                (cons _%new-xid200317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr200316%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp200766
                                                      _%stx200246%_))))
                                               _%hd200259200289%_
                                               _%hd200256200281%_)
                                              (_%g200248200265%_
                                               _%g200249200268%_))))
                                      (_%g200248200265%_ _%g200249200268%_))))
                              (_%g200248200265%_ _%g200249200268%_))))
                      (_%g200248200265%_ _%g200249200268%_)))))
          (_%g200247200319%_ _%stx200246%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self200191%_ _%stx200192%_)
        (let* ((_%g200194200207%_
                (lambda (_%g200195200204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200195200204%_))))
               (_%g200193200242%_
                (lambda (_%g200195200210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200195200210%_))
                      (let ((_%e200197200212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200195200210%_))))
                        (let ((_%hd200198200215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200197200212%_)))
                              (_%tl200199200217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200197200212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200199200217%_))
                              (let ((_%e200200200220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200199200217%_))))
                                (let ((_%hd200201200223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200200200220%_)))
                                      (_%tl200202200225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200200200220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200202200225%_))
                                      ((lambda (_%g200196200228%_)
                                         (let* ((_%eid200240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g200196200228%_)))
                                                (__tmp200767
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self200191%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp200767
                                            _%eid200240%_
                                            1+
                                            '0)))
                                       _%hd200201200223%_)
                                      (_%g200194200207%_ _%g200195200210%_))))
                              (_%g200194200207%_ _%g200195200210%_))))
                      (_%g200194200207%_ _%g200195200210%_)))))
          (_%g200193200242%_ _%stx200192%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self200121%_ _%stx200122%_)
        (let* ((_%g200124200141%_
                (lambda (_%g200125200138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200125200138%_))))
               (_%g200123200188%_
                (lambda (_%g200125200144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200125200144%_))
                      (let ((_%e200128200146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200125200144%_))))
                        (let ((_%hd200129200149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200128200146%_)))
                              (_%tl200130200151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200128200146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200130200151%_))
                              (let ((_%e200131200154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200130200151%_))))
                                (let ((_%hd200132200157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200131200154%_)))
                                      (_%tl200133200159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200131200154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200133200159%_))
                                      (let ((_%e200134200162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200133200159%_))))
                                        (let ((_%hd200135200165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200134200162%_)))
                                              (_%tl200136200167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200134200162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200136200167%_))
                                              ((lambda (_%g200126200170%_
                                                        _%g200127200171%_)
                                                 (let ((_%eid200186%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g200127200171%_))))
                                                   (let ((__tmp200768
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self200121%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp200768
                                                      _%eid200186%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200121%_
                                                      _%g200126200170%_))))
                                               _%hd200135200165%_
                                               _%hd200132200157%_)
                                              (_%g200124200141%_
                                               _%g200125200144%_))))
                                      (_%g200124200141%_ _%g200125200144%_))))
                              (_%g200124200141%_ _%g200125200144%_))))
                      (_%g200124200141%_ _%g200125200144%_)))))
          (_%g200123200188%_ _%stx200122%_))))
    (define gxc#find-body%
      (lambda (_%self200036%_ _%stx200037%_)
        (let* ((_%g200039200058%_
                (lambda (_%g200040200055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200040200055%_))))
               (_%g200038200118%_
                (lambda (_%g200040200061%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200040200061%_))
                      (let ((_%e200042200063%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200040200061%_))))
                        (let ((_%hd200043200066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200042200063%_)))
                              (_%tl200044200068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200042200063%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200044200068%_))
                              (let ((_g200769_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200044200068%_
                                        '0))))
                                (begin
                                  (let ((_g200770_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g200769_)
                                               (##values-length _g200769_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g200770_ 2)))
                                        (error "Context expects 2 values"
                                               _g200770_)))
                                  (let ((_%target200045200071%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g200769_ 0)))
                                        (_%tl200047200073%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g200769_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200047200073%_))
                                        (letrec ((_%loop200048200076%_
                                                  (lambda (_%hd200046200079%_
                                                           _%expr200052200081%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200046200079%_))
                                                        (let ((_%e200049200083%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd200046200079%_))))
                  (let ((_%lp-hd200050200086%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200049200083%_)))
                        (_%lp-tl200051200088%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200049200083%_))))
                    (_%loop200048200076%_
                     _%lp-tl200051200088%_
                     (cons _%lp-hd200050200086%_ _%expr200052200081%_))))
                (let ((_%expr200053200091%_ (reverse _%expr200052200081%_)))
                  ((lambda (_%g200041200093%_)
                     (let ((__tmp200773
                            (lambda (_%g200106200108%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self200036%_
                                 _%g200106200108%_))))
                           (__tmp200771
                            (let ((__tmp200772
                                   (lambda (_%g200110200113%_
                                            _%g200111200115%_)
                                     (cons _%g200110200113%_
                                           _%g200111200115%_))))
                              (declare (not safe))
                              (__foldr1 __tmp200772 '() _%g200041200093%_))))
                       (declare (not safe))
                       (__ormap1 __tmp200773 __tmp200771)))
                   _%expr200053200091%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200048200076%_
                                           _%target200045200071%_
                                           '()))
                                        (_%g200039200058%_
                                         _%g200040200061%_)))))
                              (_%g200039200058%_ _%g200040200061%_))))
                      (_%g200039200058%_ _%g200040200061%_)))))
          (_%g200038200118%_ _%stx200037%_))))
    (define gxc#find-let-values%
      (lambda (_%self199890%_ _%stx199891%_)
        (let* ((_%g199893199928%_
                (lambda (_%g199894199925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199894199925%_))))
               (_%g199892200033%_
                (lambda (_%g199894199931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199894199931%_))
                      (let ((_%e199898199933%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199894199931%_))))
                        (let ((_%hd199899199936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199898199933%_)))
                              (_%tl199900199938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199898199933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199900199938%_))
                              (let ((_%e199901199941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199900199938%_))))
                                (let ((_%hd199902199944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199901199941%_)))
                                      (_%tl199903199946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199901199941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd199902199944%_))
                                      (let ((_g200774_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd199902199944%_
                                                '0))))
                                        (begin
                                          (let ((_g200775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g200774_)
                                                       (##values-length
                                                        _g200774_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g200775_ 2)))
                                                (error "Context expects 2 values"
                                                       _g200775_)))
                                          (let ((_%target199904199949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g200774_ 0)))
                                                (_%tl199906199951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g200774_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199906199951%_))
                                                (letrec ((_%loop199907199954%_
                                                          (lambda (_%hd199905199957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr199911199959%_
                           _%bind199912199960%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199905199957%_))
                        (let ((_%e199908199962%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199905199957%_))))
                          (let ((_%lp-hd199909199965%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199908199962%_)))
                                (_%lp-tl199910199967%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199908199962%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd199909199965%_))
                                (let ((_%e199915199970%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd199909199965%_))))
                                  (let ((_%hd199916199973%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199915199970%_)))
                                        (_%tl199917199975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199915199970%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199917199975%_))
                                        (let ((_%e199918199978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199917199975%_))))
                                          (let ((_%hd199919199981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199918199978%_)))
                                                (_%tl199920199983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199918199978%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199920199983%_))
                                                (_%loop199907199954%_
                                                 _%lp-tl199910199967%_
                                                 (cons _%hd199919199981%_
                                                       _%expr199911199959%_)
                                                 (cons _%hd199916199973%_
                                                       _%bind199912199960%_))
                                                (_%g199893199928%_
                                                 _%g199894199931%_))))
                                        (_%g199893199928%_
                                         _%g199894199931%_))))
                                (_%g199893199928%_ _%g199894199931%_))))
                        (let ((_%expr199913199986%_
                               (reverse _%expr199911199959%_))
                              (_%bind199914199987%_
                               (reverse _%bind199912199960%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199903199946%_))
                              (let ((_%e199921199989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199903199946%_))))
                                (let ((_%hd199922199992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199921199989%_)))
                                      (_%tl199923199994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199921199989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199923199994%_))
                                      ((lambda (_%g199895199997%_
                                                _%g199896199998%_
                                                _%g199897199999%_)
                                         (let ((_%$e200030%_
                                                (let ((__tmp200778
                                                       (lambda (_%g200018200020%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self199890%_
                                                            _%g200018200020%_))))
                                                      (__tmp200776
                                                       (let ((__tmp200777
                                                              (lambda (_%g200022200025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g200023200027%_)
                        (cons _%g200022200025%_ _%g200023200027%_))))
                 (declare (not safe))
                 (__foldr1 __tmp200777 '() _%g199896199998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp200778
                                                   __tmp200776))))
                                           (if _%$e200030%_
                                               _%$e200030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self199890%_
                                                  _%g199895199997%_)))))
                                       _%hd199922199992%_
                                       _%expr199913199986%_
                                       _%bind199914199987%_)
                                      (_%g199893199928%_ _%g199894199931%_))))
                              (_%g199893199928%_ _%g199894199931%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199907199954%_
                                                   _%target199904199949%_
                                                   '()
                                                   '()))
                                                (_%g199893199928%_
                                                 _%g199894199931%_)))))
                                      (_%g199893199928%_ _%g199894199931%_))))
                              (_%g199893199928%_ _%g199894199931%_))))
                      (_%g199893199928%_ _%g199894199931%_)))))
          (_%g199892200033%_ _%stx199891%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self199834%_ _%stx199835%_)
        (let* ((_%g199837199850%_
                (lambda (_%g199838199847%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199838199847%_))))
               (_%g199836199887%_
                (lambda (_%g199838199853%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199838199853%_))
                      (let ((_%e199840199855%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199838199853%_))))
                        (let ((_%hd199841199858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199840199855%_)))
                              (_%tl199842199860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199840199855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199842199860%_))
                              (let ((_%e199843199863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199842199860%_))))
                                (let ((_%hd199844199866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199843199863%_)))
                                      (_%tl199845199868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199843199863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199845199868%_))
                                      ((lambda (_%g199839199871%_)
                                         (let ((__tmp200780
                                                (lambda (_%g199882199884%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g199839199871%_
                                                     _%g199882199884%_))))
                                               (__tmp200779
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self199834%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp200780 __tmp200779)))
                                       _%hd199844199866%_)
                                      (_%g199837199850%_ _%g199838199853%_))))
                              (_%g199837199850%_ _%g199838199853%_))))
                      (_%g199837199850%_ _%g199838199853%_)))))
          (_%g199836199887%_ _%stx199835%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self199759%_ _%stx199760%_)
        (let* ((_%g199762199779%_
                (lambda (_%g199763199776%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199763199776%_))))
               (_%g199761199831%_
                (lambda (_%g199763199782%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199763199782%_))
                      (let ((_%e199766199784%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199763199782%_))))
                        (let ((_%hd199767199787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199766199784%_)))
                              (_%tl199768199789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199766199784%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199768199789%_))
                              (let ((_%e199769199792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199768199789%_))))
                                (let ((_%hd199770199795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199769199792%_)))
                                      (_%tl199771199797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199769199792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199771199797%_))
                                      (let ((_%e199772199800%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199771199797%_))))
                                        (let ((_%hd199773199803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199772199800%_)))
                                              (_%tl199774199805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199772199800%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199774199805%_))
                                              ((lambda (_%g199764199808%_
                                                        _%g199765199809%_)
                                                 (let ((_%$e199828%_
                                                        (let ((__tmp200782
                                                               (lambda (_%g199823199825%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g199765199809%_
                            _%g199823199825%_))))
                      (__tmp200781
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self199759%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp200782 __tmp200781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e199828%_
                                                       _%$e199828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self199759%_
                                                          _%g199764199808%_)))))
                                               _%hd199773199803%_
                                               _%hd199770199795%_)
                                              (_%g199762199779%_
                                               _%g199763199782%_))))
                                      (_%g199762199779%_ _%g199763199782%_))))
                              (_%g199762199779%_ _%g199763199782%_))))
                      (_%g199762199779%_ _%g199763199782%_)))))
          (_%g199761199831%_ _%stx199760%_))))))
