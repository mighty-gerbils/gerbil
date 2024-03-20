(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710943026)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119818 (list gxc#::void::t))
            (__tmp119816
             (let ((__tmp119817
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119817 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119818
         '()
         __tmp119816
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119557_
        (apply make-instance gxc#::collect-mutators::t _$args119557_)))
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
      (lambda (_stx119549_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119552_
                (let ((__obj119804
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119804))
               (__tmp119819
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119552_ _stx119549_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119819
           gxc#current-compile-method
           _self119552_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119822 (list gxc#::void::t))
            (__tmp119820
             (let ((__tmp119821
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119821 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119822
         '()
         __tmp119820
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119546_
        (apply make-instance gxc#::collect-methods::t _$args119546_)))
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
      (lambda (_stx119538_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119541_
                (let ((__obj119806
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119806))
               (__tmp119823
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119541_ _stx119538_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119823
           gxc#current-compile-method
           _self119541_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119826 (list gxc#::basic-xform-expression::t))
            (__tmp119824
             (let ((__tmp119825
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119825 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119826
         '(id new-id)
         __tmp119824
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119535_
        (apply make-instance gxc#::expression-subst::t _$args119535_)))
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
      (lambda (_g119827_ _id119501119505_ _new-id119502119507_ _stx119509_)
        (let* ((_id119512_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119501119505_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119501119505_))
               (_new-id119514_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119502119507_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119502119507_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119516_
                  (let ((__obj119808
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119808
                       _id119512_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119808
                       _new-id119514_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119808))
                 (__tmp119828
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119516_ _stx119509_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119828
             gxc#current-compile-method
             _self119516_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119500119523_ . _args119525_)
        (apply gxc#apply-expression-subst__%
               _keys119500119523_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119500119523_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119500119523_ 'new-id: absent-value))
               _args119525_)))
    (define gxc#apply-expression-subst
      (lambda _args119503119531_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119503119531_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119831 (list gxc#::basic-xform-expression::t))
            (__tmp119829
             (let ((__tmp119830
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119830 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119831
         '(subst)
         __tmp119829
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119496_
        (apply make-instance gxc#::expression-subst*::t _$args119496_)))
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
      (lambda (_g119832_ _subst119467119470_ _stx119472_)
        (let ((_subst119475_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119467119470_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119467119470_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119477_
                  (let ((__obj119810
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119810
                       _subst119475_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119810))
                 (__tmp119833
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119477_ _stx119472_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119833
             gxc#current-compile-method
             _self119477_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119466119484_ . _args119486_)
        (apply gxc#apply-expression-subst*__%
               _keys119466119484_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119466119484_ 'subst: absent-value))
               _args119486_)))
    (define gxc#apply-expression-subst*
      (lambda _args119468119492_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119468119492_)))
    (define gxc#::find-expression::t
      (let ((__tmp119834 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119834
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119462_
        (apply make-instance gxc#::find-expression::t _$args119462_)))
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
      (let ((__tmp119837 (list gxc#::find-expression::t))
            (__tmp119835
             (let ((__tmp119836
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119836 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119837
         '(ids)
         __tmp119835
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119458_
        (apply make-instance gxc#::find-var-refs::t _$args119458_)))
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
      (lambda (_g119838_ _ids119429119432_ _stx119434_)
        (let ((_ids119437_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119429119432_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119429119432_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119439_
                  (let ((__obj119813
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119813
                       _ids119437_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119813))
                 (__tmp119839
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119439_ _stx119434_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119839
             gxc#current-compile-method
             _self119439_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119428119446_ . _args119448_)
        (apply gxc#apply-find-var-refs__%
               _keys119428119446_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119428119446_ 'ids: absent-value))
               _args119448_)))
    (define gxc#apply-find-var-refs
      (lambda _args119430119454_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119430119454_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119842 (list gxc#::collect-expression-refs::t))
            (__tmp119840
             (let ((__tmp119841
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119841 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119842
         '()
         __tmp119840
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119424_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119424_)))
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
      (lambda (_g119843_ _table119395119398_ _stx119400_)
        (let ((_table119403_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119395119398_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119395119398_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119405_
                  (let ((__obj119815
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119815
                       _table119403_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119815))
                 (__tmp119844
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119405_ _stx119400_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119844
             gxc#current-compile-method
             _self119405_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119394119412_ . _args119414_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119394119412_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119394119412_ 'table: absent-value))
               _args119414_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119396119420_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119396119420_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self119323_ _stx119324_)
        (let* ((_g119326119343_
                (lambda (_g119327119340_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119327119340_))))
               (_g119325119390_
                (lambda (_g119327119346_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119327119346_))
                      (let ((_e119332119348_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119327119346_))))
                        (let ((_hd119331119351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119332119348_)))
                              (_tl119330119353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119332119348_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119330119353_))
                              (let ((_e119335119356_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119330119353_))))
                                (let ((_hd119334119359_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119335119356_)))
                                      (_tl119333119361_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119335119356_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119333119361_))
                                      (let ((_e119338119364_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119333119361_))))
                                        (let ((_hd119337119367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119338119364_)))
                                              (_tl119336119369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119338119364_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119336119369_))
                                              ((lambda (_L119372_ _L119373_)
                                                 (let ((_sym119388_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119373_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119388_))
                                                   (let ((__tmp119845
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119845
                                                      _sym119388_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self119323_
                                                      _L119372_))))
                                               _hd119337119367_
                                               _hd119334119359_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119326119343_
                                                 _g119327119346_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119326119343_ _g119327119346_)))))
                              (let ()
                                (declare (not safe))
                                (_g119326119343_ _g119327119346_)))))
                      (let ()
                        (declare (not safe))
                        (_g119326119343_ _g119327119346_))))))
          (declare (not safe))
          (_g119325119390_ _stx119324_))))
    (define gxc#collect-methods-call%
      (lambda (_self118876_ _stx118877_)
        (let* ((___stx119560119561_ _stx118877_)
               (_g118881118983_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119560119561_)))))
          (let ((___kont119562119563_
                 (lambda (_L119273_ _L119274_ _L119275_ _L119276_ _L119277_)
                   (let ((__tmp119846
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119274_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119846))))
                (___kont119564119565_
                 (lambda (_L119099_ _L119100_ _L119101_ _L119102_)
                   (let ((__tmp119847
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119099_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119847))))
                (___kont119566119567_ (lambda () '#!void)))
            (let ((___match119695119696_
                   (lambda (_e118890119145_
                            _hd118889119148_
                            _tl118888119150_
                            _e118893119153_
                            _hd118892119156_
                            _tl118891119158_
                            _e118896119161_
                            _hd118895119164_
                            _tl118894119166_
                            _e118899119169_
                            _hd118898119172_
                            _tl118897119174_
                            _e118902119177_
                            _hd118901119180_
                            _tl118900119182_
                            _e118905119185_
                            _hd118904119188_
                            _tl118903119190_
                            _e118908119193_
                            _hd118907119196_
                            _tl118906119198_
                            _e118911119201_
                            _hd118910119204_
                            _tl118909119206_
                            _e118914119209_
                            _hd118913119212_
                            _tl118912119214_
                            _e118917119217_
                            _hd118916119220_
                            _tl118915119222_
                            _e118920119225_
                            _hd118919119228_
                            _tl118918119230_
                            _e118923119233_
                            _hd118922119236_
                            _tl118921119238_
                            _e118926119241_
                            _hd118925119244_
                            _tl118924119246_
                            _e118929119249_
                            _hd118928119252_
                            _tl118927119254_
                            _e118932119257_
                            _hd118931119260_
                            _tl118930119262_
                            _e118935119265_
                            _hd118934119268_
                            _tl118933119270_)
                     (let ((_L119273_ _hd118934119268_)
                           (_L119274_ _hd118925119244_)
                           (_L119275_ _hd118916119220_)
                           (_L119276_ _hd118907119196_)
                           (_L119277_ _hd118898119172_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L119277_
                              'bind-method!))
                           (___kont119562119563_
                            _L119273_
                            _L119274_
                            _L119275_
                            _L119276_
                            _L119277_)
                           (___kont119566119567_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119560119561_))
                  (let ((_e118890119145_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119560119561_))))
                    (let ((_tl118888119150_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118890119145_)))
                          (_hd118889119148_
                           (let ()
                             (declare (not safe))
                             (##car _e118890119145_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118888119150_))
                          (let ((_e118893119153_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118888119150_))))
                            (let ((_tl118891119158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118893119153_)))
                                  (_hd118892119156_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118893119153_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118892119156_))
                                  (let ((_e118896119161_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118892119156_))))
                                    (let ((_tl118894119166_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118896119161_)))
                                          (_hd118895119164_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118896119161_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118895119164_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118895119164_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118894119166_))
                                                  (let ((_e118899119169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118894119166_))))
                                                    (let ((_tl118897119174_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118899119169_)))
                                                          (_hd118898119172_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118899119169_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118897119174_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118891119158_))
                      (let ((_e118902119177_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118891119158_))))
                        (let ((_tl118900119182_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118902119177_)))
                              (_hd118901119180_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118902119177_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118901119180_))
                              (let ((_e118905119185_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118901119180_))))
                                (let ((_tl118903119190_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118905119185_)))
                                      (_hd118904119188_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118905119185_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118904119188_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118904119188_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118903119190_))
                                              (let ((_e118908119193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118903119190_))))
                                                (let ((_tl118906119198_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118908119193_)))
                                                      (_hd118907119196_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118908119193_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118906119198_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118900119182_))
                                                          (let ((_e118911119201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118900119182_))))
                    (let ((_tl118909119206_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118911119201_)))
                          (_hd118910119204_
                           (let ()
                             (declare (not safe))
                             (##car _e118911119201_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118910119204_))
                          (let ((_e118914119209_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118910119204_))))
                            (let ((_tl118912119214_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118914119209_)))
                                  (_hd118913119212_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118914119209_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118913119212_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118913119212_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118912119214_))
                                          (let ((_e118917119217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118912119214_))))
                                            (let ((_tl118915119222_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118917119217_)))
                                                  (_hd118916119220_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118917119217_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118915119222_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118909119206_))
                                                      (let ((_e118920119225_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118909119206_))))
                (let ((_tl118918119230_
                       (let () (declare (not safe)) (##cdr _e118920119225_)))
                      (_hd118919119228_
                       (let () (declare (not safe)) (##car _e118920119225_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118919119228_))
                      (let ((_e118923119233_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118919119228_))))
                        (let ((_tl118921119238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118923119233_)))
                              (_hd118922119236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118923119233_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118922119236_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118922119236_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118921119238_))
                                      (let ((_e118926119241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118921119238_))))
                                        (let ((_tl118924119246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118926119241_)))
                                              (_hd118925119244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118926119241_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118924119246_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118918119230_))
                                                  (let ((_e118929119249_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118918119230_))))
                                                    (let ((_tl118927119254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118929119249_)))
                                                          (_hd118928119252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118929119249_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118928119252_))
                                                          (let ((_e118932119257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118928119252_))))
                    (let ((_tl118930119262_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118932119257_)))
                          (_hd118931119260_
                           (let ()
                             (declare (not safe))
                             (##car _e118932119257_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118931119260_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118931119260_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118930119262_))
                                  (let ((_e118935119265_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118930119262_))))
                                    (let ((_tl118933119270_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118935119265_)))
                                          (_hd118934119268_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118935119265_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118933119270_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118927119254_))
                                              (___match119695119696_
                                               _e118890119145_
                                               _hd118889119148_
                                               _tl118888119150_
                                               _e118893119153_
                                               _hd118892119156_
                                               _tl118891119158_
                                               _e118896119161_
                                               _hd118895119164_
                                               _tl118894119166_
                                               _e118899119169_
                                               _hd118898119172_
                                               _tl118897119174_
                                               _e118902119177_
                                               _hd118901119180_
                                               _tl118900119182_
                                               _e118905119185_
                                               _hd118904119188_
                                               _tl118903119190_
                                               _e118908119193_
                                               _hd118907119196_
                                               _tl118906119198_
                                               _e118911119201_
                                               _hd118910119204_
                                               _tl118909119206_
                                               _e118914119209_
                                               _hd118913119212_
                                               _tl118912119214_
                                               _e118917119217_
                                               _hd118916119220_
                                               _tl118915119222_
                                               _e118920119225_
                                               _hd118919119228_
                                               _tl118918119230_
                                               _e118923119233_
                                               _hd118922119236_
                                               _tl118921119238_
                                               _e118926119241_
                                               _hd118925119244_
                                               _tl118924119246_
                                               _e118929119249_
                                               _hd118928119252_
                                               _tl118927119254_
                                               _e118932119257_
                                               _hd118931119260_
                                               _tl118930119262_
                                               _e118935119265_
                                               _hd118934119268_
                                               _tl118933119270_)
                                              (___kont119566119567_))
                                          (___kont119566119567_))))
                                  (___kont119566119567_))
                              (___kont119566119567_))
                          (___kont119566119567_))))
                  (___kont119566119567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118918119230_))
                                                      (if (let ((__tmp119848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119848 'bind-method!))
                  (let ((_L119099_ _hd118925119244_)
                        (_L119100_ _hd118916119220_)
                        (_L119101_ _hd118907119196_)
                        (_L119102_ _hd118898119172_))
                    (___kont119564119565_
                     _L119099_
                     _L119100_
                     _L119101_
                     _L119102_))
                  (___kont119566119567_))
              (___kont119566119567_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119566119567_))))
                                      (___kont119566119567_))
                                  (___kont119566119567_))
                              (___kont119566119567_))))
                      (___kont119566119567_))))
              (___kont119566119567_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119566119567_))))
                                          (___kont119566119567_))
                                      (___kont119566119567_))
                                  (___kont119566119567_))))
                          (___kont119566119567_))))
                  (___kont119566119567_))
              (___kont119566119567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119566119567_))
                                          (___kont119566119567_))
                                      (___kont119566119567_))))
                              (___kont119566119567_))))
                      (___kont119566119567_))
                  (___kont119566119567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119566119567_))
                                              (___kont119566119567_))
                                          (___kont119566119567_))))
                                  (___kont119566119567_))))
                          (___kont119566119567_))))
                  (___kont119566119567_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118824_ _stx118825_)
        (let* ((_g118827118840_
                (lambda (_g118828118837_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118828118837_))))
               (_g118826118873_
                (lambda (_g118828118843_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118828118843_))
                      (let ((_e118832118845_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118828118843_))))
                        (let ((_hd118831118848_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118832118845_)))
                              (_tl118830118850_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118832118845_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118830118850_))
                              (let ((_e118835118853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118830118850_))))
                                (let ((_hd118834118856_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118835118853_)))
                                      (_tl118833118858_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118835118853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118833118858_))
                                      ((lambda (_L118861_)
                                         (if (let ((__tmp119852
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118824_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118861_
                                                __tmp119852))
                                             (let ((__tmp119849
                                                    (let ((__tmp119850
                                                           (let ((__tmp119851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118824_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119851 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119849
                                                _stx118825_))
                                             _stx118825_))
                                       _hd118834118856_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118827118840_ _g118828118843_)))))
                              (let ()
                                (declare (not safe))
                                (_g118827118840_ _g118828118843_)))))
                      (let ()
                        (declare (not safe))
                        (_g118827118840_ _g118828118843_))))))
          (declare (not safe))
          (_g118826118873_ _stx118825_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118765_ _stx118766_)
        (let* ((_g118768118781_
                (lambda (_g118769118778_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118769118778_))))
               (_g118767118821_
                (lambda (_g118769118784_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118769118784_))
                      (let ((_e118773118786_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118769118784_))))
                        (let ((_hd118772118789_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118773118786_)))
                              (_tl118771118791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118773118786_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118771118791_))
                              (let ((_e118776118794_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118771118791_))))
                                (let ((_hd118775118797_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118776118794_)))
                                      (_tl118774118799_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118776118794_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118774118799_))
                                      ((lambda (_L118802_)
                                         (let ((_$e118816_
                                                (let ((__tmp119854
                                                       (lambda (_sub118814_)
                                                         (let ((__tmp119855
                                                                (car _sub118814_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118802_
                                                            __tmp119855))))
                                                      (__tmp119853
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118765_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119854
                                                        __tmp119853))))
                                           (if _$e118816_
                                               ((lambda (_sub118819_)
                                                  (let ((__tmp119856
                                                         (let ((__tmp119857
                                                                (let ((__tmp119858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118819_)))
                          (declare (not safe))
                          (cons __tmp119858 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119856
                                                     _stx118766_)))
                                                _$e118816_)
                                               _stx118766_)))
                                       _hd118775118797_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118768118781_ _g118769118784_)))))
                              (let ()
                                (declare (not safe))
                                (_g118768118781_ _g118769118784_)))))
                      (let ()
                        (declare (not safe))
                        (_g118768118781_ _g118769118784_))))))
          (declare (not safe))
          (_g118767118821_ _stx118766_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118694_ _stx118695_)
        (let* ((_g118697118714_
                (lambda (_g118698118711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118698118711_))))
               (_g118696118762_
                (lambda (_g118698118717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118698118717_))
                      (let ((_e118703118719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118698118717_))))
                        (let ((_hd118702118722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118703118719_)))
                              (_tl118701118724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118703118719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118701118724_))
                              (let ((_e118706118727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118701118724_))))
                                (let ((_hd118705118730_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118706118727_)))
                                      (_tl118704118732_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118706118727_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118704118732_))
                                      (let ((_e118709118735_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118704118732_))))
                                        (let ((_hd118708118738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118709118735_)))
                                              (_tl118707118740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118709118735_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118707118740_))
                                              ((lambda (_L118743_ _L118744_)
                                                 (let ((_new-expr118759_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118694_
                                                           _L118743_)))
                                                       (_new-xid118760_
                                                        (if (let ((__tmp119859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118694_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118744_ __tmp119859))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118694_ 'new-id))
                    _L118744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119860
                                                          (let ((__tmp119861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119862
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118759_ '()))))
                           (declare (not safe))
                           (cons _new-xid118760_ __tmp119862))))
                    (declare (not safe))
                    (cons '%#set! __tmp119861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119860
                                                      _stx118695_))))
                                               _hd118708118738_
                                               _hd118705118730_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118697118714_
                                                 _g118698118717_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118697118714_ _g118698118717_)))))
                              (let ()
                                (declare (not safe))
                                (_g118697118714_ _g118698118717_)))))
                      (let ()
                        (declare (not safe))
                        (_g118697118714_ _g118698118717_))))))
          (declare (not safe))
          (_g118696118762_ _stx118695_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118618_ _stx118619_)
        (let* ((_g118621118638_
                (lambda (_g118622118635_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118622118635_))))
               (_g118620118691_
                (lambda (_g118622118641_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118622118641_))
                      (let ((_e118627118643_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118622118641_))))
                        (let ((_hd118626118646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118627118643_)))
                              (_tl118625118648_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118627118643_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118625118648_))
                              (let ((_e118630118651_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118625118648_))))
                                (let ((_hd118629118654_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118630118651_)))
                                      (_tl118628118656_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118630118651_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118628118656_))
                                      (let ((_e118633118659_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118628118656_))))
                                        (let ((_hd118632118662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118633118659_)))
                                              (_tl118631118664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118633118659_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118631118664_))
                                              ((lambda (_L118667_ _L118668_)
                                                 (let ((_new-expr118688_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118618_
                                                           _L118667_)))
                                                       (_new-xid118689_
                                                        (let ((_$e118685_
                                                               (let ((__tmp119864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118683_)
                                (let ((__tmp119865 (car _sub118683_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118668_
                                   __tmp119865))))
                             (__tmp119863
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118618_ 'subst))))
                         (declare (not safe))
                         (find __tmp119864 __tmp119863))))
                  (if _$e118685_ (cdr _$e118685_) _L118668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119866
                                                          (let ((__tmp119867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119868
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118688_ '()))))
                           (declare (not safe))
                           (cons _new-xid118689_ __tmp119868))))
                    (declare (not safe))
                    (cons '%#set! __tmp119867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119866
                                                      _stx118619_))))
                                               _hd118632118662_
                                               _hd118629118654_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118621118638_
                                                 _g118622118641_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118621118638_ _g118622118641_)))))
                              (let ()
                                (declare (not safe))
                                (_g118621118638_ _g118622118641_)))))
                      (let ()
                        (declare (not safe))
                        (_g118621118638_ _g118622118641_))))))
          (declare (not safe))
          (_g118620118691_ _stx118619_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118564_ _stx118565_)
        (let* ((_g118567118580_
                (lambda (_g118568118577_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118568118577_))))
               (_g118566118615_
                (lambda (_g118568118583_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118568118583_))
                      (let ((_e118572118585_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118568118583_))))
                        (let ((_hd118571118588_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118572118585_)))
                              (_tl118570118590_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118572118585_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118570118590_))
                              (let ((_e118575118593_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118570118590_))))
                                (let ((_hd118574118596_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118575118593_)))
                                      (_tl118573118598_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118575118593_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118573118598_))
                                      ((lambda (_L118601_)
                                         (let* ((_eid118613_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118601_)))
                                                (__tmp119869
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118564_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119869
                                            _eid118613_
                                            1+
                                            '0)))
                                       _hd118574118596_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118567118580_ _g118568118583_)))))
                              (let ()
                                (declare (not safe))
                                (_g118567118580_ _g118568118583_)))))
                      (let ()
                        (declare (not safe))
                        (_g118567118580_ _g118568118583_))))))
          (declare (not safe))
          (_g118566118615_ _stx118565_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118494_ _stx118495_)
        (let* ((_g118497118514_
                (lambda (_g118498118511_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118498118511_))))
               (_g118496118561_
                (lambda (_g118498118517_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118498118517_))
                      (let ((_e118503118519_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118498118517_))))
                        (let ((_hd118502118522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118503118519_)))
                              (_tl118501118524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118503118519_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118501118524_))
                              (let ((_e118506118527_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118501118524_))))
                                (let ((_hd118505118530_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118506118527_)))
                                      (_tl118504118532_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118506118527_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118504118532_))
                                      (let ((_e118509118535_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118504118532_))))
                                        (let ((_hd118508118538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118509118535_)))
                                              (_tl118507118540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118509118535_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118507118540_))
                                              ((lambda (_L118543_ _L118544_)
                                                 (let ((_eid118559_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118544_))))
                                                   (let ((__tmp119870
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118494_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119870
                                                      _eid118559_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118494_
                                                      _L118543_))))
                                               _hd118508118538_
                                               _hd118505118530_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118497118514_
                                                 _g118498118517_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118497118514_ _g118498118517_)))))
                              (let ()
                                (declare (not safe))
                                (_g118497118514_ _g118498118517_)))))
                      (let ()
                        (declare (not safe))
                        (_g118497118514_ _g118498118517_))))))
          (declare (not safe))
          (_g118496118561_ _stx118495_))))
    (define gxc#find-body%
      (lambda (_self118407_ _stx118408_)
        (let* ((_g118410118429_
                (lambda (_g118411118426_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118411118426_))))
               (_g118409118491_
                (lambda (_g118411118432_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118411118432_))
                      (let ((_e118415118434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118411118432_))))
                        (let ((_hd118414118437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118415118434_)))
                              (_tl118413118439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118415118434_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118413118439_))
                              (let ((_g119871_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118413118439_
                                        '0))))
                                (begin
                                  (let ((_g119872_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119871_)
                                               (##vector-length _g119871_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119872_ 2)))
                                        (error "Context expects 2 values"
                                               _g119872_)))
                                  (let ((_target118416118442_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119871_ 0)))
                                        (_tl118418118444_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119871_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118418118444_))
                                        (letrec ((_loop118419118447_
                                                  (lambda (_hd118417118450_
                                                           _expr118423118452_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118417118450_))
                                                        (let ((_e118420118455_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118417118450_))))
                  (let ((_lp-hd118421118458_
                         (let () (declare (not safe)) (##car _e118420118455_)))
                        (_lp-tl118422118460_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118420118455_))))
                    (let ((__tmp119876
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118421118458_ _expr118423118452_))))
                      (declare (not safe))
                      (_loop118419118447_ _lp-tl118422118460_ __tmp119876))))
                (let ((_expr118424118463_ (reverse _expr118423118452_)))
                  ((lambda (_L118466_)
                     (let ((__tmp119875
                            (lambda (_g118479118481_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118407_
                                 _g118479118481_))))
                           (__tmp119873
                            (let ((__tmp119874
                                   (lambda (_g118483118486_ _g118484118488_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118483118486_
                                             _g118484118488_)))))
                              (declare (not safe))
                              (foldr1 __tmp119874 '() _L118466_))))
                       (declare (not safe))
                       (ormap1 __tmp119875 __tmp119873)))
                   _expr118424118463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118419118447_
                                             _target118416118442_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118410118429_
                                           _g118411118432_))))))
                              (let ()
                                (declare (not safe))
                                (_g118410118429_ _g118411118432_)))))
                      (let ()
                        (declare (not safe))
                        (_g118410118429_ _g118411118432_))))))
          (declare (not safe))
          (_g118409118491_ _stx118408_))))
    (define gxc#find-let-values%
      (lambda (_self118257_ _stx118258_)
        (let* ((_g118260118295_
                (lambda (_g118261118292_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118261118292_))))
               (_g118259118404_
                (lambda (_g118261118298_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118261118298_))
                      (let ((_e118267118300_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118261118298_))))
                        (let ((_hd118266118303_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118267118300_)))
                              (_tl118265118305_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118267118300_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118265118305_))
                              (let ((_e118270118308_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118265118305_))))
                                (let ((_hd118269118311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118270118308_)))
                                      (_tl118268118313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118270118308_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd118269118311_))
                                      (let ((_g119877_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd118269118311_
                                                '0))))
                                        (begin
                                          (let ((_g119878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119877_)
                                                       (##vector-length
                                                        _g119877_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119878_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119878_)))
                                          (let ((_target118271118316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119877_ 0)))
                                                (_tl118273118318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119877_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118273118318_))
                                                (letrec ((_loop118274118321_
                                                          (lambda (_hd118272118324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr118278118326_
                           _bind118279118328_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118272118324_))
                        (let ((_e118275118331_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118272118324_))))
                          (let ((_lp-hd118276118334_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118275118331_)))
                                (_lp-tl118277118336_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118275118331_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd118276118334_))
                                (let ((_e118284118339_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd118276118334_))))
                                  (let ((_hd118283118342_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118284118339_)))
                                        (_tl118282118344_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118284118339_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118282118344_))
                                        (let ((_e118287118347_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118282118344_))))
                                          (let ((_hd118286118350_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118287118347_)))
                                                (_tl118285118352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118287118347_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118285118352_))
                                                (let ((__tmp119883
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118286118350_
                                                               _expr118278118326_)))
                                                      (__tmp119882
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118283118342_
                                                               _bind118279118328_))))
                                                  (declare (not safe))
                                                  (_loop118274118321_
                                                   _lp-tl118277118336_
                                                   __tmp119883
                                                   __tmp119882))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118260118295_
                                                   _g118261118298_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g118260118295_ _g118261118298_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g118260118295_ _g118261118298_)))))
                        (let ((_expr118280118355_ (reverse _expr118278118326_))
                              (_bind118281118357_
                               (reverse _bind118279118328_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118268118313_))
                              (let ((_e118290118360_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118268118313_))))
                                (let ((_hd118289118363_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118290118360_)))
                                      (_tl118288118365_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118290118360_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118288118365_))
                                      ((lambda (_L118368_ _L118369_ _L118370_)
                                         (let ((_$e118401_
                                                (let ((__tmp119881
                                                       (lambda (_g118389118391_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self118257_
                                                            _g118389118391_))))
                                                      (__tmp119879
                                                       (let ((__tmp119880
                                                              (lambda (_g118393118396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118394118398_)
                        (let ()
                          (declare (not safe))
                          (cons _g118393118396_ _g118394118398_)))))
                 (declare (not safe))
                 (foldr1 __tmp119880 '() _L118369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119881
                                                          __tmp119879))))
                                           (if _$e118401_
                                               _$e118401_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self118257_
                                                  _L118368_)))))
                                       _hd118289118363_
                                       _expr118280118355_
                                       _bind118281118357_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118260118295_ _g118261118298_)))))
                              (let ()
                                (declare (not safe))
                                (_g118260118295_ _g118261118298_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop118274118321_
                                                     _target118271118316_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118260118295_
                                                   _g118261118298_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118260118295_ _g118261118298_)))))
                              (let ()
                                (declare (not safe))
                                (_g118260118295_ _g118261118298_)))))
                      (let ()
                        (declare (not safe))
                        (_g118260118295_ _g118261118298_))))))
          (declare (not safe))
          (_g118259118404_ _stx118258_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self118201_ _stx118202_)
        (let* ((_g118204118217_
                (lambda (_g118205118214_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118205118214_))))
               (_g118203118254_
                (lambda (_g118205118220_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118205118220_))
                      (let ((_e118209118222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118205118220_))))
                        (let ((_hd118208118225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118209118222_)))
                              (_tl118207118227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118209118222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118207118227_))
                              (let ((_e118212118230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118207118227_))))
                                (let ((_hd118211118233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118212118230_)))
                                      (_tl118210118235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118212118230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118210118235_))
                                      ((lambda (_L118238_)
                                         (let ((__tmp119885
                                                (lambda (_g118249118251_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L118238_
                                                     _g118249118251_))))
                                               (__tmp119884
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self118201_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119885 __tmp119884)))
                                       _hd118211118233_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118204118217_ _g118205118220_)))))
                              (let ()
                                (declare (not safe))
                                (_g118204118217_ _g118205118220_)))))
                      (let ()
                        (declare (not safe))
                        (_g118204118217_ _g118205118220_))))))
          (declare (not safe))
          (_g118203118254_ _stx118202_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self118126_ _stx118127_)
        (let* ((_g118129118146_
                (lambda (_g118130118143_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118130118143_))))
               (_g118128118198_
                (lambda (_g118130118149_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118130118149_))
                      (let ((_e118135118151_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118130118149_))))
                        (let ((_hd118134118154_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118135118151_)))
                              (_tl118133118156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118135118151_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118133118156_))
                              (let ((_e118138118159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118133118156_))))
                                (let ((_hd118137118162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118138118159_)))
                                      (_tl118136118164_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118138118159_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118136118164_))
                                      (let ((_e118141118167_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118136118164_))))
                                        (let ((_hd118140118170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118141118167_)))
                                              (_tl118139118172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118141118167_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118139118172_))
                                              ((lambda (_L118175_ _L118176_)
                                                 (let ((_$e118195_
                                                        (let ((__tmp119887
                                                               (lambda (_g118190118192_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L118176_ _g118190118192_))))
                      (__tmp119886
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self118126_ 'ids))))
                  (declare (not safe))
                  (find __tmp119887 __tmp119886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e118195_
                                                       _$e118195_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self118126_
                                                          _L118175_)))))
                                               _hd118140118170_
                                               _hd118137118162_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118129118146_
                                                 _g118130118149_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118129118146_ _g118130118149_)))))
                              (let ()
                                (declare (not safe))
                                (_g118129118146_ _g118130118149_)))))
                      (let ()
                        (declare (not safe))
                        (_g118129118146_ _g118130118149_))))))
          (declare (not safe))
          (_g118128118198_ _stx118127_))))))
