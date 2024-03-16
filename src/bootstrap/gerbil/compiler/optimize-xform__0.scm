(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710632269)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119539 (list gxc#::void::t))
            (__tmp119537
             (let ((__tmp119538
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119538 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119539
         '()
         __tmp119537
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119278_
        (apply make-instance gxc#::collect-mutators::t _$args119278_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp119540
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
                 (seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (make-promise __tmp119540)))
    (define gxc#apply-collect-mutators
      (lambda (_stx119270_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119273_
                (let ((__obj119525
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119525))
               (__tmp119541
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119273_ _stx119270_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119541
           gxc#current-compile-method
           _self119273_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119544 (list gxc#::void::t))
            (__tmp119542
             (let ((__tmp119543
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119543 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119544
         '()
         __tmp119542
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119267_
        (apply make-instance gxc#::collect-methods::t _$args119267_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp119545
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
                 (seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (make-promise __tmp119545)))
    (define gxc#apply-collect-methods
      (lambda (_stx119259_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119262_
                (let ((__obj119527
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119527))
               (__tmp119546
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119262_ _stx119259_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119546
           gxc#current-compile-method
           _self119262_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119549 (list gxc#::basic-xform-expression::t))
            (__tmp119547
             (let ((__tmp119548
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119548 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119549
         '(id new-id)
         __tmp119547
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119256_
        (apply make-instance gxc#::expression-subst::t _$args119256_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp119550
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
                 (seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (make-promise __tmp119550)))
    (define gxc#apply-expression-subst__%
      (lambda (_g119551_ _id119222119226_ _new-id119223119228_ _stx119230_)
        (let* ((_id119233_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119222119226_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119222119226_))
               (_new-id119235_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119223119228_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119223119228_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119237_
                  (let ((__obj119529
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119529
                       _id119233_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119529
                       _new-id119235_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119529))
                 (__tmp119552
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119237_ _stx119230_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119552
             gxc#current-compile-method
             _self119237_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119221119244_ . _args119246_)
        (apply gxc#apply-expression-subst__%
               _keys119221119244_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119221119244_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119221119244_ 'new-id: absent-value))
               _args119246_)))
    (define gxc#apply-expression-subst
      (lambda _args119224119252_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119224119252_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119555 (list gxc#::basic-xform-expression::t))
            (__tmp119553
             (let ((__tmp119554
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119554 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119555
         '(subst)
         __tmp119553
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119217_
        (apply make-instance gxc#::expression-subst*::t _$args119217_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp119556
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
                 (seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (make-promise __tmp119556)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g119557_ _subst119188119191_ _stx119193_)
        (let ((_subst119196_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119188119191_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119188119191_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119198_
                  (let ((__obj119531
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119531
                       _subst119196_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119531))
                 (__tmp119558
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119198_ _stx119193_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119558
             gxc#current-compile-method
             _self119198_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119187119205_ . _args119207_)
        (apply gxc#apply-expression-subst*__%
               _keys119187119205_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119187119205_ 'subst: absent-value))
               _args119207_)))
    (define gxc#apply-expression-subst*
      (lambda _args119189119213_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119189119213_)))
    (define gxc#::find-expression::t
      (let ((__tmp119559 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119559
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119183_
        (apply make-instance gxc#::find-expression::t _$args119183_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp119560
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
        (make-promise __tmp119560)))
    (define gxc#::find-var-refs::t
      (let ((__tmp119563 (list gxc#::find-expression::t))
            (__tmp119561
             (let ((__tmp119562
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119562 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119563
         '(ids)
         __tmp119561
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119179_
        (apply make-instance gxc#::find-var-refs::t _$args119179_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp119564
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
                 (seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (make-promise __tmp119564)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g119565_ _ids119150119153_ _stx119155_)
        (let ((_ids119158_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119150119153_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119150119153_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119160_
                  (let ((__obj119534
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119534
                       _ids119158_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119534))
                 (__tmp119566
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119160_ _stx119155_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119566
             gxc#current-compile-method
             _self119160_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119149119167_ . _args119169_)
        (apply gxc#apply-find-var-refs__%
               _keys119149119167_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119149119167_ 'ids: absent-value))
               _args119169_)))
    (define gxc#apply-find-var-refs
      (lambda _args119151119175_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119151119175_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119569 (list gxc#::collect-expression-refs::t))
            (__tmp119567
             (let ((__tmp119568
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119568 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119569
         '()
         __tmp119567
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119145_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119145_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp119570
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
                 (seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (make-promise __tmp119570)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g119571_ _table119116119119_ _stx119121_)
        (let ((_table119124_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119116119119_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119116119119_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119126_
                  (let ((__obj119536
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119536
                       _table119124_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119536))
                 (__tmp119572
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119126_ _stx119121_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119572
             gxc#current-compile-method
             _self119126_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119115119133_ . _args119135_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119115119133_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119115119133_ 'table: absent-value))
               _args119135_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119117119141_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119117119141_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self119044_ _stx119045_)
        (let* ((_g119047119064_
                (lambda (_g119048119061_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119048119061_))))
               (_g119046119111_
                (lambda (_g119048119067_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119048119067_))
                      (let ((_e119053119069_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119048119067_))))
                        (let ((_hd119052119072_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119053119069_)))
                              (_tl119051119074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119053119069_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119051119074_))
                              (let ((_e119056119077_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119051119074_))))
                                (let ((_hd119055119080_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119056119077_)))
                                      (_tl119054119082_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119056119077_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119054119082_))
                                      (let ((_e119059119085_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119054119082_))))
                                        (let ((_hd119058119088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119059119085_)))
                                              (_tl119057119090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119059119085_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119057119090_))
                                              ((lambda (_L119093_ _L119094_)
                                                 (let ((_sym119109_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119094_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119109_))
                                                   (let ((__tmp119573
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119573
                                                      _sym119109_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self119044_
                                                      _L119093_))))
                                               _hd119058119088_
                                               _hd119055119080_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119047119064_
                                                 _g119048119067_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119047119064_ _g119048119067_)))))
                              (let ()
                                (declare (not safe))
                                (_g119047119064_ _g119048119067_)))))
                      (let ()
                        (declare (not safe))
                        (_g119047119064_ _g119048119067_))))))
          (declare (not safe))
          (_g119046119111_ _stx119045_))))
    (define gxc#collect-methods-call%
      (lambda (_self118597_ _stx118598_)
        (let* ((___stx119281119282_ _stx118598_)
               (_g118602118704_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119281119282_)))))
          (let ((___kont119283119284_
                 (lambda (_L118994_ _L118995_ _L118996_ _L118997_ _L118998_)
                   (let ((__tmp119574
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L118995_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119574))))
                (___kont119285119286_
                 (lambda (_L118820_ _L118821_ _L118822_ _L118823_)
                   (let ((__tmp119575
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L118820_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119575))))
                (___kont119287119288_ (lambda () '#!void)))
            (let ((___match119416119417_
                   (lambda (_e118611118866_
                            _hd118610118869_
                            _tl118609118871_
                            _e118614118874_
                            _hd118613118877_
                            _tl118612118879_
                            _e118617118882_
                            _hd118616118885_
                            _tl118615118887_
                            _e118620118890_
                            _hd118619118893_
                            _tl118618118895_
                            _e118623118898_
                            _hd118622118901_
                            _tl118621118903_
                            _e118626118906_
                            _hd118625118909_
                            _tl118624118911_
                            _e118629118914_
                            _hd118628118917_
                            _tl118627118919_
                            _e118632118922_
                            _hd118631118925_
                            _tl118630118927_
                            _e118635118930_
                            _hd118634118933_
                            _tl118633118935_
                            _e118638118938_
                            _hd118637118941_
                            _tl118636118943_
                            _e118641118946_
                            _hd118640118949_
                            _tl118639118951_
                            _e118644118954_
                            _hd118643118957_
                            _tl118642118959_
                            _e118647118962_
                            _hd118646118965_
                            _tl118645118967_
                            _e118650118970_
                            _hd118649118973_
                            _tl118648118975_
                            _e118653118978_
                            _hd118652118981_
                            _tl118651118983_
                            _e118656118986_
                            _hd118655118989_
                            _tl118654118991_)
                     (let ((_L118994_ _hd118655118989_)
                           (_L118995_ _hd118646118965_)
                           (_L118996_ _hd118637118941_)
                           (_L118997_ _hd118628118917_)
                           (_L118998_ _hd118619118893_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L118998_
                              'bind-method!))
                           (___kont119283119284_
                            _L118994_
                            _L118995_
                            _L118996_
                            _L118997_
                            _L118998_)
                           (___kont119287119288_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119281119282_))
                  (let ((_e118611118866_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119281119282_))))
                    (let ((_tl118609118871_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118611118866_)))
                          (_hd118610118869_
                           (let ()
                             (declare (not safe))
                             (##car _e118611118866_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118609118871_))
                          (let ((_e118614118874_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118609118871_))))
                            (let ((_tl118612118879_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118614118874_)))
                                  (_hd118613118877_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118614118874_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118613118877_))
                                  (let ((_e118617118882_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118613118877_))))
                                    (let ((_tl118615118887_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118617118882_)))
                                          (_hd118616118885_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118617118882_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118616118885_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118616118885_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118615118887_))
                                                  (let ((_e118620118890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118615118887_))))
                                                    (let ((_tl118618118895_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118620118890_)))
                                                          (_hd118619118893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118620118890_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118618118895_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118612118879_))
                      (let ((_e118623118898_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118612118879_))))
                        (let ((_tl118621118903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118623118898_)))
                              (_hd118622118901_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118623118898_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118622118901_))
                              (let ((_e118626118906_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118622118901_))))
                                (let ((_tl118624118911_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118626118906_)))
                                      (_hd118625118909_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118626118906_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118625118909_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118625118909_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118624118911_))
                                              (let ((_e118629118914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118624118911_))))
                                                (let ((_tl118627118919_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118629118914_)))
                                                      (_hd118628118917_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118629118914_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118627118919_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118621118903_))
                                                          (let ((_e118632118922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118621118903_))))
                    (let ((_tl118630118927_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118632118922_)))
                          (_hd118631118925_
                           (let ()
                             (declare (not safe))
                             (##car _e118632118922_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118631118925_))
                          (let ((_e118635118930_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118631118925_))))
                            (let ((_tl118633118935_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118635118930_)))
                                  (_hd118634118933_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118635118930_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118634118933_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118634118933_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118633118935_))
                                          (let ((_e118638118938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118633118935_))))
                                            (let ((_tl118636118943_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118638118938_)))
                                                  (_hd118637118941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118638118938_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118636118943_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118630118927_))
                                                      (let ((_e118641118946_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118630118927_))))
                (let ((_tl118639118951_
                       (let () (declare (not safe)) (##cdr _e118641118946_)))
                      (_hd118640118949_
                       (let () (declare (not safe)) (##car _e118641118946_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118640118949_))
                      (let ((_e118644118954_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118640118949_))))
                        (let ((_tl118642118959_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118644118954_)))
                              (_hd118643118957_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118644118954_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118643118957_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118643118957_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118642118959_))
                                      (let ((_e118647118962_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118642118959_))))
                                        (let ((_tl118645118967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118647118962_)))
                                              (_hd118646118965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118647118962_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118645118967_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118639118951_))
                                                  (let ((_e118650118970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118639118951_))))
                                                    (let ((_tl118648118975_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118650118970_)))
                                                          (_hd118649118973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118650118970_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118649118973_))
                                                          (let ((_e118653118978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118649118973_))))
                    (let ((_tl118651118983_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118653118978_)))
                          (_hd118652118981_
                           (let ()
                             (declare (not safe))
                             (##car _e118653118978_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118652118981_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118652118981_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118651118983_))
                                  (let ((_e118656118986_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118651118983_))))
                                    (let ((_tl118654118991_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118656118986_)))
                                          (_hd118655118989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118656118986_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118654118991_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118648118975_))
                                              (___match119416119417_
                                               _e118611118866_
                                               _hd118610118869_
                                               _tl118609118871_
                                               _e118614118874_
                                               _hd118613118877_
                                               _tl118612118879_
                                               _e118617118882_
                                               _hd118616118885_
                                               _tl118615118887_
                                               _e118620118890_
                                               _hd118619118893_
                                               _tl118618118895_
                                               _e118623118898_
                                               _hd118622118901_
                                               _tl118621118903_
                                               _e118626118906_
                                               _hd118625118909_
                                               _tl118624118911_
                                               _e118629118914_
                                               _hd118628118917_
                                               _tl118627118919_
                                               _e118632118922_
                                               _hd118631118925_
                                               _tl118630118927_
                                               _e118635118930_
                                               _hd118634118933_
                                               _tl118633118935_
                                               _e118638118938_
                                               _hd118637118941_
                                               _tl118636118943_
                                               _e118641118946_
                                               _hd118640118949_
                                               _tl118639118951_
                                               _e118644118954_
                                               _hd118643118957_
                                               _tl118642118959_
                                               _e118647118962_
                                               _hd118646118965_
                                               _tl118645118967_
                                               _e118650118970_
                                               _hd118649118973_
                                               _tl118648118975_
                                               _e118653118978_
                                               _hd118652118981_
                                               _tl118651118983_
                                               _e118656118986_
                                               _hd118655118989_
                                               _tl118654118991_)
                                              (___kont119287119288_))
                                          (___kont119287119288_))))
                                  (___kont119287119288_))
                              (___kont119287119288_))
                          (___kont119287119288_))))
                  (___kont119287119288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118639118951_))
                                                      (if (let ((__tmp119576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119576 'bind-method!))
                  (let ((_L118820_ _hd118646118965_)
                        (_L118821_ _hd118637118941_)
                        (_L118822_ _hd118628118917_)
                        (_L118823_ _hd118619118893_))
                    (___kont119285119286_
                     _L118820_
                     _L118821_
                     _L118822_
                     _L118823_))
                  (___kont119287119288_))
              (___kont119287119288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119287119288_))))
                                      (___kont119287119288_))
                                  (___kont119287119288_))
                              (___kont119287119288_))))
                      (___kont119287119288_))))
              (___kont119287119288_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119287119288_))))
                                          (___kont119287119288_))
                                      (___kont119287119288_))
                                  (___kont119287119288_))))
                          (___kont119287119288_))))
                  (___kont119287119288_))
              (___kont119287119288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119287119288_))
                                          (___kont119287119288_))
                                      (___kont119287119288_))))
                              (___kont119287119288_))))
                      (___kont119287119288_))
                  (___kont119287119288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119287119288_))
                                              (___kont119287119288_))
                                          (___kont119287119288_))))
                                  (___kont119287119288_))))
                          (___kont119287119288_))))
                  (___kont119287119288_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118545_ _stx118546_)
        (let* ((_g118548118561_
                (lambda (_g118549118558_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118549118558_))))
               (_g118547118594_
                (lambda (_g118549118564_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118549118564_))
                      (let ((_e118553118566_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118549118564_))))
                        (let ((_hd118552118569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118553118566_)))
                              (_tl118551118571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118553118566_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118551118571_))
                              (let ((_e118556118574_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118551118571_))))
                                (let ((_hd118555118577_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118556118574_)))
                                      (_tl118554118579_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118556118574_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118554118579_))
                                      ((lambda (_L118582_)
                                         (if (let ((__tmp119580
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118545_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118582_
                                                __tmp119580))
                                             (let ((__tmp119577
                                                    (let ((__tmp119578
                                                           (let ((__tmp119579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118545_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119579 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119577
                                                _stx118546_))
                                             _stx118546_))
                                       _hd118555118577_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118548118561_ _g118549118564_)))))
                              (let ()
                                (declare (not safe))
                                (_g118548118561_ _g118549118564_)))))
                      (let ()
                        (declare (not safe))
                        (_g118548118561_ _g118549118564_))))))
          (declare (not safe))
          (_g118547118594_ _stx118546_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118486_ _stx118487_)
        (let* ((_g118489118502_
                (lambda (_g118490118499_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118490118499_))))
               (_g118488118542_
                (lambda (_g118490118505_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118490118505_))
                      (let ((_e118494118507_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118490118505_))))
                        (let ((_hd118493118510_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118494118507_)))
                              (_tl118492118512_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118494118507_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118492118512_))
                              (let ((_e118497118515_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118492118512_))))
                                (let ((_hd118496118518_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118497118515_)))
                                      (_tl118495118520_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118497118515_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118495118520_))
                                      ((lambda (_L118523_)
                                         (let ((_$e118537_
                                                (let ((__tmp119582
                                                       (lambda (_sub118535_)
                                                         (let ((__tmp119583
                                                                (car _sub118535_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118523_
                                                            __tmp119583))))
                                                      (__tmp119581
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118486_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119582
                                                        __tmp119581))))
                                           (if _$e118537_
                                               ((lambda (_sub118540_)
                                                  (let ((__tmp119584
                                                         (let ((__tmp119585
                                                                (let ((__tmp119586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118540_)))
                          (declare (not safe))
                          (cons __tmp119586 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119584
                                                     _stx118487_)))
                                                _$e118537_)
                                               _stx118487_)))
                                       _hd118496118518_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118489118502_ _g118490118505_)))))
                              (let ()
                                (declare (not safe))
                                (_g118489118502_ _g118490118505_)))))
                      (let ()
                        (declare (not safe))
                        (_g118489118502_ _g118490118505_))))))
          (declare (not safe))
          (_g118488118542_ _stx118487_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118415_ _stx118416_)
        (let* ((_g118418118435_
                (lambda (_g118419118432_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118419118432_))))
               (_g118417118483_
                (lambda (_g118419118438_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118419118438_))
                      (let ((_e118424118440_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118419118438_))))
                        (let ((_hd118423118443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118424118440_)))
                              (_tl118422118445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118424118440_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118422118445_))
                              (let ((_e118427118448_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118422118445_))))
                                (let ((_hd118426118451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118427118448_)))
                                      (_tl118425118453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118427118448_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118425118453_))
                                      (let ((_e118430118456_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118425118453_))))
                                        (let ((_hd118429118459_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118430118456_)))
                                              (_tl118428118461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118430118456_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118428118461_))
                                              ((lambda (_L118464_ _L118465_)
                                                 (let ((_new-expr118480_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118415_
                                                           _L118464_)))
                                                       (_new-xid118481_
                                                        (if (let ((__tmp119587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118415_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118465_ __tmp119587))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118415_ 'new-id))
                    _L118465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119588
                                                          (let ((__tmp119589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119590
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118480_ '()))))
                           (declare (not safe))
                           (cons _new-xid118481_ __tmp119590))))
                    (declare (not safe))
                    (cons '%#set! __tmp119589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119588
                                                      _stx118416_))))
                                               _hd118429118459_
                                               _hd118426118451_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118418118435_
                                                 _g118419118438_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118418118435_ _g118419118438_)))))
                              (let ()
                                (declare (not safe))
                                (_g118418118435_ _g118419118438_)))))
                      (let ()
                        (declare (not safe))
                        (_g118418118435_ _g118419118438_))))))
          (declare (not safe))
          (_g118417118483_ _stx118416_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118339_ _stx118340_)
        (let* ((_g118342118359_
                (lambda (_g118343118356_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118343118356_))))
               (_g118341118412_
                (lambda (_g118343118362_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118343118362_))
                      (let ((_e118348118364_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118343118362_))))
                        (let ((_hd118347118367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118348118364_)))
                              (_tl118346118369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118348118364_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118346118369_))
                              (let ((_e118351118372_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118346118369_))))
                                (let ((_hd118350118375_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118351118372_)))
                                      (_tl118349118377_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118351118372_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118349118377_))
                                      (let ((_e118354118380_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118349118377_))))
                                        (let ((_hd118353118383_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118354118380_)))
                                              (_tl118352118385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118354118380_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118352118385_))
                                              ((lambda (_L118388_ _L118389_)
                                                 (let ((_new-expr118409_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118339_
                                                           _L118388_)))
                                                       (_new-xid118410_
                                                        (let ((_$e118406_
                                                               (let ((__tmp119592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118404_)
                                (let ((__tmp119593 (car _sub118404_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118389_
                                   __tmp119593))))
                             (__tmp119591
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118339_ 'subst))))
                         (declare (not safe))
                         (find __tmp119592 __tmp119591))))
                  (if _$e118406_ (cdr _$e118406_) _L118389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119594
                                                          (let ((__tmp119595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119596
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118409_ '()))))
                           (declare (not safe))
                           (cons _new-xid118410_ __tmp119596))))
                    (declare (not safe))
                    (cons '%#set! __tmp119595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119594
                                                      _stx118340_))))
                                               _hd118353118383_
                                               _hd118350118375_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118342118359_
                                                 _g118343118362_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118342118359_ _g118343118362_)))))
                              (let ()
                                (declare (not safe))
                                (_g118342118359_ _g118343118362_)))))
                      (let ()
                        (declare (not safe))
                        (_g118342118359_ _g118343118362_))))))
          (declare (not safe))
          (_g118341118412_ _stx118340_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118285_ _stx118286_)
        (let* ((_g118288118301_
                (lambda (_g118289118298_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118289118298_))))
               (_g118287118336_
                (lambda (_g118289118304_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118289118304_))
                      (let ((_e118293118306_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118289118304_))))
                        (let ((_hd118292118309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118293118306_)))
                              (_tl118291118311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118293118306_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118291118311_))
                              (let ((_e118296118314_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118291118311_))))
                                (let ((_hd118295118317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118296118314_)))
                                      (_tl118294118319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118296118314_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118294118319_))
                                      ((lambda (_L118322_)
                                         (let* ((_eid118334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118322_)))
                                                (__tmp119597
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118285_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119597
                                            _eid118334_
                                            1+
                                            '0)))
                                       _hd118295118317_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118288118301_ _g118289118304_)))))
                              (let ()
                                (declare (not safe))
                                (_g118288118301_ _g118289118304_)))))
                      (let ()
                        (declare (not safe))
                        (_g118288118301_ _g118289118304_))))))
          (declare (not safe))
          (_g118287118336_ _stx118286_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118215_ _stx118216_)
        (let* ((_g118218118235_
                (lambda (_g118219118232_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118219118232_))))
               (_g118217118282_
                (lambda (_g118219118238_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118219118238_))
                      (let ((_e118224118240_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118219118238_))))
                        (let ((_hd118223118243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118224118240_)))
                              (_tl118222118245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118224118240_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118222118245_))
                              (let ((_e118227118248_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118222118245_))))
                                (let ((_hd118226118251_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118227118248_)))
                                      (_tl118225118253_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118227118248_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118225118253_))
                                      (let ((_e118230118256_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118225118253_))))
                                        (let ((_hd118229118259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118230118256_)))
                                              (_tl118228118261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118230118256_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118228118261_))
                                              ((lambda (_L118264_ _L118265_)
                                                 (let ((_eid118280_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118265_))))
                                                   (let ((__tmp119598
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118215_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119598
                                                      _eid118280_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118215_
                                                      _L118264_))))
                                               _hd118229118259_
                                               _hd118226118251_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118218118235_
                                                 _g118219118238_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118218118235_ _g118219118238_)))))
                              (let ()
                                (declare (not safe))
                                (_g118218118235_ _g118219118238_)))))
                      (let ()
                        (declare (not safe))
                        (_g118218118235_ _g118219118238_))))))
          (declare (not safe))
          (_g118217118282_ _stx118216_))))
    (define gxc#find-body%
      (lambda (_self118128_ _stx118129_)
        (let* ((_g118131118150_
                (lambda (_g118132118147_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118132118147_))))
               (_g118130118212_
                (lambda (_g118132118153_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118132118153_))
                      (let ((_e118136118155_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118132118153_))))
                        (let ((_hd118135118158_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118136118155_)))
                              (_tl118134118160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118136118155_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118134118160_))
                              (let ((_g119599_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118134118160_
                                        '0))))
                                (begin
                                  (let ((_g119600_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119599_)
                                               (##vector-length _g119599_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119600_ 2)))
                                        (error "Context expects 2 values"
                                               _g119600_)))
                                  (let ((_target118137118163_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119599_ 0)))
                                        (_tl118139118165_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119599_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118139118165_))
                                        (letrec ((_loop118140118168_
                                                  (lambda (_hd118138118171_
                                                           _expr118144118173_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118138118171_))
                                                        (let ((_e118141118176_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118138118171_))))
                  (let ((_lp-hd118142118179_
                         (let () (declare (not safe)) (##car _e118141118176_)))
                        (_lp-tl118143118181_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118141118176_))))
                    (let ((__tmp119604
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118142118179_ _expr118144118173_))))
                      (declare (not safe))
                      (_loop118140118168_ _lp-tl118143118181_ __tmp119604))))
                (let ((_expr118145118184_ (reverse _expr118144118173_)))
                  ((lambda (_L118187_)
                     (let ((__tmp119603
                            (lambda (_g118200118202_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118128_
                                 _g118200118202_))))
                           (__tmp119601
                            (let ((__tmp119602
                                   (lambda (_g118204118207_ _g118205118209_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118204118207_
                                             _g118205118209_)))))
                              (declare (not safe))
                              (foldr1 __tmp119602 '() _L118187_))))
                       (declare (not safe))
                       (ormap1 __tmp119603 __tmp119601)))
                   _expr118145118184_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118140118168_
                                             _target118137118163_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118131118150_
                                           _g118132118153_))))))
                              (let ()
                                (declare (not safe))
                                (_g118131118150_ _g118132118153_)))))
                      (let ()
                        (declare (not safe))
                        (_g118131118150_ _g118132118153_))))))
          (declare (not safe))
          (_g118130118212_ _stx118129_))))
    (define gxc#find-let-values%
      (lambda (_self117978_ _stx117979_)
        (let* ((_g117981118016_
                (lambda (_g117982118013_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117982118013_))))
               (_g117980118125_
                (lambda (_g117982118019_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117982118019_))
                      (let ((_e117988118021_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117982118019_))))
                        (let ((_hd117987118024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117988118021_)))
                              (_tl117986118026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117988118021_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117986118026_))
                              (let ((_e117991118029_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117986118026_))))
                                (let ((_hd117990118032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117991118029_)))
                                      (_tl117989118034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117991118029_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117990118032_))
                                      (let ((_g119605_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117990118032_
                                                '0))))
                                        (begin
                                          (let ((_g119606_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119605_)
                                                       (##vector-length
                                                        _g119605_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119606_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119606_)))
                                          (let ((_target117992118037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119605_ 0)))
                                                (_tl117994118039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119605_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117994118039_))
                                                (letrec ((_loop117995118042_
                                                          (lambda (_hd117993118045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117999118047_
                           _bind118000118049_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117993118045_))
                        (let ((_e117996118052_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117993118045_))))
                          (let ((_lp-hd117997118055_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117996118052_)))
                                (_lp-tl117998118057_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117996118052_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117997118055_))
                                (let ((_e118005118060_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117997118055_))))
                                  (let ((_hd118004118063_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118005118060_)))
                                        (_tl118003118065_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118005118060_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118003118065_))
                                        (let ((_e118008118068_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118003118065_))))
                                          (let ((_hd118007118071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118008118068_)))
                                                (_tl118006118073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118008118068_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118006118073_))
                                                (let ((__tmp119611
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118007118071_
                                                               _expr117999118047_)))
                                                      (__tmp119610
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118004118063_
                                                               _bind118000118049_))))
                                                  (declare (not safe))
                                                  (_loop117995118042_
                                                   _lp-tl117998118057_
                                                   __tmp119611
                                                   __tmp119610))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117981118016_
                                                   _g117982118019_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117981118016_ _g117982118019_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117981118016_ _g117982118019_)))))
                        (let ((_expr118001118076_ (reverse _expr117999118047_))
                              (_bind118002118078_
                               (reverse _bind118000118049_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117989118034_))
                              (let ((_e118011118081_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117989118034_))))
                                (let ((_hd118010118084_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118011118081_)))
                                      (_tl118009118086_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118011118081_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118009118086_))
                                      ((lambda (_L118089_ _L118090_ _L118091_)
                                         (let ((_$e118122_
                                                (let ((__tmp119609
                                                       (lambda (_g118110118112_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117978_
                                                            _g118110118112_))))
                                                      (__tmp119607
                                                       (let ((__tmp119608
                                                              (lambda (_g118114118117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118115118119_)
                        (let ()
                          (declare (not safe))
                          (cons _g118114118117_ _g118115118119_)))))
                 (declare (not safe))
                 (foldr1 __tmp119608 '() _L118090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119609
                                                          __tmp119607))))
                                           (if _$e118122_
                                               _$e118122_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self117978_
                                                  _L118089_)))))
                                       _hd118010118084_
                                       _expr118001118076_
                                       _bind118002118078_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117981118016_ _g117982118019_)))))
                              (let ()
                                (declare (not safe))
                                (_g117981118016_ _g117982118019_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117995118042_
                                                     _target117992118037_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117981118016_
                                                   _g117982118019_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117981118016_ _g117982118019_)))))
                              (let ()
                                (declare (not safe))
                                (_g117981118016_ _g117982118019_)))))
                      (let ()
                        (declare (not safe))
                        (_g117981118016_ _g117982118019_))))))
          (declare (not safe))
          (_g117980118125_ _stx117979_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self117922_ _stx117923_)
        (let* ((_g117925117938_
                (lambda (_g117926117935_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117926117935_))))
               (_g117924117975_
                (lambda (_g117926117941_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117926117941_))
                      (let ((_e117930117943_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117926117941_))))
                        (let ((_hd117929117946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117930117943_)))
                              (_tl117928117948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117930117943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117928117948_))
                              (let ((_e117933117951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117928117948_))))
                                (let ((_hd117932117954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117933117951_)))
                                      (_tl117931117956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117933117951_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117931117956_))
                                      ((lambda (_L117959_)
                                         (let ((__tmp119613
                                                (lambda (_g117970117972_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L117959_
                                                     _g117970117972_))))
                                               (__tmp119612
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self117922_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119613 __tmp119612)))
                                       _hd117932117954_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117925117938_ _g117926117941_)))))
                              (let ()
                                (declare (not safe))
                                (_g117925117938_ _g117926117941_)))))
                      (let ()
                        (declare (not safe))
                        (_g117925117938_ _g117926117941_))))))
          (declare (not safe))
          (_g117924117975_ _stx117923_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self117847_ _stx117848_)
        (let* ((_g117850117867_
                (lambda (_g117851117864_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117851117864_))))
               (_g117849117919_
                (lambda (_g117851117870_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117851117870_))
                      (let ((_e117856117872_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117851117870_))))
                        (let ((_hd117855117875_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117856117872_)))
                              (_tl117854117877_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117856117872_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117854117877_))
                              (let ((_e117859117880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117854117877_))))
                                (let ((_hd117858117883_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117859117880_)))
                                      (_tl117857117885_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117859117880_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117857117885_))
                                      (let ((_e117862117888_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117857117885_))))
                                        (let ((_hd117861117891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117862117888_)))
                                              (_tl117860117893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117862117888_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117860117893_))
                                              ((lambda (_L117896_ _L117897_)
                                                 (let ((_$e117916_
                                                        (let ((__tmp119615
                                                               (lambda (_g117911117913_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L117897_ _g117911117913_))))
                      (__tmp119614
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self117847_ 'ids))))
                  (declare (not safe))
                  (find __tmp119615 __tmp119614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e117916_
                                                       _$e117916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self117847_
                                                          _L117896_)))))
                                               _hd117861117891_
                                               _hd117858117883_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117850117867_
                                                 _g117851117870_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117850117867_ _g117851117870_)))))
                              (let ()
                                (declare (not safe))
                                (_g117850117867_ _g117851117870_)))))
                      (let ()
                        (declare (not safe))
                        (_g117850117867_ _g117851117870_))))))
          (declare (not safe))
          (_g117849117919_ _stx117848_))))))
