(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1756715355)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp162590 (list gxc#::void::t))
            (__tmp162589 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp162590
         '()
         __tmp162589
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args162576%_
        (apply make-instance gxc#::collect-mutators::t _%$args162576%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp162591
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
        (__make-atomic-promise __tmp162591)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx162568%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self162571%_
                (let ((__obj162579
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj162579))
               (__tmp162592
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self162571%_ _%stx162568%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp162592
           gxc#current-compile-method
           _%self162571%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp162594 (list gxc#::basic-xform-expression::t))
            (__tmp162593 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp162594
         '(id new-id)
         __tmp162593
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args162565%_
        (apply make-instance gxc#::expression-subst::t _%$args162565%_)))
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
      (let ((__tmp162595
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
        (__make-atomic-promise __tmp162595)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords162535%_
               _%id162531162536%_
               _%new-id162532162538%_
               _%stx162540%_)
        (let* ((_%id162543%_
                (if (eq? _%id162531162536%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id162531162536%_))
               (_%new-id162545%_
                (if (eq? _%new-id162532162538%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id162532162538%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self162547%_
                  (let ((__obj162581
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162581
                       _%id162543%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162581
                       _%new-id162545%_
                       '2
                       '#f
                       '#f))
                    __obj162581))
                 (__tmp162596
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162547%_ _%stx162540%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162596
             gxc#current-compile-method
             _%self162547%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords162554%_ . _%args162555%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords162554%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162554%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162554%_
                  'new-id:
                  absent-value))
               _%args162555%_)))
    (define gxc#apply-expression-subst
      (lambda _%args162533162561%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args162533162561%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp162598 (list gxc#::basic-xform-expression::t))
            (__tmp162597 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp162598
         '(subst)
         __tmp162597
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args162527%_
        (apply make-instance gxc#::expression-subst*::t _%$args162527%_)))
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
      (let ((__tmp162599
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
        (__make-atomic-promise __tmp162599)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords162501%_ _%subst162498162502%_ _%stx162504%_)
        (let ((_%subst162507%_
               (if (eq? _%subst162498162502%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst162498162502%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self162509%_
                  (let ((__obj162583
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162583
                       _%subst162507%_
                       '1
                       '#f
                       '#f))
                    __obj162583))
                 (__tmp162600
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162509%_ _%stx162504%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162600
             gxc#current-compile-method
             _%self162509%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords162516%_ . _%args162517%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords162516%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162516%_
                  'subst:
                  absent-value))
               _%args162517%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args162499162523%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args162499162523%_)))
    (define gxc#::find-expression::t
      (let ((__tmp162601 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp162601
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args162494%_
        (apply make-instance gxc#::find-expression::t _%$args162494%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp162602
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
        (__make-atomic-promise __tmp162602)))
    (define gxc#::find-var-refs::t
      (let ((__tmp162604 (list gxc#::find-expression::t))
            (__tmp162603 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp162604
         '(ids)
         __tmp162603
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args162490%_
        (apply make-instance gxc#::find-var-refs::t _%$args162490%_)))
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
      (let ((__tmp162605
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
        (__make-atomic-promise __tmp162605)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords162464%_ _%ids162461162465%_ _%stx162467%_)
        (let ((_%ids162470%_
               (if (eq? _%ids162461162465%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids162461162465%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self162472%_
                  (let ((__obj162586
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162586
                       _%ids162470%_
                       '1
                       '#f
                       '#f))
                    __obj162586))
                 (__tmp162606
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162472%_ _%stx162467%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162606
             gxc#current-compile-method
             _%self162472%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords162479%_ . _%args162480%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords162479%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162479%_ 'ids: absent-value))
               _%args162480%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args162462162486%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args162462162486%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp162608 (list gxc#::collect-expression-refs::t))
            (__tmp162607 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp162608
         '()
         __tmp162607
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args162457%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args162457%_)))
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
      (let ((__tmp162609
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
        (__make-atomic-promise __tmp162609)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords162431%_ _%table162428162432%_ _%stx162434%_)
        (let ((_%table162437%_
               (if (eq? _%table162428162432%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table162428162432%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self162439%_
                  (let ((__obj162588
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162588
                       _%table162437%_
                       '1
                       '#f
                       '#f))
                    __obj162588))
                 (__tmp162610
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162439%_ _%stx162434%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162610
             gxc#current-compile-method
             _%self162439%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords162446%_ . _%args162447%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords162446%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162446%_
                  'table:
                  absent-value))
               _%args162447%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args162429162453%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args162429162453%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self162357%_ _%stx162358%_)
        (let* ((_%g162360162377%_
                (lambda (_%g162361162374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162361162374%_))))
               (_%g162359162424%_
                (lambda (_%g162361162380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162361162380%_))
                      (let ((_%e162364162382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162361162380%_))))
                        (let ((_%hd162365162385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162364162382%_)))
                              (_%tl162366162387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162364162382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162366162387%_))
                              (let ((_%e162367162390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162366162387%_))))
                                (let ((_%hd162368162393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162367162390%_)))
                                      (_%tl162369162395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162367162390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162369162395%_))
                                      (let ((_%e162370162398%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162369162395%_))))
                                        (let ((_%hd162371162401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162370162398%_)))
                                              (_%tl162372162403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162370162398%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162372162403%_))
                                              ((lambda (_%L162406%_
                                                        _%L162407%_)
                                                 (let ((_%sym162422%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L162407%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym162422%_))
                                                   (let ((__tmp162611
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp162611
                                                      _%sym162422%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162357%_
                                                      _%L162406%_))))
                                               _%hd162371162401%_
                                               _%hd162368162393%_)
                                              (_%g162360162377%_
                                               _%g162361162380%_))))
                                      (_%g162360162377%_ _%g162361162380%_))))
                              (_%g162360162377%_ _%g162361162380%_))))
                      (_%g162360162377%_ _%g162361162380%_)))))
          (_%g162359162424%_ _%stx162358%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self162305%_ _%stx162306%_)
        (let* ((_%g162308162321%_
                (lambda (_%g162309162318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162309162318%_))))
               (_%g162307162354%_
                (lambda (_%g162309162324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162309162324%_))
                      (let ((_%e162311162326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162309162324%_))))
                        (let ((_%hd162312162329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162311162326%_)))
                              (_%tl162313162331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162311162326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162313162331%_))
                              (let ((_%e162314162334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162313162331%_))))
                                (let ((_%hd162315162337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162314162334%_)))
                                      (_%tl162316162339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162314162334%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162316162339%_))
                                      ((lambda (_%L162342%_)
                                         (if (let ((__tmp162612
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self162305%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L162342%_
                                                __tmp162612))
                                             (let ((__tmp162613
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self162305%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp162613
                                                _%stx162306%_))
                                             _%stx162306%_))
                                       _%hd162315162337%_)
                                      (_%g162308162321%_ _%g162309162324%_))))
                              (_%g162308162321%_ _%g162309162324%_))))
                      (_%g162308162321%_ _%g162309162324%_)))))
          (_%g162307162354%_ _%stx162306%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self162245%_ _%stx162246%_)
        (let* ((_%g162248162261%_
                (lambda (_%g162249162258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162249162258%_))))
               (_%g162247162302%_
                (lambda (_%g162249162264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162249162264%_))
                      (let ((_%e162251162266%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162249162264%_))))
                        (let ((_%hd162252162269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162251162266%_)))
                              (_%tl162253162271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162251162266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162253162271%_))
                              (let ((_%e162254162274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162253162271%_))))
                                (let ((_%hd162255162277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162254162274%_)))
                                      (_%tl162256162279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162254162274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162256162279%_))
                                      ((lambda (_%L162282%_)
                                         (let ((_%$e162296%_
                                                (let ((__tmp162615
                                                       (lambda (_%sub162294%_)
                                                         (let ((__tmp162616
                                                                (car _%sub162294%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L162282%_
                                                            __tmp162616))))
                                                      (__tmp162614
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self162245%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp162615
                                                          __tmp162614))))
                                           (if _%$e162296%_
                                               ((lambda (_%sub162299%_)
                                                  (let ((__tmp162617
                                                         (cons '%#ref
                                                               (cons (cdr _%sub162299%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp162617
                                                     _%stx162246%_)))
                                                _%$e162296%_)
                                               _%stx162246%_)))
                                       _%hd162255162277%_)
                                      (_%g162248162261%_ _%g162249162264%_))))
                              (_%g162248162261%_ _%g162249162264%_))))
                      (_%g162248162261%_ _%g162249162264%_)))))
          (_%g162247162302%_ _%stx162246%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self162174%_ _%stx162175%_)
        (let* ((_%g162177162194%_
                (lambda (_%g162178162191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162178162191%_))))
               (_%g162176162242%_
                (lambda (_%g162178162197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162178162197%_))
                      (let ((_%e162181162199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162178162197%_))))
                        (let ((_%hd162182162202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162181162199%_)))
                              (_%tl162183162204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162181162199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162183162204%_))
                              (let ((_%e162184162207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162183162204%_))))
                                (let ((_%hd162185162210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162184162207%_)))
                                      (_%tl162186162212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162184162207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162186162212%_))
                                      (let ((_%e162187162215%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162186162212%_))))
                                        (let ((_%hd162188162218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162187162215%_)))
                                              (_%tl162189162220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162187162215%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162189162220%_))
                                              ((lambda (_%L162223%_
                                                        _%L162224%_)
                                                 (let ((_%new-expr162239%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self162174%_
                                                           _%L162223%_)))
                                                       (_%new-xid162240%_
                                                        (if (let ((__tmp162618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self162174%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L162224%_ __tmp162618))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self162174%_ 'new-id))
                    _%L162224%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp162619
                                                          (cons '%#set!
                                                                (cons _%new-xid162240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr162239%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp162619
                                                      _%stx162175%_))))
                                               _%hd162188162218%_
                                               _%hd162185162210%_)
                                              (_%g162177162194%_
                                               _%g162178162197%_))))
                                      (_%g162177162194%_ _%g162178162197%_))))
                              (_%g162177162194%_ _%g162178162197%_))))
                      (_%g162177162194%_ _%g162178162197%_)))))
          (_%g162176162242%_ _%stx162175%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self162097%_ _%stx162098%_)
        (let* ((_%g162100162117%_
                (lambda (_%g162101162114%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162101162114%_))))
               (_%g162099162171%_
                (lambda (_%g162101162120%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162101162120%_))
                      (let ((_%e162104162122%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162101162120%_))))
                        (let ((_%hd162105162125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162104162122%_)))
                              (_%tl162106162127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162104162122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162106162127%_))
                              (let ((_%e162107162130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162106162127%_))))
                                (let ((_%hd162108162133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162107162130%_)))
                                      (_%tl162109162135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162107162130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162109162135%_))
                                      (let ((_%e162110162138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162109162135%_))))
                                        (let ((_%hd162111162141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162110162138%_)))
                                              (_%tl162112162143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162110162138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162112162143%_))
                                              ((lambda (_%L162146%_
                                                        _%L162147%_)
                                                 (let ((_%new-expr162168%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self162097%_
                                                           _%L162146%_)))
                                                       (_%new-xid162169%_
                                                        (let ((_%$e162164%_
                                                               (let ((__tmp162621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub162162%_)
                                (let ((__tmp162622 (car _%sub162162%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L162147%_
                                   __tmp162622))))
                             (__tmp162620
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self162097%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp162621 __tmp162620))))
                  (if _%$e162164%_ (cdr _%$e162164%_) _%L162147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp162623
                                                          (cons '%#set!
                                                                (cons _%new-xid162169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr162168%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp162623
                                                      _%stx162098%_))))
                                               _%hd162111162141%_
                                               _%hd162108162133%_)
                                              (_%g162100162117%_
                                               _%g162101162120%_))))
                                      (_%g162100162117%_ _%g162101162120%_))))
                              (_%g162100162117%_ _%g162101162120%_))))
                      (_%g162100162117%_ _%g162101162120%_)))))
          (_%g162099162171%_ _%stx162098%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self162043%_ _%stx162044%_)
        (let* ((_%g162046162059%_
                (lambda (_%g162047162056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162047162056%_))))
               (_%g162045162094%_
                (lambda (_%g162047162062%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162047162062%_))
                      (let ((_%e162049162064%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162047162062%_))))
                        (let ((_%hd162050162067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162049162064%_)))
                              (_%tl162051162069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162049162064%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162051162069%_))
                              (let ((_%e162052162072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162051162069%_))))
                                (let ((_%hd162053162075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162052162072%_)))
                                      (_%tl162054162077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162052162072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162054162077%_))
                                      ((lambda (_%L162080%_)
                                         (let* ((_%eid162092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L162080%_)))
                                                (__tmp162624
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162043%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp162624
                                            _%eid162092%_
                                            1+
                                            '0)))
                                       _%hd162053162075%_)
                                      (_%g162046162059%_ _%g162047162062%_))))
                              (_%g162046162059%_ _%g162047162062%_))))
                      (_%g162046162059%_ _%g162047162062%_)))))
          (_%g162045162094%_ _%stx162044%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self161973%_ _%stx161974%_)
        (let* ((_%g161976161993%_
                (lambda (_%g161977161990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161977161990%_))))
               (_%g161975162040%_
                (lambda (_%g161977161996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161977161996%_))
                      (let ((_%e161980161998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161977161996%_))))
                        (let ((_%hd161981162001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161980161998%_)))
                              (_%tl161982162003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161980161998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161982162003%_))
                              (let ((_%e161983162006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161982162003%_))))
                                (let ((_%hd161984162009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161983162006%_)))
                                      (_%tl161985162011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161983162006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161985162011%_))
                                      (let ((_%e161986162014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161985162011%_))))
                                        (let ((_%hd161987162017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161986162014%_)))
                                              (_%tl161988162019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161986162014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161988162019%_))
                                              ((lambda (_%L162022%_
                                                        _%L162023%_)
                                                 (let ((_%eid162038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L162023%_))))
                                                   (let ((__tmp162625
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self161973%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp162625
                                                      _%eid162038%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self161973%_
                                                      _%L162022%_))))
                                               _%hd161987162017%_
                                               _%hd161984162009%_)
                                              (_%g161976161993%_
                                               _%g161977161996%_))))
                                      (_%g161976161993%_ _%g161977161996%_))))
                              (_%g161976161993%_ _%g161977161996%_))))
                      (_%g161976161993%_ _%g161977161996%_)))))
          (_%g161975162040%_ _%stx161974%_))))
    (define gxc#find-body%
      (lambda (_%self161886%_ _%stx161887%_)
        (let* ((_%g161889161908%_
                (lambda (_%g161890161905%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161890161905%_))))
               (_%g161888161970%_
                (lambda (_%g161890161911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161890161911%_))
                      (let ((_%e161892161913%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161890161911%_))))
                        (let ((_%hd161893161916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161892161913%_)))
                              (_%tl161894161918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161892161913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161894161918%_))
                              (let ((_g162626_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161894161918%_
                                        '0))))
                                (begin
                                  (let ((_g162627_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162626_)
                                               (##values-length _g162626_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162627_ 2)))
                                        (error "Context expects 2 values"
                                               _g162627_)))
                                  (let ((_%target161895161921%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g162626_ 0)))
                                        (_%tl161897161923%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g162626_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161897161923%_))
                                        (letrec ((_%loop161898161926%_
                                                  (lambda (_%hd161896161929%_
                                                           _%expr161902161931%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161896161929%_))
                                                        (let ((_%e161899161934%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161896161929%_))))
                  (let ((_%lp-hd161900161937%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161899161934%_)))
                        (_%lp-tl161901161939%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161899161934%_))))
                    (_%loop161898161926%_
                     _%lp-tl161901161939%_
                     (cons _%lp-hd161900161937%_ _%expr161902161931%_))))
                (let ((_%expr161903161942%_ (reverse _%expr161902161931%_)))
                  ((lambda (_%L161945%_)
                     (let ((__tmp162630
                            (lambda (_%g161958161960%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self161886%_
                                 _%g161958161960%_))))
                           (__tmp162628
                            (let ((__tmp162629
                                   (lambda (_%g161962161965%_
                                            _%g161963161967%_)
                                     (cons _%g161962161965%_
                                           _%g161963161967%_))))
                              (declare (not safe))
                              (__foldr1 __tmp162629 '() _%L161945%_))))
                       (declare (not safe))
                       (__ormap1 __tmp162630 __tmp162628)))
                   _%expr161903161942%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161898161926%_
                                           _%target161895161921%_
                                           '()))
                                        (_%g161889161908%_
                                         _%g161890161911%_)))))
                              (_%g161889161908%_ _%g161890161911%_))))
                      (_%g161889161908%_ _%g161890161911%_)))))
          (_%g161888161970%_ _%stx161887%_))))
    (define gxc#find-let-values%
      (lambda (_%self161736%_ _%stx161737%_)
        (let* ((_%g161739161774%_
                (lambda (_%g161740161771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161740161771%_))))
               (_%g161738161883%_
                (lambda (_%g161740161777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161740161777%_))
                      (let ((_%e161744161779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161740161777%_))))
                        (let ((_%hd161745161782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161744161779%_)))
                              (_%tl161746161784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161744161779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161746161784%_))
                              (let ((_%e161747161787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161746161784%_))))
                                (let ((_%hd161748161790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161747161787%_)))
                                      (_%tl161749161792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161747161787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd161748161790%_))
                                      (let ((_g162631_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd161748161790%_
                                                '0))))
                                        (begin
                                          (let ((_g162632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g162631_)
                                                       (##values-length
                                                        _g162631_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g162632_ 2)))
                                                (error "Context expects 2 values"
                                                       _g162632_)))
                                          (let ((_%target161750161795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g162631_ 0)))
                                                (_%tl161752161797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g162631_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161752161797%_))
                                                (letrec ((_%loop161753161800%_
                                                          (lambda (_%hd161751161803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr161757161805%_
                           _%bind161758161807%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd161751161803%_))
                        (let ((_%e161754161810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd161751161803%_))))
                          (let ((_%lp-hd161755161813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161754161810%_)))
                                (_%lp-tl161756161815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161754161810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd161755161813%_))
                                (let ((_%e161761161818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd161755161813%_))))
                                  (let ((_%hd161762161821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161761161818%_)))
                                        (_%tl161763161823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161761161818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl161763161823%_))
                                        (let ((_%e161764161826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl161763161823%_))))
                                          (let ((_%hd161765161829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e161764161826%_)))
                                                (_%tl161766161831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e161764161826%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161766161831%_))
                                                (_%loop161753161800%_
                                                 _%lp-tl161756161815%_
                                                 (cons _%hd161765161829%_
                                                       _%expr161757161805%_)
                                                 (cons _%hd161762161821%_
                                                       _%bind161758161807%_))
                                                (_%g161739161774%_
                                                 _%g161740161777%_))))
                                        (_%g161739161774%_
                                         _%g161740161777%_))))
                                (_%g161739161774%_ _%g161740161777%_))))
                        (let ((_%expr161759161834%_
                               (reverse _%expr161757161805%_))
                              (_%bind161760161836%_
                               (reverse _%bind161758161807%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161749161792%_))
                              (let ((_%e161767161839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161749161792%_))))
                                (let ((_%hd161768161842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161767161839%_)))
                                      (_%tl161769161844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161767161839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161769161844%_))
                                      ((lambda (_%L161847%_
                                                _%L161848%_
                                                _%L161849%_)
                                         (let ((_%$e161880%_
                                                (let ((__tmp162635
                                                       (lambda (_%g161868161870%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self161736%_
                                                            _%g161868161870%_))))
                                                      (__tmp162633
                                                       (let ((__tmp162634
                                                              (lambda (_%g161872161875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g161873161877%_)
                        (cons _%g161872161875%_ _%g161873161877%_))))
                 (declare (not safe))
                 (__foldr1 __tmp162634 '() _%L161848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp162635
                                                   __tmp162633))))
                                           (if _%$e161880%_
                                               _%$e161880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self161736%_
                                                  _%L161847%_)))))
                                       _%hd161768161842%_
                                       _%expr161759161834%_
                                       _%bind161760161836%_)
                                      (_%g161739161774%_ _%g161740161777%_))))
                              (_%g161739161774%_ _%g161740161777%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop161753161800%_
                                                   _%target161750161795%_
                                                   '()
                                                   '()))
                                                (_%g161739161774%_
                                                 _%g161740161777%_)))))
                                      (_%g161739161774%_ _%g161740161777%_))))
                              (_%g161739161774%_ _%g161740161777%_))))
                      (_%g161739161774%_ _%g161740161777%_)))))
          (_%g161738161883%_ _%stx161737%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self161680%_ _%stx161681%_)
        (let* ((_%g161683161696%_
                (lambda (_%g161684161693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161684161693%_))))
               (_%g161682161733%_
                (lambda (_%g161684161699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161684161699%_))
                      (let ((_%e161686161701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161684161699%_))))
                        (let ((_%hd161687161704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161686161701%_)))
                              (_%tl161688161706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161686161701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161688161706%_))
                              (let ((_%e161689161709%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161688161706%_))))
                                (let ((_%hd161690161712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161689161709%_)))
                                      (_%tl161691161714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161689161709%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161691161714%_))
                                      ((lambda (_%L161717%_)
                                         (let ((__tmp162637
                                                (lambda (_%g161728161730%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L161717%_
                                                     _%g161728161730%_))))
                                               (__tmp162636
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self161680%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp162637 __tmp162636)))
                                       _%hd161690161712%_)
                                      (_%g161683161696%_ _%g161684161699%_))))
                              (_%g161683161696%_ _%g161684161699%_))))
                      (_%g161683161696%_ _%g161684161699%_)))))
          (_%g161682161733%_ _%stx161681%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self161605%_ _%stx161606%_)
        (let* ((_%g161608161625%_
                (lambda (_%g161609161622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161609161622%_))))
               (_%g161607161677%_
                (lambda (_%g161609161628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161609161628%_))
                      (let ((_%e161612161630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161609161628%_))))
                        (let ((_%hd161613161633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161612161630%_)))
                              (_%tl161614161635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161612161630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161614161635%_))
                              (let ((_%e161615161638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161614161635%_))))
                                (let ((_%hd161616161641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161615161638%_)))
                                      (_%tl161617161643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161615161638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161617161643%_))
                                      (let ((_%e161618161646%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161617161643%_))))
                                        (let ((_%hd161619161649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161618161646%_)))
                                              (_%tl161620161651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161618161646%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161620161651%_))
                                              ((lambda (_%L161654%_
                                                        _%L161655%_)
                                                 (let ((_%$e161674%_
                                                        (let ((__tmp162639
                                                               (lambda (_%g161669161671%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L161655%_
                            _%g161669161671%_))))
                      (__tmp162638
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self161605%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp162639 __tmp162638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e161674%_
                                                       _%$e161674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self161605%_
                                                          _%L161654%_)))))
                                               _%hd161619161649%_
                                               _%hd161616161641%_)
                                              (_%g161608161625%_
                                               _%g161609161628%_))))
                                      (_%g161608161625%_ _%g161609161628%_))))
                              (_%g161608161625%_ _%g161609161628%_))))
                      (_%g161608161625%_ _%g161609161628%_)))))
          (_%g161607161677%_ _%stx161606%_))))))
