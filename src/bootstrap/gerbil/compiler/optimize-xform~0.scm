(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1756721297)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp162588 (list gxc#::void::t))
            (__tmp162587 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp162588
         '()
         __tmp162587
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args162574%_
        (apply make-instance gxc#::collect-mutators::t _%$args162574%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp162589
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
        (__make-atomic-promise __tmp162589)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx162566%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self162569%_
                (let ((__obj162577
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj162577))
               (__tmp162590
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self162569%_ _%stx162566%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp162590
           gxc#current-compile-method
           _%self162569%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp162592 (list gxc#::basic-xform-expression::t))
            (__tmp162591 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp162592
         '(id new-id)
         __tmp162591
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args162563%_
        (apply make-instance gxc#::expression-subst::t _%$args162563%_)))
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
      (let ((__tmp162593
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
        (__make-atomic-promise __tmp162593)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords162533%_
               _%id162529162534%_
               _%new-id162530162536%_
               _%stx162538%_)
        (let* ((_%id162541%_
                (if (eq? _%id162529162534%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id162529162534%_))
               (_%new-id162543%_
                (if (eq? _%new-id162530162536%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id162530162536%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self162545%_
                  (let ((__obj162579
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162579
                       _%id162541%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162579
                       _%new-id162543%_
                       '2
                       '#f
                       '#f))
                    __obj162579))
                 (__tmp162594
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162545%_ _%stx162538%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162594
             gxc#current-compile-method
             _%self162545%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords162552%_ . _%args162553%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords162552%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162552%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162552%_
                  'new-id:
                  absent-value))
               _%args162553%_)))
    (define gxc#apply-expression-subst
      (lambda _%args162531162559%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args162531162559%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp162596 (list gxc#::basic-xform-expression::t))
            (__tmp162595 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp162596
         '(subst)
         __tmp162595
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args162525%_
        (apply make-instance gxc#::expression-subst*::t _%$args162525%_)))
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
      (let ((__tmp162597
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
        (__make-atomic-promise __tmp162597)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords162499%_ _%subst162496162500%_ _%stx162502%_)
        (let ((_%subst162505%_
               (if (eq? _%subst162496162500%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst162496162500%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self162507%_
                  (let ((__obj162581
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162581
                       _%subst162505%_
                       '1
                       '#f
                       '#f))
                    __obj162581))
                 (__tmp162598
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162507%_ _%stx162502%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162598
             gxc#current-compile-method
             _%self162507%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords162514%_ . _%args162515%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords162514%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162514%_
                  'subst:
                  absent-value))
               _%args162515%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args162497162521%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args162497162521%_)))
    (define gxc#::find-expression::t
      (let ((__tmp162599 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp162599
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args162492%_
        (apply make-instance gxc#::find-expression::t _%$args162492%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp162600
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
        (__make-atomic-promise __tmp162600)))
    (define gxc#::find-var-refs::t
      (let ((__tmp162602 (list gxc#::find-expression::t))
            (__tmp162601 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp162602
         '(ids)
         __tmp162601
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args162488%_
        (apply make-instance gxc#::find-var-refs::t _%$args162488%_)))
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
      (let ((__tmp162603
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
        (__make-atomic-promise __tmp162603)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords162462%_ _%ids162459162463%_ _%stx162465%_)
        (let ((_%ids162468%_
               (if (eq? _%ids162459162463%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids162459162463%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self162470%_
                  (let ((__obj162584
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162584
                       _%ids162468%_
                       '1
                       '#f
                       '#f))
                    __obj162584))
                 (__tmp162604
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162470%_ _%stx162465%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162604
             gxc#current-compile-method
             _%self162470%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords162477%_ . _%args162478%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords162477%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162477%_ 'ids: absent-value))
               _%args162478%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args162460162484%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args162460162484%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp162606 (list gxc#::collect-expression-refs::t))
            (__tmp162605 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp162606
         '()
         __tmp162605
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args162455%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args162455%_)))
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
      (let ((__tmp162607
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
        (__make-atomic-promise __tmp162607)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords162429%_ _%table162426162430%_ _%stx162432%_)
        (let ((_%table162435%_
               (if (eq? _%table162426162430%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table162426162430%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self162437%_
                  (let ((__obj162586
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj162586
                       _%table162435%_
                       '1
                       '#f
                       '#f))
                    __obj162586))
                 (__tmp162608
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self162437%_ _%stx162432%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp162608
             gxc#current-compile-method
             _%self162437%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords162444%_ . _%args162445%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords162444%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162444%_
                  'table:
                  absent-value))
               _%args162445%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args162427162451%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args162427162451%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self162355%_ _%stx162356%_)
        (let* ((_%g162358162375%_
                (lambda (_%g162359162372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162359162372%_))))
               (_%g162357162422%_
                (lambda (_%g162359162378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162359162378%_))
                      (let ((_%e162362162380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162359162378%_))))
                        (let ((_%hd162363162383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162362162380%_)))
                              (_%tl162364162385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162362162380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162364162385%_))
                              (let ((_%e162365162388%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162364162385%_))))
                                (let ((_%hd162366162391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162365162388%_)))
                                      (_%tl162367162393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162365162388%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162367162393%_))
                                      (let ((_%e162368162396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162367162393%_))))
                                        (let ((_%hd162369162399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162368162396%_)))
                                              (_%tl162370162401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162368162396%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162370162401%_))
                                              ((lambda (_%L162404%_
                                                        _%L162405%_)
                                                 (let ((_%sym162420%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L162405%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym162420%_))
                                                   (let ((__tmp162609
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp162609
                                                      _%sym162420%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162355%_
                                                      _%L162404%_))))
                                               _%hd162369162399%_
                                               _%hd162366162391%_)
                                              (_%g162358162375%_
                                               _%g162359162378%_))))
                                      (_%g162358162375%_ _%g162359162378%_))))
                              (_%g162358162375%_ _%g162359162378%_))))
                      (_%g162358162375%_ _%g162359162378%_)))))
          (_%g162357162422%_ _%stx162356%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self162303%_ _%stx162304%_)
        (let* ((_%g162306162319%_
                (lambda (_%g162307162316%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162307162316%_))))
               (_%g162305162352%_
                (lambda (_%g162307162322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162307162322%_))
                      (let ((_%e162309162324%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162307162322%_))))
                        (let ((_%hd162310162327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162309162324%_)))
                              (_%tl162311162329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162309162324%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162311162329%_))
                              (let ((_%e162312162332%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162311162329%_))))
                                (let ((_%hd162313162335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162312162332%_)))
                                      (_%tl162314162337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162312162332%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162314162337%_))
                                      ((lambda (_%L162340%_)
                                         (if (let ((__tmp162610
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self162303%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L162340%_
                                                __tmp162610))
                                             (let ((__tmp162611
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self162303%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp162611
                                                _%stx162304%_))
                                             _%stx162304%_))
                                       _%hd162313162335%_)
                                      (_%g162306162319%_ _%g162307162322%_))))
                              (_%g162306162319%_ _%g162307162322%_))))
                      (_%g162306162319%_ _%g162307162322%_)))))
          (_%g162305162352%_ _%stx162304%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self162243%_ _%stx162244%_)
        (let* ((_%g162246162259%_
                (lambda (_%g162247162256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162247162256%_))))
               (_%g162245162300%_
                (lambda (_%g162247162262%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162247162262%_))
                      (let ((_%e162249162264%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162247162262%_))))
                        (let ((_%hd162250162267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162249162264%_)))
                              (_%tl162251162269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162249162264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162251162269%_))
                              (let ((_%e162252162272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162251162269%_))))
                                (let ((_%hd162253162275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162252162272%_)))
                                      (_%tl162254162277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162252162272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162254162277%_))
                                      ((lambda (_%L162280%_)
                                         (let ((_%$e162294%_
                                                (let ((__tmp162613
                                                       (lambda (_%sub162292%_)
                                                         (let ((__tmp162614
                                                                (car _%sub162292%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L162280%_
                                                            __tmp162614))))
                                                      (__tmp162612
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self162243%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp162613
                                                          __tmp162612))))
                                           (if _%$e162294%_
                                               ((lambda (_%sub162297%_)
                                                  (let ((__tmp162615
                                                         (cons '%#ref
                                                               (cons (cdr _%sub162297%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp162615
                                                     _%stx162244%_)))
                                                _%$e162294%_)
                                               _%stx162244%_)))
                                       _%hd162253162275%_)
                                      (_%g162246162259%_ _%g162247162262%_))))
                              (_%g162246162259%_ _%g162247162262%_))))
                      (_%g162246162259%_ _%g162247162262%_)))))
          (_%g162245162300%_ _%stx162244%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self162172%_ _%stx162173%_)
        (let* ((_%g162175162192%_
                (lambda (_%g162176162189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162176162189%_))))
               (_%g162174162240%_
                (lambda (_%g162176162195%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162176162195%_))
                      (let ((_%e162179162197%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162176162195%_))))
                        (let ((_%hd162180162200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162179162197%_)))
                              (_%tl162181162202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162179162197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162181162202%_))
                              (let ((_%e162182162205%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162181162202%_))))
                                (let ((_%hd162183162208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162182162205%_)))
                                      (_%tl162184162210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162182162205%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162184162210%_))
                                      (let ((_%e162185162213%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162184162210%_))))
                                        (let ((_%hd162186162216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162185162213%_)))
                                              (_%tl162187162218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162185162213%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162187162218%_))
                                              ((lambda (_%L162221%_
                                                        _%L162222%_)
                                                 (let ((_%new-expr162237%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self162172%_
                                                           _%L162221%_)))
                                                       (_%new-xid162238%_
                                                        (if (let ((__tmp162616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self162172%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L162222%_ __tmp162616))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self162172%_ 'new-id))
                    _%L162222%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp162617
                                                          (cons '%#set!
                                                                (cons _%new-xid162238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr162237%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp162617
                                                      _%stx162173%_))))
                                               _%hd162186162216%_
                                               _%hd162183162208%_)
                                              (_%g162175162192%_
                                               _%g162176162195%_))))
                                      (_%g162175162192%_ _%g162176162195%_))))
                              (_%g162175162192%_ _%g162176162195%_))))
                      (_%g162175162192%_ _%g162176162195%_)))))
          (_%g162174162240%_ _%stx162173%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self162095%_ _%stx162096%_)
        (let* ((_%g162098162115%_
                (lambda (_%g162099162112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162099162112%_))))
               (_%g162097162169%_
                (lambda (_%g162099162118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162099162118%_))
                      (let ((_%e162102162120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162099162118%_))))
                        (let ((_%hd162103162123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162102162120%_)))
                              (_%tl162104162125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162102162120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162104162125%_))
                              (let ((_%e162105162128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162104162125%_))))
                                (let ((_%hd162106162131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162105162128%_)))
                                      (_%tl162107162133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162105162128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162107162133%_))
                                      (let ((_%e162108162136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162107162133%_))))
                                        (let ((_%hd162109162139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162108162136%_)))
                                              (_%tl162110162141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162108162136%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162110162141%_))
                                              ((lambda (_%L162144%_
                                                        _%L162145%_)
                                                 (let ((_%new-expr162166%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self162095%_
                                                           _%L162144%_)))
                                                       (_%new-xid162167%_
                                                        (let ((_%$e162162%_
                                                               (let ((__tmp162619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub162160%_)
                                (let ((__tmp162620 (car _%sub162160%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L162145%_
                                   __tmp162620))))
                             (__tmp162618
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self162095%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp162619 __tmp162618))))
                  (if _%$e162162%_ (cdr _%$e162162%_) _%L162145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp162621
                                                          (cons '%#set!
                                                                (cons _%new-xid162167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr162166%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp162621
                                                      _%stx162096%_))))
                                               _%hd162109162139%_
                                               _%hd162106162131%_)
                                              (_%g162098162115%_
                                               _%g162099162118%_))))
                                      (_%g162098162115%_ _%g162099162118%_))))
                              (_%g162098162115%_ _%g162099162118%_))))
                      (_%g162098162115%_ _%g162099162118%_)))))
          (_%g162097162169%_ _%stx162096%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self162041%_ _%stx162042%_)
        (let* ((_%g162044162057%_
                (lambda (_%g162045162054%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162045162054%_))))
               (_%g162043162092%_
                (lambda (_%g162045162060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162045162060%_))
                      (let ((_%e162047162062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162045162060%_))))
                        (let ((_%hd162048162065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162047162062%_)))
                              (_%tl162049162067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162047162062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162049162067%_))
                              (let ((_%e162050162070%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162049162067%_))))
                                (let ((_%hd162051162073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162050162070%_)))
                                      (_%tl162052162075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162050162070%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162052162075%_))
                                      ((lambda (_%L162078%_)
                                         (let* ((_%eid162090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L162078%_)))
                                                (__tmp162622
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162041%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp162622
                                            _%eid162090%_
                                            1+
                                            '0)))
                                       _%hd162051162073%_)
                                      (_%g162044162057%_ _%g162045162060%_))))
                              (_%g162044162057%_ _%g162045162060%_))))
                      (_%g162044162057%_ _%g162045162060%_)))))
          (_%g162043162092%_ _%stx162042%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self161971%_ _%stx161972%_)
        (let* ((_%g161974161991%_
                (lambda (_%g161975161988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161975161988%_))))
               (_%g161973162038%_
                (lambda (_%g161975161994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161975161994%_))
                      (let ((_%e161978161996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161975161994%_))))
                        (let ((_%hd161979161999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161978161996%_)))
                              (_%tl161980162001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161978161996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161980162001%_))
                              (let ((_%e161981162004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161980162001%_))))
                                (let ((_%hd161982162007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161981162004%_)))
                                      (_%tl161983162009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161981162004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161983162009%_))
                                      (let ((_%e161984162012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161983162009%_))))
                                        (let ((_%hd161985162015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161984162012%_)))
                                              (_%tl161986162017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161984162012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161986162017%_))
                                              ((lambda (_%L162020%_
                                                        _%L162021%_)
                                                 (let ((_%eid162036%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L162021%_))))
                                                   (let ((__tmp162623
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self161971%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp162623
                                                      _%eid162036%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self161971%_
                                                      _%L162020%_))))
                                               _%hd161985162015%_
                                               _%hd161982162007%_)
                                              (_%g161974161991%_
                                               _%g161975161994%_))))
                                      (_%g161974161991%_ _%g161975161994%_))))
                              (_%g161974161991%_ _%g161975161994%_))))
                      (_%g161974161991%_ _%g161975161994%_)))))
          (_%g161973162038%_ _%stx161972%_))))
    (define gxc#find-body%
      (lambda (_%self161884%_ _%stx161885%_)
        (let* ((_%g161887161906%_
                (lambda (_%g161888161903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161888161903%_))))
               (_%g161886161968%_
                (lambda (_%g161888161909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161888161909%_))
                      (let ((_%e161890161911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161888161909%_))))
                        (let ((_%hd161891161914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161890161911%_)))
                              (_%tl161892161916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161890161911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161892161916%_))
                              (let ((_g162624_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161892161916%_
                                        '0))))
                                (begin
                                  (let ((_g162625_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162624_)
                                               (##values-length _g162624_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162625_ 2)))
                                        (error "Context expects 2 values"
                                               _g162625_)))
                                  (let ((_%target161893161919%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g162624_ 0)))
                                        (_%tl161895161921%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g162624_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161895161921%_))
                                        (letrec ((_%loop161896161924%_
                                                  (lambda (_%hd161894161927%_
                                                           _%expr161900161929%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161894161927%_))
                                                        (let ((_%e161897161932%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161894161927%_))))
                  (let ((_%lp-hd161898161935%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161897161932%_)))
                        (_%lp-tl161899161937%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161897161932%_))))
                    (_%loop161896161924%_
                     _%lp-tl161899161937%_
                     (cons _%lp-hd161898161935%_ _%expr161900161929%_))))
                (let ((_%expr161901161940%_ (reverse _%expr161900161929%_)))
                  ((lambda (_%L161943%_)
                     (let ((__tmp162628
                            (lambda (_%g161956161958%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self161884%_
                                 _%g161956161958%_))))
                           (__tmp162626
                            (let ((__tmp162627
                                   (lambda (_%g161960161963%_
                                            _%g161961161965%_)
                                     (cons _%g161960161963%_
                                           _%g161961161965%_))))
                              (declare (not safe))
                              (__foldr1 __tmp162627 '() _%L161943%_))))
                       (declare (not safe))
                       (__ormap1 __tmp162628 __tmp162626)))
                   _%expr161901161940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161896161924%_
                                           _%target161893161919%_
                                           '()))
                                        (_%g161887161906%_
                                         _%g161888161909%_)))))
                              (_%g161887161906%_ _%g161888161909%_))))
                      (_%g161887161906%_ _%g161888161909%_)))))
          (_%g161886161968%_ _%stx161885%_))))
    (define gxc#find-let-values%
      (lambda (_%self161734%_ _%stx161735%_)
        (let* ((_%g161737161772%_
                (lambda (_%g161738161769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161738161769%_))))
               (_%g161736161881%_
                (lambda (_%g161738161775%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161738161775%_))
                      (let ((_%e161742161777%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161738161775%_))))
                        (let ((_%hd161743161780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161742161777%_)))
                              (_%tl161744161782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161742161777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161744161782%_))
                              (let ((_%e161745161785%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161744161782%_))))
                                (let ((_%hd161746161788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161745161785%_)))
                                      (_%tl161747161790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161745161785%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd161746161788%_))
                                      (let ((_g162629_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd161746161788%_
                                                '0))))
                                        (begin
                                          (let ((_g162630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g162629_)
                                                       (##values-length
                                                        _g162629_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g162630_ 2)))
                                                (error "Context expects 2 values"
                                                       _g162630_)))
                                          (let ((_%target161748161793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g162629_ 0)))
                                                (_%tl161750161795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g162629_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161750161795%_))
                                                (letrec ((_%loop161751161798%_
                                                          (lambda (_%hd161749161801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr161755161803%_
                           _%bind161756161805%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd161749161801%_))
                        (let ((_%e161752161808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd161749161801%_))))
                          (let ((_%lp-hd161753161811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161752161808%_)))
                                (_%lp-tl161754161813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161752161808%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd161753161811%_))
                                (let ((_%e161759161816%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd161753161811%_))))
                                  (let ((_%hd161760161819%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161759161816%_)))
                                        (_%tl161761161821%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161759161816%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl161761161821%_))
                                        (let ((_%e161762161824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl161761161821%_))))
                                          (let ((_%hd161763161827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e161762161824%_)))
                                                (_%tl161764161829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e161762161824%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161764161829%_))
                                                (_%loop161751161798%_
                                                 _%lp-tl161754161813%_
                                                 (cons _%hd161763161827%_
                                                       _%expr161755161803%_)
                                                 (cons _%hd161760161819%_
                                                       _%bind161756161805%_))
                                                (_%g161737161772%_
                                                 _%g161738161775%_))))
                                        (_%g161737161772%_
                                         _%g161738161775%_))))
                                (_%g161737161772%_ _%g161738161775%_))))
                        (let ((_%expr161757161832%_
                               (reverse _%expr161755161803%_))
                              (_%bind161758161834%_
                               (reverse _%bind161756161805%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161747161790%_))
                              (let ((_%e161765161837%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161747161790%_))))
                                (let ((_%hd161766161840%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161765161837%_)))
                                      (_%tl161767161842%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161765161837%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161767161842%_))
                                      ((lambda (_%L161845%_
                                                _%L161846%_
                                                _%L161847%_)
                                         (let ((_%$e161878%_
                                                (let ((__tmp162633
                                                       (lambda (_%g161866161868%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self161734%_
                                                            _%g161866161868%_))))
                                                      (__tmp162631
                                                       (let ((__tmp162632
                                                              (lambda (_%g161870161873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g161871161875%_)
                        (cons _%g161870161873%_ _%g161871161875%_))))
                 (declare (not safe))
                 (__foldr1 __tmp162632 '() _%L161846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp162633
                                                   __tmp162631))))
                                           (if _%$e161878%_
                                               _%$e161878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self161734%_
                                                  _%L161845%_)))))
                                       _%hd161766161840%_
                                       _%expr161757161832%_
                                       _%bind161758161834%_)
                                      (_%g161737161772%_ _%g161738161775%_))))
                              (_%g161737161772%_ _%g161738161775%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop161751161798%_
                                                   _%target161748161793%_
                                                   '()
                                                   '()))
                                                (_%g161737161772%_
                                                 _%g161738161775%_)))))
                                      (_%g161737161772%_ _%g161738161775%_))))
                              (_%g161737161772%_ _%g161738161775%_))))
                      (_%g161737161772%_ _%g161738161775%_)))))
          (_%g161736161881%_ _%stx161735%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self161678%_ _%stx161679%_)
        (let* ((_%g161681161694%_
                (lambda (_%g161682161691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161682161691%_))))
               (_%g161680161731%_
                (lambda (_%g161682161697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161682161697%_))
                      (let ((_%e161684161699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161682161697%_))))
                        (let ((_%hd161685161702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161684161699%_)))
                              (_%tl161686161704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161684161699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161686161704%_))
                              (let ((_%e161687161707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161686161704%_))))
                                (let ((_%hd161688161710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161687161707%_)))
                                      (_%tl161689161712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161687161707%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161689161712%_))
                                      ((lambda (_%L161715%_)
                                         (let ((__tmp162635
                                                (lambda (_%g161726161728%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L161715%_
                                                     _%g161726161728%_))))
                                               (__tmp162634
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self161678%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp162635 __tmp162634)))
                                       _%hd161688161710%_)
                                      (_%g161681161694%_ _%g161682161697%_))))
                              (_%g161681161694%_ _%g161682161697%_))))
                      (_%g161681161694%_ _%g161682161697%_)))))
          (_%g161680161731%_ _%stx161679%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self161603%_ _%stx161604%_)
        (let* ((_%g161606161623%_
                (lambda (_%g161607161620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161607161620%_))))
               (_%g161605161675%_
                (lambda (_%g161607161626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161607161626%_))
                      (let ((_%e161610161628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161607161626%_))))
                        (let ((_%hd161611161631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161610161628%_)))
                              (_%tl161612161633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161610161628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161612161633%_))
                              (let ((_%e161613161636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161612161633%_))))
                                (let ((_%hd161614161639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161613161636%_)))
                                      (_%tl161615161641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161613161636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161615161641%_))
                                      (let ((_%e161616161644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161615161641%_))))
                                        (let ((_%hd161617161647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161616161644%_)))
                                              (_%tl161618161649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161616161644%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161618161649%_))
                                              ((lambda (_%L161652%_
                                                        _%L161653%_)
                                                 (let ((_%$e161672%_
                                                        (let ((__tmp162637
                                                               (lambda (_%g161667161669%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L161653%_
                            _%g161667161669%_))))
                      (__tmp162636
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self161603%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp162637 __tmp162636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e161672%_
                                                       _%$e161672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self161603%_
                                                          _%L161652%_)))))
                                               _%hd161617161647%_
                                               _%hd161614161639%_)
                                              (_%g161606161623%_
                                               _%g161607161626%_))))
                                      (_%g161606161623%_ _%g161607161626%_))))
                              (_%g161606161623%_ _%g161607161626%_))))
                      (_%g161606161623%_ _%g161607161626%_)))))
          (_%g161605161675%_ _%stx161604%_))))))
