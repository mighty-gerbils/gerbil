(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710715076)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119460 (list gxc#::void::t))
            (__tmp119458
             (let ((__tmp119459
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119459 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119460
         '()
         __tmp119458
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119199_
        (apply make-instance gxc#::collect-mutators::t _$args119199_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp119461
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
        (make-promise __tmp119461)))
    (define gxc#apply-collect-mutators
      (lambda (_stx119191_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119194_
                (let ((__obj119446
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119446))
               (__tmp119462
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119194_ _stx119191_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119462
           gxc#current-compile-method
           _self119194_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119465 (list gxc#::void::t))
            (__tmp119463
             (let ((__tmp119464
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119464 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119465
         '()
         __tmp119463
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119188_
        (apply make-instance gxc#::collect-methods::t _$args119188_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp119466
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
        (make-promise __tmp119466)))
    (define gxc#apply-collect-methods
      (lambda (_stx119180_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119183_
                (let ((__obj119448
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119448))
               (__tmp119467
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119183_ _stx119180_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119467
           gxc#current-compile-method
           _self119183_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119470 (list gxc#::basic-xform-expression::t))
            (__tmp119468
             (let ((__tmp119469
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119469 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119470
         '(id new-id)
         __tmp119468
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119177_
        (apply make-instance gxc#::expression-subst::t _$args119177_)))
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
      (let ((__tmp119471
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
        (make-promise __tmp119471)))
    (define gxc#apply-expression-subst__%
      (lambda (_g119472_ _id119143119147_ _new-id119144119149_ _stx119151_)
        (let* ((_id119154_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119143119147_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119143119147_))
               (_new-id119156_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119144119149_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119144119149_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119158_
                  (let ((__obj119450
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119450
                       _id119154_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119450
                       _new-id119156_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119450))
                 (__tmp119473
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119158_ _stx119151_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119473
             gxc#current-compile-method
             _self119158_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119142119165_ . _args119167_)
        (apply gxc#apply-expression-subst__%
               _keys119142119165_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119142119165_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119142119165_ 'new-id: absent-value))
               _args119167_)))
    (define gxc#apply-expression-subst
      (lambda _args119145119173_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119145119173_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119476 (list gxc#::basic-xform-expression::t))
            (__tmp119474
             (let ((__tmp119475
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119475 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119476
         '(subst)
         __tmp119474
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119138_
        (apply make-instance gxc#::expression-subst*::t _$args119138_)))
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
      (let ((__tmp119477
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
        (make-promise __tmp119477)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g119478_ _subst119109119112_ _stx119114_)
        (let ((_subst119117_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119109119112_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119109119112_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119119_
                  (let ((__obj119452
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119452
                       _subst119117_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119452))
                 (__tmp119479
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119119_ _stx119114_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119479
             gxc#current-compile-method
             _self119119_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119108119126_ . _args119128_)
        (apply gxc#apply-expression-subst*__%
               _keys119108119126_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119108119126_ 'subst: absent-value))
               _args119128_)))
    (define gxc#apply-expression-subst*
      (lambda _args119110119134_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119110119134_)))
    (define gxc#::find-expression::t
      (let ((__tmp119480 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119480
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119104_
        (apply make-instance gxc#::find-expression::t _$args119104_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp119481
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
        (make-promise __tmp119481)))
    (define gxc#::find-var-refs::t
      (let ((__tmp119484 (list gxc#::find-expression::t))
            (__tmp119482
             (let ((__tmp119483
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119483 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119484
         '(ids)
         __tmp119482
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119100_
        (apply make-instance gxc#::find-var-refs::t _$args119100_)))
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
      (let ((__tmp119485
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
        (make-promise __tmp119485)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g119486_ _ids119071119074_ _stx119076_)
        (let ((_ids119079_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119071119074_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119071119074_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119081_
                  (let ((__obj119455
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119455
                       _ids119079_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119455))
                 (__tmp119487
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119081_ _stx119076_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119487
             gxc#current-compile-method
             _self119081_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119070119088_ . _args119090_)
        (apply gxc#apply-find-var-refs__%
               _keys119070119088_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119070119088_ 'ids: absent-value))
               _args119090_)))
    (define gxc#apply-find-var-refs
      (lambda _args119072119096_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119072119096_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119490 (list gxc#::collect-expression-refs::t))
            (__tmp119488
             (let ((__tmp119489
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119489 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119490
         '()
         __tmp119488
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119066_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119066_)))
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
      (let ((__tmp119491
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
        (make-promise __tmp119491)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g119492_ _table119037119040_ _stx119042_)
        (let ((_table119045_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119037119040_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119037119040_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119047_
                  (let ((__obj119457
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119457
                       _table119045_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119457))
                 (__tmp119493
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119047_ _stx119042_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119493
             gxc#current-compile-method
             _self119047_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119036119054_ . _args119056_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119036119054_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119036119054_ 'table: absent-value))
               _args119056_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119038119062_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119038119062_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self118965_ _stx118966_)
        (let* ((_g118968118985_
                (lambda (_g118969118982_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118969118982_))))
               (_g118967119032_
                (lambda (_g118969118988_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118969118988_))
                      (let ((_e118974118990_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118969118988_))))
                        (let ((_hd118973118993_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118974118990_)))
                              (_tl118972118995_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118974118990_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118972118995_))
                              (let ((_e118977118998_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118972118995_))))
                                (let ((_hd118976119001_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118977118998_)))
                                      (_tl118975119003_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118977118998_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118975119003_))
                                      (let ((_e118980119006_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118975119003_))))
                                        (let ((_hd118979119009_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118980119006_)))
                                              (_tl118978119011_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118980119006_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118978119011_))
                                              ((lambda (_L119014_ _L119015_)
                                                 (let ((_sym119030_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119015_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119030_))
                                                   (let ((__tmp119494
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119494
                                                      _sym119030_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118965_
                                                      _L119014_))))
                                               _hd118979119009_
                                               _hd118976119001_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118968118985_
                                                 _g118969118988_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118968118985_ _g118969118988_)))))
                              (let ()
                                (declare (not safe))
                                (_g118968118985_ _g118969118988_)))))
                      (let ()
                        (declare (not safe))
                        (_g118968118985_ _g118969118988_))))))
          (declare (not safe))
          (_g118967119032_ _stx118966_))))
    (define gxc#collect-methods-call%
      (lambda (_self118518_ _stx118519_)
        (let* ((___stx119202119203_ _stx118519_)
               (_g118523118625_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119202119203_)))))
          (let ((___kont119204119205_
                 (lambda (_L118915_ _L118916_ _L118917_ _L118918_ _L118919_)
                   (let ((__tmp119495
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L118916_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119495))))
                (___kont119206119207_
                 (lambda (_L118741_ _L118742_ _L118743_ _L118744_)
                   (let ((__tmp119496
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L118741_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119496))))
                (___kont119208119209_ (lambda () '#!void)))
            (let ((___match119337119338_
                   (lambda (_e118532118787_
                            _hd118531118790_
                            _tl118530118792_
                            _e118535118795_
                            _hd118534118798_
                            _tl118533118800_
                            _e118538118803_
                            _hd118537118806_
                            _tl118536118808_
                            _e118541118811_
                            _hd118540118814_
                            _tl118539118816_
                            _e118544118819_
                            _hd118543118822_
                            _tl118542118824_
                            _e118547118827_
                            _hd118546118830_
                            _tl118545118832_
                            _e118550118835_
                            _hd118549118838_
                            _tl118548118840_
                            _e118553118843_
                            _hd118552118846_
                            _tl118551118848_
                            _e118556118851_
                            _hd118555118854_
                            _tl118554118856_
                            _e118559118859_
                            _hd118558118862_
                            _tl118557118864_
                            _e118562118867_
                            _hd118561118870_
                            _tl118560118872_
                            _e118565118875_
                            _hd118564118878_
                            _tl118563118880_
                            _e118568118883_
                            _hd118567118886_
                            _tl118566118888_
                            _e118571118891_
                            _hd118570118894_
                            _tl118569118896_
                            _e118574118899_
                            _hd118573118902_
                            _tl118572118904_
                            _e118577118907_
                            _hd118576118910_
                            _tl118575118912_)
                     (let ((_L118915_ _hd118576118910_)
                           (_L118916_ _hd118567118886_)
                           (_L118917_ _hd118558118862_)
                           (_L118918_ _hd118549118838_)
                           (_L118919_ _hd118540118814_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L118919_
                              'bind-method!))
                           (___kont119204119205_
                            _L118915_
                            _L118916_
                            _L118917_
                            _L118918_
                            _L118919_)
                           (___kont119208119209_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119202119203_))
                  (let ((_e118532118787_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119202119203_))))
                    (let ((_tl118530118792_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118532118787_)))
                          (_hd118531118790_
                           (let ()
                             (declare (not safe))
                             (##car _e118532118787_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118530118792_))
                          (let ((_e118535118795_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118530118792_))))
                            (let ((_tl118533118800_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118535118795_)))
                                  (_hd118534118798_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118535118795_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118534118798_))
                                  (let ((_e118538118803_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118534118798_))))
                                    (let ((_tl118536118808_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118538118803_)))
                                          (_hd118537118806_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118538118803_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118537118806_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118537118806_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118536118808_))
                                                  (let ((_e118541118811_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118536118808_))))
                                                    (let ((_tl118539118816_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118541118811_)))
                                                          (_hd118540118814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118541118811_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118539118816_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118533118800_))
                      (let ((_e118544118819_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118533118800_))))
                        (let ((_tl118542118824_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118544118819_)))
                              (_hd118543118822_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118544118819_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118543118822_))
                              (let ((_e118547118827_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118543118822_))))
                                (let ((_tl118545118832_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118547118827_)))
                                      (_hd118546118830_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118547118827_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118546118830_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118546118830_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118545118832_))
                                              (let ((_e118550118835_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118545118832_))))
                                                (let ((_tl118548118840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118550118835_)))
                                                      (_hd118549118838_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118550118835_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118548118840_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118542118824_))
                                                          (let ((_e118553118843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118542118824_))))
                    (let ((_tl118551118848_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118553118843_)))
                          (_hd118552118846_
                           (let ()
                             (declare (not safe))
                             (##car _e118553118843_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118552118846_))
                          (let ((_e118556118851_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118552118846_))))
                            (let ((_tl118554118856_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118556118851_)))
                                  (_hd118555118854_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118556118851_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118555118854_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118555118854_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118554118856_))
                                          (let ((_e118559118859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118554118856_))))
                                            (let ((_tl118557118864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118559118859_)))
                                                  (_hd118558118862_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118559118859_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118557118864_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118551118848_))
                                                      (let ((_e118562118867_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118551118848_))))
                (let ((_tl118560118872_
                       (let () (declare (not safe)) (##cdr _e118562118867_)))
                      (_hd118561118870_
                       (let () (declare (not safe)) (##car _e118562118867_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118561118870_))
                      (let ((_e118565118875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118561118870_))))
                        (let ((_tl118563118880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118565118875_)))
                              (_hd118564118878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118565118875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118564118878_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118564118878_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118563118880_))
                                      (let ((_e118568118883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118563118880_))))
                                        (let ((_tl118566118888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118568118883_)))
                                              (_hd118567118886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118568118883_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118566118888_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118560118872_))
                                                  (let ((_e118571118891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118560118872_))))
                                                    (let ((_tl118569118896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118571118891_)))
                                                          (_hd118570118894_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118571118891_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118570118894_))
                                                          (let ((_e118574118899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118570118894_))))
                    (let ((_tl118572118904_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118574118899_)))
                          (_hd118573118902_
                           (let ()
                             (declare (not safe))
                             (##car _e118574118899_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118573118902_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118573118902_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118572118904_))
                                  (let ((_e118577118907_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118572118904_))))
                                    (let ((_tl118575118912_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118577118907_)))
                                          (_hd118576118910_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118577118907_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118575118912_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118569118896_))
                                              (___match119337119338_
                                               _e118532118787_
                                               _hd118531118790_
                                               _tl118530118792_
                                               _e118535118795_
                                               _hd118534118798_
                                               _tl118533118800_
                                               _e118538118803_
                                               _hd118537118806_
                                               _tl118536118808_
                                               _e118541118811_
                                               _hd118540118814_
                                               _tl118539118816_
                                               _e118544118819_
                                               _hd118543118822_
                                               _tl118542118824_
                                               _e118547118827_
                                               _hd118546118830_
                                               _tl118545118832_
                                               _e118550118835_
                                               _hd118549118838_
                                               _tl118548118840_
                                               _e118553118843_
                                               _hd118552118846_
                                               _tl118551118848_
                                               _e118556118851_
                                               _hd118555118854_
                                               _tl118554118856_
                                               _e118559118859_
                                               _hd118558118862_
                                               _tl118557118864_
                                               _e118562118867_
                                               _hd118561118870_
                                               _tl118560118872_
                                               _e118565118875_
                                               _hd118564118878_
                                               _tl118563118880_
                                               _e118568118883_
                                               _hd118567118886_
                                               _tl118566118888_
                                               _e118571118891_
                                               _hd118570118894_
                                               _tl118569118896_
                                               _e118574118899_
                                               _hd118573118902_
                                               _tl118572118904_
                                               _e118577118907_
                                               _hd118576118910_
                                               _tl118575118912_)
                                              (___kont119208119209_))
                                          (___kont119208119209_))))
                                  (___kont119208119209_))
                              (___kont119208119209_))
                          (___kont119208119209_))))
                  (___kont119208119209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118560118872_))
                                                      (if (let ((__tmp119497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119497 'bind-method!))
                  (let ((_L118741_ _hd118567118886_)
                        (_L118742_ _hd118558118862_)
                        (_L118743_ _hd118549118838_)
                        (_L118744_ _hd118540118814_))
                    (___kont119206119207_
                     _L118741_
                     _L118742_
                     _L118743_
                     _L118744_))
                  (___kont119208119209_))
              (___kont119208119209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119208119209_))))
                                      (___kont119208119209_))
                                  (___kont119208119209_))
                              (___kont119208119209_))))
                      (___kont119208119209_))))
              (___kont119208119209_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119208119209_))))
                                          (___kont119208119209_))
                                      (___kont119208119209_))
                                  (___kont119208119209_))))
                          (___kont119208119209_))))
                  (___kont119208119209_))
              (___kont119208119209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119208119209_))
                                          (___kont119208119209_))
                                      (___kont119208119209_))))
                              (___kont119208119209_))))
                      (___kont119208119209_))
                  (___kont119208119209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119208119209_))
                                              (___kont119208119209_))
                                          (___kont119208119209_))))
                                  (___kont119208119209_))))
                          (___kont119208119209_))))
                  (___kont119208119209_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118466_ _stx118467_)
        (let* ((_g118469118482_
                (lambda (_g118470118479_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118470118479_))))
               (_g118468118515_
                (lambda (_g118470118485_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118470118485_))
                      (let ((_e118474118487_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118470118485_))))
                        (let ((_hd118473118490_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118474118487_)))
                              (_tl118472118492_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118474118487_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118472118492_))
                              (let ((_e118477118495_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118472118492_))))
                                (let ((_hd118476118498_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118477118495_)))
                                      (_tl118475118500_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118477118495_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118475118500_))
                                      ((lambda (_L118503_)
                                         (if (let ((__tmp119501
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118466_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118503_
                                                __tmp119501))
                                             (let ((__tmp119498
                                                    (let ((__tmp119499
                                                           (let ((__tmp119500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118466_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119500 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119498
                                                _stx118467_))
                                             _stx118467_))
                                       _hd118476118498_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118469118482_ _g118470118485_)))))
                              (let ()
                                (declare (not safe))
                                (_g118469118482_ _g118470118485_)))))
                      (let ()
                        (declare (not safe))
                        (_g118469118482_ _g118470118485_))))))
          (declare (not safe))
          (_g118468118515_ _stx118467_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118407_ _stx118408_)
        (let* ((_g118410118423_
                (lambda (_g118411118420_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118411118420_))))
               (_g118409118463_
                (lambda (_g118411118426_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118411118426_))
                      (let ((_e118415118428_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118411118426_))))
                        (let ((_hd118414118431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118415118428_)))
                              (_tl118413118433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118415118428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118413118433_))
                              (let ((_e118418118436_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118413118433_))))
                                (let ((_hd118417118439_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118418118436_)))
                                      (_tl118416118441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118418118436_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118416118441_))
                                      ((lambda (_L118444_)
                                         (let ((_$e118458_
                                                (let ((__tmp119503
                                                       (lambda (_sub118456_)
                                                         (let ((__tmp119504
                                                                (car _sub118456_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118444_
                                                            __tmp119504))))
                                                      (__tmp119502
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118407_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119503
                                                        __tmp119502))))
                                           (if _$e118458_
                                               ((lambda (_sub118461_)
                                                  (let ((__tmp119505
                                                         (let ((__tmp119506
                                                                (let ((__tmp119507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118461_)))
                          (declare (not safe))
                          (cons __tmp119507 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119505
                                                     _stx118408_)))
                                                _$e118458_)
                                               _stx118408_)))
                                       _hd118417118439_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118410118423_ _g118411118426_)))))
                              (let ()
                                (declare (not safe))
                                (_g118410118423_ _g118411118426_)))))
                      (let ()
                        (declare (not safe))
                        (_g118410118423_ _g118411118426_))))))
          (declare (not safe))
          (_g118409118463_ _stx118408_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118336_ _stx118337_)
        (let* ((_g118339118356_
                (lambda (_g118340118353_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118340118353_))))
               (_g118338118404_
                (lambda (_g118340118359_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118340118359_))
                      (let ((_e118345118361_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118340118359_))))
                        (let ((_hd118344118364_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118345118361_)))
                              (_tl118343118366_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118345118361_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118343118366_))
                              (let ((_e118348118369_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118343118366_))))
                                (let ((_hd118347118372_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118348118369_)))
                                      (_tl118346118374_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118348118369_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118346118374_))
                                      (let ((_e118351118377_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118346118374_))))
                                        (let ((_hd118350118380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118351118377_)))
                                              (_tl118349118382_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118351118377_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118349118382_))
                                              ((lambda (_L118385_ _L118386_)
                                                 (let ((_new-expr118401_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118336_
                                                           _L118385_)))
                                                       (_new-xid118402_
                                                        (if (let ((__tmp119508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118336_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118386_ __tmp119508))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118336_ 'new-id))
                    _L118386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119509
                                                          (let ((__tmp119510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119511
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118401_ '()))))
                           (declare (not safe))
                           (cons _new-xid118402_ __tmp119511))))
                    (declare (not safe))
                    (cons '%#set! __tmp119510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119509
                                                      _stx118337_))))
                                               _hd118350118380_
                                               _hd118347118372_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118339118356_
                                                 _g118340118359_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118339118356_ _g118340118359_)))))
                              (let ()
                                (declare (not safe))
                                (_g118339118356_ _g118340118359_)))))
                      (let ()
                        (declare (not safe))
                        (_g118339118356_ _g118340118359_))))))
          (declare (not safe))
          (_g118338118404_ _stx118337_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118260_ _stx118261_)
        (let* ((_g118263118280_
                (lambda (_g118264118277_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118264118277_))))
               (_g118262118333_
                (lambda (_g118264118283_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118264118283_))
                      (let ((_e118269118285_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118264118283_))))
                        (let ((_hd118268118288_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118269118285_)))
                              (_tl118267118290_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118269118285_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118267118290_))
                              (let ((_e118272118293_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118267118290_))))
                                (let ((_hd118271118296_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118272118293_)))
                                      (_tl118270118298_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118272118293_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118270118298_))
                                      (let ((_e118275118301_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118270118298_))))
                                        (let ((_hd118274118304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118275118301_)))
                                              (_tl118273118306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118275118301_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118273118306_))
                                              ((lambda (_L118309_ _L118310_)
                                                 (let ((_new-expr118330_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118260_
                                                           _L118309_)))
                                                       (_new-xid118331_
                                                        (let ((_$e118327_
                                                               (let ((__tmp119513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118325_)
                                (let ((__tmp119514 (car _sub118325_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118310_
                                   __tmp119514))))
                             (__tmp119512
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118260_ 'subst))))
                         (declare (not safe))
                         (find __tmp119513 __tmp119512))))
                  (if _$e118327_ (cdr _$e118327_) _L118310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119515
                                                          (let ((__tmp119516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119517
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118330_ '()))))
                           (declare (not safe))
                           (cons _new-xid118331_ __tmp119517))))
                    (declare (not safe))
                    (cons '%#set! __tmp119516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119515
                                                      _stx118261_))))
                                               _hd118274118304_
                                               _hd118271118296_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118263118280_
                                                 _g118264118283_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118263118280_ _g118264118283_)))))
                              (let ()
                                (declare (not safe))
                                (_g118263118280_ _g118264118283_)))))
                      (let ()
                        (declare (not safe))
                        (_g118263118280_ _g118264118283_))))))
          (declare (not safe))
          (_g118262118333_ _stx118261_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118206_ _stx118207_)
        (let* ((_g118209118222_
                (lambda (_g118210118219_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118210118219_))))
               (_g118208118257_
                (lambda (_g118210118225_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118210118225_))
                      (let ((_e118214118227_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118210118225_))))
                        (let ((_hd118213118230_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118214118227_)))
                              (_tl118212118232_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118214118227_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118212118232_))
                              (let ((_e118217118235_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118212118232_))))
                                (let ((_hd118216118238_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118217118235_)))
                                      (_tl118215118240_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118217118235_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118215118240_))
                                      ((lambda (_L118243_)
                                         (let* ((_eid118255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118243_)))
                                                (__tmp119518
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118206_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119518
                                            _eid118255_
                                            1+
                                            '0)))
                                       _hd118216118238_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118209118222_ _g118210118225_)))))
                              (let ()
                                (declare (not safe))
                                (_g118209118222_ _g118210118225_)))))
                      (let ()
                        (declare (not safe))
                        (_g118209118222_ _g118210118225_))))))
          (declare (not safe))
          (_g118208118257_ _stx118207_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118136_ _stx118137_)
        (let* ((_g118139118156_
                (lambda (_g118140118153_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118140118153_))))
               (_g118138118203_
                (lambda (_g118140118159_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118140118159_))
                      (let ((_e118145118161_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118140118159_))))
                        (let ((_hd118144118164_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118145118161_)))
                              (_tl118143118166_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118145118161_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118143118166_))
                              (let ((_e118148118169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118143118166_))))
                                (let ((_hd118147118172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118148118169_)))
                                      (_tl118146118174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118148118169_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118146118174_))
                                      (let ((_e118151118177_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118146118174_))))
                                        (let ((_hd118150118180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118151118177_)))
                                              (_tl118149118182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118151118177_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118149118182_))
                                              ((lambda (_L118185_ _L118186_)
                                                 (let ((_eid118201_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118186_))))
                                                   (let ((__tmp119519
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118136_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119519
                                                      _eid118201_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118136_
                                                      _L118185_))))
                                               _hd118150118180_
                                               _hd118147118172_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118139118156_
                                                 _g118140118159_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118139118156_ _g118140118159_)))))
                              (let ()
                                (declare (not safe))
                                (_g118139118156_ _g118140118159_)))))
                      (let ()
                        (declare (not safe))
                        (_g118139118156_ _g118140118159_))))))
          (declare (not safe))
          (_g118138118203_ _stx118137_))))
    (define gxc#find-body%
      (lambda (_self118049_ _stx118050_)
        (let* ((_g118052118071_
                (lambda (_g118053118068_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118053118068_))))
               (_g118051118133_
                (lambda (_g118053118074_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118053118074_))
                      (let ((_e118057118076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118053118074_))))
                        (let ((_hd118056118079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118057118076_)))
                              (_tl118055118081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118057118076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118055118081_))
                              (let ((_g119520_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118055118081_
                                        '0))))
                                (begin
                                  (let ((_g119521_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119520_)
                                               (##vector-length _g119520_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119521_ 2)))
                                        (error "Context expects 2 values"
                                               _g119521_)))
                                  (let ((_target118058118084_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119520_ 0)))
                                        (_tl118060118086_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119520_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118060118086_))
                                        (letrec ((_loop118061118089_
                                                  (lambda (_hd118059118092_
                                                           _expr118065118094_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118059118092_))
                                                        (let ((_e118062118097_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118059118092_))))
                  (let ((_lp-hd118063118100_
                         (let () (declare (not safe)) (##car _e118062118097_)))
                        (_lp-tl118064118102_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118062118097_))))
                    (let ((__tmp119525
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118063118100_ _expr118065118094_))))
                      (declare (not safe))
                      (_loop118061118089_ _lp-tl118064118102_ __tmp119525))))
                (let ((_expr118066118105_ (reverse _expr118065118094_)))
                  ((lambda (_L118108_)
                     (let ((__tmp119524
                            (lambda (_g118121118123_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118049_
                                 _g118121118123_))))
                           (__tmp119522
                            (let ((__tmp119523
                                   (lambda (_g118125118128_ _g118126118130_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118125118128_
                                             _g118126118130_)))))
                              (declare (not safe))
                              (foldr1 __tmp119523 '() _L118108_))))
                       (declare (not safe))
                       (ormap1 __tmp119524 __tmp119522)))
                   _expr118066118105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118061118089_
                                             _target118058118084_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118052118071_
                                           _g118053118074_))))))
                              (let ()
                                (declare (not safe))
                                (_g118052118071_ _g118053118074_)))))
                      (let ()
                        (declare (not safe))
                        (_g118052118071_ _g118053118074_))))))
          (declare (not safe))
          (_g118051118133_ _stx118050_))))
    (define gxc#find-let-values%
      (lambda (_self117899_ _stx117900_)
        (let* ((_g117902117937_
                (lambda (_g117903117934_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117903117934_))))
               (_g117901118046_
                (lambda (_g117903117940_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117903117940_))
                      (let ((_e117909117942_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117903117940_))))
                        (let ((_hd117908117945_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117909117942_)))
                              (_tl117907117947_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117909117942_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117907117947_))
                              (let ((_e117912117950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117907117947_))))
                                (let ((_hd117911117953_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117912117950_)))
                                      (_tl117910117955_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117912117950_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117911117953_))
                                      (let ((_g119526_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117911117953_
                                                '0))))
                                        (begin
                                          (let ((_g119527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119526_)
                                                       (##vector-length
                                                        _g119526_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119527_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119527_)))
                                          (let ((_target117913117958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119526_ 0)))
                                                (_tl117915117960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119526_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117915117960_))
                                                (letrec ((_loop117916117963_
                                                          (lambda (_hd117914117966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117920117968_
                           _bind117921117970_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117914117966_))
                        (let ((_e117917117973_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117914117966_))))
                          (let ((_lp-hd117918117976_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117917117973_)))
                                (_lp-tl117919117978_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117917117973_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117918117976_))
                                (let ((_e117926117981_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117918117976_))))
                                  (let ((_hd117925117984_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117926117981_)))
                                        (_tl117924117986_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117926117981_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117924117986_))
                                        (let ((_e117929117989_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117924117986_))))
                                          (let ((_hd117928117992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117929117989_)))
                                                (_tl117927117994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117929117989_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117927117994_))
                                                (let ((__tmp119532
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117928117992_
                                                               _expr117920117968_)))
                                                      (__tmp119531
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117925117984_
                                                               _bind117921117970_))))
                                                  (declare (not safe))
                                                  (_loop117916117963_
                                                   _lp-tl117919117978_
                                                   __tmp119532
                                                   __tmp119531))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117902117937_
                                                   _g117903117940_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117902117937_ _g117903117940_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117902117937_ _g117903117940_)))))
                        (let ((_expr117922117997_ (reverse _expr117920117968_))
                              (_bind117923117999_
                               (reverse _bind117921117970_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117910117955_))
                              (let ((_e117932118002_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117910117955_))))
                                (let ((_hd117931118005_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117932118002_)))
                                      (_tl117930118007_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117932118002_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117930118007_))
                                      ((lambda (_L118010_ _L118011_ _L118012_)
                                         (let ((_$e118043_
                                                (let ((__tmp119530
                                                       (lambda (_g118031118033_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117899_
                                                            _g118031118033_))))
                                                      (__tmp119528
                                                       (let ((__tmp119529
                                                              (lambda (_g118035118038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118036118040_)
                        (let ()
                          (declare (not safe))
                          (cons _g118035118038_ _g118036118040_)))))
                 (declare (not safe))
                 (foldr1 __tmp119529 '() _L118011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119530
                                                          __tmp119528))))
                                           (if _$e118043_
                                               _$e118043_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self117899_
                                                  _L118010_)))))
                                       _hd117931118005_
                                       _expr117922117997_
                                       _bind117923117999_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117902117937_ _g117903117940_)))))
                              (let ()
                                (declare (not safe))
                                (_g117902117937_ _g117903117940_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117916117963_
                                                     _target117913117958_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117902117937_
                                                   _g117903117940_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117902117937_ _g117903117940_)))))
                              (let ()
                                (declare (not safe))
                                (_g117902117937_ _g117903117940_)))))
                      (let ()
                        (declare (not safe))
                        (_g117902117937_ _g117903117940_))))))
          (declare (not safe))
          (_g117901118046_ _stx117900_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self117843_ _stx117844_)
        (let* ((_g117846117859_
                (lambda (_g117847117856_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117847117856_))))
               (_g117845117896_
                (lambda (_g117847117862_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117847117862_))
                      (let ((_e117851117864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117847117862_))))
                        (let ((_hd117850117867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117851117864_)))
                              (_tl117849117869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117851117864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117849117869_))
                              (let ((_e117854117872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117849117869_))))
                                (let ((_hd117853117875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117854117872_)))
                                      (_tl117852117877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117854117872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117852117877_))
                                      ((lambda (_L117880_)
                                         (let ((__tmp119534
                                                (lambda (_g117891117893_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L117880_
                                                     _g117891117893_))))
                                               (__tmp119533
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self117843_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119534 __tmp119533)))
                                       _hd117853117875_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117846117859_ _g117847117862_)))))
                              (let ()
                                (declare (not safe))
                                (_g117846117859_ _g117847117862_)))))
                      (let ()
                        (declare (not safe))
                        (_g117846117859_ _g117847117862_))))))
          (declare (not safe))
          (_g117845117896_ _stx117844_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self117768_ _stx117769_)
        (let* ((_g117771117788_
                (lambda (_g117772117785_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117772117785_))))
               (_g117770117840_
                (lambda (_g117772117791_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117772117791_))
                      (let ((_e117777117793_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117772117791_))))
                        (let ((_hd117776117796_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117777117793_)))
                              (_tl117775117798_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117777117793_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117775117798_))
                              (let ((_e117780117801_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117775117798_))))
                                (let ((_hd117779117804_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117780117801_)))
                                      (_tl117778117806_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117780117801_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117778117806_))
                                      (let ((_e117783117809_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117778117806_))))
                                        (let ((_hd117782117812_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117783117809_)))
                                              (_tl117781117814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117783117809_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117781117814_))
                                              ((lambda (_L117817_ _L117818_)
                                                 (let ((_$e117837_
                                                        (let ((__tmp119536
                                                               (lambda (_g117832117834_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L117818_ _g117832117834_))))
                      (__tmp119535
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self117768_ 'ids))))
                  (declare (not safe))
                  (find __tmp119536 __tmp119535))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e117837_
                                                       _$e117837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self117768_
                                                          _L117817_)))))
                                               _hd117782117812_
                                               _hd117779117804_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117771117788_
                                                 _g117772117791_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117771117788_ _g117772117791_)))))
                              (let ()
                                (declare (not safe))
                                (_g117771117788_ _g117772117791_)))))
                      (let ()
                        (declare (not safe))
                        (_g117771117788_ _g117772117791_))))))
          (declare (not safe))
          (_g117770117840_ _stx117769_))))))
