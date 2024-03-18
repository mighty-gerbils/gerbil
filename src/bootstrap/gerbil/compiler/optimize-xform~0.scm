(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710770270)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119766 (list gxc#::void::t))
            (__tmp119764
             (let ((__tmp119765
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119765 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119766
         '()
         __tmp119764
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119505_
        (apply make-instance gxc#::collect-mutators::t _$args119505_)))
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
      (lambda (_stx119497_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119500_
                (let ((__obj119752
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119752))
               (__tmp119767
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119500_ _stx119497_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119767
           gxc#current-compile-method
           _self119500_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119770 (list gxc#::void::t))
            (__tmp119768
             (let ((__tmp119769
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119769 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119770
         '()
         __tmp119768
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119494_
        (apply make-instance gxc#::collect-methods::t _$args119494_)))
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
      (lambda (_stx119486_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119489_
                (let ((__obj119754
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119754))
               (__tmp119771
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119489_ _stx119486_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119771
           gxc#current-compile-method
           _self119489_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119774 (list gxc#::basic-xform-expression::t))
            (__tmp119772
             (let ((__tmp119773
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119773 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119774
         '(id new-id)
         __tmp119772
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119483_
        (apply make-instance gxc#::expression-subst::t _$args119483_)))
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
      (lambda (_g119775_ _id119449119453_ _new-id119450119455_ _stx119457_)
        (let* ((_id119460_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119449119453_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119449119453_))
               (_new-id119462_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119450119455_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119450119455_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119464_
                  (let ((__obj119756
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119756
                       _id119460_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119756
                       _new-id119462_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119756))
                 (__tmp119776
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119464_ _stx119457_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119776
             gxc#current-compile-method
             _self119464_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119448119471_ . _args119473_)
        (apply gxc#apply-expression-subst__%
               _keys119448119471_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119448119471_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119448119471_ 'new-id: absent-value))
               _args119473_)))
    (define gxc#apply-expression-subst
      (lambda _args119451119479_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119451119479_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119779 (list gxc#::basic-xform-expression::t))
            (__tmp119777
             (let ((__tmp119778
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119778 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119779
         '(subst)
         __tmp119777
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119444_
        (apply make-instance gxc#::expression-subst*::t _$args119444_)))
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
      (lambda (_g119780_ _subst119415119418_ _stx119420_)
        (let ((_subst119423_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119415119418_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119415119418_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119425_
                  (let ((__obj119758
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119758
                       _subst119423_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119758))
                 (__tmp119781
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119425_ _stx119420_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119781
             gxc#current-compile-method
             _self119425_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119414119432_ . _args119434_)
        (apply gxc#apply-expression-subst*__%
               _keys119414119432_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119414119432_ 'subst: absent-value))
               _args119434_)))
    (define gxc#apply-expression-subst*
      (lambda _args119416119440_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119416119440_)))
    (define gxc#::find-expression::t
      (let ((__tmp119782 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119782
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119410_
        (apply make-instance gxc#::find-expression::t _$args119410_)))
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
      (let ((__tmp119785 (list gxc#::find-expression::t))
            (__tmp119783
             (let ((__tmp119784
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119784 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119785
         '(ids)
         __tmp119783
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119406_
        (apply make-instance gxc#::find-var-refs::t _$args119406_)))
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
      (lambda (_g119786_ _ids119377119380_ _stx119382_)
        (let ((_ids119385_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119377119380_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119377119380_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119387_
                  (let ((__obj119761
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119761
                       _ids119385_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119761))
                 (__tmp119787
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119387_ _stx119382_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119787
             gxc#current-compile-method
             _self119387_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119376119394_ . _args119396_)
        (apply gxc#apply-find-var-refs__%
               _keys119376119394_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119376119394_ 'ids: absent-value))
               _args119396_)))
    (define gxc#apply-find-var-refs
      (lambda _args119378119402_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119378119402_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119790 (list gxc#::collect-expression-refs::t))
            (__tmp119788
             (let ((__tmp119789
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119789 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119790
         '()
         __tmp119788
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119372_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119372_)))
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
      (lambda (_g119791_ _table119343119346_ _stx119348_)
        (let ((_table119351_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119343119346_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119343119346_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119353_
                  (let ((__obj119763
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119763
                       _table119351_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119763))
                 (__tmp119792
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119353_ _stx119348_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119792
             gxc#current-compile-method
             _self119353_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119342119360_ . _args119362_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119342119360_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119342119360_ 'table: absent-value))
               _args119362_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119344119368_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119344119368_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self119271_ _stx119272_)
        (let* ((_g119274119291_
                (lambda (_g119275119288_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119275119288_))))
               (_g119273119338_
                (lambda (_g119275119294_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119275119294_))
                      (let ((_e119280119296_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119275119294_))))
                        (let ((_hd119279119299_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119280119296_)))
                              (_tl119278119301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119280119296_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119278119301_))
                              (let ((_e119283119304_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119278119301_))))
                                (let ((_hd119282119307_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119283119304_)))
                                      (_tl119281119309_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119283119304_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119281119309_))
                                      (let ((_e119286119312_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119281119309_))))
                                        (let ((_hd119285119315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119286119312_)))
                                              (_tl119284119317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119286119312_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119284119317_))
                                              ((lambda (_L119320_ _L119321_)
                                                 (let ((_sym119336_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119321_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119336_))
                                                   (let ((__tmp119793
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119793
                                                      _sym119336_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self119271_
                                                      _L119320_))))
                                               _hd119285119315_
                                               _hd119282119307_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119274119291_
                                                 _g119275119294_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119274119291_ _g119275119294_)))))
                              (let ()
                                (declare (not safe))
                                (_g119274119291_ _g119275119294_)))))
                      (let ()
                        (declare (not safe))
                        (_g119274119291_ _g119275119294_))))))
          (declare (not safe))
          (_g119273119338_ _stx119272_))))
    (define gxc#collect-methods-call%
      (lambda (_self118824_ _stx118825_)
        (let* ((___stx119508119509_ _stx118825_)
               (_g118829118931_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119508119509_)))))
          (let ((___kont119510119511_
                 (lambda (_L119221_ _L119222_ _L119223_ _L119224_ _L119225_)
                   (let ((__tmp119794
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119222_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119794))))
                (___kont119512119513_
                 (lambda (_L119047_ _L119048_ _L119049_ _L119050_)
                   (let ((__tmp119795
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119047_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119795))))
                (___kont119514119515_ (lambda () '#!void)))
            (let ((___match119643119644_
                   (lambda (_e118838119093_
                            _hd118837119096_
                            _tl118836119098_
                            _e118841119101_
                            _hd118840119104_
                            _tl118839119106_
                            _e118844119109_
                            _hd118843119112_
                            _tl118842119114_
                            _e118847119117_
                            _hd118846119120_
                            _tl118845119122_
                            _e118850119125_
                            _hd118849119128_
                            _tl118848119130_
                            _e118853119133_
                            _hd118852119136_
                            _tl118851119138_
                            _e118856119141_
                            _hd118855119144_
                            _tl118854119146_
                            _e118859119149_
                            _hd118858119152_
                            _tl118857119154_
                            _e118862119157_
                            _hd118861119160_
                            _tl118860119162_
                            _e118865119165_
                            _hd118864119168_
                            _tl118863119170_
                            _e118868119173_
                            _hd118867119176_
                            _tl118866119178_
                            _e118871119181_
                            _hd118870119184_
                            _tl118869119186_
                            _e118874119189_
                            _hd118873119192_
                            _tl118872119194_
                            _e118877119197_
                            _hd118876119200_
                            _tl118875119202_
                            _e118880119205_
                            _hd118879119208_
                            _tl118878119210_
                            _e118883119213_
                            _hd118882119216_
                            _tl118881119218_)
                     (let ((_L119221_ _hd118882119216_)
                           (_L119222_ _hd118873119192_)
                           (_L119223_ _hd118864119168_)
                           (_L119224_ _hd118855119144_)
                           (_L119225_ _hd118846119120_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L119225_
                              'bind-method!))
                           (___kont119510119511_
                            _L119221_
                            _L119222_
                            _L119223_
                            _L119224_
                            _L119225_)
                           (___kont119514119515_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119508119509_))
                  (let ((_e118838119093_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119508119509_))))
                    (let ((_tl118836119098_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118838119093_)))
                          (_hd118837119096_
                           (let ()
                             (declare (not safe))
                             (##car _e118838119093_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118836119098_))
                          (let ((_e118841119101_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118836119098_))))
                            (let ((_tl118839119106_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118841119101_)))
                                  (_hd118840119104_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118841119101_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118840119104_))
                                  (let ((_e118844119109_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118840119104_))))
                                    (let ((_tl118842119114_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118844119109_)))
                                          (_hd118843119112_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118844119109_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118843119112_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118843119112_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118842119114_))
                                                  (let ((_e118847119117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118842119114_))))
                                                    (let ((_tl118845119122_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118847119117_)))
                                                          (_hd118846119120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118847119117_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118845119122_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118839119106_))
                      (let ((_e118850119125_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118839119106_))))
                        (let ((_tl118848119130_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118850119125_)))
                              (_hd118849119128_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118850119125_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118849119128_))
                              (let ((_e118853119133_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118849119128_))))
                                (let ((_tl118851119138_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118853119133_)))
                                      (_hd118852119136_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118853119133_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118852119136_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118852119136_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118851119138_))
                                              (let ((_e118856119141_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118851119138_))))
                                                (let ((_tl118854119146_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118856119141_)))
                                                      (_hd118855119144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118856119141_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118854119146_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118848119130_))
                                                          (let ((_e118859119149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118848119130_))))
                    (let ((_tl118857119154_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118859119149_)))
                          (_hd118858119152_
                           (let ()
                             (declare (not safe))
                             (##car _e118859119149_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118858119152_))
                          (let ((_e118862119157_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118858119152_))))
                            (let ((_tl118860119162_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118862119157_)))
                                  (_hd118861119160_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118862119157_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118861119160_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118861119160_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118860119162_))
                                          (let ((_e118865119165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118860119162_))))
                                            (let ((_tl118863119170_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118865119165_)))
                                                  (_hd118864119168_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118865119165_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118863119170_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118857119154_))
                                                      (let ((_e118868119173_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118857119154_))))
                (let ((_tl118866119178_
                       (let () (declare (not safe)) (##cdr _e118868119173_)))
                      (_hd118867119176_
                       (let () (declare (not safe)) (##car _e118868119173_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118867119176_))
                      (let ((_e118871119181_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118867119176_))))
                        (let ((_tl118869119186_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118871119181_)))
                              (_hd118870119184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118871119181_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118870119184_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118870119184_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118869119186_))
                                      (let ((_e118874119189_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118869119186_))))
                                        (let ((_tl118872119194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118874119189_)))
                                              (_hd118873119192_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118874119189_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118872119194_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118866119178_))
                                                  (let ((_e118877119197_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118866119178_))))
                                                    (let ((_tl118875119202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118877119197_)))
                                                          (_hd118876119200_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118877119197_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118876119200_))
                                                          (let ((_e118880119205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118876119200_))))
                    (let ((_tl118878119210_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118880119205_)))
                          (_hd118879119208_
                           (let ()
                             (declare (not safe))
                             (##car _e118880119205_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118879119208_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118879119208_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118878119210_))
                                  (let ((_e118883119213_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118878119210_))))
                                    (let ((_tl118881119218_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118883119213_)))
                                          (_hd118882119216_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118883119213_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118881119218_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118875119202_))
                                              (___match119643119644_
                                               _e118838119093_
                                               _hd118837119096_
                                               _tl118836119098_
                                               _e118841119101_
                                               _hd118840119104_
                                               _tl118839119106_
                                               _e118844119109_
                                               _hd118843119112_
                                               _tl118842119114_
                                               _e118847119117_
                                               _hd118846119120_
                                               _tl118845119122_
                                               _e118850119125_
                                               _hd118849119128_
                                               _tl118848119130_
                                               _e118853119133_
                                               _hd118852119136_
                                               _tl118851119138_
                                               _e118856119141_
                                               _hd118855119144_
                                               _tl118854119146_
                                               _e118859119149_
                                               _hd118858119152_
                                               _tl118857119154_
                                               _e118862119157_
                                               _hd118861119160_
                                               _tl118860119162_
                                               _e118865119165_
                                               _hd118864119168_
                                               _tl118863119170_
                                               _e118868119173_
                                               _hd118867119176_
                                               _tl118866119178_
                                               _e118871119181_
                                               _hd118870119184_
                                               _tl118869119186_
                                               _e118874119189_
                                               _hd118873119192_
                                               _tl118872119194_
                                               _e118877119197_
                                               _hd118876119200_
                                               _tl118875119202_
                                               _e118880119205_
                                               _hd118879119208_
                                               _tl118878119210_
                                               _e118883119213_
                                               _hd118882119216_
                                               _tl118881119218_)
                                              (___kont119514119515_))
                                          (___kont119514119515_))))
                                  (___kont119514119515_))
                              (___kont119514119515_))
                          (___kont119514119515_))))
                  (___kont119514119515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118866119178_))
                                                      (if (let ((__tmp119796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119796 'bind-method!))
                  (let ((_L119047_ _hd118873119192_)
                        (_L119048_ _hd118864119168_)
                        (_L119049_ _hd118855119144_)
                        (_L119050_ _hd118846119120_))
                    (___kont119512119513_
                     _L119047_
                     _L119048_
                     _L119049_
                     _L119050_))
                  (___kont119514119515_))
              (___kont119514119515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119514119515_))))
                                      (___kont119514119515_))
                                  (___kont119514119515_))
                              (___kont119514119515_))))
                      (___kont119514119515_))))
              (___kont119514119515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119514119515_))))
                                          (___kont119514119515_))
                                      (___kont119514119515_))
                                  (___kont119514119515_))))
                          (___kont119514119515_))))
                  (___kont119514119515_))
              (___kont119514119515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119514119515_))
                                          (___kont119514119515_))
                                      (___kont119514119515_))))
                              (___kont119514119515_))))
                      (___kont119514119515_))
                  (___kont119514119515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119514119515_))
                                              (___kont119514119515_))
                                          (___kont119514119515_))))
                                  (___kont119514119515_))))
                          (___kont119514119515_))))
                  (___kont119514119515_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118772_ _stx118773_)
        (let* ((_g118775118788_
                (lambda (_g118776118785_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118776118785_))))
               (_g118774118821_
                (lambda (_g118776118791_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118776118791_))
                      (let ((_e118780118793_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118776118791_))))
                        (let ((_hd118779118796_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118780118793_)))
                              (_tl118778118798_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118780118793_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118778118798_))
                              (let ((_e118783118801_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118778118798_))))
                                (let ((_hd118782118804_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118783118801_)))
                                      (_tl118781118806_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118783118801_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118781118806_))
                                      ((lambda (_L118809_)
                                         (if (let ((__tmp119800
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118772_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118809_
                                                __tmp119800))
                                             (let ((__tmp119797
                                                    (let ((__tmp119798
                                                           (let ((__tmp119799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118772_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119799 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119797
                                                _stx118773_))
                                             _stx118773_))
                                       _hd118782118804_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118775118788_ _g118776118791_)))))
                              (let ()
                                (declare (not safe))
                                (_g118775118788_ _g118776118791_)))))
                      (let ()
                        (declare (not safe))
                        (_g118775118788_ _g118776118791_))))))
          (declare (not safe))
          (_g118774118821_ _stx118773_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118713_ _stx118714_)
        (let* ((_g118716118729_
                (lambda (_g118717118726_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118717118726_))))
               (_g118715118769_
                (lambda (_g118717118732_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118717118732_))
                      (let ((_e118721118734_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118717118732_))))
                        (let ((_hd118720118737_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118721118734_)))
                              (_tl118719118739_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118721118734_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118719118739_))
                              (let ((_e118724118742_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118719118739_))))
                                (let ((_hd118723118745_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118724118742_)))
                                      (_tl118722118747_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118724118742_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118722118747_))
                                      ((lambda (_L118750_)
                                         (let ((_$e118764_
                                                (let ((__tmp119802
                                                       (lambda (_sub118762_)
                                                         (let ((__tmp119803
                                                                (car _sub118762_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118750_
                                                            __tmp119803))))
                                                      (__tmp119801
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118713_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119802
                                                        __tmp119801))))
                                           (if _$e118764_
                                               ((lambda (_sub118767_)
                                                  (let ((__tmp119804
                                                         (let ((__tmp119805
                                                                (let ((__tmp119806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118767_)))
                          (declare (not safe))
                          (cons __tmp119806 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119804
                                                     _stx118714_)))
                                                _$e118764_)
                                               _stx118714_)))
                                       _hd118723118745_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118716118729_ _g118717118732_)))))
                              (let ()
                                (declare (not safe))
                                (_g118716118729_ _g118717118732_)))))
                      (let ()
                        (declare (not safe))
                        (_g118716118729_ _g118717118732_))))))
          (declare (not safe))
          (_g118715118769_ _stx118714_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118642_ _stx118643_)
        (let* ((_g118645118662_
                (lambda (_g118646118659_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118646118659_))))
               (_g118644118710_
                (lambda (_g118646118665_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118646118665_))
                      (let ((_e118651118667_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118646118665_))))
                        (let ((_hd118650118670_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118651118667_)))
                              (_tl118649118672_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118651118667_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118649118672_))
                              (let ((_e118654118675_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118649118672_))))
                                (let ((_hd118653118678_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118654118675_)))
                                      (_tl118652118680_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118654118675_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118652118680_))
                                      (let ((_e118657118683_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118652118680_))))
                                        (let ((_hd118656118686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118657118683_)))
                                              (_tl118655118688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118657118683_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118655118688_))
                                              ((lambda (_L118691_ _L118692_)
                                                 (let ((_new-expr118707_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118642_
                                                           _L118691_)))
                                                       (_new-xid118708_
                                                        (if (let ((__tmp119807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118642_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118692_ __tmp119807))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118642_ 'new-id))
                    _L118692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119808
                                                          (let ((__tmp119809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119810
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118707_ '()))))
                           (declare (not safe))
                           (cons _new-xid118708_ __tmp119810))))
                    (declare (not safe))
                    (cons '%#set! __tmp119809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119808
                                                      _stx118643_))))
                                               _hd118656118686_
                                               _hd118653118678_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118645118662_
                                                 _g118646118665_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118645118662_ _g118646118665_)))))
                              (let ()
                                (declare (not safe))
                                (_g118645118662_ _g118646118665_)))))
                      (let ()
                        (declare (not safe))
                        (_g118645118662_ _g118646118665_))))))
          (declare (not safe))
          (_g118644118710_ _stx118643_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118566_ _stx118567_)
        (let* ((_g118569118586_
                (lambda (_g118570118583_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118570118583_))))
               (_g118568118639_
                (lambda (_g118570118589_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118570118589_))
                      (let ((_e118575118591_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118570118589_))))
                        (let ((_hd118574118594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118575118591_)))
                              (_tl118573118596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118575118591_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118573118596_))
                              (let ((_e118578118599_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118573118596_))))
                                (let ((_hd118577118602_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118578118599_)))
                                      (_tl118576118604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118578118599_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118576118604_))
                                      (let ((_e118581118607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118576118604_))))
                                        (let ((_hd118580118610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118581118607_)))
                                              (_tl118579118612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118581118607_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118579118612_))
                                              ((lambda (_L118615_ _L118616_)
                                                 (let ((_new-expr118636_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118566_
                                                           _L118615_)))
                                                       (_new-xid118637_
                                                        (let ((_$e118633_
                                                               (let ((__tmp119812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118631_)
                                (let ((__tmp119813 (car _sub118631_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118616_
                                   __tmp119813))))
                             (__tmp119811
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118566_ 'subst))))
                         (declare (not safe))
                         (find __tmp119812 __tmp119811))))
                  (if _$e118633_ (cdr _$e118633_) _L118616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119814
                                                          (let ((__tmp119815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119816
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118636_ '()))))
                           (declare (not safe))
                           (cons _new-xid118637_ __tmp119816))))
                    (declare (not safe))
                    (cons '%#set! __tmp119815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119814
                                                      _stx118567_))))
                                               _hd118580118610_
                                               _hd118577118602_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118569118586_
                                                 _g118570118589_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118569118586_ _g118570118589_)))))
                              (let ()
                                (declare (not safe))
                                (_g118569118586_ _g118570118589_)))))
                      (let ()
                        (declare (not safe))
                        (_g118569118586_ _g118570118589_))))))
          (declare (not safe))
          (_g118568118639_ _stx118567_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118512_ _stx118513_)
        (let* ((_g118515118528_
                (lambda (_g118516118525_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118516118525_))))
               (_g118514118563_
                (lambda (_g118516118531_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118516118531_))
                      (let ((_e118520118533_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118516118531_))))
                        (let ((_hd118519118536_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118520118533_)))
                              (_tl118518118538_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118520118533_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118518118538_))
                              (let ((_e118523118541_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118518118538_))))
                                (let ((_hd118522118544_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118523118541_)))
                                      (_tl118521118546_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118523118541_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118521118546_))
                                      ((lambda (_L118549_)
                                         (let* ((_eid118561_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118549_)))
                                                (__tmp119817
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118512_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119817
                                            _eid118561_
                                            1+
                                            '0)))
                                       _hd118522118544_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118515118528_ _g118516118531_)))))
                              (let ()
                                (declare (not safe))
                                (_g118515118528_ _g118516118531_)))))
                      (let ()
                        (declare (not safe))
                        (_g118515118528_ _g118516118531_))))))
          (declare (not safe))
          (_g118514118563_ _stx118513_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118442_ _stx118443_)
        (let* ((_g118445118462_
                (lambda (_g118446118459_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118446118459_))))
               (_g118444118509_
                (lambda (_g118446118465_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118446118465_))
                      (let ((_e118451118467_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118446118465_))))
                        (let ((_hd118450118470_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118451118467_)))
                              (_tl118449118472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118451118467_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118449118472_))
                              (let ((_e118454118475_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118449118472_))))
                                (let ((_hd118453118478_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118454118475_)))
                                      (_tl118452118480_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118454118475_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118452118480_))
                                      (let ((_e118457118483_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118452118480_))))
                                        (let ((_hd118456118486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118457118483_)))
                                              (_tl118455118488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118457118483_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118455118488_))
                                              ((lambda (_L118491_ _L118492_)
                                                 (let ((_eid118507_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118492_))))
                                                   (let ((__tmp119818
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118442_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119818
                                                      _eid118507_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118442_
                                                      _L118491_))))
                                               _hd118456118486_
                                               _hd118453118478_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118445118462_
                                                 _g118446118465_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118445118462_ _g118446118465_)))))
                              (let ()
                                (declare (not safe))
                                (_g118445118462_ _g118446118465_)))))
                      (let ()
                        (declare (not safe))
                        (_g118445118462_ _g118446118465_))))))
          (declare (not safe))
          (_g118444118509_ _stx118443_))))
    (define gxc#find-body%
      (lambda (_self118355_ _stx118356_)
        (let* ((_g118358118377_
                (lambda (_g118359118374_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118359118374_))))
               (_g118357118439_
                (lambda (_g118359118380_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118359118380_))
                      (let ((_e118363118382_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118359118380_))))
                        (let ((_hd118362118385_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118363118382_)))
                              (_tl118361118387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118363118382_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118361118387_))
                              (let ((_g119819_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118361118387_
                                        '0))))
                                (begin
                                  (let ((_g119820_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119819_)
                                               (##vector-length _g119819_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119820_ 2)))
                                        (error "Context expects 2 values"
                                               _g119820_)))
                                  (let ((_target118364118390_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119819_ 0)))
                                        (_tl118366118392_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119819_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118366118392_))
                                        (letrec ((_loop118367118395_
                                                  (lambda (_hd118365118398_
                                                           _expr118371118400_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118365118398_))
                                                        (let ((_e118368118403_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118365118398_))))
                  (let ((_lp-hd118369118406_
                         (let () (declare (not safe)) (##car _e118368118403_)))
                        (_lp-tl118370118408_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118368118403_))))
                    (let ((__tmp119824
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118369118406_ _expr118371118400_))))
                      (declare (not safe))
                      (_loop118367118395_ _lp-tl118370118408_ __tmp119824))))
                (let ((_expr118372118411_ (reverse _expr118371118400_)))
                  ((lambda (_L118414_)
                     (let ((__tmp119823
                            (lambda (_g118427118429_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118355_
                                 _g118427118429_))))
                           (__tmp119821
                            (let ((__tmp119822
                                   (lambda (_g118431118434_ _g118432118436_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118431118434_
                                             _g118432118436_)))))
                              (declare (not safe))
                              (foldr1 __tmp119822 '() _L118414_))))
                       (declare (not safe))
                       (ormap1 __tmp119823 __tmp119821)))
                   _expr118372118411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118367118395_
                                             _target118364118390_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118358118377_
                                           _g118359118380_))))))
                              (let ()
                                (declare (not safe))
                                (_g118358118377_ _g118359118380_)))))
                      (let ()
                        (declare (not safe))
                        (_g118358118377_ _g118359118380_))))))
          (declare (not safe))
          (_g118357118439_ _stx118356_))))
    (define gxc#find-let-values%
      (lambda (_self118205_ _stx118206_)
        (let* ((_g118208118243_
                (lambda (_g118209118240_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118209118240_))))
               (_g118207118352_
                (lambda (_g118209118246_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118209118246_))
                      (let ((_e118215118248_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118209118246_))))
                        (let ((_hd118214118251_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118215118248_)))
                              (_tl118213118253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118215118248_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118213118253_))
                              (let ((_e118218118256_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118213118253_))))
                                (let ((_hd118217118259_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118218118256_)))
                                      (_tl118216118261_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118218118256_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd118217118259_))
                                      (let ((_g119825_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd118217118259_
                                                '0))))
                                        (begin
                                          (let ((_g119826_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119825_)
                                                       (##vector-length
                                                        _g119825_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119826_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119826_)))
                                          (let ((_target118219118264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119825_ 0)))
                                                (_tl118221118266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119825_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118221118266_))
                                                (letrec ((_loop118222118269_
                                                          (lambda (_hd118220118272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr118226118274_
                           _bind118227118276_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118220118272_))
                        (let ((_e118223118279_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118220118272_))))
                          (let ((_lp-hd118224118282_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118223118279_)))
                                (_lp-tl118225118284_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118223118279_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd118224118282_))
                                (let ((_e118232118287_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd118224118282_))))
                                  (let ((_hd118231118290_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118232118287_)))
                                        (_tl118230118292_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118232118287_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118230118292_))
                                        (let ((_e118235118295_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118230118292_))))
                                          (let ((_hd118234118298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118235118295_)))
                                                (_tl118233118300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118235118295_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118233118300_))
                                                (let ((__tmp119831
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118234118298_
                                                               _expr118226118274_)))
                                                      (__tmp119830
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118231118290_
                                                               _bind118227118276_))))
                                                  (declare (not safe))
                                                  (_loop118222118269_
                                                   _lp-tl118225118284_
                                                   __tmp119831
                                                   __tmp119830))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118208118243_
                                                   _g118209118246_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g118208118243_ _g118209118246_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g118208118243_ _g118209118246_)))))
                        (let ((_expr118228118303_ (reverse _expr118226118274_))
                              (_bind118229118305_
                               (reverse _bind118227118276_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118216118261_))
                              (let ((_e118238118308_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118216118261_))))
                                (let ((_hd118237118311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118238118308_)))
                                      (_tl118236118313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118238118308_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118236118313_))
                                      ((lambda (_L118316_ _L118317_ _L118318_)
                                         (let ((_$e118349_
                                                (let ((__tmp119829
                                                       (lambda (_g118337118339_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self118205_
                                                            _g118337118339_))))
                                                      (__tmp119827
                                                       (let ((__tmp119828
                                                              (lambda (_g118341118344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118342118346_)
                        (let ()
                          (declare (not safe))
                          (cons _g118341118344_ _g118342118346_)))))
                 (declare (not safe))
                 (foldr1 __tmp119828 '() _L118317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119829
                                                          __tmp119827))))
                                           (if _$e118349_
                                               _$e118349_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self118205_
                                                  _L118316_)))))
                                       _hd118237118311_
                                       _expr118228118303_
                                       _bind118229118305_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118208118243_ _g118209118246_)))))
                              (let ()
                                (declare (not safe))
                                (_g118208118243_ _g118209118246_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop118222118269_
                                                     _target118219118264_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118208118243_
                                                   _g118209118246_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118208118243_ _g118209118246_)))))
                              (let ()
                                (declare (not safe))
                                (_g118208118243_ _g118209118246_)))))
                      (let ()
                        (declare (not safe))
                        (_g118208118243_ _g118209118246_))))))
          (declare (not safe))
          (_g118207118352_ _stx118206_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self118149_ _stx118150_)
        (let* ((_g118152118165_
                (lambda (_g118153118162_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118153118162_))))
               (_g118151118202_
                (lambda (_g118153118168_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118153118168_))
                      (let ((_e118157118170_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118153118168_))))
                        (let ((_hd118156118173_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118157118170_)))
                              (_tl118155118175_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118157118170_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118155118175_))
                              (let ((_e118160118178_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118155118175_))))
                                (let ((_hd118159118181_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118160118178_)))
                                      (_tl118158118183_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118160118178_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118158118183_))
                                      ((lambda (_L118186_)
                                         (let ((__tmp119833
                                                (lambda (_g118197118199_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L118186_
                                                     _g118197118199_))))
                                               (__tmp119832
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self118149_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119833 __tmp119832)))
                                       _hd118159118181_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118152118165_ _g118153118168_)))))
                              (let ()
                                (declare (not safe))
                                (_g118152118165_ _g118153118168_)))))
                      (let ()
                        (declare (not safe))
                        (_g118152118165_ _g118153118168_))))))
          (declare (not safe))
          (_g118151118202_ _stx118150_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self118074_ _stx118075_)
        (let* ((_g118077118094_
                (lambda (_g118078118091_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118078118091_))))
               (_g118076118146_
                (lambda (_g118078118097_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118078118097_))
                      (let ((_e118083118099_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118078118097_))))
                        (let ((_hd118082118102_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118083118099_)))
                              (_tl118081118104_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118083118099_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118081118104_))
                              (let ((_e118086118107_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118081118104_))))
                                (let ((_hd118085118110_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118086118107_)))
                                      (_tl118084118112_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118086118107_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118084118112_))
                                      (let ((_e118089118115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118084118112_))))
                                        (let ((_hd118088118118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118089118115_)))
                                              (_tl118087118120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118089118115_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118087118120_))
                                              ((lambda (_L118123_ _L118124_)
                                                 (let ((_$e118143_
                                                        (let ((__tmp119835
                                                               (lambda (_g118138118140_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L118124_ _g118138118140_))))
                      (__tmp119834
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self118074_ 'ids))))
                  (declare (not safe))
                  (find __tmp119835 __tmp119834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e118143_
                                                       _$e118143_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self118074_
                                                          _L118123_)))))
                                               _hd118088118118_
                                               _hd118085118110_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118077118094_
                                                 _g118078118097_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118077118094_ _g118078118097_)))))
                              (let ()
                                (declare (not safe))
                                (_g118077118094_ _g118078118097_)))))
                      (let ()
                        (declare (not safe))
                        (_g118077118094_ _g118078118097_))))))
          (declare (not safe))
          (_g118076118146_ _stx118075_))))))
