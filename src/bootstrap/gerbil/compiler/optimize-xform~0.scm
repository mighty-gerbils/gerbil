(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1771030485)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp210668 (list gxc#::void::t))
            (__tmp210667 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp210668
         '()
         __tmp210667
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args210654%_
        (apply make-instance gxc#::collect-mutators::t _%$args210654%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp210669
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
        (__make-atomic-promise __tmp210669)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx210646%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self210649%_
                (let ((__obj210657
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj210657))
               (__tmp210670
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self210649%_ _%stx210646%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210670
           gxc#current-compile-method
           _%self210649%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp210672 (list gxc#::basic-xform-expression::t))
            (__tmp210671 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp210672
         '(id new-id)
         __tmp210671
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args210643%_
        (apply make-instance gxc#::expression-subst::t _%$args210643%_)))
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
      (let ((__tmp210673
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
        (__make-atomic-promise __tmp210673)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords210615%_
               _%id210611210616%_
               _%new-id210612210617%_
               _%stx210618%_)
        (let* ((_%id210621%_
                (if (eq? _%id210611210616%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id210611210616%_))
               (_%new-id210623%_
                (if (eq? _%new-id210612210617%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id210612210617%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self210625%_
                  (let ((__obj210659
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210659
                       _%id210621%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210659
                       _%new-id210623%_
                       '2
                       '#f
                       '#f))
                    __obj210659))
                 (__tmp210674
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210625%_ _%stx210618%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210674
             gxc#current-compile-method
             _%self210625%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords210632%_ . _%args210633%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords210632%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords210632%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210632%_
                  'new-id:
                  absent-value))
               _%args210633%_)))
    (define gxc#apply-expression-subst
      (lambda _%args210613210639%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args210613210639%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp210676 (list gxc#::basic-xform-expression::t))
            (__tmp210675 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp210676
         '(subst)
         __tmp210675
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args210607%_
        (apply make-instance gxc#::expression-subst*::t _%$args210607%_)))
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
      (let ((__tmp210677
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
        (__make-atomic-promise __tmp210677)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords210582%_ _%subst210579210583%_ _%stx210584%_)
        (let ((_%subst210587%_
               (if (eq? _%subst210579210583%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst210579210583%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self210589%_
                  (let ((__obj210661
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210661
                       _%subst210587%_
                       '1
                       '#f
                       '#f))
                    __obj210661))
                 (__tmp210678
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210589%_ _%stx210584%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210678
             gxc#current-compile-method
             _%self210589%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords210596%_ . _%args210597%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords210596%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210596%_
                  'subst:
                  absent-value))
               _%args210597%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args210580210603%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args210580210603%_)))
    (define gxc#::find-expression::t
      (let ((__tmp210679 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp210679
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args210575%_
        (apply make-instance gxc#::find-expression::t _%$args210575%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp210680
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
        (__make-atomic-promise __tmp210680)))
    (define gxc#::find-var-refs::t
      (let ((__tmp210682 (list gxc#::find-expression::t))
            (__tmp210681 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp210682
         '(ids)
         __tmp210681
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args210571%_
        (apply make-instance gxc#::find-var-refs::t _%$args210571%_)))
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
      (let ((__tmp210683
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
        (__make-atomic-promise __tmp210683)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords210546%_ _%ids210543210547%_ _%stx210548%_)
        (let ((_%ids210551%_
               (if (eq? _%ids210543210547%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids210543210547%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self210553%_
                  (let ((__obj210664
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210664
                       _%ids210551%_
                       '1
                       '#f
                       '#f))
                    __obj210664))
                 (__tmp210684
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210553%_ _%stx210548%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210684
             gxc#current-compile-method
             _%self210553%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords210560%_ . _%args210561%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords210560%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords210560%_ 'ids: absent-value))
               _%args210561%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args210544210567%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args210544210567%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp210686 (list gxc#::collect-expression-refs::t))
            (__tmp210685 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp210686
         '()
         __tmp210685
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args210539%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args210539%_)))
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
      (let ((__tmp210687
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
        (__make-atomic-promise __tmp210687)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords210514%_ _%table210511210515%_ _%stx210516%_)
        (let ((_%table210519%_
               (if (eq? _%table210511210515%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table210511210515%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self210521%_
                  (let ((__obj210666
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210666
                       _%table210519%_
                       '1
                       '#f
                       '#f))
                    __obj210666))
                 (__tmp210688
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210521%_ _%stx210516%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210688
             gxc#current-compile-method
             _%self210521%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords210528%_ . _%args210529%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords210528%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210528%_
                  'table:
                  absent-value))
               _%args210529%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args210512210535%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args210512210535%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self210440%_ _%stx210441%_)
        (let* ((_%g210443210460%_
                (lambda (_%g210444210457%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210444210457%_))))
               (_%g210442210507%_
                (lambda (_%g210444210463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210444210463%_))
                      (let ((_%e210447210465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210444210463%_))))
                        (let ((_%hd210448210468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210447210465%_)))
                              (_%tl210449210470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210447210465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210449210470%_))
                              (let ((_%e210450210473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210449210470%_))))
                                (let ((_%hd210451210476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210450210473%_)))
                                      (_%tl210452210478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210450210473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210452210478%_))
                                      (let ((_%e210453210481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210452210478%_))))
                                        (let ((_%hd210454210484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210453210481%_)))
                                              (_%tl210455210486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210453210481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210455210486%_))
                                              ((lambda (_%g210445210489%_
                                                        _%g210446210490%_)
                                                 (let ((_%sym210505%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g210446210490%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym210505%_))
                                                   (let ((__tmp210689
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp210689
                                                      _%sym210505%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210440%_
                                                      _%g210445210489%_))))
                                               _%hd210454210484%_
                                               _%hd210451210476%_)
                                              (_%g210443210460%_
                                               _%g210444210463%_))))
                                      (_%g210443210460%_ _%g210444210463%_))))
                              (_%g210443210460%_ _%g210444210463%_))))
                      (_%g210443210460%_ _%g210444210463%_)))))
          (_%g210442210507%_ _%stx210441%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self210388%_ _%stx210389%_)
        (let* ((_%g210391210404%_
                (lambda (_%g210392210401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210392210401%_))))
               (_%g210390210437%_
                (lambda (_%g210392210407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210392210407%_))
                      (let ((_%e210394210409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210392210407%_))))
                        (let ((_%hd210395210412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210394210409%_)))
                              (_%tl210396210414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210394210409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210396210414%_))
                              (let ((_%e210397210417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210396210414%_))))
                                (let ((_%hd210398210420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210397210417%_)))
                                      (_%tl210399210422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210397210417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210399210422%_))
                                      ((lambda (_%g210393210425%_)
                                         (if (let ((__tmp210690
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self210388%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g210393210425%_
                                                __tmp210690))
                                             (let ((__tmp210691
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self210388%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp210691
                                                _%stx210389%_))
                                             _%stx210389%_))
                                       _%hd210398210420%_)
                                      (_%g210391210404%_ _%g210392210407%_))))
                              (_%g210391210404%_ _%g210392210407%_))))
                      (_%g210391210404%_ _%g210392210407%_)))))
          (_%g210390210437%_ _%stx210389%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self210328%_ _%stx210329%_)
        (let* ((_%g210331210344%_
                (lambda (_%g210332210341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210332210341%_))))
               (_%g210330210385%_
                (lambda (_%g210332210347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210332210347%_))
                      (let ((_%e210334210349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210332210347%_))))
                        (let ((_%hd210335210352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210334210349%_)))
                              (_%tl210336210354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210334210349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210336210354%_))
                              (let ((_%e210337210357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210336210354%_))))
                                (let ((_%hd210338210360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210337210357%_)))
                                      (_%tl210339210362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210337210357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210339210362%_))
                                      ((lambda (_%g210333210365%_)
                                         (let ((_%$e210379%_
                                                (let ((__tmp210693
                                                       (lambda (_%sub210377%_)
                                                         (let ((__tmp210694
                                                                (car _%sub210377%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g210333210365%_
                                                            __tmp210694))))
                                                      (__tmp210692
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self210328%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp210693
                                                          __tmp210692))))
                                           (if _%$e210379%_
                                               ((lambda (_%sub210382%_)
                                                  (let ((__tmp210695
                                                         (cons '%#ref
                                                               (cons (cdr _%sub210382%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp210695
                                                     _%stx210329%_)))
                                                _%$e210379%_)
                                               _%stx210329%_)))
                                       _%hd210338210360%_)
                                      (_%g210331210344%_ _%g210332210347%_))))
                              (_%g210331210344%_ _%g210332210347%_))))
                      (_%g210331210344%_ _%g210332210347%_)))))
          (_%g210330210385%_ _%stx210329%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self210257%_ _%stx210258%_)
        (let* ((_%g210260210277%_
                (lambda (_%g210261210274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210261210274%_))))
               (_%g210259210325%_
                (lambda (_%g210261210280%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210261210280%_))
                      (let ((_%e210264210282%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210261210280%_))))
                        (let ((_%hd210265210285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210264210282%_)))
                              (_%tl210266210287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210264210282%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210266210287%_))
                              (let ((_%e210267210290%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210266210287%_))))
                                (let ((_%hd210268210293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210267210290%_)))
                                      (_%tl210269210295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210267210290%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210269210295%_))
                                      (let ((_%e210270210298%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210269210295%_))))
                                        (let ((_%hd210271210301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210270210298%_)))
                                              (_%tl210272210303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210270210298%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210272210303%_))
                                              ((lambda (_%g210262210306%_
                                                        _%g210263210307%_)
                                                 (let ((_%new-expr210322%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self210257%_
                                                           _%g210262210306%_)))
                                                       (_%new-xid210323%_
                                                        (if (let ((__tmp210696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self210257%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g210263210307%_ __tmp210696))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self210257%_ 'new-id))
                    _%g210263210307%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp210697
                                                          (cons '%#set!
                                                                (cons _%new-xid210323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr210322%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp210697
                                                      _%stx210258%_))))
                                               _%hd210271210301%_
                                               _%hd210268210293%_)
                                              (_%g210260210277%_
                                               _%g210261210280%_))))
                                      (_%g210260210277%_ _%g210261210280%_))))
                              (_%g210260210277%_ _%g210261210280%_))))
                      (_%g210260210277%_ _%g210261210280%_)))))
          (_%g210259210325%_ _%stx210258%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self210180%_ _%stx210181%_)
        (let* ((_%g210183210200%_
                (lambda (_%g210184210197%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210184210197%_))))
               (_%g210182210254%_
                (lambda (_%g210184210203%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210184210203%_))
                      (let ((_%e210187210205%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210184210203%_))))
                        (let ((_%hd210188210208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210187210205%_)))
                              (_%tl210189210210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210187210205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210189210210%_))
                              (let ((_%e210190210213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210189210210%_))))
                                (let ((_%hd210191210216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210190210213%_)))
                                      (_%tl210192210218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210190210213%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210192210218%_))
                                      (let ((_%e210193210221%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210192210218%_))))
                                        (let ((_%hd210194210224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210193210221%_)))
                                              (_%tl210195210226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210193210221%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210195210226%_))
                                              ((lambda (_%g210185210229%_
                                                        _%g210186210230%_)
                                                 (let ((_%new-expr210251%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self210180%_
                                                           _%g210185210229%_)))
                                                       (_%new-xid210252%_
                                                        (let ((_%$e210247%_
                                                               (let ((__tmp210699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub210245%_)
                                (let ((__tmp210700 (car _%sub210245%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g210186210230%_
                                   __tmp210700))))
                             (__tmp210698
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self210180%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp210699 __tmp210698))))
                  (if _%$e210247%_ (cdr _%$e210247%_) _%g210186210230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp210701
                                                          (cons '%#set!
                                                                (cons _%new-xid210252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr210251%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp210701
                                                      _%stx210181%_))))
                                               _%hd210194210224%_
                                               _%hd210191210216%_)
                                              (_%g210183210200%_
                                               _%g210184210203%_))))
                                      (_%g210183210200%_ _%g210184210203%_))))
                              (_%g210183210200%_ _%g210184210203%_))))
                      (_%g210183210200%_ _%g210184210203%_)))))
          (_%g210182210254%_ _%stx210181%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self210126%_ _%stx210127%_)
        (let* ((_%g210129210142%_
                (lambda (_%g210130210139%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210130210139%_))))
               (_%g210128210177%_
                (lambda (_%g210130210145%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210130210145%_))
                      (let ((_%e210132210147%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210130210145%_))))
                        (let ((_%hd210133210150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210132210147%_)))
                              (_%tl210134210152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210132210147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210134210152%_))
                              (let ((_%e210135210155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210134210152%_))))
                                (let ((_%hd210136210158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210135210155%_)))
                                      (_%tl210137210160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210135210155%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210137210160%_))
                                      ((lambda (_%g210131210163%_)
                                         (let* ((_%eid210175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g210131210163%_)))
                                                (__tmp210702
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self210126%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp210702
                                            _%eid210175%_
                                            1+
                                            '0)))
                                       _%hd210136210158%_)
                                      (_%g210129210142%_ _%g210130210145%_))))
                              (_%g210129210142%_ _%g210130210145%_))))
                      (_%g210129210142%_ _%g210130210145%_)))))
          (_%g210128210177%_ _%stx210127%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self210056%_ _%stx210057%_)
        (let* ((_%g210059210076%_
                (lambda (_%g210060210073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210060210073%_))))
               (_%g210058210123%_
                (lambda (_%g210060210079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210060210079%_))
                      (let ((_%e210063210081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210060210079%_))))
                        (let ((_%hd210064210084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210063210081%_)))
                              (_%tl210065210086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210063210081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210065210086%_))
                              (let ((_%e210066210089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210065210086%_))))
                                (let ((_%hd210067210092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210066210089%_)))
                                      (_%tl210068210094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210066210089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210068210094%_))
                                      (let ((_%e210069210097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210068210094%_))))
                                        (let ((_%hd210070210100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210069210097%_)))
                                              (_%tl210071210102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210069210097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210071210102%_))
                                              ((lambda (_%g210061210105%_
                                                        _%g210062210106%_)
                                                 (let ((_%eid210121%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g210062210106%_))))
                                                   (let ((__tmp210703
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self210056%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp210703
                                                      _%eid210121%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210056%_
                                                      _%g210061210105%_))))
                                               _%hd210070210100%_
                                               _%hd210067210092%_)
                                              (_%g210059210076%_
                                               _%g210060210079%_))))
                                      (_%g210059210076%_ _%g210060210079%_))))
                              (_%g210059210076%_ _%g210060210079%_))))
                      (_%g210059210076%_ _%g210060210079%_)))))
          (_%g210058210123%_ _%stx210057%_))))
    (define gxc#find-body%
      (lambda (_%self209971%_ _%stx209972%_)
        (let* ((_%g209974209993%_
                (lambda (_%g209975209990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209975209990%_))))
               (_%g209973210053%_
                (lambda (_%g209975209996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209975209996%_))
                      (let ((_%e209977209998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209975209996%_))))
                        (let ((_%hd209978210001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209977209998%_)))
                              (_%tl209979210003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209977209998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209979210003%_))
                              (let ((_g210704_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209979210003%_
                                        '0))))
                                (begin
                                  (let ((_g210705_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210704_)
                                               (##values-length _g210704_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210705_ 2)))
                                        (error "Context expects 2 values"
                                               _g210705_)))
                                  (let ((_%target209980210006%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210704_ 0)))
                                        (_%tl209982210008%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210704_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209982210008%_))
                                        (letrec ((_%loop209983210011%_
                                                  (lambda (_%hd209981210014%_
                                                           _%expr209987210016%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209981210014%_))
                                                        (let ((_%e209984210018%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd209981210014%_))))
                  (let ((_%lp-hd209985210021%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209984210018%_)))
                        (_%lp-tl209986210023%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209984210018%_))))
                    (_%loop209983210011%_
                     _%lp-tl209986210023%_
                     (cons _%lp-hd209985210021%_ _%expr209987210016%_))))
                (let ((_%expr209988210026%_ (reverse _%expr209987210016%_)))
                  ((lambda (_%g209976210028%_)
                     (let ((__tmp210708
                            (lambda (_%g210041210043%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self209971%_
                                 _%g210041210043%_))))
                           (__tmp210706
                            (let ((__tmp210707
                                   (lambda (_%g210045210048%_
                                            _%g210046210050%_)
                                     (cons _%g210045210048%_
                                           _%g210046210050%_))))
                              (declare (not safe))
                              (foldr__0 __tmp210707 '() _%g209976210028%_))))
                       (declare (not safe))
                       (ormap__0 __tmp210708 __tmp210706)))
                   _%expr209988210026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209983210011%_
                                           _%target209980210006%_
                                           '()))
                                        (_%g209974209993%_
                                         _%g209975209996%_)))))
                              (_%g209974209993%_ _%g209975209996%_))))
                      (_%g209974209993%_ _%g209975209996%_)))))
          (_%g209973210053%_ _%stx209972%_))))
    (define gxc#find-let-values%
      (lambda (_%self209825%_ _%stx209826%_)
        (let* ((_%g209828209863%_
                (lambda (_%g209829209860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209829209860%_))))
               (_%g209827209968%_
                (lambda (_%g209829209866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209829209866%_))
                      (let ((_%e209833209868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209829209866%_))))
                        (let ((_%hd209834209871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209833209868%_)))
                              (_%tl209835209873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209833209868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209835209873%_))
                              (let ((_%e209836209876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209835209873%_))))
                                (let ((_%hd209837209879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209836209876%_)))
                                      (_%tl209838209881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209836209876%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd209837209879%_))
                                      (let ((_g210709_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd209837209879%_
                                                '0))))
                                        (begin
                                          (let ((_g210710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210709_)
                                                       (##values-length
                                                        _g210709_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210710_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210710_)))
                                          (let ((_%target209839209884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210709_ 0)))
                                                (_%tl209841209886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210709_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl209841209886%_))
                                                (letrec ((_%loop209842209889%_
                                                          (lambda (_%hd209840209892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr209846209894%_
                           _%bind209847209895%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd209840209892%_))
                        (let ((_%e209843209897%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd209840209892%_))))
                          (let ((_%lp-hd209844209900%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209843209897%_)))
                                (_%lp-tl209845209902%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209843209897%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd209844209900%_))
                                (let ((_%e209850209905%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd209844209900%_))))
                                  (let ((_%hd209851209908%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e209850209905%_)))
                                        (_%tl209852209910%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e209850209905%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl209852209910%_))
                                        (let ((_%e209853209913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl209852209910%_))))
                                          (let ((_%hd209854209916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209853209913%_)))
                                                (_%tl209855209918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209853209913%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl209855209918%_))
                                                (_%loop209842209889%_
                                                 _%lp-tl209845209902%_
                                                 (cons _%hd209854209916%_
                                                       _%expr209846209894%_)
                                                 (cons _%hd209851209908%_
                                                       _%bind209847209895%_))
                                                (_%g209828209863%_
                                                 _%g209829209866%_))))
                                        (_%g209828209863%_
                                         _%g209829209866%_))))
                                (_%g209828209863%_ _%g209829209866%_))))
                        (let ((_%expr209848209921%_
                               (reverse _%expr209846209894%_))
                              (_%bind209849209922%_
                               (reverse _%bind209847209895%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209838209881%_))
                              (let ((_%e209856209924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209838209881%_))))
                                (let ((_%hd209857209927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209856209924%_)))
                                      (_%tl209858209929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209856209924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl209858209929%_))
                                      ((lambda (_%g209830209932%_
                                                _%g209831209933%_
                                                _%g209832209934%_)
                                         (let ((_%$e209965%_
                                                (let ((__tmp210713
                                                       (lambda (_%g209953209955%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self209825%_
                                                            _%g209953209955%_))))
                                                      (__tmp210711
                                                       (let ((__tmp210712
                                                              (lambda (_%g209957209960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g209958209962%_)
                        (cons _%g209957209960%_ _%g209958209962%_))))
                 (declare (not safe))
                 (foldr__0 __tmp210712 '() _%g209831209933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp210713
                                                   __tmp210711))))
                                           (if _%$e209965%_
                                               _%$e209965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self209825%_
                                                  _%g209830209932%_)))))
                                       _%hd209857209927%_
                                       _%expr209848209921%_
                                       _%bind209849209922%_)
                                      (_%g209828209863%_ _%g209829209866%_))))
                              (_%g209828209863%_ _%g209829209866%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop209842209889%_
                                                   _%target209839209884%_
                                                   '()
                                                   '()))
                                                (_%g209828209863%_
                                                 _%g209829209866%_)))))
                                      (_%g209828209863%_ _%g209829209866%_))))
                              (_%g209828209863%_ _%g209829209866%_))))
                      (_%g209828209863%_ _%g209829209866%_)))))
          (_%g209827209968%_ _%stx209826%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self209769%_ _%stx209770%_)
        (let* ((_%g209772209785%_
                (lambda (_%g209773209782%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209773209782%_))))
               (_%g209771209822%_
                (lambda (_%g209773209788%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209773209788%_))
                      (let ((_%e209775209790%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209773209788%_))))
                        (let ((_%hd209776209793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209775209790%_)))
                              (_%tl209777209795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209775209790%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209777209795%_))
                              (let ((_%e209778209798%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209777209795%_))))
                                (let ((_%hd209779209801%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209778209798%_)))
                                      (_%tl209780209803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209778209798%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl209780209803%_))
                                      ((lambda (_%g209774209806%_)
                                         (let ((__tmp210715
                                                (lambda (_%g209817209819%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g209774209806%_
                                                     _%g209817209819%_))))
                                               (__tmp210714
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self209769%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp210715 __tmp210714)))
                                       _%hd209779209801%_)
                                      (_%g209772209785%_ _%g209773209788%_))))
                              (_%g209772209785%_ _%g209773209788%_))))
                      (_%g209772209785%_ _%g209773209788%_)))))
          (_%g209771209822%_ _%stx209770%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self209694%_ _%stx209695%_)
        (let* ((_%g209697209714%_
                (lambda (_%g209698209711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209698209711%_))))
               (_%g209696209766%_
                (lambda (_%g209698209717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209698209717%_))
                      (let ((_%e209701209719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209698209717%_))))
                        (let ((_%hd209702209722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209701209719%_)))
                              (_%tl209703209724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209701209719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209703209724%_))
                              (let ((_%e209704209727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209703209724%_))))
                                (let ((_%hd209705209730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209704209727%_)))
                                      (_%tl209706209732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209704209727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl209706209732%_))
                                      (let ((_%e209707209735%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl209706209732%_))))
                                        (let ((_%hd209708209738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209707209735%_)))
                                              (_%tl209709209740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209707209735%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209709209740%_))
                                              ((lambda (_%g209699209743%_
                                                        _%g209700209744%_)
                                                 (let ((_%$e209763%_
                                                        (let ((__tmp210717
                                                               (lambda (_%g209758209760%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g209700209744%_
                            _%g209758209760%_))))
                      (__tmp210716
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self209694%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp210717 __tmp210716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e209763%_
                                                       _%$e209763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self209694%_
                                                          _%g209699209743%_)))))
                                               _%hd209708209738%_
                                               _%hd209705209730%_)
                                              (_%g209697209714%_
                                               _%g209698209717%_))))
                                      (_%g209697209714%_ _%g209698209717%_))))
                              (_%g209697209714%_ _%g209698209717%_))))
                      (_%g209697209714%_ _%g209698209717%_)))))
          (_%g209696209766%_ _%stx209695%_))))))
