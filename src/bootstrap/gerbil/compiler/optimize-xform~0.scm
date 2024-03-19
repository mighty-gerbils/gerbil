(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710833425)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119817 (list gxc#::void::t))
            (__tmp119815
             (let ((__tmp119816
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119816 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119817
         '()
         __tmp119815
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119556_
        (apply make-instance gxc#::collect-mutators::t _$args119556_)))
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
      (lambda (_stx119548_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119551_
                (let ((__obj119803
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119803))
               (__tmp119818
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119551_ _stx119548_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119818
           gxc#current-compile-method
           _self119551_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119821 (list gxc#::void::t))
            (__tmp119819
             (let ((__tmp119820
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119820 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119821
         '()
         __tmp119819
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119545_
        (apply make-instance gxc#::collect-methods::t _$args119545_)))
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
      (lambda (_stx119537_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119540_
                (let ((__obj119805
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119805))
               (__tmp119822
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119540_ _stx119537_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119822
           gxc#current-compile-method
           _self119540_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119825 (list gxc#::basic-xform-expression::t))
            (__tmp119823
             (let ((__tmp119824
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119824 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119825
         '(id new-id)
         __tmp119823
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119534_
        (apply make-instance gxc#::expression-subst::t _$args119534_)))
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
      (lambda (_g119826_ _id119500119504_ _new-id119501119506_ _stx119508_)
        (let* ((_id119511_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119500119504_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119500119504_))
               (_new-id119513_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119501119506_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119501119506_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119515_
                  (let ((__obj119807
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119807
                       _id119511_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119807
                       _new-id119513_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119807))
                 (__tmp119827
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119515_ _stx119508_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119827
             gxc#current-compile-method
             _self119515_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119499119522_ . _args119524_)
        (apply gxc#apply-expression-subst__%
               _keys119499119522_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119499119522_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119499119522_ 'new-id: absent-value))
               _args119524_)))
    (define gxc#apply-expression-subst
      (lambda _args119502119530_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119502119530_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119830 (list gxc#::basic-xform-expression::t))
            (__tmp119828
             (let ((__tmp119829
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119829 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119830
         '(subst)
         __tmp119828
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119495_
        (apply make-instance gxc#::expression-subst*::t _$args119495_)))
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
      (lambda (_g119831_ _subst119466119469_ _stx119471_)
        (let ((_subst119474_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119466119469_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119466119469_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119476_
                  (let ((__obj119809
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119809
                       _subst119474_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119809))
                 (__tmp119832
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119476_ _stx119471_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119832
             gxc#current-compile-method
             _self119476_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119465119483_ . _args119485_)
        (apply gxc#apply-expression-subst*__%
               _keys119465119483_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119465119483_ 'subst: absent-value))
               _args119485_)))
    (define gxc#apply-expression-subst*
      (lambda _args119467119491_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119467119491_)))
    (define gxc#::find-expression::t
      (let ((__tmp119833 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119833
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119461_
        (apply make-instance gxc#::find-expression::t _$args119461_)))
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
      (let ((__tmp119836 (list gxc#::find-expression::t))
            (__tmp119834
             (let ((__tmp119835
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119835 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119836
         '(ids)
         __tmp119834
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119457_
        (apply make-instance gxc#::find-var-refs::t _$args119457_)))
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
      (lambda (_g119837_ _ids119428119431_ _stx119433_)
        (let ((_ids119436_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119428119431_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119428119431_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119438_
                  (let ((__obj119812
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119812
                       _ids119436_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119812))
                 (__tmp119838
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119438_ _stx119433_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119838
             gxc#current-compile-method
             _self119438_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119427119445_ . _args119447_)
        (apply gxc#apply-find-var-refs__%
               _keys119427119445_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119427119445_ 'ids: absent-value))
               _args119447_)))
    (define gxc#apply-find-var-refs
      (lambda _args119429119453_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119429119453_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119841 (list gxc#::collect-expression-refs::t))
            (__tmp119839
             (let ((__tmp119840
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119840 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119841
         '()
         __tmp119839
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119423_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119423_)))
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
      (lambda (_g119842_ _table119394119397_ _stx119399_)
        (let ((_table119402_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119394119397_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119394119397_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119404_
                  (let ((__obj119814
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119814
                       _table119402_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119814))
                 (__tmp119843
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119404_ _stx119399_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119843
             gxc#current-compile-method
             _self119404_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119393119411_ . _args119413_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119393119411_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119393119411_ 'table: absent-value))
               _args119413_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119395119419_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119395119419_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self119322_ _stx119323_)
        (let* ((_g119325119342_
                (lambda (_g119326119339_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119326119339_))))
               (_g119324119389_
                (lambda (_g119326119345_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119326119345_))
                      (let ((_e119331119347_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119326119345_))))
                        (let ((_hd119330119350_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119331119347_)))
                              (_tl119329119352_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119331119347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119329119352_))
                              (let ((_e119334119355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119329119352_))))
                                (let ((_hd119333119358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119334119355_)))
                                      (_tl119332119360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119334119355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119332119360_))
                                      (let ((_e119337119363_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119332119360_))))
                                        (let ((_hd119336119366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119337119363_)))
                                              (_tl119335119368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119337119363_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119335119368_))
                                              ((lambda (_L119371_ _L119372_)
                                                 (let ((_sym119387_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119372_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119387_))
                                                   (let ((__tmp119844
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119844
                                                      _sym119387_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self119322_
                                                      _L119371_))))
                                               _hd119336119366_
                                               _hd119333119358_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119325119342_
                                                 _g119326119345_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119325119342_ _g119326119345_)))))
                              (let ()
                                (declare (not safe))
                                (_g119325119342_ _g119326119345_)))))
                      (let ()
                        (declare (not safe))
                        (_g119325119342_ _g119326119345_))))))
          (declare (not safe))
          (_g119324119389_ _stx119323_))))
    (define gxc#collect-methods-call%
      (lambda (_self118875_ _stx118876_)
        (let* ((___stx119559119560_ _stx118876_)
               (_g118880118982_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119559119560_)))))
          (let ((___kont119561119562_
                 (lambda (_L119272_ _L119273_ _L119274_ _L119275_ _L119276_)
                   (let ((__tmp119845
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119273_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119845))))
                (___kont119563119564_
                 (lambda (_L119098_ _L119099_ _L119100_ _L119101_)
                   (let ((__tmp119846
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119098_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119846))))
                (___kont119565119566_ (lambda () '#!void)))
            (let ((___match119694119695_
                   (lambda (_e118889119144_
                            _hd118888119147_
                            _tl118887119149_
                            _e118892119152_
                            _hd118891119155_
                            _tl118890119157_
                            _e118895119160_
                            _hd118894119163_
                            _tl118893119165_
                            _e118898119168_
                            _hd118897119171_
                            _tl118896119173_
                            _e118901119176_
                            _hd118900119179_
                            _tl118899119181_
                            _e118904119184_
                            _hd118903119187_
                            _tl118902119189_
                            _e118907119192_
                            _hd118906119195_
                            _tl118905119197_
                            _e118910119200_
                            _hd118909119203_
                            _tl118908119205_
                            _e118913119208_
                            _hd118912119211_
                            _tl118911119213_
                            _e118916119216_
                            _hd118915119219_
                            _tl118914119221_
                            _e118919119224_
                            _hd118918119227_
                            _tl118917119229_
                            _e118922119232_
                            _hd118921119235_
                            _tl118920119237_
                            _e118925119240_
                            _hd118924119243_
                            _tl118923119245_
                            _e118928119248_
                            _hd118927119251_
                            _tl118926119253_
                            _e118931119256_
                            _hd118930119259_
                            _tl118929119261_
                            _e118934119264_
                            _hd118933119267_
                            _tl118932119269_)
                     (let ((_L119272_ _hd118933119267_)
                           (_L119273_ _hd118924119243_)
                           (_L119274_ _hd118915119219_)
                           (_L119275_ _hd118906119195_)
                           (_L119276_ _hd118897119171_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L119276_
                              'bind-method!))
                           (___kont119561119562_
                            _L119272_
                            _L119273_
                            _L119274_
                            _L119275_
                            _L119276_)
                           (___kont119565119566_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119559119560_))
                  (let ((_e118889119144_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119559119560_))))
                    (let ((_tl118887119149_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118889119144_)))
                          (_hd118888119147_
                           (let ()
                             (declare (not safe))
                             (##car _e118889119144_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118887119149_))
                          (let ((_e118892119152_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118887119149_))))
                            (let ((_tl118890119157_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118892119152_)))
                                  (_hd118891119155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118892119152_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118891119155_))
                                  (let ((_e118895119160_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118891119155_))))
                                    (let ((_tl118893119165_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118895119160_)))
                                          (_hd118894119163_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118895119160_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118894119163_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118894119163_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118893119165_))
                                                  (let ((_e118898119168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118893119165_))))
                                                    (let ((_tl118896119173_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118898119168_)))
                                                          (_hd118897119171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118898119168_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118896119173_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118890119157_))
                      (let ((_e118901119176_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118890119157_))))
                        (let ((_tl118899119181_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118901119176_)))
                              (_hd118900119179_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118901119176_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118900119179_))
                              (let ((_e118904119184_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118900119179_))))
                                (let ((_tl118902119189_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118904119184_)))
                                      (_hd118903119187_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118904119184_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118903119187_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118903119187_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118902119189_))
                                              (let ((_e118907119192_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118902119189_))))
                                                (let ((_tl118905119197_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118907119192_)))
                                                      (_hd118906119195_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118907119192_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118905119197_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118899119181_))
                                                          (let ((_e118910119200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118899119181_))))
                    (let ((_tl118908119205_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118910119200_)))
                          (_hd118909119203_
                           (let ()
                             (declare (not safe))
                             (##car _e118910119200_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118909119203_))
                          (let ((_e118913119208_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118909119203_))))
                            (let ((_tl118911119213_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118913119208_)))
                                  (_hd118912119211_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118913119208_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118912119211_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118912119211_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118911119213_))
                                          (let ((_e118916119216_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118911119213_))))
                                            (let ((_tl118914119221_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118916119216_)))
                                                  (_hd118915119219_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118916119216_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118914119221_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118908119205_))
                                                      (let ((_e118919119224_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118908119205_))))
                (let ((_tl118917119229_
                       (let () (declare (not safe)) (##cdr _e118919119224_)))
                      (_hd118918119227_
                       (let () (declare (not safe)) (##car _e118919119224_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118918119227_))
                      (let ((_e118922119232_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118918119227_))))
                        (let ((_tl118920119237_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118922119232_)))
                              (_hd118921119235_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118922119232_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118921119235_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118921119235_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118920119237_))
                                      (let ((_e118925119240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118920119237_))))
                                        (let ((_tl118923119245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118925119240_)))
                                              (_hd118924119243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118925119240_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118923119245_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118917119229_))
                                                  (let ((_e118928119248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118917119229_))))
                                                    (let ((_tl118926119253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118928119248_)))
                                                          (_hd118927119251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118928119248_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118927119251_))
                                                          (let ((_e118931119256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118927119251_))))
                    (let ((_tl118929119261_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118931119256_)))
                          (_hd118930119259_
                           (let ()
                             (declare (not safe))
                             (##car _e118931119256_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118930119259_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118930119259_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118929119261_))
                                  (let ((_e118934119264_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118929119261_))))
                                    (let ((_tl118932119269_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118934119264_)))
                                          (_hd118933119267_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118934119264_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118932119269_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118926119253_))
                                              (___match119694119695_
                                               _e118889119144_
                                               _hd118888119147_
                                               _tl118887119149_
                                               _e118892119152_
                                               _hd118891119155_
                                               _tl118890119157_
                                               _e118895119160_
                                               _hd118894119163_
                                               _tl118893119165_
                                               _e118898119168_
                                               _hd118897119171_
                                               _tl118896119173_
                                               _e118901119176_
                                               _hd118900119179_
                                               _tl118899119181_
                                               _e118904119184_
                                               _hd118903119187_
                                               _tl118902119189_
                                               _e118907119192_
                                               _hd118906119195_
                                               _tl118905119197_
                                               _e118910119200_
                                               _hd118909119203_
                                               _tl118908119205_
                                               _e118913119208_
                                               _hd118912119211_
                                               _tl118911119213_
                                               _e118916119216_
                                               _hd118915119219_
                                               _tl118914119221_
                                               _e118919119224_
                                               _hd118918119227_
                                               _tl118917119229_
                                               _e118922119232_
                                               _hd118921119235_
                                               _tl118920119237_
                                               _e118925119240_
                                               _hd118924119243_
                                               _tl118923119245_
                                               _e118928119248_
                                               _hd118927119251_
                                               _tl118926119253_
                                               _e118931119256_
                                               _hd118930119259_
                                               _tl118929119261_
                                               _e118934119264_
                                               _hd118933119267_
                                               _tl118932119269_)
                                              (___kont119565119566_))
                                          (___kont119565119566_))))
                                  (___kont119565119566_))
                              (___kont119565119566_))
                          (___kont119565119566_))))
                  (___kont119565119566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118917119229_))
                                                      (if (let ((__tmp119847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119847 'bind-method!))
                  (let ((_L119098_ _hd118924119243_)
                        (_L119099_ _hd118915119219_)
                        (_L119100_ _hd118906119195_)
                        (_L119101_ _hd118897119171_))
                    (___kont119563119564_
                     _L119098_
                     _L119099_
                     _L119100_
                     _L119101_))
                  (___kont119565119566_))
              (___kont119565119566_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119565119566_))))
                                      (___kont119565119566_))
                                  (___kont119565119566_))
                              (___kont119565119566_))))
                      (___kont119565119566_))))
              (___kont119565119566_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119565119566_))))
                                          (___kont119565119566_))
                                      (___kont119565119566_))
                                  (___kont119565119566_))))
                          (___kont119565119566_))))
                  (___kont119565119566_))
              (___kont119565119566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119565119566_))
                                          (___kont119565119566_))
                                      (___kont119565119566_))))
                              (___kont119565119566_))))
                      (___kont119565119566_))
                  (___kont119565119566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119565119566_))
                                              (___kont119565119566_))
                                          (___kont119565119566_))))
                                  (___kont119565119566_))))
                          (___kont119565119566_))))
                  (___kont119565119566_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118823_ _stx118824_)
        (let* ((_g118826118839_
                (lambda (_g118827118836_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118827118836_))))
               (_g118825118872_
                (lambda (_g118827118842_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118827118842_))
                      (let ((_e118831118844_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118827118842_))))
                        (let ((_hd118830118847_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118831118844_)))
                              (_tl118829118849_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118831118844_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118829118849_))
                              (let ((_e118834118852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118829118849_))))
                                (let ((_hd118833118855_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118834118852_)))
                                      (_tl118832118857_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118834118852_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118832118857_))
                                      ((lambda (_L118860_)
                                         (if (let ((__tmp119851
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118823_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118860_
                                                __tmp119851))
                                             (let ((__tmp119848
                                                    (let ((__tmp119849
                                                           (let ((__tmp119850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118823_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119850 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119848
                                                _stx118824_))
                                             _stx118824_))
                                       _hd118833118855_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118826118839_ _g118827118842_)))))
                              (let ()
                                (declare (not safe))
                                (_g118826118839_ _g118827118842_)))))
                      (let ()
                        (declare (not safe))
                        (_g118826118839_ _g118827118842_))))))
          (declare (not safe))
          (_g118825118872_ _stx118824_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118764_ _stx118765_)
        (let* ((_g118767118780_
                (lambda (_g118768118777_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118768118777_))))
               (_g118766118820_
                (lambda (_g118768118783_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118768118783_))
                      (let ((_e118772118785_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118768118783_))))
                        (let ((_hd118771118788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118772118785_)))
                              (_tl118770118790_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118772118785_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118770118790_))
                              (let ((_e118775118793_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118770118790_))))
                                (let ((_hd118774118796_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118775118793_)))
                                      (_tl118773118798_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118775118793_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118773118798_))
                                      ((lambda (_L118801_)
                                         (let ((_$e118815_
                                                (let ((__tmp119853
                                                       (lambda (_sub118813_)
                                                         (let ((__tmp119854
                                                                (car _sub118813_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118801_
                                                            __tmp119854))))
                                                      (__tmp119852
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118764_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119853
                                                        __tmp119852))))
                                           (if _$e118815_
                                               ((lambda (_sub118818_)
                                                  (let ((__tmp119855
                                                         (let ((__tmp119856
                                                                (let ((__tmp119857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118818_)))
                          (declare (not safe))
                          (cons __tmp119857 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119855
                                                     _stx118765_)))
                                                _$e118815_)
                                               _stx118765_)))
                                       _hd118774118796_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118767118780_ _g118768118783_)))))
                              (let ()
                                (declare (not safe))
                                (_g118767118780_ _g118768118783_)))))
                      (let ()
                        (declare (not safe))
                        (_g118767118780_ _g118768118783_))))))
          (declare (not safe))
          (_g118766118820_ _stx118765_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118693_ _stx118694_)
        (let* ((_g118696118713_
                (lambda (_g118697118710_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118697118710_))))
               (_g118695118761_
                (lambda (_g118697118716_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118697118716_))
                      (let ((_e118702118718_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118697118716_))))
                        (let ((_hd118701118721_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118702118718_)))
                              (_tl118700118723_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118702118718_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118700118723_))
                              (let ((_e118705118726_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118700118723_))))
                                (let ((_hd118704118729_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118705118726_)))
                                      (_tl118703118731_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118705118726_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118703118731_))
                                      (let ((_e118708118734_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118703118731_))))
                                        (let ((_hd118707118737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118708118734_)))
                                              (_tl118706118739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118708118734_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118706118739_))
                                              ((lambda (_L118742_ _L118743_)
                                                 (let ((_new-expr118758_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118693_
                                                           _L118742_)))
                                                       (_new-xid118759_
                                                        (if (let ((__tmp119858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118693_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118743_ __tmp119858))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118693_ 'new-id))
                    _L118743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119859
                                                          (let ((__tmp119860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119861
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118758_ '()))))
                           (declare (not safe))
                           (cons _new-xid118759_ __tmp119861))))
                    (declare (not safe))
                    (cons '%#set! __tmp119860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119859
                                                      _stx118694_))))
                                               _hd118707118737_
                                               _hd118704118729_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118696118713_
                                                 _g118697118716_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118696118713_ _g118697118716_)))))
                              (let ()
                                (declare (not safe))
                                (_g118696118713_ _g118697118716_)))))
                      (let ()
                        (declare (not safe))
                        (_g118696118713_ _g118697118716_))))))
          (declare (not safe))
          (_g118695118761_ _stx118694_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118617_ _stx118618_)
        (let* ((_g118620118637_
                (lambda (_g118621118634_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118621118634_))))
               (_g118619118690_
                (lambda (_g118621118640_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118621118640_))
                      (let ((_e118626118642_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118621118640_))))
                        (let ((_hd118625118645_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118626118642_)))
                              (_tl118624118647_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118626118642_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118624118647_))
                              (let ((_e118629118650_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118624118647_))))
                                (let ((_hd118628118653_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118629118650_)))
                                      (_tl118627118655_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118629118650_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118627118655_))
                                      (let ((_e118632118658_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118627118655_))))
                                        (let ((_hd118631118661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118632118658_)))
                                              (_tl118630118663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118632118658_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118630118663_))
                                              ((lambda (_L118666_ _L118667_)
                                                 (let ((_new-expr118687_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118617_
                                                           _L118666_)))
                                                       (_new-xid118688_
                                                        (let ((_$e118684_
                                                               (let ((__tmp119863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118682_)
                                (let ((__tmp119864 (car _sub118682_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118667_
                                   __tmp119864))))
                             (__tmp119862
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118617_ 'subst))))
                         (declare (not safe))
                         (find __tmp119863 __tmp119862))))
                  (if _$e118684_ (cdr _$e118684_) _L118667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119865
                                                          (let ((__tmp119866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119867
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118687_ '()))))
                           (declare (not safe))
                           (cons _new-xid118688_ __tmp119867))))
                    (declare (not safe))
                    (cons '%#set! __tmp119866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119865
                                                      _stx118618_))))
                                               _hd118631118661_
                                               _hd118628118653_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118620118637_
                                                 _g118621118640_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118620118637_ _g118621118640_)))))
                              (let ()
                                (declare (not safe))
                                (_g118620118637_ _g118621118640_)))))
                      (let ()
                        (declare (not safe))
                        (_g118620118637_ _g118621118640_))))))
          (declare (not safe))
          (_g118619118690_ _stx118618_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118563_ _stx118564_)
        (let* ((_g118566118579_
                (lambda (_g118567118576_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118567118576_))))
               (_g118565118614_
                (lambda (_g118567118582_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118567118582_))
                      (let ((_e118571118584_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118567118582_))))
                        (let ((_hd118570118587_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118571118584_)))
                              (_tl118569118589_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118571118584_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118569118589_))
                              (let ((_e118574118592_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118569118589_))))
                                (let ((_hd118573118595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118574118592_)))
                                      (_tl118572118597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118574118592_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118572118597_))
                                      ((lambda (_L118600_)
                                         (let* ((_eid118612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118600_)))
                                                (__tmp119868
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118563_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119868
                                            _eid118612_
                                            1+
                                            '0)))
                                       _hd118573118595_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118566118579_ _g118567118582_)))))
                              (let ()
                                (declare (not safe))
                                (_g118566118579_ _g118567118582_)))))
                      (let ()
                        (declare (not safe))
                        (_g118566118579_ _g118567118582_))))))
          (declare (not safe))
          (_g118565118614_ _stx118564_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118493_ _stx118494_)
        (let* ((_g118496118513_
                (lambda (_g118497118510_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118497118510_))))
               (_g118495118560_
                (lambda (_g118497118516_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118497118516_))
                      (let ((_e118502118518_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118497118516_))))
                        (let ((_hd118501118521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118502118518_)))
                              (_tl118500118523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118502118518_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118500118523_))
                              (let ((_e118505118526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118500118523_))))
                                (let ((_hd118504118529_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118505118526_)))
                                      (_tl118503118531_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118505118526_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118503118531_))
                                      (let ((_e118508118534_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118503118531_))))
                                        (let ((_hd118507118537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118508118534_)))
                                              (_tl118506118539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118508118534_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118506118539_))
                                              ((lambda (_L118542_ _L118543_)
                                                 (let ((_eid118558_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118543_))))
                                                   (let ((__tmp119869
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118493_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119869
                                                      _eid118558_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118493_
                                                      _L118542_))))
                                               _hd118507118537_
                                               _hd118504118529_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118496118513_
                                                 _g118497118516_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118496118513_ _g118497118516_)))))
                              (let ()
                                (declare (not safe))
                                (_g118496118513_ _g118497118516_)))))
                      (let ()
                        (declare (not safe))
                        (_g118496118513_ _g118497118516_))))))
          (declare (not safe))
          (_g118495118560_ _stx118494_))))
    (define gxc#find-body%
      (lambda (_self118406_ _stx118407_)
        (let* ((_g118409118428_
                (lambda (_g118410118425_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118410118425_))))
               (_g118408118490_
                (lambda (_g118410118431_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118410118431_))
                      (let ((_e118414118433_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118410118431_))))
                        (let ((_hd118413118436_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118414118433_)))
                              (_tl118412118438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118414118433_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118412118438_))
                              (let ((_g119870_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118412118438_
                                        '0))))
                                (begin
                                  (let ((_g119871_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119870_)
                                               (##vector-length _g119870_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119871_ 2)))
                                        (error "Context expects 2 values"
                                               _g119871_)))
                                  (let ((_target118415118441_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119870_ 0)))
                                        (_tl118417118443_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119870_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118417118443_))
                                        (letrec ((_loop118418118446_
                                                  (lambda (_hd118416118449_
                                                           _expr118422118451_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118416118449_))
                                                        (let ((_e118419118454_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118416118449_))))
                  (let ((_lp-hd118420118457_
                         (let () (declare (not safe)) (##car _e118419118454_)))
                        (_lp-tl118421118459_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118419118454_))))
                    (let ((__tmp119875
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118420118457_ _expr118422118451_))))
                      (declare (not safe))
                      (_loop118418118446_ _lp-tl118421118459_ __tmp119875))))
                (let ((_expr118423118462_ (reverse _expr118422118451_)))
                  ((lambda (_L118465_)
                     (let ((__tmp119874
                            (lambda (_g118478118480_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118406_
                                 _g118478118480_))))
                           (__tmp119872
                            (let ((__tmp119873
                                   (lambda (_g118482118485_ _g118483118487_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118482118485_
                                             _g118483118487_)))))
                              (declare (not safe))
                              (foldr1 __tmp119873 '() _L118465_))))
                       (declare (not safe))
                       (ormap1 __tmp119874 __tmp119872)))
                   _expr118423118462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118418118446_
                                             _target118415118441_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118409118428_
                                           _g118410118431_))))))
                              (let ()
                                (declare (not safe))
                                (_g118409118428_ _g118410118431_)))))
                      (let ()
                        (declare (not safe))
                        (_g118409118428_ _g118410118431_))))))
          (declare (not safe))
          (_g118408118490_ _stx118407_))))
    (define gxc#find-let-values%
      (lambda (_self118256_ _stx118257_)
        (let* ((_g118259118294_
                (lambda (_g118260118291_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118260118291_))))
               (_g118258118403_
                (lambda (_g118260118297_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118260118297_))
                      (let ((_e118266118299_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118260118297_))))
                        (let ((_hd118265118302_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118266118299_)))
                              (_tl118264118304_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118266118299_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118264118304_))
                              (let ((_e118269118307_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118264118304_))))
                                (let ((_hd118268118310_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118269118307_)))
                                      (_tl118267118312_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118269118307_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd118268118310_))
                                      (let ((_g119876_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd118268118310_
                                                '0))))
                                        (begin
                                          (let ((_g119877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119876_)
                                                       (##vector-length
                                                        _g119876_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119877_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119877_)))
                                          (let ((_target118270118315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119876_ 0)))
                                                (_tl118272118317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119876_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118272118317_))
                                                (letrec ((_loop118273118320_
                                                          (lambda (_hd118271118323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr118277118325_
                           _bind118278118327_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118271118323_))
                        (let ((_e118274118330_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118271118323_))))
                          (let ((_lp-hd118275118333_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118274118330_)))
                                (_lp-tl118276118335_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118274118330_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd118275118333_))
                                (let ((_e118283118338_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd118275118333_))))
                                  (let ((_hd118282118341_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118283118338_)))
                                        (_tl118281118343_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118283118338_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118281118343_))
                                        (let ((_e118286118346_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118281118343_))))
                                          (let ((_hd118285118349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118286118346_)))
                                                (_tl118284118351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118286118346_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118284118351_))
                                                (let ((__tmp119882
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118285118349_
                                                               _expr118277118325_)))
                                                      (__tmp119881
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118282118341_
                                                               _bind118278118327_))))
                                                  (declare (not safe))
                                                  (_loop118273118320_
                                                   _lp-tl118276118335_
                                                   __tmp119882
                                                   __tmp119881))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118259118294_
                                                   _g118260118297_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g118259118294_ _g118260118297_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g118259118294_ _g118260118297_)))))
                        (let ((_expr118279118354_ (reverse _expr118277118325_))
                              (_bind118280118356_
                               (reverse _bind118278118327_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118267118312_))
                              (let ((_e118289118359_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118267118312_))))
                                (let ((_hd118288118362_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118289118359_)))
                                      (_tl118287118364_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118289118359_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118287118364_))
                                      ((lambda (_L118367_ _L118368_ _L118369_)
                                         (let ((_$e118400_
                                                (let ((__tmp119880
                                                       (lambda (_g118388118390_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self118256_
                                                            _g118388118390_))))
                                                      (__tmp119878
                                                       (let ((__tmp119879
                                                              (lambda (_g118392118395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118393118397_)
                        (let ()
                          (declare (not safe))
                          (cons _g118392118395_ _g118393118397_)))))
                 (declare (not safe))
                 (foldr1 __tmp119879 '() _L118368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119880
                                                          __tmp119878))))
                                           (if _$e118400_
                                               _$e118400_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self118256_
                                                  _L118367_)))))
                                       _hd118288118362_
                                       _expr118279118354_
                                       _bind118280118356_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118259118294_ _g118260118297_)))))
                              (let ()
                                (declare (not safe))
                                (_g118259118294_ _g118260118297_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop118273118320_
                                                     _target118270118315_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118259118294_
                                                   _g118260118297_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118259118294_ _g118260118297_)))))
                              (let ()
                                (declare (not safe))
                                (_g118259118294_ _g118260118297_)))))
                      (let ()
                        (declare (not safe))
                        (_g118259118294_ _g118260118297_))))))
          (declare (not safe))
          (_g118258118403_ _stx118257_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self118200_ _stx118201_)
        (let* ((_g118203118216_
                (lambda (_g118204118213_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118204118213_))))
               (_g118202118253_
                (lambda (_g118204118219_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118204118219_))
                      (let ((_e118208118221_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118204118219_))))
                        (let ((_hd118207118224_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118208118221_)))
                              (_tl118206118226_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118208118221_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118206118226_))
                              (let ((_e118211118229_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118206118226_))))
                                (let ((_hd118210118232_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118211118229_)))
                                      (_tl118209118234_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118211118229_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118209118234_))
                                      ((lambda (_L118237_)
                                         (let ((__tmp119884
                                                (lambda (_g118248118250_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L118237_
                                                     _g118248118250_))))
                                               (__tmp119883
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self118200_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119884 __tmp119883)))
                                       _hd118210118232_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118203118216_ _g118204118219_)))))
                              (let ()
                                (declare (not safe))
                                (_g118203118216_ _g118204118219_)))))
                      (let ()
                        (declare (not safe))
                        (_g118203118216_ _g118204118219_))))))
          (declare (not safe))
          (_g118202118253_ _stx118201_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self118125_ _stx118126_)
        (let* ((_g118128118145_
                (lambda (_g118129118142_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118129118142_))))
               (_g118127118197_
                (lambda (_g118129118148_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118129118148_))
                      (let ((_e118134118150_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118129118148_))))
                        (let ((_hd118133118153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118134118150_)))
                              (_tl118132118155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118134118150_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118132118155_))
                              (let ((_e118137118158_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118132118155_))))
                                (let ((_hd118136118161_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118137118158_)))
                                      (_tl118135118163_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118137118158_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118135118163_))
                                      (let ((_e118140118166_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118135118163_))))
                                        (let ((_hd118139118169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118140118166_)))
                                              (_tl118138118171_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118140118166_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118138118171_))
                                              ((lambda (_L118174_ _L118175_)
                                                 (let ((_$e118194_
                                                        (let ((__tmp119886
                                                               (lambda (_g118189118191_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L118175_ _g118189118191_))))
                      (__tmp119885
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self118125_ 'ids))))
                  (declare (not safe))
                  (find __tmp119886 __tmp119885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e118194_
                                                       _$e118194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self118125_
                                                          _L118174_)))))
                                               _hd118139118169_
                                               _hd118136118161_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118128118145_
                                                 _g118129118148_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118128118145_ _g118129118148_)))))
                              (let ()
                                (declare (not safe))
                                (_g118128118145_ _g118129118148_)))))
                      (let ()
                        (declare (not safe))
                        (_g118128118145_ _g118129118148_))))))
          (declare (not safe))
          (_g118127118197_ _stx118126_))))))
