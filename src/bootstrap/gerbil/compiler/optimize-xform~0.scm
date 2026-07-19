(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1784279018)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp220773 (list gxc#::void::t))
            (__tmp220772 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp220773
         '()
         __tmp220772
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args220757%_
        (apply make-instance gxc#::collect-mutators::t _%$args220757%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp220774
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
        (__make-atomic-promise __tmp220774)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx220749%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self220752%_
                (let ((__obj220760
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj220760))
               (__tmp220775
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220752%_ _%stx220749%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220775
           gxc#current-compile-method
           _%self220752%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp220777 (list gxc#::basic-xform-expression::t))
            (__tmp220776 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp220777
         '(id new-id)
         __tmp220776
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args220746%_
        (apply make-instance gxc#::expression-subst::t _%$args220746%_)))
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
      (let ((__tmp220778
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
        (__make-atomic-promise __tmp220778)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords220718%_
               _%$%id220714220719%_
               _%$%new-id220715220720%_
               _%stx220721%_)
        (let* ((_%id220724%_
                (if (eq? _%$%id220714220719%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id220714220719%_))
               (_%new-id220726%_
                (if (eq? _%$%new-id220715220720%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id220715220720%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self220728%_
                  (let ((__obj220762
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220762
                       _%id220724%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220762
                       _%new-id220726%_
                       '2
                       '#f
                       '#f))
                    __obj220762))
                 (__tmp220779
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220728%_ _%stx220721%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220779
             gxc#current-compile-method
             _%self220728%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords220735%_ . _%args220736%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords220735%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords220735%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220735%_
                  'new-id:
                  absent-value))
               _%args220736%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args220716220742%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args220716220742%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp220781 (list gxc#::basic-xform-expression::t))
            (__tmp220780 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp220781
         '(subst)
         __tmp220780
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args220710%_
        (apply make-instance gxc#::expression-subst*::t _%$args220710%_)))
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
      (let ((__tmp220782
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
        (__make-atomic-promise __tmp220782)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords220685%_ _%$%subst220682220686%_ _%stx220687%_)
        (let ((_%subst220690%_
               (if (eq? _%$%subst220682220686%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst220682220686%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self220692%_
                  (let ((__obj220764
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220764
                       _%subst220690%_
                       '1
                       '#f
                       '#f))
                    __obj220764))
                 (__tmp220783
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220692%_ _%stx220687%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220783
             gxc#current-compile-method
             _%self220692%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords220699%_ . _%args220700%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords220699%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220699%_
                  'subst:
                  absent-value))
               _%args220700%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args220683220706%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args220683220706%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp220785 (list gxc#::basic-xform-expression::t))
            (__tmp220784 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp220785
         '(subst)
         __tmp220784
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args220678%_
        (apply make-instance gxc#::inline-subst::t _%$args220678%_)))
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
      (let ((__tmp220786
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
        (__make-atomic-promise __tmp220786)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords220653%_ _%$%subst220650220654%_ _%stx220655%_)
        (let ((_%subst220658%_
               (if (eq? _%$%subst220650220654%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst220650220654%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self220660%_
                  (let ((__obj220766
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220766
                       _%subst220658%_
                       '1
                       '#f
                       '#f))
                    __obj220766))
                 (__tmp220787
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220660%_ _%stx220655%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220787
             gxc#current-compile-method
             _%self220660%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords220667%_ . _%args220668%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords220667%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220667%_
                  'subst:
                  absent-value))
               _%args220668%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args220651220674%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args220651220674%_)))
    (define gxc#::find-expression::t
      (let ((__tmp220788 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp220788
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args220646%_
        (apply make-instance gxc#::find-expression::t _%$args220646%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp220789
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
        (__make-atomic-promise __tmp220789)))
    (define gxc#::find-var-refs::t
      (let ((__tmp220791 (list gxc#::find-expression::t))
            (__tmp220790 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp220791
         '(ids)
         __tmp220790
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args220642%_
        (apply make-instance gxc#::find-var-refs::t _%$args220642%_)))
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
      (let ((__tmp220792
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
        (__make-atomic-promise __tmp220792)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords220617%_ _%$%ids220614220618%_ _%stx220619%_)
        (let ((_%ids220622%_
               (if (eq? _%$%ids220614220618%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids220614220618%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self220624%_
                  (let ((__obj220769
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220769
                       _%ids220622%_
                       '1
                       '#f
                       '#f))
                    __obj220769))
                 (__tmp220793
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220624%_ _%stx220619%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220793
             gxc#current-compile-method
             _%self220624%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords220631%_ . _%args220632%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords220631%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords220631%_ 'ids: absent-value))
               _%args220632%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args220615220638%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args220615220638%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp220795 (list gxc#::collect-expression-refs::t))
            (__tmp220794 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp220795
         '()
         __tmp220794
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args220610%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args220610%_)))
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
      (let ((__tmp220796
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
        (__make-atomic-promise __tmp220796)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords220585%_ _%$%table220582220586%_ _%stx220587%_)
        (let ((_%table220590%_
               (if (eq? _%$%table220582220586%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table220582220586%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self220592%_
                  (let ((__obj220771
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220771
                       _%table220590%_
                       '1
                       '#f
                       '#f))
                    __obj220771))
                 (__tmp220797
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220592%_ _%stx220587%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220797
             gxc#current-compile-method
             _%self220592%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords220599%_ . _%args220600%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords220599%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220599%_
                  'table:
                  absent-value))
               _%args220600%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args220583220606%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args220583220606%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self220511%_ _%stx220512%_)
        (let* ((_%$%g220514220531%_
                (lambda (_%$%g220515220528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220515220528%_))))
               (_%$%g220513220578%_
                (lambda (_%$%g220515220534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220515220534%_))
                      (let ((_%$%e220518220536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220515220534%_))))
                        (let ((_%$%hd220519220539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220518220536%_)))
                              (_%$%tl220520220541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220518220536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220520220541%_))
                              (let ((_%$%e220521220544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220520220541%_))))
                                (let ((_%$%hd220522220547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220521220544%_)))
                                      (_%$%tl220523220549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220521220544%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220523220549%_))
                                      (let ((_%$%e220524220552%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220523220549%_))))
                                        (let ((_%$%hd220525220555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220524220552%_)))
                                              (_%$%tl220526220557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220524220552%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220526220557%_))
                                              (let ((_%sym220576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd220522220547%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym220576%_))
                                                (let ((__tmp220798
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp220798
                                                   _%sym220576%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self220511%_
                                                   _%$%hd220525220555%_)))
                                              (_%$%g220514220531%_
                                               _%$%g220515220534%_))))
                                      (_%$%g220514220531%_
                                       _%$%g220515220534%_))))
                              (_%$%g220514220531%_ _%$%g220515220534%_))))
                      (_%$%g220514220531%_ _%$%g220515220534%_)))))
          (_%$%g220513220578%_ _%stx220512%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self220459%_ _%stx220460%_)
        (let* ((_%$%g220462220475%_
                (lambda (_%$%g220463220472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220463220472%_))))
               (_%$%g220461220508%_
                (lambda (_%$%g220463220478%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220463220478%_))
                      (let ((_%$%e220465220480%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220463220478%_))))
                        (let ((_%$%hd220466220483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220465220480%_)))
                              (_%$%tl220467220485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220465220480%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220467220485%_))
                              (let ((_%$%e220468220488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220467220485%_))))
                                (let ((_%$%hd220469220491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220468220488%_)))
                                      (_%$%tl220470220493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220468220488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl220470220493%_))
                                      (if (let ((__tmp220799
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self220459%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd220469220491%_
                                             __tmp220799))
                                          (let ((__tmp220800
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self220459%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp220800
                                             _%stx220460%_))
                                          _%stx220460%_)
                                      (_%$%g220462220475%_
                                       _%$%g220463220478%_))))
                              (_%$%g220462220475%_ _%$%g220463220478%_))))
                      (_%$%g220462220475%_ _%$%g220463220478%_)))))
          (_%$%g220461220508%_ _%stx220460%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self220399%_ _%stx220400%_)
        (let* ((_%$%g220402220415%_
                (lambda (_%$%g220403220412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220403220412%_))))
               (_%$%g220401220456%_
                (lambda (_%$%g220403220418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220403220418%_))
                      (let ((_%$%e220405220420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220403220418%_))))
                        (let ((_%$%hd220406220423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220405220420%_)))
                              (_%$%tl220407220425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220405220420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220407220425%_))
                              (let ((_%$%e220408220428%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220407220425%_))))
                                (let ((_%$%hd220409220431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220408220428%_)))
                                      (_%$%tl220410220433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220408220428%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl220410220433%_))
                                      (let ((_%$e220450%_
                                             (let ((__tmp220802
                                                    (lambda (_%sub220448%_)
                                                      (let ((__tmp220803
                                                             (car _%sub220448%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd220409220431%_
                                                         __tmp220803))))
                                                   (__tmp220801
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self220399%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp220802
                                                       __tmp220801))))
                                        (if _%$e220450%_
                                            (let ((__tmp220804
                                                   (cons '%#ref
                                                         (cons (cdr _%$e220450%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp220804
                                               _%stx220400%_))
                                            _%stx220400%_))
                                      (_%$%g220402220415%_
                                       _%$%g220403220418%_))))
                              (_%$%g220402220415%_ _%$%g220403220418%_))))
                      (_%$%g220402220415%_ _%$%g220403220418%_)))))
          (_%$%g220401220456%_ _%stx220400%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self220328%_ _%stx220329%_)
        (let* ((_%$%g220331220348%_
                (lambda (_%$%g220332220345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220332220345%_))))
               (_%$%g220330220396%_
                (lambda (_%$%g220332220351%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220332220351%_))
                      (let ((_%$%e220335220353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220332220351%_))))
                        (let ((_%$%hd220336220356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220335220353%_)))
                              (_%$%tl220337220358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220335220353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220337220358%_))
                              (let ((_%$%e220338220361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220337220358%_))))
                                (let ((_%$%hd220339220364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220338220361%_)))
                                      (_%$%tl220340220366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220338220361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220340220366%_))
                                      (let ((_%$%e220341220369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220340220366%_))))
                                        (let ((_%$%hd220342220372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220341220369%_)))
                                              (_%$%tl220343220374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220341220369%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220343220374%_))
                                              (let ((_%new-expr220393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self220328%_
                                                        _%$%hd220342220372%_)))
                                                    (_%new-xid220394%_
                                                     (if (let ((__tmp220805
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self220328%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd220339220364%_ __tmp220805))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self220328%_ 'new-id))
                 _%$%hd220339220364%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp220806
                                                       (cons '%#set!
                                                             (cons _%new-xid220394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr220393%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220806
                                                   _%stx220329%_)))
                                              (_%$%g220331220348%_
                                               _%$%g220332220351%_))))
                                      (_%$%g220331220348%_
                                       _%$%g220332220351%_))))
                              (_%$%g220331220348%_ _%$%g220332220351%_))))
                      (_%$%g220331220348%_ _%$%g220332220351%_)))))
          (_%$%g220330220396%_ _%stx220329%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self220251%_ _%stx220252%_)
        (let* ((_%$%g220254220271%_
                (lambda (_%$%g220255220268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220255220268%_))))
               (_%$%g220253220325%_
                (lambda (_%$%g220255220274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220255220274%_))
                      (let ((_%$%e220258220276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220255220274%_))))
                        (let ((_%$%hd220259220279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220258220276%_)))
                              (_%$%tl220260220281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220258220276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220260220281%_))
                              (let ((_%$%e220261220284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220260220281%_))))
                                (let ((_%$%hd220262220287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220261220284%_)))
                                      (_%$%tl220263220289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220261220284%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220263220289%_))
                                      (let ((_%$%e220264220292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220263220289%_))))
                                        (let ((_%$%hd220265220295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220264220292%_)))
                                              (_%$%tl220266220297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220264220292%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220266220297%_))
                                              (let ((_%new-expr220322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self220251%_
                                                        _%$%hd220265220295%_)))
                                                    (_%new-xid220323%_
                                                     (let ((_%$e220318%_
                                                            (let ((__tmp220808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub220316%_)
                             (let ((__tmp220809 (car _%sub220316%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd220262220287%_
                                __tmp220809))))
                          (__tmp220807
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self220251%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp220808 __tmp220807))))
               (if _%$e220318%_ (cdr _%$e220318%_) _%$%hd220262220287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp220810
                                                       (cons '%#set!
                                                             (cons _%new-xid220323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr220322%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220810
                                                   _%stx220252%_)))
                                              (_%$%g220254220271%_
                                               _%$%g220255220274%_))))
                                      (_%$%g220254220271%_
                                       _%$%g220255220274%_))))
                              (_%$%g220254220271%_ _%$%g220255220274%_))))
                      (_%$%g220254220271%_ _%$%g220255220274%_)))))
          (_%$%g220253220325%_ _%stx220252%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self220191%_ _%stx220192%_)
        (let* ((_%$%g220194220207%_
                (lambda (_%$%g220195220204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220195220204%_))))
               (_%$%g220193220248%_
                (lambda (_%$%g220195220210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220195220210%_))
                      (let ((_%$%e220197220212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220195220210%_))))
                        (let ((_%$%hd220198220215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220197220212%_)))
                              (_%$%tl220199220217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220197220212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220199220217%_))
                              (let ((_%$%e220200220220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220199220217%_))))
                                (let ((_%$%hd220201220223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220200220220%_)))
                                      (_%$%tl220202220225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220200220220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl220202220225%_))
                                      (let ((_%$e220242%_
                                             (let ((__tmp220812
                                                    (lambda (_%sub220240%_)
                                                      (let ((__tmp220813
                                                             (car _%sub220240%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd220201220223%_
                                                         __tmp220813))))
                                                   (__tmp220811
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self220191%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp220812
                                                       __tmp220811))))
                                        (if _%$e220242%_
                                            (let ((__tmp220814
                                                   (cdr _%$e220242%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp220814
                                               _%stx220192%_))
                                            _%stx220192%_))
                                      (_%$%g220194220207%_
                                       _%$%g220195220210%_))))
                              (_%$%g220194220207%_ _%$%g220195220210%_))))
                      (_%$%g220194220207%_ _%$%g220195220210%_)))))
          (_%$%g220193220248%_ _%stx220192%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self220121%_ _%stx220122%_)
        (let* ((_%$%g220124220141%_
                (lambda (_%$%g220125220138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220125220138%_))))
               (_%$%g220123220188%_
                (lambda (_%$%g220125220144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220125220144%_))
                      (let ((_%$%e220128220146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220125220144%_))))
                        (let ((_%$%hd220129220149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220128220146%_)))
                              (_%$%tl220130220151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220128220146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220130220151%_))
                              (let ((_%$%e220131220154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220130220151%_))))
                                (let ((_%$%hd220132220157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220131220154%_)))
                                      (_%$%tl220133220159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220131220154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220133220159%_))
                                      (let ((_%$%e220134220162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220133220159%_))))
                                        (let ((_%$%hd220135220165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220134220162%_)))
                                              (_%$%tl220136220167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220134220162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220136220167%_))
                                              (if (let ((__tmp220816
                                                         (lambda (_%sub220186%_)
                                                           (let ((__tmp220817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub220186%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd220132220157%_ __tmp220817))))
                (__tmp220815
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self220121%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp220816
                                                            __tmp220815))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx220122%_
                                                     _%$%hd220132220157%_))
                                                  (let ((__tmp220818
                                                         (cons '%#set!
                                                               (cons _%$%hd220132220157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self220121%_
                                      _%$%hd220135220165%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp220818
                                                     _%stx220122%_)))
                                              (_%$%g220124220141%_
                                               _%$%g220125220144%_))))
                                      (_%$%g220124220141%_
                                       _%$%g220125220144%_))))
                              (_%$%g220124220141%_ _%$%g220125220144%_))))
                      (_%$%g220124220141%_ _%$%g220125220144%_)))))
          (_%$%g220123220188%_ _%stx220122%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self220067%_ _%stx220068%_)
        (let* ((_%$%g220070220083%_
                (lambda (_%$%g220071220080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220071220080%_))))
               (_%$%g220069220118%_
                (lambda (_%$%g220071220086%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220071220086%_))
                      (let ((_%$%e220073220088%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220071220086%_))))
                        (let ((_%$%hd220074220091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220073220088%_)))
                              (_%$%tl220075220093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220073220088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220075220093%_))
                              (let ((_%$%e220076220096%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220075220093%_))))
                                (let ((_%$%hd220077220099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220076220096%_)))
                                      (_%$%tl220078220101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220076220096%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl220078220101%_))
                                      (let* ((_%eid220116%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd220077220099%_)))
                                             (__tmp220819
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self220067%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp220819
                                         _%eid220116%_
                                         1+
                                         '0))
                                      (_%$%g220070220083%_
                                       _%$%g220071220086%_))))
                              (_%$%g220070220083%_ _%$%g220071220086%_))))
                      (_%$%g220070220083%_ _%$%g220071220086%_)))))
          (_%$%g220069220118%_ _%stx220068%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self219997%_ _%stx219998%_)
        (let* ((_%$%g220000220017%_
                (lambda (_%$%g220001220014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220001220014%_))))
               (_%$%g219999220064%_
                (lambda (_%$%g220001220020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g220001220020%_))
                      (let ((_%$%e220004220022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g220001220020%_))))
                        (let ((_%$%hd220005220025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e220004220022%_)))
                              (_%$%tl220006220027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e220004220022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl220006220027%_))
                              (let ((_%$%e220007220030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl220006220027%_))))
                                (let ((_%$%hd220008220033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220007220030%_)))
                                      (_%$%tl220009220035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220007220030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl220009220035%_))
                                      (let ((_%$%e220010220038%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl220009220035%_))))
                                        (let ((_%$%hd220011220041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e220010220038%_)))
                                              (_%$%tl220012220043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e220010220038%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl220012220043%_))
                                              (let ((_%eid220062%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd220008220033%_))))
                                                (let ((__tmp220820
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self219997%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp220820
                                                   _%eid220062%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self219997%_
                                                   _%$%hd220011220041%_)))
                                              (_%$%g220000220017%_
                                               _%$%g220001220020%_))))
                                      (_%$%g220000220017%_
                                       _%$%g220001220020%_))))
                              (_%$%g220000220017%_ _%$%g220001220020%_))))
                      (_%$%g220000220017%_ _%$%g220001220020%_)))))
          (_%$%g219999220064%_ _%stx219998%_))))
    (define gxc#find-body%
      (lambda (_%self219912%_ _%stx219913%_)
        (let* ((_%$%g219915219934%_
                (lambda (_%$%g219916219931%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g219916219931%_))))
               (_%$%g219914219994%_
                (lambda (_%$%g219916219937%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g219916219937%_))
                      (let ((_%$%e219918219939%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g219916219937%_))))
                        (let ((_%$%hd219919219942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219918219939%_)))
                              (_%$%tl219920219944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219918219939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl219920219944%_))
                              (let ((_g220821_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl219920219944%_
                                        '0))))
                                (begin
                                  (let ((_g220822_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220821_)
                                               (##values-length _g220821_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220822_ 2)))
                                        (error "Context expects 2 values"
                                               _g220822_)))
                                  (let ((_%$%target219921219947%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g220821_ 0)))
                                        (_%$%tl219923219949%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g220821_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl219923219949%_))
                                        (letrec ((_%$%loop219924219952%_
                                                  (lambda (_%$%hd219922219955%_
                                                           _%$%expr219928219957%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd219922219955%_))
                                                        (let ((_%$%e219925219959%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd219922219955%_))))
                  (let ((_%$%lp-hd219926219962%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e219925219959%_)))
                        (_%$%lp-tl219927219964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e219925219959%_))))
                    (_%$%loop219924219952%_
                     _%$%lp-tl219927219964%_
                     (cons _%$%lp-hd219926219962%_ _%$%expr219928219957%_))))
                (let ((_%$%expr219929219967%_
                       (reverse _%$%expr219928219957%_)))
                  (let ((__tmp220825
                         (lambda (_%$%g219982219984%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self219912%_
                              _%$%g219982219984%_))))
                        (__tmp220823
                         (let ((__tmp220824
                                (lambda (_%$%g219986219989%_
                                         _%$%g219987219991%_)
                                  (cons _%$%g219986219989%_
                                        _%$%g219987219991%_))))
                           (declare (not safe))
                           (foldr__0 __tmp220824 '() _%$%expr219929219967%_))))
                    (declare (not safe))
                    (ormap__0 __tmp220825 __tmp220823)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop219924219952%_
                                           _%$%target219921219947%_
                                           '()))
                                        (_%$%g219915219934%_
                                         _%$%g219916219937%_)))))
                              (_%$%g219915219934%_ _%$%g219916219937%_))))
                      (_%$%g219915219934%_ _%$%g219916219937%_)))))
          (_%$%g219914219994%_ _%stx219913%_))))
    (define gxc#find-let-values%
      (lambda (_%self219766%_ _%stx219767%_)
        (let* ((_%$%g219769219804%_
                (lambda (_%$%g219770219801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g219770219801%_))))
               (_%$%g219768219909%_
                (lambda (_%$%g219770219807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g219770219807%_))
                      (let ((_%$%e219774219809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g219770219807%_))))
                        (let ((_%$%hd219775219812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219774219809%_)))
                              (_%$%tl219776219814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219774219809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl219776219814%_))
                              (let ((_%$%e219777219817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl219776219814%_))))
                                (let ((_%$%hd219778219820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219777219817%_)))
                                      (_%$%tl219779219822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219777219817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd219778219820%_))
                                      (let ((_g220826_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd219778219820%_
                                                '0))))
                                        (begin
                                          (let ((_g220827_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g220826_)
                                                       (##values-length
                                                        _g220826_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g220827_ 2)))
                                                (error "Context expects 2 values"
                                                       _g220827_)))
                                          (let ((_%$%target219780219825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g220826_ 0)))
                                                (_%$%tl219782219827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g220826_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl219782219827%_))
                                                (letrec ((_%$%loop219783219830%_
                                                          (lambda (_%$%hd219781219833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr219787219835%_
                           _%$%bind219788219836%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd219781219833%_))
                        (let ((_%$%e219784219838%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd219781219833%_))))
                          (let ((_%$%lp-hd219785219841%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e219784219838%_)))
                                (_%$%lp-tl219786219843%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e219784219838%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd219785219841%_))
                                (let ((_%$%e219791219846%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd219785219841%_))))
                                  (let ((_%$%hd219792219849%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e219791219846%_)))
                                        (_%$%tl219793219851%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e219791219846%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl219793219851%_))
                                        (let ((_%$%e219794219854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl219793219851%_))))
                                          (let ((_%$%hd219795219857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e219794219854%_)))
                                                (_%$%tl219796219859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e219794219854%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl219796219859%_))
                                                (_%$%loop219783219830%_
                                                 _%$%lp-tl219786219843%_
                                                 (cons _%$%hd219795219857%_
                                                       _%$%expr219787219835%_)
                                                 (cons _%$%hd219792219849%_
                                                       _%$%bind219788219836%_))
                                                (_%$%g219769219804%_
                                                 _%$%g219770219807%_))))
                                        (_%$%g219769219804%_
                                         _%$%g219770219807%_))))
                                (_%$%g219769219804%_ _%$%g219770219807%_))))
                        (let ((_%$%expr219789219862%_
                               (reverse _%$%expr219787219835%_))
                              (_%$%bind219790219863%_
                               (reverse _%$%bind219788219836%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl219779219822%_))
                              (let ((_%$%e219797219865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl219779219822%_))))
                                (let ((_%$%hd219798219868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219797219865%_)))
                                      (_%$%tl219799219870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219797219865%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl219799219870%_))
                                      (let ((_%$e219906%_
                                             (let ((__tmp220830
                                                    (lambda (_%$%g219894219896%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self219766%_
                                                         _%$%g219894219896%_))))
                                                   (__tmp220828
                                                    (let ((__tmp220829
                                                           (lambda (_%$%g219898219901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g219899219903%_)
                     (cons _%$%g219898219901%_ _%$%g219899219903%_))))
              (declare (not safe))
              (foldr__0 __tmp220829 '() _%$%expr219789219862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp220830
                                                __tmp220828))))
                                        (if _%$e219906%_
                                            _%$e219906%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219766%_
                                               _%$%hd219798219868%_))))
                                      (_%$%g219769219804%_
                                       _%$%g219770219807%_))))
                              (_%$%g219769219804%_ _%$%g219770219807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop219783219830%_
                                                   _%$%target219780219825%_
                                                   '()
                                                   '()))
                                                (_%$%g219769219804%_
                                                 _%$%g219770219807%_)))))
                                      (_%$%g219769219804%_
                                       _%$%g219770219807%_))))
                              (_%$%g219769219804%_ _%$%g219770219807%_))))
                      (_%$%g219769219804%_ _%$%g219770219807%_)))))
          (_%$%g219768219909%_ _%stx219767%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self219710%_ _%stx219711%_)
        (let* ((_%$%g219713219726%_
                (lambda (_%$%g219714219723%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g219714219723%_))))
               (_%$%g219712219763%_
                (lambda (_%$%g219714219729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g219714219729%_))
                      (let ((_%$%e219716219731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g219714219729%_))))
                        (let ((_%$%hd219717219734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219716219731%_)))
                              (_%$%tl219718219736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219716219731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl219718219736%_))
                              (let ((_%$%e219719219739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl219718219736%_))))
                                (let ((_%$%hd219720219742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219719219739%_)))
                                      (_%$%tl219721219744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219719219739%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl219721219744%_))
                                      (let ((__tmp220832
                                             (lambda (_%$%g219758219760%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd219720219742%_
                                                  _%$%g219758219760%_))))
                                            (__tmp220831
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self219710%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp220832 __tmp220831))
                                      (_%$%g219713219726%_
                                       _%$%g219714219729%_))))
                              (_%$%g219713219726%_ _%$%g219714219729%_))))
                      (_%$%g219713219726%_ _%$%g219714219729%_)))))
          (_%$%g219712219763%_ _%stx219711%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self219635%_ _%stx219636%_)
        (let* ((_%$%g219638219655%_
                (lambda (_%$%g219639219652%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g219639219652%_))))
               (_%$%g219637219707%_
                (lambda (_%$%g219639219658%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g219639219658%_))
                      (let ((_%$%e219642219660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g219639219658%_))))
                        (let ((_%$%hd219643219663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219642219660%_)))
                              (_%$%tl219644219665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219642219660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl219644219665%_))
                              (let ((_%$%e219645219668%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl219644219665%_))))
                                (let ((_%$%hd219646219671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219645219668%_)))
                                      (_%$%tl219647219673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219645219668%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl219647219673%_))
                                      (let ((_%$%e219648219676%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl219647219673%_))))
                                        (let ((_%$%hd219649219679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e219648219676%_)))
                                              (_%$%tl219650219681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e219648219676%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl219650219681%_))
                                              (let ((_%$e219704%_
                                                     (let ((__tmp220834
                                                            (lambda (_%$%g219699219701%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd219646219671%_
                         _%$%g219699219701%_))))
                   (__tmp220833
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self219635%_ 'ids))))
               (declare (not safe))
               (__find __tmp220834 __tmp220833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e219704%_
                                                    _%$e219704%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self219635%_
                                                       _%$%hd219649219679%_))))
                                              (_%$%g219638219655%_
                                               _%$%g219639219658%_))))
                                      (_%$%g219638219655%_
                                       _%$%g219639219658%_))))
                              (_%$%g219638219655%_ _%$%g219639219658%_))))
                      (_%$%g219638219655%_ _%$%g219639219658%_)))))
          (_%$%g219637219707%_ _%stx219636%_))))))
