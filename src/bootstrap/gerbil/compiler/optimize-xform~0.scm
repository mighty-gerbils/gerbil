(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1711108656)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119808 (list gxc#::void::t))
            (__tmp119806
             (let ((__tmp119807
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119807 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119808
         '()
         __tmp119806
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119547_
        (apply make-instance gxc#::collect-mutators::t _$args119547_)))
    (define gxc#::collect-mutators-bind-methods!
      (make-promise
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
    (define gxc#apply-collect-mutators
      (lambda (_stx119539_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119542_
                (let ((__obj119794
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119794))
               (__tmp119809
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119542_ _stx119539_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119809
           gxc#current-compile-method
           _self119542_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119812 (list gxc#::void::t))
            (__tmp119810
             (let ((__tmp119811
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119811 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119812
         '()
         __tmp119810
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119536_
        (apply make-instance gxc#::collect-methods::t _$args119536_)))
    (define gxc#::collect-methods-bind-methods!
      (make-promise
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
    (define gxc#apply-collect-methods
      (lambda (_stx119528_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119531_
                (let ((__obj119796
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119796))
               (__tmp119813
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119531_ _stx119528_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119813
           gxc#current-compile-method
           _self119531_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119816 (list gxc#::basic-xform-expression::t))
            (__tmp119814
             (let ((__tmp119815
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119815 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119816
         '(id new-id)
         __tmp119814
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119525_
        (apply make-instance gxc#::expression-subst::t _$args119525_)))
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
      (make-promise
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
    (define gxc#apply-expression-subst__%
      (lambda (_g119817_ _id119491119495_ _new-id119492119497_ _stx119499_)
        (let* ((_id119502_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119491119495_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119491119495_))
               (_new-id119504_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119492119497_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119492119497_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119506_
                  (let ((__obj119798
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119798
                       _id119502_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119798
                       _new-id119504_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119798))
                 (__tmp119818
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119506_ _stx119499_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119818
             gxc#current-compile-method
             _self119506_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119490119513_ . _args119515_)
        (apply gxc#apply-expression-subst__%
               _keys119490119513_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119490119513_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119490119513_ 'new-id: absent-value))
               _args119515_)))
    (define gxc#apply-expression-subst
      (lambda _args119493119521_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119493119521_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119821 (list gxc#::basic-xform-expression::t))
            (__tmp119819
             (let ((__tmp119820
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119820 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119821
         '(subst)
         __tmp119819
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119486_
        (apply make-instance gxc#::expression-subst*::t _$args119486_)))
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
      (make-promise
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
    (define gxc#apply-expression-subst*__%
      (lambda (_g119822_ _subst119457119460_ _stx119462_)
        (let ((_subst119465_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119457119460_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119457119460_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119467_
                  (let ((__obj119800
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119800
                       _subst119465_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119800))
                 (__tmp119823
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119467_ _stx119462_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119823
             gxc#current-compile-method
             _self119467_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119456119474_ . _args119476_)
        (apply gxc#apply-expression-subst*__%
               _keys119456119474_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119456119474_ 'subst: absent-value))
               _args119476_)))
    (define gxc#apply-expression-subst*
      (lambda _args119458119482_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119458119482_)))
    (define gxc#::find-expression::t
      (let ((__tmp119824 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119824
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119452_
        (apply make-instance gxc#::find-expression::t _$args119452_)))
    (define gxc#::find-expression-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-expression-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::find-expression::t '%#begin gxc#find-body%))
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
           (bind-method!__0 gxc#::find-expression::t '%#call gxc#find-body%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::find-expression::t
            '%#call-unchecked
            gxc#find-body%))
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::find-expression::t '%#if gxc#find-body%))
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
    (define gxc#::find-var-refs::t
      (let ((__tmp119827 (list gxc#::find-expression::t))
            (__tmp119825
             (let ((__tmp119826
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119826 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119827
         '(ids)
         __tmp119825
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119448_
        (apply make-instance gxc#::find-var-refs::t _$args119448_)))
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
      (make-promise
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
         (let () (declare (not safe)) (seal-class! gxc#::find-var-refs::t)))))
    (define gxc#apply-find-var-refs__%
      (lambda (_g119828_ _ids119419119422_ _stx119424_)
        (let ((_ids119427_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119419119422_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119419119422_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119429_
                  (let ((__obj119803
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119803
                       _ids119427_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119803))
                 (__tmp119829
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119429_ _stx119424_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119829
             gxc#current-compile-method
             _self119429_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119418119436_ . _args119438_)
        (apply gxc#apply-find-var-refs__%
               _keys119418119436_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119418119436_ 'ids: absent-value))
               _args119438_)))
    (define gxc#apply-find-var-refs
      (lambda _args119420119444_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119420119444_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119832 (list gxc#::collect-expression-refs::t))
            (__tmp119830
             (let ((__tmp119831
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119831 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119832
         '()
         __tmp119830
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119414_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119414_)))
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
      (make-promise
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
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g119833_ _table119385119388_ _stx119390_)
        (let ((_table119393_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119385119388_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119385119388_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119395_
                  (let ((__obj119805
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119805
                       _table119393_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119805))
                 (__tmp119834
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119395_ _stx119390_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119834
             gxc#current-compile-method
             _self119395_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119384119402_ . _args119404_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119384119402_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119384119402_ 'table: absent-value))
               _args119404_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119386119410_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119386119410_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self119313_ _stx119314_)
        (let* ((_g119316119333_
                (lambda (_g119317119330_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119317119330_))))
               (_g119315119380_
                (lambda (_g119317119336_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119317119336_))
                      (let ((_e119322119338_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119317119336_))))
                        (let ((_hd119321119341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119322119338_)))
                              (_tl119320119343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119322119338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119320119343_))
                              (let ((_e119325119346_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119320119343_))))
                                (let ((_hd119324119349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119325119346_)))
                                      (_tl119323119351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119325119346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119323119351_))
                                      (let ((_e119328119354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119323119351_))))
                                        (let ((_hd119327119357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119328119354_)))
                                              (_tl119326119359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119328119354_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119326119359_))
                                              ((lambda (_L119362_ _L119363_)
                                                 (let ((_sym119378_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119363_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119378_))
                                                   (let ((__tmp119835
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119835
                                                      _sym119378_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self119313_
                                                      _L119362_))))
                                               _hd119327119357_
                                               _hd119324119349_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119316119333_
                                                 _g119317119336_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119316119333_ _g119317119336_)))))
                              (let ()
                                (declare (not safe))
                                (_g119316119333_ _g119317119336_)))))
                      (let ()
                        (declare (not safe))
                        (_g119316119333_ _g119317119336_))))))
          (declare (not safe))
          (_g119315119380_ _stx119314_))))
    (define gxc#collect-methods-call%
      (lambda (_self118866_ _stx118867_)
        (let* ((___stx119550119551_ _stx118867_)
               (_g118871118973_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119550119551_)))))
          (let ((___kont119552119553_
                 (lambda (_L119263_ _L119264_ _L119265_ _L119266_ _L119267_)
                   (let ((__tmp119836
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119264_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119836))))
                (___kont119554119555_
                 (lambda (_L119089_ _L119090_ _L119091_ _L119092_)
                   (let ((__tmp119837
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119089_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119837))))
                (___kont119556119557_ (lambda () '#!void)))
            (let ((___match119685119686_
                   (lambda (_e118880119135_
                            _hd118879119138_
                            _tl118878119140_
                            _e118883119143_
                            _hd118882119146_
                            _tl118881119148_
                            _e118886119151_
                            _hd118885119154_
                            _tl118884119156_
                            _e118889119159_
                            _hd118888119162_
                            _tl118887119164_
                            _e118892119167_
                            _hd118891119170_
                            _tl118890119172_
                            _e118895119175_
                            _hd118894119178_
                            _tl118893119180_
                            _e118898119183_
                            _hd118897119186_
                            _tl118896119188_
                            _e118901119191_
                            _hd118900119194_
                            _tl118899119196_
                            _e118904119199_
                            _hd118903119202_
                            _tl118902119204_
                            _e118907119207_
                            _hd118906119210_
                            _tl118905119212_
                            _e118910119215_
                            _hd118909119218_
                            _tl118908119220_
                            _e118913119223_
                            _hd118912119226_
                            _tl118911119228_
                            _e118916119231_
                            _hd118915119234_
                            _tl118914119236_
                            _e118919119239_
                            _hd118918119242_
                            _tl118917119244_
                            _e118922119247_
                            _hd118921119250_
                            _tl118920119252_
                            _e118925119255_
                            _hd118924119258_
                            _tl118923119260_)
                     (let ((_L119263_ _hd118924119258_)
                           (_L119264_ _hd118915119234_)
                           (_L119265_ _hd118906119210_)
                           (_L119266_ _hd118897119186_)
                           (_L119267_ _hd118888119162_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L119267_
                              'bind-method!))
                           (___kont119552119553_
                            _L119263_
                            _L119264_
                            _L119265_
                            _L119266_
                            _L119267_)
                           (___kont119556119557_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119550119551_))
                  (let ((_e118880119135_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119550119551_))))
                    (let ((_tl118878119140_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118880119135_)))
                          (_hd118879119138_
                           (let ()
                             (declare (not safe))
                             (##car _e118880119135_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118878119140_))
                          (let ((_e118883119143_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118878119140_))))
                            (let ((_tl118881119148_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118883119143_)))
                                  (_hd118882119146_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118883119143_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118882119146_))
                                  (let ((_e118886119151_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118882119146_))))
                                    (let ((_tl118884119156_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118886119151_)))
                                          (_hd118885119154_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118886119151_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118885119154_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118885119154_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118884119156_))
                                                  (let ((_e118889119159_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118884119156_))))
                                                    (let ((_tl118887119164_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118889119159_)))
                                                          (_hd118888119162_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118889119159_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118887119164_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118881119148_))
                      (let ((_e118892119167_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118881119148_))))
                        (let ((_tl118890119172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118892119167_)))
                              (_hd118891119170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118892119167_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118891119170_))
                              (let ((_e118895119175_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118891119170_))))
                                (let ((_tl118893119180_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118895119175_)))
                                      (_hd118894119178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118895119175_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118894119178_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118894119178_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118893119180_))
                                              (let ((_e118898119183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118893119180_))))
                                                (let ((_tl118896119188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118898119183_)))
                                                      (_hd118897119186_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118898119183_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118896119188_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118890119172_))
                                                          (let ((_e118901119191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118890119172_))))
                    (let ((_tl118899119196_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118901119191_)))
                          (_hd118900119194_
                           (let ()
                             (declare (not safe))
                             (##car _e118901119191_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118900119194_))
                          (let ((_e118904119199_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118900119194_))))
                            (let ((_tl118902119204_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118904119199_)))
                                  (_hd118903119202_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118904119199_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118903119202_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118903119202_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118902119204_))
                                          (let ((_e118907119207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118902119204_))))
                                            (let ((_tl118905119212_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118907119207_)))
                                                  (_hd118906119210_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118907119207_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118905119212_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118899119196_))
                                                      (let ((_e118910119215_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118899119196_))))
                (let ((_tl118908119220_
                       (let () (declare (not safe)) (##cdr _e118910119215_)))
                      (_hd118909119218_
                       (let () (declare (not safe)) (##car _e118910119215_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118909119218_))
                      (let ((_e118913119223_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118909119218_))))
                        (let ((_tl118911119228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118913119223_)))
                              (_hd118912119226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118913119223_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118912119226_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118912119226_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118911119228_))
                                      (let ((_e118916119231_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118911119228_))))
                                        (let ((_tl118914119236_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118916119231_)))
                                              (_hd118915119234_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118916119231_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118914119236_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118908119220_))
                                                  (let ((_e118919119239_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118908119220_))))
                                                    (let ((_tl118917119244_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118919119239_)))
                                                          (_hd118918119242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118919119239_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118918119242_))
                                                          (let ((_e118922119247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118918119242_))))
                    (let ((_tl118920119252_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118922119247_)))
                          (_hd118921119250_
                           (let ()
                             (declare (not safe))
                             (##car _e118922119247_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118921119250_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118921119250_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118920119252_))
                                  (let ((_e118925119255_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118920119252_))))
                                    (let ((_tl118923119260_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118925119255_)))
                                          (_hd118924119258_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118925119255_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118923119260_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118917119244_))
                                              (___match119685119686_
                                               _e118880119135_
                                               _hd118879119138_
                                               _tl118878119140_
                                               _e118883119143_
                                               _hd118882119146_
                                               _tl118881119148_
                                               _e118886119151_
                                               _hd118885119154_
                                               _tl118884119156_
                                               _e118889119159_
                                               _hd118888119162_
                                               _tl118887119164_
                                               _e118892119167_
                                               _hd118891119170_
                                               _tl118890119172_
                                               _e118895119175_
                                               _hd118894119178_
                                               _tl118893119180_
                                               _e118898119183_
                                               _hd118897119186_
                                               _tl118896119188_
                                               _e118901119191_
                                               _hd118900119194_
                                               _tl118899119196_
                                               _e118904119199_
                                               _hd118903119202_
                                               _tl118902119204_
                                               _e118907119207_
                                               _hd118906119210_
                                               _tl118905119212_
                                               _e118910119215_
                                               _hd118909119218_
                                               _tl118908119220_
                                               _e118913119223_
                                               _hd118912119226_
                                               _tl118911119228_
                                               _e118916119231_
                                               _hd118915119234_
                                               _tl118914119236_
                                               _e118919119239_
                                               _hd118918119242_
                                               _tl118917119244_
                                               _e118922119247_
                                               _hd118921119250_
                                               _tl118920119252_
                                               _e118925119255_
                                               _hd118924119258_
                                               _tl118923119260_)
                                              (___kont119556119557_))
                                          (___kont119556119557_))))
                                  (___kont119556119557_))
                              (___kont119556119557_))
                          (___kont119556119557_))))
                  (___kont119556119557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118908119220_))
                                                      (if (let ((__tmp119838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119838 'bind-method!))
                  (let ((_L119089_ _hd118915119234_)
                        (_L119090_ _hd118906119210_)
                        (_L119091_ _hd118897119186_)
                        (_L119092_ _hd118888119162_))
                    (___kont119554119555_
                     _L119089_
                     _L119090_
                     _L119091_
                     _L119092_))
                  (___kont119556119557_))
              (___kont119556119557_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119556119557_))))
                                      (___kont119556119557_))
                                  (___kont119556119557_))
                              (___kont119556119557_))))
                      (___kont119556119557_))))
              (___kont119556119557_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119556119557_))))
                                          (___kont119556119557_))
                                      (___kont119556119557_))
                                  (___kont119556119557_))))
                          (___kont119556119557_))))
                  (___kont119556119557_))
              (___kont119556119557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119556119557_))
                                          (___kont119556119557_))
                                      (___kont119556119557_))))
                              (___kont119556119557_))))
                      (___kont119556119557_))
                  (___kont119556119557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119556119557_))
                                              (___kont119556119557_))
                                          (___kont119556119557_))))
                                  (___kont119556119557_))))
                          (___kont119556119557_))))
                  (___kont119556119557_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118814_ _stx118815_)
        (let* ((_g118817118830_
                (lambda (_g118818118827_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118818118827_))))
               (_g118816118863_
                (lambda (_g118818118833_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118818118833_))
                      (let ((_e118822118835_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118818118833_))))
                        (let ((_hd118821118838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118822118835_)))
                              (_tl118820118840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118822118835_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118820118840_))
                              (let ((_e118825118843_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118820118840_))))
                                (let ((_hd118824118846_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118825118843_)))
                                      (_tl118823118848_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118825118843_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118823118848_))
                                      ((lambda (_L118851_)
                                         (if (let ((__tmp119842
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118814_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118851_
                                                __tmp119842))
                                             (let ((__tmp119839
                                                    (let ((__tmp119840
                                                           (let ((__tmp119841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118814_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119841 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119839
                                                _stx118815_))
                                             _stx118815_))
                                       _hd118824118846_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118817118830_ _g118818118833_)))))
                              (let ()
                                (declare (not safe))
                                (_g118817118830_ _g118818118833_)))))
                      (let ()
                        (declare (not safe))
                        (_g118817118830_ _g118818118833_))))))
          (declare (not safe))
          (_g118816118863_ _stx118815_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118755_ _stx118756_)
        (let* ((_g118758118771_
                (lambda (_g118759118768_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118759118768_))))
               (_g118757118811_
                (lambda (_g118759118774_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118759118774_))
                      (let ((_e118763118776_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118759118774_))))
                        (let ((_hd118762118779_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118763118776_)))
                              (_tl118761118781_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118763118776_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118761118781_))
                              (let ((_e118766118784_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118761118781_))))
                                (let ((_hd118765118787_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118766118784_)))
                                      (_tl118764118789_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118766118784_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118764118789_))
                                      ((lambda (_L118792_)
                                         (let ((_$e118806_
                                                (let ((__tmp119844
                                                       (lambda (_sub118804_)
                                                         (let ((__tmp119845
                                                                (car _sub118804_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118792_
                                                            __tmp119845))))
                                                      (__tmp119843
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118755_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119844
                                                        __tmp119843))))
                                           (if _$e118806_
                                               ((lambda (_sub118809_)
                                                  (let ((__tmp119846
                                                         (let ((__tmp119847
                                                                (let ((__tmp119848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118809_)))
                          (declare (not safe))
                          (cons __tmp119848 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119846
                                                     _stx118756_)))
                                                _$e118806_)
                                               _stx118756_)))
                                       _hd118765118787_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118758118771_ _g118759118774_)))))
                              (let ()
                                (declare (not safe))
                                (_g118758118771_ _g118759118774_)))))
                      (let ()
                        (declare (not safe))
                        (_g118758118771_ _g118759118774_))))))
          (declare (not safe))
          (_g118757118811_ _stx118756_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118684_ _stx118685_)
        (let* ((_g118687118704_
                (lambda (_g118688118701_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118688118701_))))
               (_g118686118752_
                (lambda (_g118688118707_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118688118707_))
                      (let ((_e118693118709_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118688118707_))))
                        (let ((_hd118692118712_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118693118709_)))
                              (_tl118691118714_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118693118709_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118691118714_))
                              (let ((_e118696118717_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118691118714_))))
                                (let ((_hd118695118720_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118696118717_)))
                                      (_tl118694118722_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118696118717_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118694118722_))
                                      (let ((_e118699118725_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118694118722_))))
                                        (let ((_hd118698118728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118699118725_)))
                                              (_tl118697118730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118699118725_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118697118730_))
                                              ((lambda (_L118733_ _L118734_)
                                                 (let ((_new-expr118749_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118684_
                                                           _L118733_)))
                                                       (_new-xid118750_
                                                        (if (let ((__tmp119849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118684_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118734_ __tmp119849))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118684_ 'new-id))
                    _L118734_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119850
                                                          (let ((__tmp119851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119852
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118749_ '()))))
                           (declare (not safe))
                           (cons _new-xid118750_ __tmp119852))))
                    (declare (not safe))
                    (cons '%#set! __tmp119851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119850
                                                      _stx118685_))))
                                               _hd118698118728_
                                               _hd118695118720_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118687118704_
                                                 _g118688118707_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118687118704_ _g118688118707_)))))
                              (let ()
                                (declare (not safe))
                                (_g118687118704_ _g118688118707_)))))
                      (let ()
                        (declare (not safe))
                        (_g118687118704_ _g118688118707_))))))
          (declare (not safe))
          (_g118686118752_ _stx118685_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118608_ _stx118609_)
        (let* ((_g118611118628_
                (lambda (_g118612118625_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118612118625_))))
               (_g118610118681_
                (lambda (_g118612118631_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118612118631_))
                      (let ((_e118617118633_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118612118631_))))
                        (let ((_hd118616118636_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118617118633_)))
                              (_tl118615118638_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118617118633_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118615118638_))
                              (let ((_e118620118641_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118615118638_))))
                                (let ((_hd118619118644_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118620118641_)))
                                      (_tl118618118646_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118620118641_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118618118646_))
                                      (let ((_e118623118649_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118618118646_))))
                                        (let ((_hd118622118652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118623118649_)))
                                              (_tl118621118654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118623118649_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118621118654_))
                                              ((lambda (_L118657_ _L118658_)
                                                 (let ((_new-expr118678_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118608_
                                                           _L118657_)))
                                                       (_new-xid118679_
                                                        (let ((_$e118675_
                                                               (let ((__tmp119854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118673_)
                                (let ((__tmp119855 (car _sub118673_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118658_
                                   __tmp119855))))
                             (__tmp119853
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118608_ 'subst))))
                         (declare (not safe))
                         (find __tmp119854 __tmp119853))))
                  (if _$e118675_ (cdr _$e118675_) _L118658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119856
                                                          (let ((__tmp119857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119858
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118678_ '()))))
                           (declare (not safe))
                           (cons _new-xid118679_ __tmp119858))))
                    (declare (not safe))
                    (cons '%#set! __tmp119857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119856
                                                      _stx118609_))))
                                               _hd118622118652_
                                               _hd118619118644_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118611118628_
                                                 _g118612118631_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118611118628_ _g118612118631_)))))
                              (let ()
                                (declare (not safe))
                                (_g118611118628_ _g118612118631_)))))
                      (let ()
                        (declare (not safe))
                        (_g118611118628_ _g118612118631_))))))
          (declare (not safe))
          (_g118610118681_ _stx118609_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118554_ _stx118555_)
        (let* ((_g118557118570_
                (lambda (_g118558118567_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118558118567_))))
               (_g118556118605_
                (lambda (_g118558118573_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118558118573_))
                      (let ((_e118562118575_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118558118573_))))
                        (let ((_hd118561118578_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118562118575_)))
                              (_tl118560118580_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118562118575_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118560118580_))
                              (let ((_e118565118583_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118560118580_))))
                                (let ((_hd118564118586_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118565118583_)))
                                      (_tl118563118588_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118565118583_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118563118588_))
                                      ((lambda (_L118591_)
                                         (let* ((_eid118603_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118591_)))
                                                (__tmp119859
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118554_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119859
                                            _eid118603_
                                            1+
                                            '0)))
                                       _hd118564118586_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118557118570_ _g118558118573_)))))
                              (let ()
                                (declare (not safe))
                                (_g118557118570_ _g118558118573_)))))
                      (let ()
                        (declare (not safe))
                        (_g118557118570_ _g118558118573_))))))
          (declare (not safe))
          (_g118556118605_ _stx118555_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118484_ _stx118485_)
        (let* ((_g118487118504_
                (lambda (_g118488118501_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118488118501_))))
               (_g118486118551_
                (lambda (_g118488118507_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118488118507_))
                      (let ((_e118493118509_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118488118507_))))
                        (let ((_hd118492118512_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118493118509_)))
                              (_tl118491118514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118493118509_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118491118514_))
                              (let ((_e118496118517_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118491118514_))))
                                (let ((_hd118495118520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118496118517_)))
                                      (_tl118494118522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118496118517_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118494118522_))
                                      (let ((_e118499118525_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118494118522_))))
                                        (let ((_hd118498118528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118499118525_)))
                                              (_tl118497118530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118499118525_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118497118530_))
                                              ((lambda (_L118533_ _L118534_)
                                                 (let ((_eid118549_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118534_))))
                                                   (let ((__tmp119860
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118484_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119860
                                                      _eid118549_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118484_
                                                      _L118533_))))
                                               _hd118498118528_
                                               _hd118495118520_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118487118504_
                                                 _g118488118507_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118487118504_ _g118488118507_)))))
                              (let ()
                                (declare (not safe))
                                (_g118487118504_ _g118488118507_)))))
                      (let ()
                        (declare (not safe))
                        (_g118487118504_ _g118488118507_))))))
          (declare (not safe))
          (_g118486118551_ _stx118485_))))
    (define gxc#find-body%
      (lambda (_self118397_ _stx118398_)
        (let* ((_g118400118419_
                (lambda (_g118401118416_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118401118416_))))
               (_g118399118481_
                (lambda (_g118401118422_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118401118422_))
                      (let ((_e118405118424_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118401118422_))))
                        (let ((_hd118404118427_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118405118424_)))
                              (_tl118403118429_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118405118424_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118403118429_))
                              (let ((_g119861_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118403118429_
                                        '0))))
                                (begin
                                  (let ((_g119862_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119861_)
                                               (##vector-length _g119861_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119862_ 2)))
                                        (error "Context expects 2 values"
                                               _g119862_)))
                                  (let ((_target118406118432_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119861_ 0)))
                                        (_tl118408118434_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119861_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118408118434_))
                                        (letrec ((_loop118409118437_
                                                  (lambda (_hd118407118440_
                                                           _expr118413118442_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118407118440_))
                                                        (let ((_e118410118445_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118407118440_))))
                  (let ((_lp-hd118411118448_
                         (let () (declare (not safe)) (##car _e118410118445_)))
                        (_lp-tl118412118450_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118410118445_))))
                    (let ((__tmp119866
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118411118448_ _expr118413118442_))))
                      (declare (not safe))
                      (_loop118409118437_ _lp-tl118412118450_ __tmp119866))))
                (let ((_expr118414118453_ (reverse _expr118413118442_)))
                  ((lambda (_L118456_)
                     (let ((__tmp119865
                            (lambda (_g118469118471_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118397_
                                 _g118469118471_))))
                           (__tmp119863
                            (let ((__tmp119864
                                   (lambda (_g118473118476_ _g118474118478_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118473118476_
                                             _g118474118478_)))))
                              (declare (not safe))
                              (foldr1 __tmp119864 '() _L118456_))))
                       (declare (not safe))
                       (ormap1 __tmp119865 __tmp119863)))
                   _expr118414118453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118409118437_
                                             _target118406118432_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118400118419_
                                           _g118401118422_))))))
                              (let ()
                                (declare (not safe))
                                (_g118400118419_ _g118401118422_)))))
                      (let ()
                        (declare (not safe))
                        (_g118400118419_ _g118401118422_))))))
          (declare (not safe))
          (_g118399118481_ _stx118398_))))
    (define gxc#find-let-values%
      (lambda (_self118247_ _stx118248_)
        (let* ((_g118250118285_
                (lambda (_g118251118282_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118251118282_))))
               (_g118249118394_
                (lambda (_g118251118288_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118251118288_))
                      (let ((_e118257118290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118251118288_))))
                        (let ((_hd118256118293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118257118290_)))
                              (_tl118255118295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118257118290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118255118295_))
                              (let ((_e118260118298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118255118295_))))
                                (let ((_hd118259118301_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118260118298_)))
                                      (_tl118258118303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118260118298_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd118259118301_))
                                      (let ((_g119867_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd118259118301_
                                                '0))))
                                        (begin
                                          (let ((_g119868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119867_)
                                                       (##vector-length
                                                        _g119867_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119868_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119868_)))
                                          (let ((_target118261118306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119867_ 0)))
                                                (_tl118263118308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119867_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118263118308_))
                                                (letrec ((_loop118264118311_
                                                          (lambda (_hd118262118314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr118268118316_
                           _bind118269118318_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118262118314_))
                        (let ((_e118265118321_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118262118314_))))
                          (let ((_lp-hd118266118324_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118265118321_)))
                                (_lp-tl118267118326_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118265118321_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd118266118324_))
                                (let ((_e118274118329_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd118266118324_))))
                                  (let ((_hd118273118332_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118274118329_)))
                                        (_tl118272118334_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118274118329_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118272118334_))
                                        (let ((_e118277118337_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118272118334_))))
                                          (let ((_hd118276118340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118277118337_)))
                                                (_tl118275118342_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118277118337_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118275118342_))
                                                (let ((__tmp119873
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118276118340_
                                                               _expr118268118316_)))
                                                      (__tmp119872
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118273118332_
                                                               _bind118269118318_))))
                                                  (declare (not safe))
                                                  (_loop118264118311_
                                                   _lp-tl118267118326_
                                                   __tmp119873
                                                   __tmp119872))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118250118285_
                                                   _g118251118288_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g118250118285_ _g118251118288_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g118250118285_ _g118251118288_)))))
                        (let ((_expr118270118345_ (reverse _expr118268118316_))
                              (_bind118271118347_
                               (reverse _bind118269118318_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118258118303_))
                              (let ((_e118280118350_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118258118303_))))
                                (let ((_hd118279118353_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118280118350_)))
                                      (_tl118278118355_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118280118350_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118278118355_))
                                      ((lambda (_L118358_ _L118359_ _L118360_)
                                         (let ((_$e118391_
                                                (let ((__tmp119871
                                                       (lambda (_g118379118381_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self118247_
                                                            _g118379118381_))))
                                                      (__tmp119869
                                                       (let ((__tmp119870
                                                              (lambda (_g118383118386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118384118388_)
                        (let ()
                          (declare (not safe))
                          (cons _g118383118386_ _g118384118388_)))))
                 (declare (not safe))
                 (foldr1 __tmp119870 '() _L118359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119871
                                                          __tmp119869))))
                                           (if _$e118391_
                                               _$e118391_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self118247_
                                                  _L118358_)))))
                                       _hd118279118353_
                                       _expr118270118345_
                                       _bind118271118347_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118250118285_ _g118251118288_)))))
                              (let ()
                                (declare (not safe))
                                (_g118250118285_ _g118251118288_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop118264118311_
                                                     _target118261118306_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118250118285_
                                                   _g118251118288_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118250118285_ _g118251118288_)))))
                              (let ()
                                (declare (not safe))
                                (_g118250118285_ _g118251118288_)))))
                      (let ()
                        (declare (not safe))
                        (_g118250118285_ _g118251118288_))))))
          (declare (not safe))
          (_g118249118394_ _stx118248_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self118191_ _stx118192_)
        (let* ((_g118194118207_
                (lambda (_g118195118204_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118195118204_))))
               (_g118193118244_
                (lambda (_g118195118210_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118195118210_))
                      (let ((_e118199118212_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118195118210_))))
                        (let ((_hd118198118215_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118199118212_)))
                              (_tl118197118217_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118199118212_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118197118217_))
                              (let ((_e118202118220_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118197118217_))))
                                (let ((_hd118201118223_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118202118220_)))
                                      (_tl118200118225_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118202118220_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118200118225_))
                                      ((lambda (_L118228_)
                                         (let ((__tmp119875
                                                (lambda (_g118239118241_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L118228_
                                                     _g118239118241_))))
                                               (__tmp119874
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self118191_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119875 __tmp119874)))
                                       _hd118201118223_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118194118207_ _g118195118210_)))))
                              (let ()
                                (declare (not safe))
                                (_g118194118207_ _g118195118210_)))))
                      (let ()
                        (declare (not safe))
                        (_g118194118207_ _g118195118210_))))))
          (declare (not safe))
          (_g118193118244_ _stx118192_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self118116_ _stx118117_)
        (let* ((_g118119118136_
                (lambda (_g118120118133_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118120118133_))))
               (_g118118118188_
                (lambda (_g118120118139_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118120118139_))
                      (let ((_e118125118141_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118120118139_))))
                        (let ((_hd118124118144_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118125118141_)))
                              (_tl118123118146_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118125118141_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118123118146_))
                              (let ((_e118128118149_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118123118146_))))
                                (let ((_hd118127118152_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118128118149_)))
                                      (_tl118126118154_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118128118149_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118126118154_))
                                      (let ((_e118131118157_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118126118154_))))
                                        (let ((_hd118130118160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118131118157_)))
                                              (_tl118129118162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118131118157_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118129118162_))
                                              ((lambda (_L118165_ _L118166_)
                                                 (let ((_$e118185_
                                                        (let ((__tmp119877
                                                               (lambda (_g118180118182_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L118166_ _g118180118182_))))
                      (__tmp119876
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self118116_ 'ids))))
                  (declare (not safe))
                  (find __tmp119877 __tmp119876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e118185_
                                                       _$e118185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self118116_
                                                          _L118165_)))))
                                               _hd118130118160_
                                               _hd118127118152_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118119118136_
                                                 _g118120118139_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118119118136_ _g118120118139_)))))
                              (let ()
                                (declare (not safe))
                                (_g118119118136_ _g118120118139_)))))
                      (let ()
                        (declare (not safe))
                        (_g118119118136_ _g118120118139_))))))
          (declare (not safe))
          (_g118118118188_ _stx118117_))))))
