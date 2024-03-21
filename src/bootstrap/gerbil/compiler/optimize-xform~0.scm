(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710954837)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119799 (list gxc#::void::t))
            (__tmp119797
             (let ((__tmp119798
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119798 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119799
         '()
         __tmp119797
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119538_
        (apply make-instance gxc#::collect-mutators::t _$args119538_)))
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
      (lambda (_stx119530_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119533_
                (let ((__obj119785
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119785))
               (__tmp119800
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119533_ _stx119530_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119800
           gxc#current-compile-method
           _self119533_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119803 (list gxc#::void::t))
            (__tmp119801
             (let ((__tmp119802
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119802 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119803
         '()
         __tmp119801
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119527_
        (apply make-instance gxc#::collect-methods::t _$args119527_)))
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
      (lambda (_stx119519_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119522_
                (let ((__obj119787
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119787))
               (__tmp119804
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119522_ _stx119519_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119804
           gxc#current-compile-method
           _self119522_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119807 (list gxc#::basic-xform-expression::t))
            (__tmp119805
             (let ((__tmp119806
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119806 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119807
         '(id new-id)
         __tmp119805
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119516_
        (apply make-instance gxc#::expression-subst::t _$args119516_)))
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
      (lambda (_g119808_ _id119482119486_ _new-id119483119488_ _stx119490_)
        (let* ((_id119493_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119482119486_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119482119486_))
               (_new-id119495_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119483119488_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119483119488_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119497_
                  (let ((__obj119789
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119789
                       _id119493_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119789
                       _new-id119495_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119789))
                 (__tmp119809
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119497_ _stx119490_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119809
             gxc#current-compile-method
             _self119497_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119481119504_ . _args119506_)
        (apply gxc#apply-expression-subst__%
               _keys119481119504_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119481119504_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119481119504_ 'new-id: absent-value))
               _args119506_)))
    (define gxc#apply-expression-subst
      (lambda _args119484119512_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119484119512_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119812 (list gxc#::basic-xform-expression::t))
            (__tmp119810
             (let ((__tmp119811
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119811 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119812
         '(subst)
         __tmp119810
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119477_
        (apply make-instance gxc#::expression-subst*::t _$args119477_)))
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
      (lambda (_g119813_ _subst119448119451_ _stx119453_)
        (let ((_subst119456_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119448119451_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119448119451_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119458_
                  (let ((__obj119791
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119791
                       _subst119456_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119791))
                 (__tmp119814
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119458_ _stx119453_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119814
             gxc#current-compile-method
             _self119458_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119447119465_ . _args119467_)
        (apply gxc#apply-expression-subst*__%
               _keys119447119465_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119447119465_ 'subst: absent-value))
               _args119467_)))
    (define gxc#apply-expression-subst*
      (lambda _args119449119473_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119449119473_)))
    (define gxc#::find-expression::t
      (let ((__tmp119815 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119815
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119443_
        (apply make-instance gxc#::find-expression::t _$args119443_)))
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
      (let ((__tmp119818 (list gxc#::find-expression::t))
            (__tmp119816
             (let ((__tmp119817
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119817 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119818
         '(ids)
         __tmp119816
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119439_
        (apply make-instance gxc#::find-var-refs::t _$args119439_)))
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
      (lambda (_g119819_ _ids119410119413_ _stx119415_)
        (let ((_ids119418_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119410119413_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119410119413_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119420_
                  (let ((__obj119794
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119794
                       _ids119418_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119794))
                 (__tmp119820
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119420_ _stx119415_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119820
             gxc#current-compile-method
             _self119420_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119409119427_ . _args119429_)
        (apply gxc#apply-find-var-refs__%
               _keys119409119427_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119409119427_ 'ids: absent-value))
               _args119429_)))
    (define gxc#apply-find-var-refs
      (lambda _args119411119435_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119411119435_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119823 (list gxc#::collect-expression-refs::t))
            (__tmp119821
             (let ((__tmp119822
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119822 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119823
         '()
         __tmp119821
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119405_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119405_)))
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
      (lambda (_g119824_ _table119376119379_ _stx119381_)
        (let ((_table119384_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119376119379_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119376119379_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119386_
                  (let ((__obj119796
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119796
                       _table119384_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119796))
                 (__tmp119825
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119386_ _stx119381_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119825
             gxc#current-compile-method
             _self119386_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119375119393_ . _args119395_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119375119393_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119375119393_ 'table: absent-value))
               _args119395_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119377119401_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119377119401_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self119304_ _stx119305_)
        (let* ((_g119307119324_
                (lambda (_g119308119321_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119308119321_))))
               (_g119306119371_
                (lambda (_g119308119327_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119308119327_))
                      (let ((_e119313119329_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119308119327_))))
                        (let ((_hd119312119332_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119313119329_)))
                              (_tl119311119334_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119313119329_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119311119334_))
                              (let ((_e119316119337_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119311119334_))))
                                (let ((_hd119315119340_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119316119337_)))
                                      (_tl119314119342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119316119337_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119314119342_))
                                      (let ((_e119319119345_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119314119342_))))
                                        (let ((_hd119318119348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119319119345_)))
                                              (_tl119317119350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119319119345_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119317119350_))
                                              ((lambda (_L119353_ _L119354_)
                                                 (let ((_sym119369_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119354_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119369_))
                                                   (let ((__tmp119826
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119826
                                                      _sym119369_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self119304_
                                                      _L119353_))))
                                               _hd119318119348_
                                               _hd119315119340_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119307119324_
                                                 _g119308119327_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119307119324_ _g119308119327_)))))
                              (let ()
                                (declare (not safe))
                                (_g119307119324_ _g119308119327_)))))
                      (let ()
                        (declare (not safe))
                        (_g119307119324_ _g119308119327_))))))
          (declare (not safe))
          (_g119306119371_ _stx119305_))))
    (define gxc#collect-methods-call%
      (lambda (_self118857_ _stx118858_)
        (let* ((___stx119541119542_ _stx118858_)
               (_g118862118964_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119541119542_)))))
          (let ((___kont119543119544_
                 (lambda (_L119254_ _L119255_ _L119256_ _L119257_ _L119258_)
                   (let ((__tmp119827
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119255_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119827))))
                (___kont119545119546_
                 (lambda (_L119080_ _L119081_ _L119082_ _L119083_)
                   (let ((__tmp119828
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119080_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119828))))
                (___kont119547119548_ (lambda () '#!void)))
            (let ((___match119676119677_
                   (lambda (_e118871119126_
                            _hd118870119129_
                            _tl118869119131_
                            _e118874119134_
                            _hd118873119137_
                            _tl118872119139_
                            _e118877119142_
                            _hd118876119145_
                            _tl118875119147_
                            _e118880119150_
                            _hd118879119153_
                            _tl118878119155_
                            _e118883119158_
                            _hd118882119161_
                            _tl118881119163_
                            _e118886119166_
                            _hd118885119169_
                            _tl118884119171_
                            _e118889119174_
                            _hd118888119177_
                            _tl118887119179_
                            _e118892119182_
                            _hd118891119185_
                            _tl118890119187_
                            _e118895119190_
                            _hd118894119193_
                            _tl118893119195_
                            _e118898119198_
                            _hd118897119201_
                            _tl118896119203_
                            _e118901119206_
                            _hd118900119209_
                            _tl118899119211_
                            _e118904119214_
                            _hd118903119217_
                            _tl118902119219_
                            _e118907119222_
                            _hd118906119225_
                            _tl118905119227_
                            _e118910119230_
                            _hd118909119233_
                            _tl118908119235_
                            _e118913119238_
                            _hd118912119241_
                            _tl118911119243_
                            _e118916119246_
                            _hd118915119249_
                            _tl118914119251_)
                     (let ((_L119254_ _hd118915119249_)
                           (_L119255_ _hd118906119225_)
                           (_L119256_ _hd118897119201_)
                           (_L119257_ _hd118888119177_)
                           (_L119258_ _hd118879119153_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L119258_
                              'bind-method!))
                           (___kont119543119544_
                            _L119254_
                            _L119255_
                            _L119256_
                            _L119257_
                            _L119258_)
                           (___kont119547119548_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119541119542_))
                  (let ((_e118871119126_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119541119542_))))
                    (let ((_tl118869119131_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118871119126_)))
                          (_hd118870119129_
                           (let ()
                             (declare (not safe))
                             (##car _e118871119126_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118869119131_))
                          (let ((_e118874119134_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118869119131_))))
                            (let ((_tl118872119139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118874119134_)))
                                  (_hd118873119137_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118874119134_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118873119137_))
                                  (let ((_e118877119142_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118873119137_))))
                                    (let ((_tl118875119147_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118877119142_)))
                                          (_hd118876119145_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118877119142_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118876119145_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118876119145_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118875119147_))
                                                  (let ((_e118880119150_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118875119147_))))
                                                    (let ((_tl118878119155_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118880119150_)))
                                                          (_hd118879119153_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118880119150_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118878119155_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118872119139_))
                      (let ((_e118883119158_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118872119139_))))
                        (let ((_tl118881119163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118883119158_)))
                              (_hd118882119161_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118883119158_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118882119161_))
                              (let ((_e118886119166_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118882119161_))))
                                (let ((_tl118884119171_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118886119166_)))
                                      (_hd118885119169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118886119166_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118885119169_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118885119169_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118884119171_))
                                              (let ((_e118889119174_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118884119171_))))
                                                (let ((_tl118887119179_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118889119174_)))
                                                      (_hd118888119177_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118889119174_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118887119179_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118881119163_))
                                                          (let ((_e118892119182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118881119163_))))
                    (let ((_tl118890119187_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118892119182_)))
                          (_hd118891119185_
                           (let ()
                             (declare (not safe))
                             (##car _e118892119182_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118891119185_))
                          (let ((_e118895119190_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118891119185_))))
                            (let ((_tl118893119195_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118895119190_)))
                                  (_hd118894119193_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118895119190_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118894119193_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118894119193_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118893119195_))
                                          (let ((_e118898119198_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118893119195_))))
                                            (let ((_tl118896119203_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118898119198_)))
                                                  (_hd118897119201_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118898119198_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118896119203_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118890119187_))
                                                      (let ((_e118901119206_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118890119187_))))
                (let ((_tl118899119211_
                       (let () (declare (not safe)) (##cdr _e118901119206_)))
                      (_hd118900119209_
                       (let () (declare (not safe)) (##car _e118901119206_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118900119209_))
                      (let ((_e118904119214_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118900119209_))))
                        (let ((_tl118902119219_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118904119214_)))
                              (_hd118903119217_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118904119214_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118903119217_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118903119217_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118902119219_))
                                      (let ((_e118907119222_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118902119219_))))
                                        (let ((_tl118905119227_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118907119222_)))
                                              (_hd118906119225_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118907119222_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118905119227_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118899119211_))
                                                  (let ((_e118910119230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118899119211_))))
                                                    (let ((_tl118908119235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118910119230_)))
                                                          (_hd118909119233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118910119230_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118909119233_))
                                                          (let ((_e118913119238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118909119233_))))
                    (let ((_tl118911119243_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118913119238_)))
                          (_hd118912119241_
                           (let ()
                             (declare (not safe))
                             (##car _e118913119238_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118912119241_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118912119241_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118911119243_))
                                  (let ((_e118916119246_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118911119243_))))
                                    (let ((_tl118914119251_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118916119246_)))
                                          (_hd118915119249_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118916119246_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118914119251_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118908119235_))
                                              (___match119676119677_
                                               _e118871119126_
                                               _hd118870119129_
                                               _tl118869119131_
                                               _e118874119134_
                                               _hd118873119137_
                                               _tl118872119139_
                                               _e118877119142_
                                               _hd118876119145_
                                               _tl118875119147_
                                               _e118880119150_
                                               _hd118879119153_
                                               _tl118878119155_
                                               _e118883119158_
                                               _hd118882119161_
                                               _tl118881119163_
                                               _e118886119166_
                                               _hd118885119169_
                                               _tl118884119171_
                                               _e118889119174_
                                               _hd118888119177_
                                               _tl118887119179_
                                               _e118892119182_
                                               _hd118891119185_
                                               _tl118890119187_
                                               _e118895119190_
                                               _hd118894119193_
                                               _tl118893119195_
                                               _e118898119198_
                                               _hd118897119201_
                                               _tl118896119203_
                                               _e118901119206_
                                               _hd118900119209_
                                               _tl118899119211_
                                               _e118904119214_
                                               _hd118903119217_
                                               _tl118902119219_
                                               _e118907119222_
                                               _hd118906119225_
                                               _tl118905119227_
                                               _e118910119230_
                                               _hd118909119233_
                                               _tl118908119235_
                                               _e118913119238_
                                               _hd118912119241_
                                               _tl118911119243_
                                               _e118916119246_
                                               _hd118915119249_
                                               _tl118914119251_)
                                              (___kont119547119548_))
                                          (___kont119547119548_))))
                                  (___kont119547119548_))
                              (___kont119547119548_))
                          (___kont119547119548_))))
                  (___kont119547119548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118899119211_))
                                                      (if (let ((__tmp119829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119829 'bind-method!))
                  (let ((_L119080_ _hd118906119225_)
                        (_L119081_ _hd118897119201_)
                        (_L119082_ _hd118888119177_)
                        (_L119083_ _hd118879119153_))
                    (___kont119545119546_
                     _L119080_
                     _L119081_
                     _L119082_
                     _L119083_))
                  (___kont119547119548_))
              (___kont119547119548_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119547119548_))))
                                      (___kont119547119548_))
                                  (___kont119547119548_))
                              (___kont119547119548_))))
                      (___kont119547119548_))))
              (___kont119547119548_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119547119548_))))
                                          (___kont119547119548_))
                                      (___kont119547119548_))
                                  (___kont119547119548_))))
                          (___kont119547119548_))))
                  (___kont119547119548_))
              (___kont119547119548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119547119548_))
                                          (___kont119547119548_))
                                      (___kont119547119548_))))
                              (___kont119547119548_))))
                      (___kont119547119548_))
                  (___kont119547119548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119547119548_))
                                              (___kont119547119548_))
                                          (___kont119547119548_))))
                                  (___kont119547119548_))))
                          (___kont119547119548_))))
                  (___kont119547119548_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118805_ _stx118806_)
        (let* ((_g118808118821_
                (lambda (_g118809118818_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118809118818_))))
               (_g118807118854_
                (lambda (_g118809118824_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118809118824_))
                      (let ((_e118813118826_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118809118824_))))
                        (let ((_hd118812118829_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118813118826_)))
                              (_tl118811118831_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118813118826_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118811118831_))
                              (let ((_e118816118834_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118811118831_))))
                                (let ((_hd118815118837_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118816118834_)))
                                      (_tl118814118839_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118816118834_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118814118839_))
                                      ((lambda (_L118842_)
                                         (if (let ((__tmp119833
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118805_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118842_
                                                __tmp119833))
                                             (let ((__tmp119830
                                                    (let ((__tmp119831
                                                           (let ((__tmp119832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118805_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119832 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119830
                                                _stx118806_))
                                             _stx118806_))
                                       _hd118815118837_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118808118821_ _g118809118824_)))))
                              (let ()
                                (declare (not safe))
                                (_g118808118821_ _g118809118824_)))))
                      (let ()
                        (declare (not safe))
                        (_g118808118821_ _g118809118824_))))))
          (declare (not safe))
          (_g118807118854_ _stx118806_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118746_ _stx118747_)
        (let* ((_g118749118762_
                (lambda (_g118750118759_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118750118759_))))
               (_g118748118802_
                (lambda (_g118750118765_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118750118765_))
                      (let ((_e118754118767_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118750118765_))))
                        (let ((_hd118753118770_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118754118767_)))
                              (_tl118752118772_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118754118767_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118752118772_))
                              (let ((_e118757118775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118752118772_))))
                                (let ((_hd118756118778_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118757118775_)))
                                      (_tl118755118780_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118757118775_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118755118780_))
                                      ((lambda (_L118783_)
                                         (let ((_$e118797_
                                                (let ((__tmp119835
                                                       (lambda (_sub118795_)
                                                         (let ((__tmp119836
                                                                (car _sub118795_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118783_
                                                            __tmp119836))))
                                                      (__tmp119834
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118746_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119835
                                                        __tmp119834))))
                                           (if _$e118797_
                                               ((lambda (_sub118800_)
                                                  (let ((__tmp119837
                                                         (let ((__tmp119838
                                                                (let ((__tmp119839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118800_)))
                          (declare (not safe))
                          (cons __tmp119839 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119837
                                                     _stx118747_)))
                                                _$e118797_)
                                               _stx118747_)))
                                       _hd118756118778_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118749118762_ _g118750118765_)))))
                              (let ()
                                (declare (not safe))
                                (_g118749118762_ _g118750118765_)))))
                      (let ()
                        (declare (not safe))
                        (_g118749118762_ _g118750118765_))))))
          (declare (not safe))
          (_g118748118802_ _stx118747_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118675_ _stx118676_)
        (let* ((_g118678118695_
                (lambda (_g118679118692_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118679118692_))))
               (_g118677118743_
                (lambda (_g118679118698_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118679118698_))
                      (let ((_e118684118700_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118679118698_))))
                        (let ((_hd118683118703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118684118700_)))
                              (_tl118682118705_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118684118700_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118682118705_))
                              (let ((_e118687118708_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118682118705_))))
                                (let ((_hd118686118711_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118687118708_)))
                                      (_tl118685118713_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118687118708_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118685118713_))
                                      (let ((_e118690118716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118685118713_))))
                                        (let ((_hd118689118719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118690118716_)))
                                              (_tl118688118721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118690118716_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118688118721_))
                                              ((lambda (_L118724_ _L118725_)
                                                 (let ((_new-expr118740_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118675_
                                                           _L118724_)))
                                                       (_new-xid118741_
                                                        (if (let ((__tmp119840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118675_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118725_ __tmp119840))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118675_ 'new-id))
                    _L118725_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119841
                                                          (let ((__tmp119842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119843
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118740_ '()))))
                           (declare (not safe))
                           (cons _new-xid118741_ __tmp119843))))
                    (declare (not safe))
                    (cons '%#set! __tmp119842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119841
                                                      _stx118676_))))
                                               _hd118689118719_
                                               _hd118686118711_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118678118695_
                                                 _g118679118698_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118678118695_ _g118679118698_)))))
                              (let ()
                                (declare (not safe))
                                (_g118678118695_ _g118679118698_)))))
                      (let ()
                        (declare (not safe))
                        (_g118678118695_ _g118679118698_))))))
          (declare (not safe))
          (_g118677118743_ _stx118676_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118599_ _stx118600_)
        (let* ((_g118602118619_
                (lambda (_g118603118616_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118603118616_))))
               (_g118601118672_
                (lambda (_g118603118622_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118603118622_))
                      (let ((_e118608118624_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118603118622_))))
                        (let ((_hd118607118627_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118608118624_)))
                              (_tl118606118629_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118608118624_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118606118629_))
                              (let ((_e118611118632_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118606118629_))))
                                (let ((_hd118610118635_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118611118632_)))
                                      (_tl118609118637_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118611118632_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118609118637_))
                                      (let ((_e118614118640_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118609118637_))))
                                        (let ((_hd118613118643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118614118640_)))
                                              (_tl118612118645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118614118640_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118612118645_))
                                              ((lambda (_L118648_ _L118649_)
                                                 (let ((_new-expr118669_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118599_
                                                           _L118648_)))
                                                       (_new-xid118670_
                                                        (let ((_$e118666_
                                                               (let ((__tmp119845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118664_)
                                (let ((__tmp119846 (car _sub118664_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118649_
                                   __tmp119846))))
                             (__tmp119844
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118599_ 'subst))))
                         (declare (not safe))
                         (find __tmp119845 __tmp119844))))
                  (if _$e118666_ (cdr _$e118666_) _L118649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119847
                                                          (let ((__tmp119848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119849
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118669_ '()))))
                           (declare (not safe))
                           (cons _new-xid118670_ __tmp119849))))
                    (declare (not safe))
                    (cons '%#set! __tmp119848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119847
                                                      _stx118600_))))
                                               _hd118613118643_
                                               _hd118610118635_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118602118619_
                                                 _g118603118622_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118602118619_ _g118603118622_)))))
                              (let ()
                                (declare (not safe))
                                (_g118602118619_ _g118603118622_)))))
                      (let ()
                        (declare (not safe))
                        (_g118602118619_ _g118603118622_))))))
          (declare (not safe))
          (_g118601118672_ _stx118600_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118545_ _stx118546_)
        (let* ((_g118548118561_
                (lambda (_g118549118558_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118549118558_))))
               (_g118547118596_
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
                                         (let* ((_eid118594_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118582_)))
                                                (__tmp119850
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118545_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119850
                                            _eid118594_
                                            1+
                                            '0)))
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
          (_g118547118596_ _stx118546_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118475_ _stx118476_)
        (let* ((_g118478118495_
                (lambda (_g118479118492_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118479118492_))))
               (_g118477118542_
                (lambda (_g118479118498_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118479118498_))
                      (let ((_e118484118500_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118479118498_))))
                        (let ((_hd118483118503_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118484118500_)))
                              (_tl118482118505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118484118500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118482118505_))
                              (let ((_e118487118508_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118482118505_))))
                                (let ((_hd118486118511_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118487118508_)))
                                      (_tl118485118513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118487118508_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118485118513_))
                                      (let ((_e118490118516_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118485118513_))))
                                        (let ((_hd118489118519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118490118516_)))
                                              (_tl118488118521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118490118516_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118488118521_))
                                              ((lambda (_L118524_ _L118525_)
                                                 (let ((_eid118540_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118525_))))
                                                   (let ((__tmp119851
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118475_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119851
                                                      _eid118540_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118475_
                                                      _L118524_))))
                                               _hd118489118519_
                                               _hd118486118511_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118478118495_
                                                 _g118479118498_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118478118495_ _g118479118498_)))))
                              (let ()
                                (declare (not safe))
                                (_g118478118495_ _g118479118498_)))))
                      (let ()
                        (declare (not safe))
                        (_g118478118495_ _g118479118498_))))))
          (declare (not safe))
          (_g118477118542_ _stx118476_))))
    (define gxc#find-body%
      (lambda (_self118388_ _stx118389_)
        (let* ((_g118391118410_
                (lambda (_g118392118407_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118392118407_))))
               (_g118390118472_
                (lambda (_g118392118413_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118392118413_))
                      (let ((_e118396118415_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118392118413_))))
                        (let ((_hd118395118418_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118396118415_)))
                              (_tl118394118420_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118396118415_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118394118420_))
                              (let ((_g119852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118394118420_
                                        '0))))
                                (begin
                                  (let ((_g119853_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119852_)
                                               (##vector-length _g119852_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119853_ 2)))
                                        (error "Context expects 2 values"
                                               _g119853_)))
                                  (let ((_target118397118423_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119852_ 0)))
                                        (_tl118399118425_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119852_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118399118425_))
                                        (letrec ((_loop118400118428_
                                                  (lambda (_hd118398118431_
                                                           _expr118404118433_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118398118431_))
                                                        (let ((_e118401118436_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118398118431_))))
                  (let ((_lp-hd118402118439_
                         (let () (declare (not safe)) (##car _e118401118436_)))
                        (_lp-tl118403118441_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118401118436_))))
                    (let ((__tmp119857
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118402118439_ _expr118404118433_))))
                      (declare (not safe))
                      (_loop118400118428_ _lp-tl118403118441_ __tmp119857))))
                (let ((_expr118405118444_ (reverse _expr118404118433_)))
                  ((lambda (_L118447_)
                     (let ((__tmp119856
                            (lambda (_g118460118462_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118388_
                                 _g118460118462_))))
                           (__tmp119854
                            (let ((__tmp119855
                                   (lambda (_g118464118467_ _g118465118469_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118464118467_
                                             _g118465118469_)))))
                              (declare (not safe))
                              (foldr1 __tmp119855 '() _L118447_))))
                       (declare (not safe))
                       (ormap1 __tmp119856 __tmp119854)))
                   _expr118405118444_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118400118428_
                                             _target118397118423_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118391118410_
                                           _g118392118413_))))))
                              (let ()
                                (declare (not safe))
                                (_g118391118410_ _g118392118413_)))))
                      (let ()
                        (declare (not safe))
                        (_g118391118410_ _g118392118413_))))))
          (declare (not safe))
          (_g118390118472_ _stx118389_))))
    (define gxc#find-let-values%
      (lambda (_self118238_ _stx118239_)
        (let* ((_g118241118276_
                (lambda (_g118242118273_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118242118273_))))
               (_g118240118385_
                (lambda (_g118242118279_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118242118279_))
                      (let ((_e118248118281_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118242118279_))))
                        (let ((_hd118247118284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118248118281_)))
                              (_tl118246118286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118248118281_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118246118286_))
                              (let ((_e118251118289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118246118286_))))
                                (let ((_hd118250118292_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118251118289_)))
                                      (_tl118249118294_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118251118289_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd118250118292_))
                                      (let ((_g119858_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd118250118292_
                                                '0))))
                                        (begin
                                          (let ((_g119859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119858_)
                                                       (##vector-length
                                                        _g119858_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119859_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119859_)))
                                          (let ((_target118252118297_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119858_ 0)))
                                                (_tl118254118299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119858_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118254118299_))
                                                (letrec ((_loop118255118302_
                                                          (lambda (_hd118253118305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr118259118307_
                           _bind118260118309_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118253118305_))
                        (let ((_e118256118312_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118253118305_))))
                          (let ((_lp-hd118257118315_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118256118312_)))
                                (_lp-tl118258118317_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118256118312_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd118257118315_))
                                (let ((_e118265118320_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd118257118315_))))
                                  (let ((_hd118264118323_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118265118320_)))
                                        (_tl118263118325_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118265118320_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118263118325_))
                                        (let ((_e118268118328_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118263118325_))))
                                          (let ((_hd118267118331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118268118328_)))
                                                (_tl118266118333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118268118328_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118266118333_))
                                                (let ((__tmp119864
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118267118331_
                                                               _expr118259118307_)))
                                                      (__tmp119863
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118264118323_
                                                               _bind118260118309_))))
                                                  (declare (not safe))
                                                  (_loop118255118302_
                                                   _lp-tl118258118317_
                                                   __tmp119864
                                                   __tmp119863))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118241118276_
                                                   _g118242118279_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g118241118276_ _g118242118279_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g118241118276_ _g118242118279_)))))
                        (let ((_expr118261118336_ (reverse _expr118259118307_))
                              (_bind118262118338_
                               (reverse _bind118260118309_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118249118294_))
                              (let ((_e118271118341_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118249118294_))))
                                (let ((_hd118270118344_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118271118341_)))
                                      (_tl118269118346_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118271118341_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118269118346_))
                                      ((lambda (_L118349_ _L118350_ _L118351_)
                                         (let ((_$e118382_
                                                (let ((__tmp119862
                                                       (lambda (_g118370118372_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self118238_
                                                            _g118370118372_))))
                                                      (__tmp119860
                                                       (let ((__tmp119861
                                                              (lambda (_g118374118377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118375118379_)
                        (let ()
                          (declare (not safe))
                          (cons _g118374118377_ _g118375118379_)))))
                 (declare (not safe))
                 (foldr1 __tmp119861 '() _L118350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119862
                                                          __tmp119860))))
                                           (if _$e118382_
                                               _$e118382_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self118238_
                                                  _L118349_)))))
                                       _hd118270118344_
                                       _expr118261118336_
                                       _bind118262118338_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118241118276_ _g118242118279_)))))
                              (let ()
                                (declare (not safe))
                                (_g118241118276_ _g118242118279_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop118255118302_
                                                     _target118252118297_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118241118276_
                                                   _g118242118279_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118241118276_ _g118242118279_)))))
                              (let ()
                                (declare (not safe))
                                (_g118241118276_ _g118242118279_)))))
                      (let ()
                        (declare (not safe))
                        (_g118241118276_ _g118242118279_))))))
          (declare (not safe))
          (_g118240118385_ _stx118239_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self118182_ _stx118183_)
        (let* ((_g118185118198_
                (lambda (_g118186118195_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118186118195_))))
               (_g118184118235_
                (lambda (_g118186118201_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118186118201_))
                      (let ((_e118190118203_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118186118201_))))
                        (let ((_hd118189118206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118190118203_)))
                              (_tl118188118208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118190118203_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118188118208_))
                              (let ((_e118193118211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118188118208_))))
                                (let ((_hd118192118214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118193118211_)))
                                      (_tl118191118216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118193118211_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118191118216_))
                                      ((lambda (_L118219_)
                                         (let ((__tmp119866
                                                (lambda (_g118230118232_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L118219_
                                                     _g118230118232_))))
                                               (__tmp119865
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self118182_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119866 __tmp119865)))
                                       _hd118192118214_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118185118198_ _g118186118201_)))))
                              (let ()
                                (declare (not safe))
                                (_g118185118198_ _g118186118201_)))))
                      (let ()
                        (declare (not safe))
                        (_g118185118198_ _g118186118201_))))))
          (declare (not safe))
          (_g118184118235_ _stx118183_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self118107_ _stx118108_)
        (let* ((_g118110118127_
                (lambda (_g118111118124_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118111118124_))))
               (_g118109118179_
                (lambda (_g118111118130_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118111118130_))
                      (let ((_e118116118132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118111118130_))))
                        (let ((_hd118115118135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118116118132_)))
                              (_tl118114118137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118116118132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118114118137_))
                              (let ((_e118119118140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118114118137_))))
                                (let ((_hd118118118143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118119118140_)))
                                      (_tl118117118145_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118119118140_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118117118145_))
                                      (let ((_e118122118148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118117118145_))))
                                        (let ((_hd118121118151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118122118148_)))
                                              (_tl118120118153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118122118148_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118120118153_))
                                              ((lambda (_L118156_ _L118157_)
                                                 (let ((_$e118176_
                                                        (let ((__tmp119868
                                                               (lambda (_g118171118173_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L118157_ _g118171118173_))))
                      (__tmp119867
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self118107_ 'ids))))
                  (declare (not safe))
                  (find __tmp119868 __tmp119867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e118176_
                                                       _$e118176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self118107_
                                                          _L118156_)))))
                                               _hd118121118151_
                                               _hd118118118143_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118110118127_
                                                 _g118111118130_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118110118127_ _g118111118130_)))))
                              (let ()
                                (declare (not safe))
                                (_g118110118127_ _g118111118130_)))))
                      (let ()
                        (declare (not safe))
                        (_g118110118127_ _g118111118130_))))))
          (declare (not safe))
          (_g118109118179_ _stx118108_))))))
