(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710699092)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119470 (list gxc#::void::t))
            (__tmp119468
             (let ((__tmp119469
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119469 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119470
         '()
         __tmp119468
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119209_
        (apply make-instance gxc#::collect-mutators::t _$args119209_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp119471
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
        (make-promise __tmp119471)))
    (define gxc#apply-collect-mutators
      (lambda (_stx119201_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119204_
                (let ((__obj119456
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119456))
               (__tmp119472
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119204_ _stx119201_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119472
           gxc#current-compile-method
           _self119204_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119475 (list gxc#::void::t))
            (__tmp119473
             (let ((__tmp119474
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119474 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119475
         '()
         __tmp119473
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119198_
        (apply make-instance gxc#::collect-methods::t _$args119198_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp119476
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
        (make-promise __tmp119476)))
    (define gxc#apply-collect-methods
      (lambda (_stx119190_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119193_
                (let ((__obj119458
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119458))
               (__tmp119477
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119193_ _stx119190_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119477
           gxc#current-compile-method
           _self119193_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119480 (list gxc#::basic-xform-expression::t))
            (__tmp119478
             (let ((__tmp119479
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119479 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119480
         '(id new-id)
         __tmp119478
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119187_
        (apply make-instance gxc#::expression-subst::t _$args119187_)))
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
      (let ((__tmp119481
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
        (make-promise __tmp119481)))
    (define gxc#apply-expression-subst__%
      (lambda (_g119482_ _id119153119157_ _new-id119154119159_ _stx119161_)
        (let* ((_id119164_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119153119157_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119153119157_))
               (_new-id119166_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119154119159_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119154119159_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119168_
                  (let ((__obj119460
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119460
                       _id119164_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119460
                       _new-id119166_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119460))
                 (__tmp119483
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119168_ _stx119161_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119483
             gxc#current-compile-method
             _self119168_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119152119175_ . _args119177_)
        (apply gxc#apply-expression-subst__%
               _keys119152119175_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119152119175_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119152119175_ 'new-id: absent-value))
               _args119177_)))
    (define gxc#apply-expression-subst
      (lambda _args119155119183_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119155119183_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119486 (list gxc#::basic-xform-expression::t))
            (__tmp119484
             (let ((__tmp119485
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119485 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119486
         '(subst)
         __tmp119484
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119148_
        (apply make-instance gxc#::expression-subst*::t _$args119148_)))
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
      (let ((__tmp119487
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
        (make-promise __tmp119487)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g119488_ _subst119119119122_ _stx119124_)
        (let ((_subst119127_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119119119122_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119119119122_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119129_
                  (let ((__obj119462
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119462
                       _subst119127_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119462))
                 (__tmp119489
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119129_ _stx119124_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119489
             gxc#current-compile-method
             _self119129_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119118119136_ . _args119138_)
        (apply gxc#apply-expression-subst*__%
               _keys119118119136_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119118119136_ 'subst: absent-value))
               _args119138_)))
    (define gxc#apply-expression-subst*
      (lambda _args119120119144_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119120119144_)))
    (define gxc#::find-expression::t
      (let ((__tmp119490 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119490
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119114_
        (apply make-instance gxc#::find-expression::t _$args119114_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp119491
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
        (make-promise __tmp119491)))
    (define gxc#::find-var-refs::t
      (let ((__tmp119494 (list gxc#::find-expression::t))
            (__tmp119492
             (let ((__tmp119493
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119493 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119494
         '(ids)
         __tmp119492
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119110_
        (apply make-instance gxc#::find-var-refs::t _$args119110_)))
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
      (let ((__tmp119495
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
        (make-promise __tmp119495)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g119496_ _ids119081119084_ _stx119086_)
        (let ((_ids119089_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119081119084_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119081119084_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119091_
                  (let ((__obj119465
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119465
                       _ids119089_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119465))
                 (__tmp119497
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119091_ _stx119086_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119497
             gxc#current-compile-method
             _self119091_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119080119098_ . _args119100_)
        (apply gxc#apply-find-var-refs__%
               _keys119080119098_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119080119098_ 'ids: absent-value))
               _args119100_)))
    (define gxc#apply-find-var-refs
      (lambda _args119082119106_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119082119106_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119500 (list gxc#::collect-expression-refs::t))
            (__tmp119498
             (let ((__tmp119499
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119499 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119500
         '()
         __tmp119498
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119076_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119076_)))
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
      (let ((__tmp119501
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
        (make-promise __tmp119501)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g119502_ _table119047119050_ _stx119052_)
        (let ((_table119055_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119047119050_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119047119050_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119057_
                  (let ((__obj119467
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119467
                       _table119055_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119467))
                 (__tmp119503
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119057_ _stx119052_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119503
             gxc#current-compile-method
             _self119057_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119046119064_ . _args119066_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119046119064_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119046119064_ 'table: absent-value))
               _args119066_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119048119072_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119048119072_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self118975_ _stx118976_)
        (let* ((_g118978118995_
                (lambda (_g118979118992_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118979118992_))))
               (_g118977119042_
                (lambda (_g118979118998_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118979118998_))
                      (let ((_e118984119000_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118979118998_))))
                        (let ((_hd118983119003_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118984119000_)))
                              (_tl118982119005_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118984119000_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118982119005_))
                              (let ((_e118987119008_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118982119005_))))
                                (let ((_hd118986119011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118987119008_)))
                                      (_tl118985119013_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118987119008_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118985119013_))
                                      (let ((_e118990119016_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118985119013_))))
                                        (let ((_hd118989119019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118990119016_)))
                                              (_tl118988119021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118990119016_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118988119021_))
                                              ((lambda (_L119024_ _L119025_)
                                                 (let ((_sym119040_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119025_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119040_))
                                                   (let ((__tmp119504
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119504
                                                      _sym119040_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118975_
                                                      _L119024_))))
                                               _hd118989119019_
                                               _hd118986119011_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118978118995_
                                                 _g118979118998_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118978118995_ _g118979118998_)))))
                              (let ()
                                (declare (not safe))
                                (_g118978118995_ _g118979118998_)))))
                      (let ()
                        (declare (not safe))
                        (_g118978118995_ _g118979118998_))))))
          (declare (not safe))
          (_g118977119042_ _stx118976_))))
    (define gxc#collect-methods-call%
      (lambda (_self118528_ _stx118529_)
        (let* ((___stx119212119213_ _stx118529_)
               (_g118533118635_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119212119213_)))))
          (let ((___kont119214119215_
                 (lambda (_L118925_ _L118926_ _L118927_ _L118928_ _L118929_)
                   (let ((__tmp119505
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L118926_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119505))))
                (___kont119216119217_
                 (lambda (_L118751_ _L118752_ _L118753_ _L118754_)
                   (let ((__tmp119506
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L118751_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119506))))
                (___kont119218119219_ (lambda () '#!void)))
            (let ((___match119347119348_
                   (lambda (_e118542118797_
                            _hd118541118800_
                            _tl118540118802_
                            _e118545118805_
                            _hd118544118808_
                            _tl118543118810_
                            _e118548118813_
                            _hd118547118816_
                            _tl118546118818_
                            _e118551118821_
                            _hd118550118824_
                            _tl118549118826_
                            _e118554118829_
                            _hd118553118832_
                            _tl118552118834_
                            _e118557118837_
                            _hd118556118840_
                            _tl118555118842_
                            _e118560118845_
                            _hd118559118848_
                            _tl118558118850_
                            _e118563118853_
                            _hd118562118856_
                            _tl118561118858_
                            _e118566118861_
                            _hd118565118864_
                            _tl118564118866_
                            _e118569118869_
                            _hd118568118872_
                            _tl118567118874_
                            _e118572118877_
                            _hd118571118880_
                            _tl118570118882_
                            _e118575118885_
                            _hd118574118888_
                            _tl118573118890_
                            _e118578118893_
                            _hd118577118896_
                            _tl118576118898_
                            _e118581118901_
                            _hd118580118904_
                            _tl118579118906_
                            _e118584118909_
                            _hd118583118912_
                            _tl118582118914_
                            _e118587118917_
                            _hd118586118920_
                            _tl118585118922_)
                     (let ((_L118925_ _hd118586118920_)
                           (_L118926_ _hd118577118896_)
                           (_L118927_ _hd118568118872_)
                           (_L118928_ _hd118559118848_)
                           (_L118929_ _hd118550118824_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L118929_
                              'bind-method!))
                           (___kont119214119215_
                            _L118925_
                            _L118926_
                            _L118927_
                            _L118928_
                            _L118929_)
                           (___kont119218119219_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119212119213_))
                  (let ((_e118542118797_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119212119213_))))
                    (let ((_tl118540118802_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118542118797_)))
                          (_hd118541118800_
                           (let ()
                             (declare (not safe))
                             (##car _e118542118797_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118540118802_))
                          (let ((_e118545118805_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118540118802_))))
                            (let ((_tl118543118810_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118545118805_)))
                                  (_hd118544118808_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118545118805_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118544118808_))
                                  (let ((_e118548118813_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118544118808_))))
                                    (let ((_tl118546118818_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118548118813_)))
                                          (_hd118547118816_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118548118813_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118547118816_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118547118816_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118546118818_))
                                                  (let ((_e118551118821_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118546118818_))))
                                                    (let ((_tl118549118826_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118551118821_)))
                                                          (_hd118550118824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118551118821_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118549118826_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118543118810_))
                      (let ((_e118554118829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118543118810_))))
                        (let ((_tl118552118834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118554118829_)))
                              (_hd118553118832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118554118829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118553118832_))
                              (let ((_e118557118837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118553118832_))))
                                (let ((_tl118555118842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118557118837_)))
                                      (_hd118556118840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118557118837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118556118840_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118556118840_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118555118842_))
                                              (let ((_e118560118845_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118555118842_))))
                                                (let ((_tl118558118850_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118560118845_)))
                                                      (_hd118559118848_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118560118845_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118558118850_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118552118834_))
                                                          (let ((_e118563118853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118552118834_))))
                    (let ((_tl118561118858_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118563118853_)))
                          (_hd118562118856_
                           (let ()
                             (declare (not safe))
                             (##car _e118563118853_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118562118856_))
                          (let ((_e118566118861_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118562118856_))))
                            (let ((_tl118564118866_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118566118861_)))
                                  (_hd118565118864_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118566118861_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118565118864_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118565118864_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118564118866_))
                                          (let ((_e118569118869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118564118866_))))
                                            (let ((_tl118567118874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118569118869_)))
                                                  (_hd118568118872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118569118869_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118567118874_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118561118858_))
                                                      (let ((_e118572118877_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118561118858_))))
                (let ((_tl118570118882_
                       (let () (declare (not safe)) (##cdr _e118572118877_)))
                      (_hd118571118880_
                       (let () (declare (not safe)) (##car _e118572118877_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118571118880_))
                      (let ((_e118575118885_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118571118880_))))
                        (let ((_tl118573118890_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118575118885_)))
                              (_hd118574118888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118575118885_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118574118888_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118574118888_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118573118890_))
                                      (let ((_e118578118893_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118573118890_))))
                                        (let ((_tl118576118898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118578118893_)))
                                              (_hd118577118896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118578118893_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118576118898_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118570118882_))
                                                  (let ((_e118581118901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118570118882_))))
                                                    (let ((_tl118579118906_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118581118901_)))
                                                          (_hd118580118904_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118581118901_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118580118904_))
                                                          (let ((_e118584118909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118580118904_))))
                    (let ((_tl118582118914_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118584118909_)))
                          (_hd118583118912_
                           (let ()
                             (declare (not safe))
                             (##car _e118584118909_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118583118912_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118583118912_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118582118914_))
                                  (let ((_e118587118917_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118582118914_))))
                                    (let ((_tl118585118922_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118587118917_)))
                                          (_hd118586118920_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118587118917_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118585118922_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118579118906_))
                                              (___match119347119348_
                                               _e118542118797_
                                               _hd118541118800_
                                               _tl118540118802_
                                               _e118545118805_
                                               _hd118544118808_
                                               _tl118543118810_
                                               _e118548118813_
                                               _hd118547118816_
                                               _tl118546118818_
                                               _e118551118821_
                                               _hd118550118824_
                                               _tl118549118826_
                                               _e118554118829_
                                               _hd118553118832_
                                               _tl118552118834_
                                               _e118557118837_
                                               _hd118556118840_
                                               _tl118555118842_
                                               _e118560118845_
                                               _hd118559118848_
                                               _tl118558118850_
                                               _e118563118853_
                                               _hd118562118856_
                                               _tl118561118858_
                                               _e118566118861_
                                               _hd118565118864_
                                               _tl118564118866_
                                               _e118569118869_
                                               _hd118568118872_
                                               _tl118567118874_
                                               _e118572118877_
                                               _hd118571118880_
                                               _tl118570118882_
                                               _e118575118885_
                                               _hd118574118888_
                                               _tl118573118890_
                                               _e118578118893_
                                               _hd118577118896_
                                               _tl118576118898_
                                               _e118581118901_
                                               _hd118580118904_
                                               _tl118579118906_
                                               _e118584118909_
                                               _hd118583118912_
                                               _tl118582118914_
                                               _e118587118917_
                                               _hd118586118920_
                                               _tl118585118922_)
                                              (___kont119218119219_))
                                          (___kont119218119219_))))
                                  (___kont119218119219_))
                              (___kont119218119219_))
                          (___kont119218119219_))))
                  (___kont119218119219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118570118882_))
                                                      (if (let ((__tmp119507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119507 'bind-method!))
                  (let ((_L118751_ _hd118577118896_)
                        (_L118752_ _hd118568118872_)
                        (_L118753_ _hd118559118848_)
                        (_L118754_ _hd118550118824_))
                    (___kont119216119217_
                     _L118751_
                     _L118752_
                     _L118753_
                     _L118754_))
                  (___kont119218119219_))
              (___kont119218119219_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119218119219_))))
                                      (___kont119218119219_))
                                  (___kont119218119219_))
                              (___kont119218119219_))))
                      (___kont119218119219_))))
              (___kont119218119219_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119218119219_))))
                                          (___kont119218119219_))
                                      (___kont119218119219_))
                                  (___kont119218119219_))))
                          (___kont119218119219_))))
                  (___kont119218119219_))
              (___kont119218119219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119218119219_))
                                          (___kont119218119219_))
                                      (___kont119218119219_))))
                              (___kont119218119219_))))
                      (___kont119218119219_))
                  (___kont119218119219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119218119219_))
                                              (___kont119218119219_))
                                          (___kont119218119219_))))
                                  (___kont119218119219_))))
                          (___kont119218119219_))))
                  (___kont119218119219_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118476_ _stx118477_)
        (let* ((_g118479118492_
                (lambda (_g118480118489_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118480118489_))))
               (_g118478118525_
                (lambda (_g118480118495_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118480118495_))
                      (let ((_e118484118497_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118480118495_))))
                        (let ((_hd118483118500_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118484118497_)))
                              (_tl118482118502_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118484118497_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118482118502_))
                              (let ((_e118487118505_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118482118502_))))
                                (let ((_hd118486118508_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118487118505_)))
                                      (_tl118485118510_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118487118505_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118485118510_))
                                      ((lambda (_L118513_)
                                         (if (let ((__tmp119511
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118476_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118513_
                                                __tmp119511))
                                             (let ((__tmp119508
                                                    (let ((__tmp119509
                                                           (let ((__tmp119510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118476_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119510 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119508
                                                _stx118477_))
                                             _stx118477_))
                                       _hd118486118508_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118479118492_ _g118480118495_)))))
                              (let ()
                                (declare (not safe))
                                (_g118479118492_ _g118480118495_)))))
                      (let ()
                        (declare (not safe))
                        (_g118479118492_ _g118480118495_))))))
          (declare (not safe))
          (_g118478118525_ _stx118477_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118417_ _stx118418_)
        (let* ((_g118420118433_
                (lambda (_g118421118430_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118421118430_))))
               (_g118419118473_
                (lambda (_g118421118436_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118421118436_))
                      (let ((_e118425118438_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118421118436_))))
                        (let ((_hd118424118441_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118425118438_)))
                              (_tl118423118443_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118425118438_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118423118443_))
                              (let ((_e118428118446_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118423118443_))))
                                (let ((_hd118427118449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118428118446_)))
                                      (_tl118426118451_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118428118446_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118426118451_))
                                      ((lambda (_L118454_)
                                         (let ((_$e118468_
                                                (let ((__tmp119513
                                                       (lambda (_sub118466_)
                                                         (let ((__tmp119514
                                                                (car _sub118466_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118454_
                                                            __tmp119514))))
                                                      (__tmp119512
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118417_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119513
                                                        __tmp119512))))
                                           (if _$e118468_
                                               ((lambda (_sub118471_)
                                                  (let ((__tmp119515
                                                         (let ((__tmp119516
                                                                (let ((__tmp119517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118471_)))
                          (declare (not safe))
                          (cons __tmp119517 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119515
                                                     _stx118418_)))
                                                _$e118468_)
                                               _stx118418_)))
                                       _hd118427118449_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118420118433_ _g118421118436_)))))
                              (let ()
                                (declare (not safe))
                                (_g118420118433_ _g118421118436_)))))
                      (let ()
                        (declare (not safe))
                        (_g118420118433_ _g118421118436_))))))
          (declare (not safe))
          (_g118419118473_ _stx118418_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118346_ _stx118347_)
        (let* ((_g118349118366_
                (lambda (_g118350118363_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118350118363_))))
               (_g118348118414_
                (lambda (_g118350118369_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118350118369_))
                      (let ((_e118355118371_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118350118369_))))
                        (let ((_hd118354118374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118355118371_)))
                              (_tl118353118376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118355118371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118353118376_))
                              (let ((_e118358118379_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118353118376_))))
                                (let ((_hd118357118382_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118358118379_)))
                                      (_tl118356118384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118358118379_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118356118384_))
                                      (let ((_e118361118387_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118356118384_))))
                                        (let ((_hd118360118390_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118361118387_)))
                                              (_tl118359118392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118361118387_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118359118392_))
                                              ((lambda (_L118395_ _L118396_)
                                                 (let ((_new-expr118411_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118346_
                                                           _L118395_)))
                                                       (_new-xid118412_
                                                        (if (let ((__tmp119518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118346_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118396_ __tmp119518))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118346_ 'new-id))
                    _L118396_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119519
                                                          (let ((__tmp119520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119521
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118411_ '()))))
                           (declare (not safe))
                           (cons _new-xid118412_ __tmp119521))))
                    (declare (not safe))
                    (cons '%#set! __tmp119520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119519
                                                      _stx118347_))))
                                               _hd118360118390_
                                               _hd118357118382_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118349118366_
                                                 _g118350118369_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118349118366_ _g118350118369_)))))
                              (let ()
                                (declare (not safe))
                                (_g118349118366_ _g118350118369_)))))
                      (let ()
                        (declare (not safe))
                        (_g118349118366_ _g118350118369_))))))
          (declare (not safe))
          (_g118348118414_ _stx118347_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118270_ _stx118271_)
        (let* ((_g118273118290_
                (lambda (_g118274118287_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118274118287_))))
               (_g118272118343_
                (lambda (_g118274118293_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118274118293_))
                      (let ((_e118279118295_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118274118293_))))
                        (let ((_hd118278118298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118279118295_)))
                              (_tl118277118300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118279118295_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118277118300_))
                              (let ((_e118282118303_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118277118300_))))
                                (let ((_hd118281118306_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118282118303_)))
                                      (_tl118280118308_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118282118303_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118280118308_))
                                      (let ((_e118285118311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118280118308_))))
                                        (let ((_hd118284118314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118285118311_)))
                                              (_tl118283118316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118285118311_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118283118316_))
                                              ((lambda (_L118319_ _L118320_)
                                                 (let ((_new-expr118340_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118270_
                                                           _L118319_)))
                                                       (_new-xid118341_
                                                        (let ((_$e118337_
                                                               (let ((__tmp119523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118335_)
                                (let ((__tmp119524 (car _sub118335_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118320_
                                   __tmp119524))))
                             (__tmp119522
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118270_ 'subst))))
                         (declare (not safe))
                         (find __tmp119523 __tmp119522))))
                  (if _$e118337_ (cdr _$e118337_) _L118320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119525
                                                          (let ((__tmp119526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119527
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118340_ '()))))
                           (declare (not safe))
                           (cons _new-xid118341_ __tmp119527))))
                    (declare (not safe))
                    (cons '%#set! __tmp119526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119525
                                                      _stx118271_))))
                                               _hd118284118314_
                                               _hd118281118306_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118273118290_
                                                 _g118274118293_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118273118290_ _g118274118293_)))))
                              (let ()
                                (declare (not safe))
                                (_g118273118290_ _g118274118293_)))))
                      (let ()
                        (declare (not safe))
                        (_g118273118290_ _g118274118293_))))))
          (declare (not safe))
          (_g118272118343_ _stx118271_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118216_ _stx118217_)
        (let* ((_g118219118232_
                (lambda (_g118220118229_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118220118229_))))
               (_g118218118267_
                (lambda (_g118220118235_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118220118235_))
                      (let ((_e118224118237_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118220118235_))))
                        (let ((_hd118223118240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118224118237_)))
                              (_tl118222118242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118224118237_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118222118242_))
                              (let ((_e118227118245_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118222118242_))))
                                (let ((_hd118226118248_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118227118245_)))
                                      (_tl118225118250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118227118245_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118225118250_))
                                      ((lambda (_L118253_)
                                         (let* ((_eid118265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118253_)))
                                                (__tmp119528
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118216_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119528
                                            _eid118265_
                                            1+
                                            '0)))
                                       _hd118226118248_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118219118232_ _g118220118235_)))))
                              (let ()
                                (declare (not safe))
                                (_g118219118232_ _g118220118235_)))))
                      (let ()
                        (declare (not safe))
                        (_g118219118232_ _g118220118235_))))))
          (declare (not safe))
          (_g118218118267_ _stx118217_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118146_ _stx118147_)
        (let* ((_g118149118166_
                (lambda (_g118150118163_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118150118163_))))
               (_g118148118213_
                (lambda (_g118150118169_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118150118169_))
                      (let ((_e118155118171_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118150118169_))))
                        (let ((_hd118154118174_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118155118171_)))
                              (_tl118153118176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118155118171_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118153118176_))
                              (let ((_e118158118179_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118153118176_))))
                                (let ((_hd118157118182_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118158118179_)))
                                      (_tl118156118184_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118158118179_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118156118184_))
                                      (let ((_e118161118187_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118156118184_))))
                                        (let ((_hd118160118190_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118161118187_)))
                                              (_tl118159118192_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118161118187_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118159118192_))
                                              ((lambda (_L118195_ _L118196_)
                                                 (let ((_eid118211_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118196_))))
                                                   (let ((__tmp119529
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118146_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119529
                                                      _eid118211_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118146_
                                                      _L118195_))))
                                               _hd118160118190_
                                               _hd118157118182_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118149118166_
                                                 _g118150118169_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118149118166_ _g118150118169_)))))
                              (let ()
                                (declare (not safe))
                                (_g118149118166_ _g118150118169_)))))
                      (let ()
                        (declare (not safe))
                        (_g118149118166_ _g118150118169_))))))
          (declare (not safe))
          (_g118148118213_ _stx118147_))))
    (define gxc#find-body%
      (lambda (_self118059_ _stx118060_)
        (let* ((_g118062118081_
                (lambda (_g118063118078_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118063118078_))))
               (_g118061118143_
                (lambda (_g118063118084_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118063118084_))
                      (let ((_e118067118086_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118063118084_))))
                        (let ((_hd118066118089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118067118086_)))
                              (_tl118065118091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118067118086_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118065118091_))
                              (let ((_g119530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118065118091_
                                        '0))))
                                (begin
                                  (let ((_g119531_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119530_)
                                               (##vector-length _g119530_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119531_ 2)))
                                        (error "Context expects 2 values"
                                               _g119531_)))
                                  (let ((_target118068118094_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119530_ 0)))
                                        (_tl118070118096_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119530_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118070118096_))
                                        (letrec ((_loop118071118099_
                                                  (lambda (_hd118069118102_
                                                           _expr118075118104_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118069118102_))
                                                        (let ((_e118072118107_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118069118102_))))
                  (let ((_lp-hd118073118110_
                         (let () (declare (not safe)) (##car _e118072118107_)))
                        (_lp-tl118074118112_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118072118107_))))
                    (let ((__tmp119535
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118073118110_ _expr118075118104_))))
                      (declare (not safe))
                      (_loop118071118099_ _lp-tl118074118112_ __tmp119535))))
                (let ((_expr118076118115_ (reverse _expr118075118104_)))
                  ((lambda (_L118118_)
                     (let ((__tmp119534
                            (lambda (_g118131118133_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118059_
                                 _g118131118133_))))
                           (__tmp119532
                            (let ((__tmp119533
                                   (lambda (_g118135118138_ _g118136118140_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118135118138_
                                             _g118136118140_)))))
                              (declare (not safe))
                              (foldr1 __tmp119533 '() _L118118_))))
                       (declare (not safe))
                       (ormap1 __tmp119534 __tmp119532)))
                   _expr118076118115_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118071118099_
                                             _target118068118094_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118062118081_
                                           _g118063118084_))))))
                              (let ()
                                (declare (not safe))
                                (_g118062118081_ _g118063118084_)))))
                      (let ()
                        (declare (not safe))
                        (_g118062118081_ _g118063118084_))))))
          (declare (not safe))
          (_g118061118143_ _stx118060_))))
    (define gxc#find-let-values%
      (lambda (_self117909_ _stx117910_)
        (let* ((_g117912117947_
                (lambda (_g117913117944_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117913117944_))))
               (_g117911118056_
                (lambda (_g117913117950_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117913117950_))
                      (let ((_e117919117952_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117913117950_))))
                        (let ((_hd117918117955_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117919117952_)))
                              (_tl117917117957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117919117952_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117917117957_))
                              (let ((_e117922117960_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117917117957_))))
                                (let ((_hd117921117963_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117922117960_)))
                                      (_tl117920117965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117922117960_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117921117963_))
                                      (let ((_g119536_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117921117963_
                                                '0))))
                                        (begin
                                          (let ((_g119537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119536_)
                                                       (##vector-length
                                                        _g119536_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119537_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119537_)))
                                          (let ((_target117923117968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119536_ 0)))
                                                (_tl117925117970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119536_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117925117970_))
                                                (letrec ((_loop117926117973_
                                                          (lambda (_hd117924117976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117930117978_
                           _bind117931117980_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117924117976_))
                        (let ((_e117927117983_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117924117976_))))
                          (let ((_lp-hd117928117986_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117927117983_)))
                                (_lp-tl117929117988_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117927117983_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117928117986_))
                                (let ((_e117936117991_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117928117986_))))
                                  (let ((_hd117935117994_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117936117991_)))
                                        (_tl117934117996_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117936117991_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117934117996_))
                                        (let ((_e117939117999_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117934117996_))))
                                          (let ((_hd117938118002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117939117999_)))
                                                (_tl117937118004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117939117999_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117937118004_))
                                                (let ((__tmp119542
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117938118002_
                                                               _expr117930117978_)))
                                                      (__tmp119541
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117935117994_
                                                               _bind117931117980_))))
                                                  (declare (not safe))
                                                  (_loop117926117973_
                                                   _lp-tl117929117988_
                                                   __tmp119542
                                                   __tmp119541))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117912117947_
                                                   _g117913117950_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117912117947_ _g117913117950_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117912117947_ _g117913117950_)))))
                        (let ((_expr117932118007_ (reverse _expr117930117978_))
                              (_bind117933118009_
                               (reverse _bind117931117980_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117920117965_))
                              (let ((_e117942118012_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117920117965_))))
                                (let ((_hd117941118015_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117942118012_)))
                                      (_tl117940118017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117942118012_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117940118017_))
                                      ((lambda (_L118020_ _L118021_ _L118022_)
                                         (let ((_$e118053_
                                                (let ((__tmp119540
                                                       (lambda (_g118041118043_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117909_
                                                            _g118041118043_))))
                                                      (__tmp119538
                                                       (let ((__tmp119539
                                                              (lambda (_g118045118048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118046118050_)
                        (let ()
                          (declare (not safe))
                          (cons _g118045118048_ _g118046118050_)))))
                 (declare (not safe))
                 (foldr1 __tmp119539 '() _L118021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119540
                                                          __tmp119538))))
                                           (if _$e118053_
                                               _$e118053_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self117909_
                                                  _L118020_)))))
                                       _hd117941118015_
                                       _expr117932118007_
                                       _bind117933118009_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117912117947_ _g117913117950_)))))
                              (let ()
                                (declare (not safe))
                                (_g117912117947_ _g117913117950_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117926117973_
                                                     _target117923117968_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117912117947_
                                                   _g117913117950_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117912117947_ _g117913117950_)))))
                              (let ()
                                (declare (not safe))
                                (_g117912117947_ _g117913117950_)))))
                      (let ()
                        (declare (not safe))
                        (_g117912117947_ _g117913117950_))))))
          (declare (not safe))
          (_g117911118056_ _stx117910_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self117853_ _stx117854_)
        (let* ((_g117856117869_
                (lambda (_g117857117866_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117857117866_))))
               (_g117855117906_
                (lambda (_g117857117872_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117857117872_))
                      (let ((_e117861117874_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117857117872_))))
                        (let ((_hd117860117877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117861117874_)))
                              (_tl117859117879_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117861117874_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117859117879_))
                              (let ((_e117864117882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117859117879_))))
                                (let ((_hd117863117885_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117864117882_)))
                                      (_tl117862117887_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117864117882_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117862117887_))
                                      ((lambda (_L117890_)
                                         (let ((__tmp119544
                                                (lambda (_g117901117903_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L117890_
                                                     _g117901117903_))))
                                               (__tmp119543
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self117853_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119544 __tmp119543)))
                                       _hd117863117885_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117856117869_ _g117857117872_)))))
                              (let ()
                                (declare (not safe))
                                (_g117856117869_ _g117857117872_)))))
                      (let ()
                        (declare (not safe))
                        (_g117856117869_ _g117857117872_))))))
          (declare (not safe))
          (_g117855117906_ _stx117854_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self117778_ _stx117779_)
        (let* ((_g117781117798_
                (lambda (_g117782117795_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117782117795_))))
               (_g117780117850_
                (lambda (_g117782117801_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117782117801_))
                      (let ((_e117787117803_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117782117801_))))
                        (let ((_hd117786117806_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117787117803_)))
                              (_tl117785117808_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117787117803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117785117808_))
                              (let ((_e117790117811_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117785117808_))))
                                (let ((_hd117789117814_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117790117811_)))
                                      (_tl117788117816_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117790117811_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117788117816_))
                                      (let ((_e117793117819_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117788117816_))))
                                        (let ((_hd117792117822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117793117819_)))
                                              (_tl117791117824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117793117819_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117791117824_))
                                              ((lambda (_L117827_ _L117828_)
                                                 (let ((_$e117847_
                                                        (let ((__tmp119546
                                                               (lambda (_g117842117844_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L117828_ _g117842117844_))))
                      (__tmp119545
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self117778_ 'ids))))
                  (declare (not safe))
                  (find __tmp119546 __tmp119545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e117847_
                                                       _$e117847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self117778_
                                                          _L117827_)))))
                                               _hd117792117822_
                                               _hd117789117814_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117781117798_
                                                 _g117782117801_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117781117798_ _g117782117801_)))))
                              (let ()
                                (declare (not safe))
                                (_g117781117798_ _g117782117801_)))))
                      (let ()
                        (declare (not safe))
                        (_g117781117798_ _g117782117801_))))))
          (declare (not safe))
          (_g117780117850_ _stx117779_))))))
