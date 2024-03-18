(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710781150)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp119813 (list gxc#::void::t))
            (__tmp119811
             (let ((__tmp119812
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119812 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp119813
         '()
         __tmp119811
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args119552_
        (apply make-instance gxc#::collect-mutators::t _$args119552_)))
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
      (lambda (_stx119544_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self119547_
                (let ((__obj119799
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj119799))
               (__tmp119814
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119547_ _stx119544_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119814
           gxc#current-compile-method
           _self119547_))))
    (define gxc#::collect-methods::t
      (let ((__tmp119817 (list gxc#::void::t))
            (__tmp119815
             (let ((__tmp119816
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119816 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp119817
         '()
         __tmp119815
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args119541_
        (apply make-instance gxc#::collect-methods::t _$args119541_)))
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
      (lambda (_stx119533_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self119536_
                (let ((__obj119801
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj119801))
               (__tmp119818
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self119536_ _stx119533_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp119818
           gxc#current-compile-method
           _self119536_))))
    (define gxc#::expression-subst::t
      (let ((__tmp119821 (list gxc#::basic-xform-expression::t))
            (__tmp119819
             (let ((__tmp119820
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119820 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp119821
         '(id new-id)
         __tmp119819
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args119530_
        (apply make-instance gxc#::expression-subst::t _$args119530_)))
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
      (lambda (_g119822_ _id119496119500_ _new-id119497119502_ _stx119504_)
        (let* ((_id119507_
                (if (let ()
                      (declare (not safe))
                      (eq? _id119496119500_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id119496119500_))
               (_new-id119509_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id119497119502_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id119497119502_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self119511_
                  (let ((__obj119803
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119803
                       _id119507_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119803
                       _new-id119509_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj119803))
                 (__tmp119823
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119511_ _stx119504_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119823
             gxc#current-compile-method
             _self119511_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys119495119518_ . _args119520_)
        (apply gxc#apply-expression-subst__%
               _keys119495119518_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119495119518_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119495119518_ 'new-id: absent-value))
               _args119520_)))
    (define gxc#apply-expression-subst
      (lambda _args119498119526_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args119498119526_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp119826 (list gxc#::basic-xform-expression::t))
            (__tmp119824
             (let ((__tmp119825
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119825 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp119826
         '(subst)
         __tmp119824
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args119491_
        (apply make-instance gxc#::expression-subst*::t _$args119491_)))
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
      (lambda (_g119827_ _subst119462119465_ _stx119467_)
        (let ((_subst119470_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst119462119465_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst119462119465_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self119472_
                  (let ((__obj119805
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119805
                       _subst119470_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj119805))
                 (__tmp119828
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119472_ _stx119467_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119828
             gxc#current-compile-method
             _self119472_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys119461119479_ . _args119481_)
        (apply gxc#apply-expression-subst*__%
               _keys119461119479_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119461119479_ 'subst: absent-value))
               _args119481_)))
    (define gxc#apply-expression-subst*
      (lambda _args119463119487_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args119463119487_)))
    (define gxc#::find-expression::t
      (let ((__tmp119829 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp119829
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args119457_
        (apply make-instance gxc#::find-expression::t _$args119457_)))
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
      (let ((__tmp119832 (list gxc#::find-expression::t))
            (__tmp119830
             (let ((__tmp119831
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119831 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp119832
         '(ids)
         __tmp119830
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args119453_
        (apply make-instance gxc#::find-var-refs::t _$args119453_)))
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
      (lambda (_g119833_ _ids119424119427_ _stx119429_)
        (let ((_ids119432_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids119424119427_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids119424119427_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self119434_
                  (let ((__obj119808
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119808
                       _ids119432_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj119808))
                 (__tmp119834
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119434_ _stx119429_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119834
             gxc#current-compile-method
             _self119434_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys119423119441_ . _args119443_)
        (apply gxc#apply-find-var-refs__%
               _keys119423119441_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119423119441_ 'ids: absent-value))
               _args119443_)))
    (define gxc#apply-find-var-refs
      (lambda _args119425119449_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args119425119449_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp119837 (list gxc#::collect-expression-refs::t))
            (__tmp119835
             (let ((__tmp119836
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp119836 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp119837
         '()
         __tmp119835
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args119419_
        (apply make-instance gxc#::collect-runtime-refs::t _$args119419_)))
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
      (lambda (_g119838_ _table119390119393_ _stx119395_)
        (let ((_table119398_
               (if (let ()
                     (declare (not safe))
                     (eq? _table119390119393_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table119390119393_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self119400_
                  (let ((__obj119810
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj119810
                       _table119398_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj119810))
                 (__tmp119839
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self119400_ _stx119395_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp119839
             gxc#current-compile-method
             _self119400_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys119389119407_ . _args119409_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys119389119407_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys119389119407_ 'table: absent-value))
               _args119409_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args119391119415_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args119391119415_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self119318_ _stx119319_)
        (let* ((_g119321119338_
                (lambda (_g119322119335_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119322119335_))))
               (_g119320119385_
                (lambda (_g119322119341_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119322119341_))
                      (let ((_e119327119343_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119322119341_))))
                        (let ((_hd119326119346_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119327119343_)))
                              (_tl119325119348_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119327119343_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119325119348_))
                              (let ((_e119330119351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119325119348_))))
                                (let ((_hd119329119354_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119330119351_)))
                                      (_tl119328119356_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119330119351_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119328119356_))
                                      (let ((_e119333119359_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119328119356_))))
                                        (let ((_hd119332119362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119333119359_)))
                                              (_tl119331119364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119333119359_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119331119364_))
                                              ((lambda (_L119367_ _L119368_)
                                                 (let ((_sym119383_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L119368_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym119383_))
                                                   (let ((__tmp119840
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp119840
                                                      _sym119383_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self119318_
                                                      _L119367_))))
                                               _hd119332119362_
                                               _hd119329119354_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119321119338_
                                                 _g119322119341_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119321119338_ _g119322119341_)))))
                              (let ()
                                (declare (not safe))
                                (_g119321119338_ _g119322119341_)))))
                      (let ()
                        (declare (not safe))
                        (_g119321119338_ _g119322119341_))))))
          (declare (not safe))
          (_g119320119385_ _stx119319_))))
    (define gxc#collect-methods-call%
      (lambda (_self118871_ _stx118872_)
        (let* ((___stx119555119556_ _stx118872_)
               (_g118876118978_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx119555119556_)))))
          (let ((___kont119557119558_
                 (lambda (_L119268_ _L119269_ _L119270_ _L119271_ _L119272_)
                   (let ((__tmp119841
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119269_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119841))))
                (___kont119559119560_
                 (lambda (_L119094_ _L119095_ _L119096_ _L119097_)
                   (let ((__tmp119842
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L119094_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp119842))))
                (___kont119561119562_ (lambda () '#!void)))
            (let ((___match119690119691_
                   (lambda (_e118885119140_
                            _hd118884119143_
                            _tl118883119145_
                            _e118888119148_
                            _hd118887119151_
                            _tl118886119153_
                            _e118891119156_
                            _hd118890119159_
                            _tl118889119161_
                            _e118894119164_
                            _hd118893119167_
                            _tl118892119169_
                            _e118897119172_
                            _hd118896119175_
                            _tl118895119177_
                            _e118900119180_
                            _hd118899119183_
                            _tl118898119185_
                            _e118903119188_
                            _hd118902119191_
                            _tl118901119193_
                            _e118906119196_
                            _hd118905119199_
                            _tl118904119201_
                            _e118909119204_
                            _hd118908119207_
                            _tl118907119209_
                            _e118912119212_
                            _hd118911119215_
                            _tl118910119217_
                            _e118915119220_
                            _hd118914119223_
                            _tl118913119225_
                            _e118918119228_
                            _hd118917119231_
                            _tl118916119233_
                            _e118921119236_
                            _hd118920119239_
                            _tl118919119241_
                            _e118924119244_
                            _hd118923119247_
                            _tl118922119249_
                            _e118927119252_
                            _hd118926119255_
                            _tl118925119257_
                            _e118930119260_
                            _hd118929119263_
                            _tl118928119265_)
                     (let ((_L119268_ _hd118929119263_)
                           (_L119269_ _hd118920119239_)
                           (_L119270_ _hd118911119215_)
                           (_L119271_ _hd118902119191_)
                           (_L119272_ _hd118893119167_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L119272_
                              'bind-method!))
                           (___kont119557119558_
                            _L119268_
                            _L119269_
                            _L119270_
                            _L119271_
                            _L119272_)
                           (___kont119561119562_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx119555119556_))
                  (let ((_e118885119140_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx119555119556_))))
                    (let ((_tl118883119145_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118885119140_)))
                          (_hd118884119143_
                           (let ()
                             (declare (not safe))
                             (##car _e118885119140_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118883119145_))
                          (let ((_e118888119148_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118883119145_))))
                            (let ((_tl118886119153_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118888119148_)))
                                  (_hd118887119151_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118888119148_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118887119151_))
                                  (let ((_e118891119156_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118887119151_))))
                                    (let ((_tl118889119161_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118891119156_)))
                                          (_hd118890119159_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118891119156_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd118890119159_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd118890119159_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118889119161_))
                                                  (let ((_e118894119164_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118889119161_))))
                                                    (let ((_tl118892119169_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118894119164_)))
                                                          (_hd118893119167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118894119164_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118892119169_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118886119153_))
                      (let ((_e118897119172_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118886119153_))))
                        (let ((_tl118895119177_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118897119172_)))
                              (_hd118896119175_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118897119172_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118896119175_))
                              (let ((_e118900119180_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118896119175_))))
                                (let ((_tl118898119185_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118900119180_)))
                                      (_hd118899119183_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118900119180_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd118899119183_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd118899119183_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl118898119185_))
                                              (let ((_e118903119188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl118898119185_))))
                                                (let ((_tl118901119193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118903119188_)))
                                                      (_hd118902119191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118903119188_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118901119193_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl118895119177_))
                                                          (let ((_e118906119196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl118895119177_))))
                    (let ((_tl118904119201_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118906119196_)))
                          (_hd118905119199_
                           (let ()
                             (declare (not safe))
                             (##car _e118906119196_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd118905119199_))
                          (let ((_e118909119204_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd118905119199_))))
                            (let ((_tl118907119209_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118909119204_)))
                                  (_hd118908119207_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118909119204_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd118908119207_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd118908119207_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl118907119209_))
                                          (let ((_e118912119212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl118907119209_))))
                                            (let ((_tl118910119217_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118912119212_)))
                                                  (_hd118911119215_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118912119212_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl118910119217_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl118904119201_))
                                                      (let ((_e118915119220_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl118904119201_))))
                (let ((_tl118913119225_
                       (let () (declare (not safe)) (##cdr _e118915119220_)))
                      (_hd118914119223_
                       (let () (declare (not safe)) (##car _e118915119220_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118914119223_))
                      (let ((_e118918119228_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118914119223_))))
                        (let ((_tl118916119233_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118918119228_)))
                              (_hd118917119231_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118918119228_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd118917119231_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd118917119231_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118916119233_))
                                      (let ((_e118921119236_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118916119233_))))
                                        (let ((_tl118919119241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118921119236_)))
                                              (_hd118920119239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118921119236_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118919119241_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118913119225_))
                                                  (let ((_e118924119244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118913119225_))))
                                                    (let ((_tl118922119249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118924119244_)))
                                                          (_hd118923119247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118924119244_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd118923119247_))
                                                          (let ((_e118927119252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd118923119247_))))
                    (let ((_tl118925119257_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118927119252_)))
                          (_hd118926119255_
                           (let ()
                             (declare (not safe))
                             (##car _e118927119252_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd118926119255_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd118926119255_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118925119257_))
                                  (let ((_e118930119260_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118925119257_))))
                                    (let ((_tl118928119265_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118930119260_)))
                                          (_hd118929119263_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118930119260_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118928119265_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118922119249_))
                                              (___match119690119691_
                                               _e118885119140_
                                               _hd118884119143_
                                               _tl118883119145_
                                               _e118888119148_
                                               _hd118887119151_
                                               _tl118886119153_
                                               _e118891119156_
                                               _hd118890119159_
                                               _tl118889119161_
                                               _e118894119164_
                                               _hd118893119167_
                                               _tl118892119169_
                                               _e118897119172_
                                               _hd118896119175_
                                               _tl118895119177_
                                               _e118900119180_
                                               _hd118899119183_
                                               _tl118898119185_
                                               _e118903119188_
                                               _hd118902119191_
                                               _tl118901119193_
                                               _e118906119196_
                                               _hd118905119199_
                                               _tl118904119201_
                                               _e118909119204_
                                               _hd118908119207_
                                               _tl118907119209_
                                               _e118912119212_
                                               _hd118911119215_
                                               _tl118910119217_
                                               _e118915119220_
                                               _hd118914119223_
                                               _tl118913119225_
                                               _e118918119228_
                                               _hd118917119231_
                                               _tl118916119233_
                                               _e118921119236_
                                               _hd118920119239_
                                               _tl118919119241_
                                               _e118924119244_
                                               _hd118923119247_
                                               _tl118922119249_
                                               _e118927119252_
                                               _hd118926119255_
                                               _tl118925119257_
                                               _e118930119260_
                                               _hd118929119263_
                                               _tl118928119265_)
                                              (___kont119561119562_))
                                          (___kont119561119562_))))
                                  (___kont119561119562_))
                              (___kont119561119562_))
                          (___kont119561119562_))))
                  (___kont119561119562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl118913119225_))
                                                      (if (let ((__tmp119843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp119843 'bind-method!))
                  (let ((_L119094_ _hd118920119239_)
                        (_L119095_ _hd118911119215_)
                        (_L119096_ _hd118902119191_)
                        (_L119097_ _hd118893119167_))
                    (___kont119559119560_
                     _L119094_
                     _L119095_
                     _L119096_
                     _L119097_))
                  (___kont119561119562_))
              (___kont119561119562_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119561119562_))))
                                      (___kont119561119562_))
                                  (___kont119561119562_))
                              (___kont119561119562_))))
                      (___kont119561119562_))))
              (___kont119561119562_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119561119562_))))
                                          (___kont119561119562_))
                                      (___kont119561119562_))
                                  (___kont119561119562_))))
                          (___kont119561119562_))))
                  (___kont119561119562_))
              (___kont119561119562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont119561119562_))
                                          (___kont119561119562_))
                                      (___kont119561119562_))))
                              (___kont119561119562_))))
                      (___kont119561119562_))
                  (___kont119561119562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont119561119562_))
                                              (___kont119561119562_))
                                          (___kont119561119562_))))
                                  (___kont119561119562_))))
                          (___kont119561119562_))))
                  (___kont119561119562_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self118819_ _stx118820_)
        (let* ((_g118822118835_
                (lambda (_g118823118832_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118823118832_))))
               (_g118821118868_
                (lambda (_g118823118838_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118823118838_))
                      (let ((_e118827118840_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118823118838_))))
                        (let ((_hd118826118843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118827118840_)))
                              (_tl118825118845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118827118840_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118825118845_))
                              (let ((_e118830118848_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118825118845_))))
                                (let ((_hd118829118851_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118830118848_)))
                                      (_tl118828118853_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118830118848_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118828118853_))
                                      ((lambda (_L118856_)
                                         (if (let ((__tmp119847
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self118819_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L118856_
                                                __tmp119847))
                                             (let ((__tmp119844
                                                    (let ((__tmp119845
                                                           (let ((__tmp119846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self118819_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp119846 '()))))
              (declare (not safe))
              (cons '%#ref __tmp119845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp119844
                                                _stx118820_))
                                             _stx118820_))
                                       _hd118829118851_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118822118835_ _g118823118838_)))))
                              (let ()
                                (declare (not safe))
                                (_g118822118835_ _g118823118838_)))))
                      (let ()
                        (declare (not safe))
                        (_g118822118835_ _g118823118838_))))))
          (declare (not safe))
          (_g118821118868_ _stx118820_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self118760_ _stx118761_)
        (let* ((_g118763118776_
                (lambda (_g118764118773_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118764118773_))))
               (_g118762118816_
                (lambda (_g118764118779_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118764118779_))
                      (let ((_e118768118781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118764118779_))))
                        (let ((_hd118767118784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118768118781_)))
                              (_tl118766118786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118768118781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118766118786_))
                              (let ((_e118771118789_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118766118786_))))
                                (let ((_hd118770118792_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118771118789_)))
                                      (_tl118769118794_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118771118789_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118769118794_))
                                      ((lambda (_L118797_)
                                         (let ((_$e118811_
                                                (let ((__tmp119849
                                                       (lambda (_sub118809_)
                                                         (let ((__tmp119850
                                                                (car _sub118809_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L118797_
                                                            __tmp119850))))
                                                      (__tmp119848
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self118760_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp119849
                                                        __tmp119848))))
                                           (if _$e118811_
                                               ((lambda (_sub118814_)
                                                  (let ((__tmp119851
                                                         (let ((__tmp119852
                                                                (let ((__tmp119853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub118814_)))
                          (declare (not safe))
                          (cons __tmp119853 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp119852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp119851
                                                     _stx118761_)))
                                                _$e118811_)
                                               _stx118761_)))
                                       _hd118770118792_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118763118776_ _g118764118779_)))))
                              (let ()
                                (declare (not safe))
                                (_g118763118776_ _g118764118779_)))))
                      (let ()
                        (declare (not safe))
                        (_g118763118776_ _g118764118779_))))))
          (declare (not safe))
          (_g118762118816_ _stx118761_))))
    (define gxc#expression-subst-setq%
      (lambda (_self118689_ _stx118690_)
        (let* ((_g118692118709_
                (lambda (_g118693118706_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118693118706_))))
               (_g118691118757_
                (lambda (_g118693118712_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118693118712_))
                      (let ((_e118698118714_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118693118712_))))
                        (let ((_hd118697118717_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118698118714_)))
                              (_tl118696118719_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118698118714_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118696118719_))
                              (let ((_e118701118722_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118696118719_))))
                                (let ((_hd118700118725_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118701118722_)))
                                      (_tl118699118727_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118701118722_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118699118727_))
                                      (let ((_e118704118730_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118699118727_))))
                                        (let ((_hd118703118733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118704118730_)))
                                              (_tl118702118735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118704118730_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118702118735_))
                                              ((lambda (_L118738_ _L118739_)
                                                 (let ((_new-expr118754_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118689_
                                                           _L118738_)))
                                                       (_new-xid118755_
                                                        (if (let ((__tmp119854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self118689_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L118739_ __tmp119854))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self118689_ 'new-id))
                    _L118739_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119855
                                                          (let ((__tmp119856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119857
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118754_ '()))))
                           (declare (not safe))
                           (cons _new-xid118755_ __tmp119857))))
                    (declare (not safe))
                    (cons '%#set! __tmp119856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119855
                                                      _stx118690_))))
                                               _hd118703118733_
                                               _hd118700118725_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118692118709_
                                                 _g118693118712_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118692118709_ _g118693118712_)))))
                              (let ()
                                (declare (not safe))
                                (_g118692118709_ _g118693118712_)))))
                      (let ()
                        (declare (not safe))
                        (_g118692118709_ _g118693118712_))))))
          (declare (not safe))
          (_g118691118757_ _stx118690_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self118613_ _stx118614_)
        (let* ((_g118616118633_
                (lambda (_g118617118630_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118617118630_))))
               (_g118615118686_
                (lambda (_g118617118636_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118617118636_))
                      (let ((_e118622118638_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118617118636_))))
                        (let ((_hd118621118641_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118622118638_)))
                              (_tl118620118643_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118622118638_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118620118643_))
                              (let ((_e118625118646_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118620118643_))))
                                (let ((_hd118624118649_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118625118646_)))
                                      (_tl118623118651_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118625118646_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118623118651_))
                                      (let ((_e118628118654_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118623118651_))))
                                        (let ((_hd118627118657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118628118654_)))
                                              (_tl118626118659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118628118654_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118626118659_))
                                              ((lambda (_L118662_ _L118663_)
                                                 (let ((_new-expr118683_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self118613_
                                                           _L118662_)))
                                                       (_new-xid118684_
                                                        (let ((_$e118680_
                                                               (let ((__tmp119859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub118678_)
                                (let ((__tmp119860 (car _sub118678_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L118663_
                                   __tmp119860))))
                             (__tmp119858
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self118613_ 'subst))))
                         (declare (not safe))
                         (find __tmp119859 __tmp119858))))
                  (if _$e118680_ (cdr _$e118680_) _L118663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp119861
                                                          (let ((__tmp119862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp119863
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr118683_ '()))))
                           (declare (not safe))
                           (cons _new-xid118684_ __tmp119863))))
                    (declare (not safe))
                    (cons '%#set! __tmp119862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp119861
                                                      _stx118614_))))
                                               _hd118627118657_
                                               _hd118624118649_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118616118633_
                                                 _g118617118636_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118616118633_ _g118617118636_)))))
                              (let ()
                                (declare (not safe))
                                (_g118616118633_ _g118617118636_)))))
                      (let ()
                        (declare (not safe))
                        (_g118616118633_ _g118617118636_))))))
          (declare (not safe))
          (_g118615118686_ _stx118614_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self118559_ _stx118560_)
        (let* ((_g118562118575_
                (lambda (_g118563118572_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118563118572_))))
               (_g118561118610_
                (lambda (_g118563118578_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118563118578_))
                      (let ((_e118567118580_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118563118578_))))
                        (let ((_hd118566118583_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118567118580_)))
                              (_tl118565118585_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118567118580_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118565118585_))
                              (let ((_e118570118588_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118565118585_))))
                                (let ((_hd118569118591_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118570118588_)))
                                      (_tl118568118593_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118570118588_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118568118593_))
                                      ((lambda (_L118596_)
                                         (let* ((_eid118608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L118596_)))
                                                (__tmp119864
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self118559_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp119864
                                            _eid118608_
                                            1+
                                            '0)))
                                       _hd118569118591_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118562118575_ _g118563118578_)))))
                              (let ()
                                (declare (not safe))
                                (_g118562118575_ _g118563118578_)))))
                      (let ()
                        (declare (not safe))
                        (_g118562118575_ _g118563118578_))))))
          (declare (not safe))
          (_g118561118610_ _stx118560_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self118489_ _stx118490_)
        (let* ((_g118492118509_
                (lambda (_g118493118506_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118493118506_))))
               (_g118491118556_
                (lambda (_g118493118512_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118493118512_))
                      (let ((_e118498118514_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118493118512_))))
                        (let ((_hd118497118517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118498118514_)))
                              (_tl118496118519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118498118514_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118496118519_))
                              (let ((_e118501118522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118496118519_))))
                                (let ((_hd118500118525_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118501118522_)))
                                      (_tl118499118527_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118501118522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118499118527_))
                                      (let ((_e118504118530_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118499118527_))))
                                        (let ((_hd118503118533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118504118530_)))
                                              (_tl118502118535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118504118530_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118502118535_))
                                              ((lambda (_L118538_ _L118539_)
                                                 (let ((_eid118554_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L118539_))))
                                                   (let ((__tmp119865
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self118489_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp119865
                                                      _eid118554_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self118489_
                                                      _L118538_))))
                                               _hd118503118533_
                                               _hd118500118525_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118492118509_
                                                 _g118493118512_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118492118509_ _g118493118512_)))))
                              (let ()
                                (declare (not safe))
                                (_g118492118509_ _g118493118512_)))))
                      (let ()
                        (declare (not safe))
                        (_g118492118509_ _g118493118512_))))))
          (declare (not safe))
          (_g118491118556_ _stx118490_))))
    (define gxc#find-body%
      (lambda (_self118402_ _stx118403_)
        (let* ((_g118405118424_
                (lambda (_g118406118421_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118406118421_))))
               (_g118404118486_
                (lambda (_g118406118427_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118406118427_))
                      (let ((_e118410118429_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118406118427_))))
                        (let ((_hd118409118432_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118410118429_)))
                              (_tl118408118434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118410118429_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl118408118434_))
                              (let ((_g119866_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl118408118434_
                                        '0))))
                                (begin
                                  (let ((_g119867_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g119866_)
                                               (##vector-length _g119866_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g119867_ 2)))
                                        (error "Context expects 2 values"
                                               _g119867_)))
                                  (let ((_target118411118437_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119866_ 0)))
                                        (_tl118413118439_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g119866_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118413118439_))
                                        (letrec ((_loop118414118442_
                                                  (lambda (_hd118412118445_
                                                           _expr118418118447_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118412118445_))
                                                        (let ((_e118415118450_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118412118445_))))
                  (let ((_lp-hd118416118453_
                         (let () (declare (not safe)) (##car _e118415118450_)))
                        (_lp-tl118417118455_
                         (let ()
                           (declare (not safe))
                           (##cdr _e118415118450_))))
                    (let ((__tmp119871
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd118416118453_ _expr118418118447_))))
                      (declare (not safe))
                      (_loop118414118442_ _lp-tl118417118455_ __tmp119871))))
                (let ((_expr118419118458_ (reverse _expr118418118447_)))
                  ((lambda (_L118461_)
                     (let ((__tmp119870
                            (lambda (_g118474118476_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self118402_
                                 _g118474118476_))))
                           (__tmp119868
                            (let ((__tmp119869
                                   (lambda (_g118478118481_ _g118479118483_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g118478118481_
                                             _g118479118483_)))))
                              (declare (not safe))
                              (foldr1 __tmp119869 '() _L118461_))))
                       (declare (not safe))
                       (ormap1 __tmp119870 __tmp119868)))
                   _expr118419118458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop118414118442_
                                             _target118411118437_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g118405118424_
                                           _g118406118427_))))))
                              (let ()
                                (declare (not safe))
                                (_g118405118424_ _g118406118427_)))))
                      (let ()
                        (declare (not safe))
                        (_g118405118424_ _g118406118427_))))))
          (declare (not safe))
          (_g118404118486_ _stx118403_))))
    (define gxc#find-let-values%
      (lambda (_self118252_ _stx118253_)
        (let* ((_g118255118290_
                (lambda (_g118256118287_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118256118287_))))
               (_g118254118399_
                (lambda (_g118256118293_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118256118293_))
                      (let ((_e118262118295_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118256118293_))))
                        (let ((_hd118261118298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118262118295_)))
                              (_tl118260118300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118262118295_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118260118300_))
                              (let ((_e118265118303_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118260118300_))))
                                (let ((_hd118264118306_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118265118303_)))
                                      (_tl118263118308_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118265118303_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd118264118306_))
                                      (let ((_g119872_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd118264118306_
                                                '0))))
                                        (begin
                                          (let ((_g119873_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g119872_)
                                                       (##vector-length
                                                        _g119872_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g119873_ 2)))
                                                (error "Context expects 2 values"
                                                       _g119873_)))
                                          (let ((_target118266118311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g119872_ 0)))
                                                (_tl118268118313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g119872_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118268118313_))
                                                (letrec ((_loop118269118316_
                                                          (lambda (_hd118267118319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr118273118321_
                           _bind118274118323_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118267118319_))
                        (let ((_e118270118326_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118267118319_))))
                          (let ((_lp-hd118271118329_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118270118326_)))
                                (_lp-tl118272118331_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118270118326_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd118271118329_))
                                (let ((_e118279118334_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd118271118329_))))
                                  (let ((_hd118278118337_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118279118334_)))
                                        (_tl118277118339_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118279118334_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118277118339_))
                                        (let ((_e118282118342_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118277118339_))))
                                          (let ((_hd118281118345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118282118342_)))
                                                (_tl118280118347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118282118342_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118280118347_))
                                                (let ((__tmp119878
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118281118345_
                                                               _expr118273118321_)))
                                                      (__tmp119877
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd118278118337_
                                                               _bind118274118323_))))
                                                  (declare (not safe))
                                                  (_loop118269118316_
                                                   _lp-tl118272118331_
                                                   __tmp119878
                                                   __tmp119877))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118255118290_
                                                   _g118256118293_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g118255118290_ _g118256118293_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g118255118290_ _g118256118293_)))))
                        (let ((_expr118275118350_ (reverse _expr118273118321_))
                              (_bind118276118352_
                               (reverse _bind118274118323_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118263118308_))
                              (let ((_e118285118355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118263118308_))))
                                (let ((_hd118284118358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118285118355_)))
                                      (_tl118283118360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118285118355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118283118360_))
                                      ((lambda (_L118363_ _L118364_ _L118365_)
                                         (let ((_$e118396_
                                                (let ((__tmp119876
                                                       (lambda (_g118384118386_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self118252_
                                                            _g118384118386_))))
                                                      (__tmp119874
                                                       (let ((__tmp119875
                                                              (lambda (_g118388118391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g118389118393_)
                        (let ()
                          (declare (not safe))
                          (cons _g118388118391_ _g118389118393_)))))
                 (declare (not safe))
                 (foldr1 __tmp119875 '() _L118364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp119876
                                                          __tmp119874))))
                                           (if _$e118396_
                                               _$e118396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self118252_
                                                  _L118363_)))))
                                       _hd118284118358_
                                       _expr118275118350_
                                       _bind118276118352_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118255118290_ _g118256118293_)))))
                              (let ()
                                (declare (not safe))
                                (_g118255118290_ _g118256118293_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop118269118316_
                                                     _target118266118311_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g118255118290_
                                                   _g118256118293_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118255118290_ _g118256118293_)))))
                              (let ()
                                (declare (not safe))
                                (_g118255118290_ _g118256118293_)))))
                      (let ()
                        (declare (not safe))
                        (_g118255118290_ _g118256118293_))))))
          (declare (not safe))
          (_g118254118399_ _stx118253_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self118196_ _stx118197_)
        (let* ((_g118199118212_
                (lambda (_g118200118209_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118200118209_))))
               (_g118198118249_
                (lambda (_g118200118215_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118200118215_))
                      (let ((_e118204118217_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118200118215_))))
                        (let ((_hd118203118220_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118204118217_)))
                              (_tl118202118222_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118204118217_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118202118222_))
                              (let ((_e118207118225_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118202118222_))))
                                (let ((_hd118206118228_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118207118225_)))
                                      (_tl118205118230_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118207118225_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118205118230_))
                                      ((lambda (_L118233_)
                                         (let ((__tmp119880
                                                (lambda (_g118244118246_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L118233_
                                                     _g118244118246_))))
                                               (__tmp119879
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self118196_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp119880 __tmp119879)))
                                       _hd118206118228_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118199118212_ _g118200118215_)))))
                              (let ()
                                (declare (not safe))
                                (_g118199118212_ _g118200118215_)))))
                      (let ()
                        (declare (not safe))
                        (_g118199118212_ _g118200118215_))))))
          (declare (not safe))
          (_g118198118249_ _stx118197_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self118121_ _stx118122_)
        (let* ((_g118124118141_
                (lambda (_g118125118138_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118125118138_))))
               (_g118123118193_
                (lambda (_g118125118144_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118125118144_))
                      (let ((_e118130118146_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118125118144_))))
                        (let ((_hd118129118149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118130118146_)))
                              (_tl118128118151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118130118146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118128118151_))
                              (let ((_e118133118154_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118128118151_))))
                                (let ((_hd118132118157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118133118154_)))
                                      (_tl118131118159_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118133118154_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118131118159_))
                                      (let ((_e118136118162_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118131118159_))))
                                        (let ((_hd118135118165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118136118162_)))
                                              (_tl118134118167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118136118162_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118134118167_))
                                              ((lambda (_L118170_ _L118171_)
                                                 (let ((_$e118190_
                                                        (let ((__tmp119882
                                                               (lambda (_g118185118187_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L118171_ _g118185118187_))))
                      (__tmp119881
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self118121_ 'ids))))
                  (declare (not safe))
                  (find __tmp119882 __tmp119881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e118190_
                                                       _$e118190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self118121_
                                                          _L118170_)))))
                                               _hd118135118165_
                                               _hd118132118157_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118124118141_
                                                 _g118125118144_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118124118141_ _g118125118144_)))))
                              (let ()
                                (declare (not safe))
                                (_g118124118141_ _g118125118144_)))))
                      (let ()
                        (declare (not safe))
                        (_g118124118141_ _g118125118144_))))))
          (declare (not safe))
          (_g118123118193_ _stx118122_))))))
