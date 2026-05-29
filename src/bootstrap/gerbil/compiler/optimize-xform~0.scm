(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1779967245)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp213777 (list gxc#::void::t))
            (__tmp213776 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp213777
         '()
         __tmp213776
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args213761%_
        (apply make-instance gxc#::collect-mutators::t _%$args213761%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp213778
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
        (__make-atomic-promise __tmp213778)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx213753%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self213756%_
                (let ((__obj213764
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj213764))
               (__tmp213779
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213756%_ _%stx213753%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp213779
           gxc#current-compile-method
           _%self213756%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp213781 (list gxc#::basic-xform-expression::t))
            (__tmp213780 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp213781
         '(id new-id)
         __tmp213780
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args213750%_
        (apply make-instance gxc#::expression-subst::t _%$args213750%_)))
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
      (let ((__tmp213782
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
        (__make-atomic-promise __tmp213782)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords213722%_
               _%id213718213723%_
               _%new-id213719213724%_
               _%stx213725%_)
        (let* ((_%id213728%_
                (if (eq? _%id213718213723%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id213718213723%_))
               (_%new-id213730%_
                (if (eq? _%new-id213719213724%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id213719213724%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self213732%_
                  (let ((__obj213766
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213766
                       _%id213728%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213766
                       _%new-id213730%_
                       '2
                       '#f
                       '#f))
                    __obj213766))
                 (__tmp213783
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213732%_ _%stx213725%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213783
             gxc#current-compile-method
             _%self213732%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords213739%_ . _%args213740%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords213739%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords213739%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213739%_
                  'new-id:
                  absent-value))
               _%args213740%_)))
    (define gxc#apply-expression-subst
      (lambda _%args213720213746%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args213720213746%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp213785 (list gxc#::basic-xform-expression::t))
            (__tmp213784 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp213785
         '(subst)
         __tmp213784
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args213714%_
        (apply make-instance gxc#::expression-subst*::t _%$args213714%_)))
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
      (let ((__tmp213786
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
        (__make-atomic-promise __tmp213786)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords213689%_ _%subst213686213690%_ _%stx213691%_)
        (let ((_%subst213694%_
               (if (eq? _%subst213686213690%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst213686213690%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self213696%_
                  (let ((__obj213768
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213768
                       _%subst213694%_
                       '1
                       '#f
                       '#f))
                    __obj213768))
                 (__tmp213787
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213696%_ _%stx213691%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213787
             gxc#current-compile-method
             _%self213696%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords213703%_ . _%args213704%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords213703%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213703%_
                  'subst:
                  absent-value))
               _%args213704%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args213687213710%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args213687213710%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp213789 (list gxc#::basic-xform-expression::t))
            (__tmp213788 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp213789
         '(subst)
         __tmp213788
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args213682%_
        (apply make-instance gxc#::inline-subst::t _%$args213682%_)))
    (define gxc#::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-bind-methods!
      (let ((__tmp213790
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#ref
                  gxc#inline-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#set!
                  gxc#inline-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::inline-subst::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp213790)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords213657%_ _%subst213654213658%_ _%stx213659%_)
        (let ((_%subst213662%_
               (if (eq? _%subst213654213658%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst213654213658%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self213664%_
                  (let ((__obj213770
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213770
                       _%subst213662%_
                       '1
                       '#f
                       '#f))
                    __obj213770))
                 (__tmp213791
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213664%_ _%stx213659%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213791
             gxc#current-compile-method
             _%self213664%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords213671%_ . _%args213672%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords213671%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213671%_
                  'subst:
                  absent-value))
               _%args213672%_)))
    (define gxc#apply-inline-subst
      (lambda _%args213655213678%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%args213655213678%_)))
    (define gxc#::find-expression::t
      (let ((__tmp213792 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp213792
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args213650%_
        (apply make-instance gxc#::find-expression::t _%$args213650%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp213793
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
        (__make-atomic-promise __tmp213793)))
    (define gxc#::find-var-refs::t
      (let ((__tmp213795 (list gxc#::find-expression::t))
            (__tmp213794 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp213795
         '(ids)
         __tmp213794
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args213646%_
        (apply make-instance gxc#::find-var-refs::t _%$args213646%_)))
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
      (let ((__tmp213796
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
        (__make-atomic-promise __tmp213796)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords213621%_ _%ids213618213622%_ _%stx213623%_)
        (let ((_%ids213626%_
               (if (eq? _%ids213618213622%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids213618213622%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self213628%_
                  (let ((__obj213773
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213773
                       _%ids213626%_
                       '1
                       '#f
                       '#f))
                    __obj213773))
                 (__tmp213797
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213628%_ _%stx213623%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213797
             gxc#current-compile-method
             _%self213628%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords213635%_ . _%args213636%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords213635%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords213635%_ 'ids: absent-value))
               _%args213636%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args213619213642%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args213619213642%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp213799 (list gxc#::collect-expression-refs::t))
            (__tmp213798 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp213799
         '()
         __tmp213798
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args213614%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args213614%_)))
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
      (let ((__tmp213800
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
        (__make-atomic-promise __tmp213800)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords213589%_ _%table213586213590%_ _%stx213591%_)
        (let ((_%table213594%_
               (if (eq? _%table213586213590%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table213586213590%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self213596%_
                  (let ((__obj213775
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213775
                       _%table213594%_
                       '1
                       '#f
                       '#f))
                    __obj213775))
                 (__tmp213801
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213596%_ _%stx213591%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213801
             gxc#current-compile-method
             _%self213596%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords213603%_ . _%args213604%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords213603%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213603%_
                  'table:
                  absent-value))
               _%args213604%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args213587213610%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args213587213610%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self213515%_ _%stx213516%_)
        (let* ((_%g213518213535%_
                (lambda (_%g213519213532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213519213532%_))))
               (_%g213517213582%_
                (lambda (_%g213519213538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213519213538%_))
                      (let ((_%e213522213540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213519213538%_))))
                        (let ((_%hd213523213543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213522213540%_)))
                              (_%tl213524213545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213522213540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213524213545%_))
                              (let ((_%e213525213548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213524213545%_))))
                                (let ((_%hd213526213551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213525213548%_)))
                                      (_%tl213527213553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213525213548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213527213553%_))
                                      (let ((_%e213528213556%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl213527213553%_))))
                                        (let ((_%hd213529213559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213528213556%_)))
                                              (_%tl213530213561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213528213556%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213530213561%_))
                                              (let ((_%sym213580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%hd213526213551%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym213580%_))
                                                (let ((__tmp213802
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp213802
                                                   _%sym213580%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self213515%_
                                                   _%hd213529213559%_)))
                                              (_%g213518213535%_
                                               _%g213519213538%_))))
                                      (_%g213518213535%_ _%g213519213538%_))))
                              (_%g213518213535%_ _%g213519213538%_))))
                      (_%g213518213535%_ _%g213519213538%_)))))
          (_%g213517213582%_ _%stx213516%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self213463%_ _%stx213464%_)
        (let* ((_%g213466213479%_
                (lambda (_%g213467213476%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213467213476%_))))
               (_%g213465213512%_
                (lambda (_%g213467213482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213467213482%_))
                      (let ((_%e213469213484%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213467213482%_))))
                        (let ((_%hd213470213487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213469213484%_)))
                              (_%tl213471213489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213469213484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213471213489%_))
                              (let ((_%e213472213492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213471213489%_))))
                                (let ((_%hd213473213495%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213472213492%_)))
                                      (_%tl213474213497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213472213492%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl213474213497%_))
                                      (if (let ((__tmp213803
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self213463%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%hd213473213495%_
                                             __tmp213803))
                                          (let ((__tmp213804
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self213463%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp213804
                                             _%stx213464%_))
                                          _%stx213464%_)
                                      (_%g213466213479%_ _%g213467213482%_))))
                              (_%g213466213479%_ _%g213467213482%_))))
                      (_%g213466213479%_ _%g213467213482%_)))))
          (_%g213465213512%_ _%stx213464%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self213403%_ _%stx213404%_)
        (let* ((_%g213406213419%_
                (lambda (_%g213407213416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213407213416%_))))
               (_%g213405213460%_
                (lambda (_%g213407213422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213407213422%_))
                      (let ((_%e213409213424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213407213422%_))))
                        (let ((_%hd213410213427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213409213424%_)))
                              (_%tl213411213429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213409213424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213411213429%_))
                              (let ((_%e213412213432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213411213429%_))))
                                (let ((_%hd213413213435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213412213432%_)))
                                      (_%tl213414213437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213412213432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl213414213437%_))
                                      (let ((_%$e213454%_
                                             (let ((__tmp213806
                                                    (lambda (_%sub213452%_)
                                                      (let ((__tmp213807
                                                             (car _%sub213452%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%hd213413213435%_
                                                         __tmp213807))))
                                                   (__tmp213805
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self213403%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp213806
                                                       __tmp213805))))
                                        (if _%$e213454%_
                                            (let ((__tmp213808
                                                   (cons '%#ref
                                                         (cons (cdr _%$e213454%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp213808
                                               _%stx213404%_))
                                            _%stx213404%_))
                                      (_%g213406213419%_ _%g213407213422%_))))
                              (_%g213406213419%_ _%g213407213422%_))))
                      (_%g213406213419%_ _%g213407213422%_)))))
          (_%g213405213460%_ _%stx213404%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self213332%_ _%stx213333%_)
        (let* ((_%g213335213352%_
                (lambda (_%g213336213349%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213336213349%_))))
               (_%g213334213400%_
                (lambda (_%g213336213355%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213336213355%_))
                      (let ((_%e213339213357%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213336213355%_))))
                        (let ((_%hd213340213360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213339213357%_)))
                              (_%tl213341213362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213339213357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213341213362%_))
                              (let ((_%e213342213365%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213341213362%_))))
                                (let ((_%hd213343213368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213342213365%_)))
                                      (_%tl213344213370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213342213365%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213344213370%_))
                                      (let ((_%e213345213373%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl213344213370%_))))
                                        (let ((_%hd213346213376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213345213373%_)))
                                              (_%tl213347213378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213345213373%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213347213378%_))
                                              (let ((_%new-expr213397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self213332%_
                                                        _%hd213346213376%_)))
                                                    (_%new-xid213398%_
                                                     (if (let ((__tmp213809
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self213332%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%hd213343213368%_ __tmp213809))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self213332%_ 'new-id))
                 _%hd213343213368%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp213810
                                                       (cons '%#set!
                                                             (cons _%new-xid213398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr213397%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp213810
                                                   _%stx213333%_)))
                                              (_%g213335213352%_
                                               _%g213336213355%_))))
                                      (_%g213335213352%_ _%g213336213355%_))))
                              (_%g213335213352%_ _%g213336213355%_))))
                      (_%g213335213352%_ _%g213336213355%_)))))
          (_%g213334213400%_ _%stx213333%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self213255%_ _%stx213256%_)
        (let* ((_%g213258213275%_
                (lambda (_%g213259213272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213259213272%_))))
               (_%g213257213329%_
                (lambda (_%g213259213278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213259213278%_))
                      (let ((_%e213262213280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213259213278%_))))
                        (let ((_%hd213263213283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213262213280%_)))
                              (_%tl213264213285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213262213280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213264213285%_))
                              (let ((_%e213265213288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213264213285%_))))
                                (let ((_%hd213266213291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213265213288%_)))
                                      (_%tl213267213293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213265213288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213267213293%_))
                                      (let ((_%e213268213296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl213267213293%_))))
                                        (let ((_%hd213269213299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213268213296%_)))
                                              (_%tl213270213301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213268213296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213270213301%_))
                                              (let ((_%new-expr213326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self213255%_
                                                        _%hd213269213299%_)))
                                                    (_%new-xid213327%_
                                                     (let ((_%$e213322%_
                                                            (let ((__tmp213812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub213320%_)
                             (let ((__tmp213813 (car _%sub213320%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%hd213266213291%_
                                __tmp213813))))
                          (__tmp213811
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self213255%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp213812 __tmp213811))))
               (if _%$e213322%_ (cdr _%$e213322%_) _%hd213266213291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp213814
                                                       (cons '%#set!
                                                             (cons _%new-xid213327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr213326%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp213814
                                                   _%stx213256%_)))
                                              (_%g213258213275%_
                                               _%g213259213278%_))))
                                      (_%g213258213275%_ _%g213259213278%_))))
                              (_%g213258213275%_ _%g213259213278%_))))
                      (_%g213258213275%_ _%g213259213278%_)))))
          (_%g213257213329%_ _%stx213256%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self213195%_ _%stx213196%_)
        (let* ((_%g213198213211%_
                (lambda (_%g213199213208%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213199213208%_))))
               (_%g213197213252%_
                (lambda (_%g213199213214%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213199213214%_))
                      (let ((_%e213201213216%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213199213214%_))))
                        (let ((_%hd213202213219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213201213216%_)))
                              (_%tl213203213221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213201213216%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213203213221%_))
                              (let ((_%e213204213224%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213203213221%_))))
                                (let ((_%hd213205213227%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213204213224%_)))
                                      (_%tl213206213229%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213204213224%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl213206213229%_))
                                      (let ((_%$e213246%_
                                             (let ((__tmp213816
                                                    (lambda (_%sub213244%_)
                                                      (let ((__tmp213817
                                                             (car _%sub213244%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%hd213205213227%_
                                                         __tmp213817))))
                                                   (__tmp213815
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self213195%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp213816
                                                       __tmp213815))))
                                        (if _%$e213246%_
                                            (let ((__tmp213818
                                                   (cdr _%$e213246%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp213818
                                               _%stx213196%_))
                                            _%stx213196%_))
                                      (_%g213198213211%_ _%g213199213214%_))))
                              (_%g213198213211%_ _%g213199213214%_))))
                      (_%g213198213211%_ _%g213199213214%_)))))
          (_%g213197213252%_ _%stx213196%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self213125%_ _%stx213126%_)
        (let* ((_%g213128213145%_
                (lambda (_%g213129213142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213129213142%_))))
               (_%g213127213192%_
                (lambda (_%g213129213148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213129213148%_))
                      (let ((_%e213132213150%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213129213148%_))))
                        (let ((_%hd213133213153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213132213150%_)))
                              (_%tl213134213155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213132213150%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213134213155%_))
                              (let ((_%e213135213158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213134213155%_))))
                                (let ((_%hd213136213161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213135213158%_)))
                                      (_%tl213137213163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213135213158%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213137213163%_))
                                      (let ((_%e213138213166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl213137213163%_))))
                                        (let ((_%hd213139213169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213138213166%_)))
                                              (_%tl213140213171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213138213166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213140213171%_))
                                              (if (let ((__tmp213820
                                                         (lambda (_%sub213190%_)
                                                           (let ((__tmp213821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub213190%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%hd213136213161%_ __tmp213821))))
                (__tmp213819
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self213125%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp213820
                                                            __tmp213819))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx213126%_
                                                     _%hd213136213161%_))
                                                  (let ((__tmp213822
                                                         (cons '%#set!
                                                               (cons _%hd213136213161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self213125%_
                                      _%hd213139213169%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp213822
                                                     _%stx213126%_)))
                                              (_%g213128213145%_
                                               _%g213129213148%_))))
                                      (_%g213128213145%_ _%g213129213148%_))))
                              (_%g213128213145%_ _%g213129213148%_))))
                      (_%g213128213145%_ _%g213129213148%_)))))
          (_%g213127213192%_ _%stx213126%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self213071%_ _%stx213072%_)
        (let* ((_%g213074213087%_
                (lambda (_%g213075213084%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213075213084%_))))
               (_%g213073213122%_
                (lambda (_%g213075213090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213075213090%_))
                      (let ((_%e213077213092%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213075213090%_))))
                        (let ((_%hd213078213095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213077213092%_)))
                              (_%tl213079213097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213077213092%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213079213097%_))
                              (let ((_%e213080213100%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213079213097%_))))
                                (let ((_%hd213081213103%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213080213100%_)))
                                      (_%tl213082213105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213080213100%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl213082213105%_))
                                      (let* ((_%eid213120%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%hd213081213103%_)))
                                             (__tmp213823
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self213071%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp213823
                                         _%eid213120%_
                                         1+
                                         '0))
                                      (_%g213074213087%_ _%g213075213090%_))))
                              (_%g213074213087%_ _%g213075213090%_))))
                      (_%g213074213087%_ _%g213075213090%_)))))
          (_%g213073213122%_ _%stx213072%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self213001%_ _%stx213002%_)
        (let* ((_%g213004213021%_
                (lambda (_%g213005213018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213005213018%_))))
               (_%g213003213068%_
                (lambda (_%g213005213024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213005213024%_))
                      (let ((_%e213008213026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213005213024%_))))
                        (let ((_%hd213009213029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213008213026%_)))
                              (_%tl213010213031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213008213026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213010213031%_))
                              (let ((_%e213011213034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213010213031%_))))
                                (let ((_%hd213012213037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213011213034%_)))
                                      (_%tl213013213039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213011213034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213013213039%_))
                                      (let ((_%e213014213042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl213013213039%_))))
                                        (let ((_%hd213015213045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213014213042%_)))
                                              (_%tl213016213047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213014213042%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213016213047%_))
                                              (let ((_%eid213066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%hd213012213037%_))))
                                                (let ((__tmp213824
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self213001%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp213824
                                                   _%eid213066%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self213001%_
                                                   _%hd213015213045%_)))
                                              (_%g213004213021%_
                                               _%g213005213024%_))))
                                      (_%g213004213021%_ _%g213005213024%_))))
                              (_%g213004213021%_ _%g213005213024%_))))
                      (_%g213004213021%_ _%g213005213024%_)))))
          (_%g213003213068%_ _%stx213002%_))))
    (define gxc#find-body%
      (lambda (_%self212916%_ _%stx212917%_)
        (let* ((_%g212919212938%_
                (lambda (_%g212920212935%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212920212935%_))))
               (_%g212918212998%_
                (lambda (_%g212920212941%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212920212941%_))
                      (let ((_%e212922212943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212920212941%_))))
                        (let ((_%hd212923212946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212922212943%_)))
                              (_%tl212924212948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212922212943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl212924212948%_))
                              (let ((_g213825_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl212924212948%_
                                        '0))))
                                (begin
                                  (let ((_g213826_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g213825_)
                                               (##values-length _g213825_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g213826_ 2)))
                                        (error "Context expects 2 values"
                                               _g213826_)))
                                  (let ((_%target212925212951%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213825_ 0)))
                                        (_%tl212927212953%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213825_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212927212953%_))
                                        (letrec ((_%loop212928212956%_
                                                  (lambda (_%hd212926212959%_
                                                           _%expr212932212961%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd212926212959%_))
                                                        (let ((_%e212929212963%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd212926212959%_))))
                  (let ((_%lp-hd212930212966%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212929212963%_)))
                        (_%lp-tl212931212968%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212929212963%_))))
                    (_%loop212928212956%_
                     _%lp-tl212931212968%_
                     (cons _%lp-hd212930212966%_ _%expr212932212961%_))))
                (let ((_%expr212933212971%_ (reverse _%expr212932212961%_)))
                  (let ((__tmp213829
                         (lambda (_%g212986212988%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self212916%_
                              _%g212986212988%_))))
                        (__tmp213827
                         (let ((__tmp213828
                                (lambda (_%g212990212993%_ _%g212991212995%_)
                                  (cons _%g212990212993%_ _%g212991212995%_))))
                           (declare (not safe))
                           (foldr__0 __tmp213828 '() _%expr212933212971%_))))
                    (declare (not safe))
                    (ormap__0 __tmp213829 __tmp213827)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop212928212956%_
                                           _%target212925212951%_
                                           '()))
                                        (_%g212919212938%_
                                         _%g212920212941%_)))))
                              (_%g212919212938%_ _%g212920212941%_))))
                      (_%g212919212938%_ _%g212920212941%_)))))
          (_%g212918212998%_ _%stx212917%_))))
    (define gxc#find-let-values%
      (lambda (_%self212770%_ _%stx212771%_)
        (let* ((_%g212773212808%_
                (lambda (_%g212774212805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212774212805%_))))
               (_%g212772212913%_
                (lambda (_%g212774212811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212774212811%_))
                      (let ((_%e212778212813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212774212811%_))))
                        (let ((_%hd212779212816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212778212813%_)))
                              (_%tl212780212818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212778212813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212780212818%_))
                              (let ((_%e212781212821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212780212818%_))))
                                (let ((_%hd212782212824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212781212821%_)))
                                      (_%tl212783212826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212781212821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd212782212824%_))
                                      (let ((_g213830_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd212782212824%_
                                                '0))))
                                        (begin
                                          (let ((_g213831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g213830_)
                                                       (##values-length
                                                        _g213830_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g213831_ 2)))
                                                (error "Context expects 2 values"
                                                       _g213831_)))
                                          (let ((_%target212784212829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g213830_ 0)))
                                                (_%tl212786212831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g213830_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212786212831%_))
                                                (letrec ((_%loop212787212834%_
                                                          (lambda (_%hd212785212837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr212791212839%_
                           _%bind212792212840%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd212785212837%_))
                        (let ((_%e212788212842%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd212785212837%_))))
                          (let ((_%lp-hd212789212845%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212788212842%_)))
                                (_%lp-tl212790212847%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212788212842%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd212789212845%_))
                                (let ((_%e212795212850%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd212789212845%_))))
                                  (let ((_%hd212796212853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212795212850%_)))
                                        (_%tl212797212855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212795212850%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl212797212855%_))
                                        (let ((_%e212798212858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl212797212855%_))))
                                          (let ((_%hd212799212861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e212798212858%_)))
                                                (_%tl212800212863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e212798212858%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212800212863%_))
                                                (_%loop212787212834%_
                                                 _%lp-tl212790212847%_
                                                 (cons _%hd212799212861%_
                                                       _%expr212791212839%_)
                                                 (cons _%hd212796212853%_
                                                       _%bind212792212840%_))
                                                (_%g212773212808%_
                                                 _%g212774212811%_))))
                                        (_%g212773212808%_
                                         _%g212774212811%_))))
                                (_%g212773212808%_ _%g212774212811%_))))
                        (let ((_%expr212793212866%_
                               (reverse _%expr212791212839%_))
                              (_%bind212794212867%_
                               (reverse _%bind212792212840%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212783212826%_))
                              (let ((_%e212801212869%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212783212826%_))))
                                (let ((_%hd212802212872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212801212869%_)))
                                      (_%tl212803212874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212801212869%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212803212874%_))
                                      (let ((_%$e212910%_
                                             (let ((__tmp213834
                                                    (lambda (_%g212898212900%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self212770%_
                                                         _%g212898212900%_))))
                                                   (__tmp213832
                                                    (let ((__tmp213833
                                                           (lambda (_%g212902212905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g212903212907%_)
                     (cons _%g212902212905%_ _%g212903212907%_))))
              (declare (not safe))
              (foldr__0 __tmp213833 '() _%expr212793212866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp213834
                                                __tmp213832))))
                                        (if _%$e212910%_
                                            _%$e212910%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self212770%_
                                               _%hd212802212872%_))))
                                      (_%g212773212808%_ _%g212774212811%_))))
                              (_%g212773212808%_ _%g212774212811%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop212787212834%_
                                                   _%target212784212829%_
                                                   '()
                                                   '()))
                                                (_%g212773212808%_
                                                 _%g212774212811%_)))))
                                      (_%g212773212808%_ _%g212774212811%_))))
                              (_%g212773212808%_ _%g212774212811%_))))
                      (_%g212773212808%_ _%g212774212811%_)))))
          (_%g212772212913%_ _%stx212771%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self212714%_ _%stx212715%_)
        (let* ((_%g212717212730%_
                (lambda (_%g212718212727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212718212727%_))))
               (_%g212716212767%_
                (lambda (_%g212718212733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212718212733%_))
                      (let ((_%e212720212735%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212718212733%_))))
                        (let ((_%hd212721212738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212720212735%_)))
                              (_%tl212722212740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212720212735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212722212740%_))
                              (let ((_%e212723212743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212722212740%_))))
                                (let ((_%hd212724212746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212723212743%_)))
                                      (_%tl212725212748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212723212743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212725212748%_))
                                      (let ((__tmp213836
                                             (lambda (_%g212762212764%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%hd212724212746%_
                                                  _%g212762212764%_))))
                                            (__tmp213835
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self212714%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp213836 __tmp213835))
                                      (_%g212717212730%_ _%g212718212733%_))))
                              (_%g212717212730%_ _%g212718212733%_))))
                      (_%g212717212730%_ _%g212718212733%_)))))
          (_%g212716212767%_ _%stx212715%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self212639%_ _%stx212640%_)
        (let* ((_%g212642212659%_
                (lambda (_%g212643212656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212643212656%_))))
               (_%g212641212711%_
                (lambda (_%g212643212662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212643212662%_))
                      (let ((_%e212646212664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212643212662%_))))
                        (let ((_%hd212647212667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212646212664%_)))
                              (_%tl212648212669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212646212664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212648212669%_))
                              (let ((_%e212649212672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212648212669%_))))
                                (let ((_%hd212650212675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212649212672%_)))
                                      (_%tl212651212677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212649212672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212651212677%_))
                                      (let ((_%e212652212680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212651212677%_))))
                                        (let ((_%hd212653212683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212652212680%_)))
                                              (_%tl212654212685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212652212680%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212654212685%_))
                                              (let ((_%$e212708%_
                                                     (let ((__tmp213838
                                                            (lambda (_%g212703212705%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%hd212650212675%_
                         _%g212703212705%_))))
                   (__tmp213837
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self212639%_ 'ids))))
               (declare (not safe))
               (__find __tmp213838 __tmp213837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e212708%_
                                                    _%$e212708%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self212639%_
                                                       _%hd212653212683%_))))
                                              (_%g212642212659%_
                                               _%g212643212662%_))))
                                      (_%g212642212659%_ _%g212643212662%_))))
                              (_%g212642212659%_ _%g212643212662%_))))
                      (_%g212642212659%_ _%g212643212662%_)))))
          (_%g212641212711%_ _%stx212640%_))))))
