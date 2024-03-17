(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710694206)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp116780 (list gxc#::void::t))
            (__tmp116778
             (let ((__tmp116779
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116779 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp116780
         '()
         __tmp116778
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args116519_
        (apply make-instance gxc#::collect-mutators::t _$args116519_)))
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
      (lambda (_stx116511_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self116514_
                (let ((__obj116766
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj116766))
               (__tmp116781
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self116514_ _stx116511_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp116781
           gxc#current-compile-method
           _self116514_))))
    (define gxc#::collect-methods::t
      (let ((__tmp116784 (list gxc#::void::t))
            (__tmp116782
             (let ((__tmp116783
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116783 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp116784
         '()
         __tmp116782
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args116508_
        (apply make-instance gxc#::collect-methods::t _$args116508_)))
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
      (lambda (_stx116500_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self116503_
                (let ((__obj116768
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj116768))
               (__tmp116785
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self116503_ _stx116500_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp116785
           gxc#current-compile-method
           _self116503_))))
    (define gxc#::expression-subst::t
      (let ((__tmp116788 (list gxc#::basic-xform-expression::t))
            (__tmp116786
             (let ((__tmp116787
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116787 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp116788
         '(id new-id)
         __tmp116786
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args116497_
        (apply make-instance gxc#::expression-subst::t _$args116497_)))
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
      (lambda (_g116789_ _id116463116467_ _new-id116464116469_ _stx116471_)
        (let* ((_id116474_
                (if (let ()
                      (declare (not safe))
                      (eq? _id116463116467_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id116463116467_))
               (_new-id116476_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id116464116469_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id116464116469_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self116478_
                  (let ((__obj116770
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116770
                       _id116474_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116770
                       _new-id116476_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj116770))
                 (__tmp116790
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self116478_ _stx116471_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp116790
             gxc#current-compile-method
             _self116478_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys116462116485_ . _args116487_)
        (apply gxc#apply-expression-subst__%
               _keys116462116485_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116462116485_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116462116485_ 'new-id: absent-value))
               _args116487_)))
    (define gxc#apply-expression-subst
      (lambda _args116465116493_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args116465116493_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp116793 (list gxc#::basic-xform-expression::t))
            (__tmp116791
             (let ((__tmp116792
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116792 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp116793
         '(subst)
         __tmp116791
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args116458_
        (apply make-instance gxc#::expression-subst*::t _$args116458_)))
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
      (lambda (_g116794_ _subst116429116432_ _stx116434_)
        (let ((_subst116437_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst116429116432_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst116429116432_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self116439_
                  (let ((__obj116772
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116772
                       _subst116437_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj116772))
                 (__tmp116795
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self116439_ _stx116434_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp116795
             gxc#current-compile-method
             _self116439_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys116428116446_ . _args116448_)
        (apply gxc#apply-expression-subst*__%
               _keys116428116446_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116428116446_ 'subst: absent-value))
               _args116448_)))
    (define gxc#apply-expression-subst*
      (lambda _args116430116454_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args116430116454_)))
    (define gxc#::find-expression::t
      (let ((__tmp116796 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp116796
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args116424_
        (apply make-instance gxc#::find-expression::t _$args116424_)))
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
      (let ((__tmp116799 (list gxc#::find-expression::t))
            (__tmp116797
             (let ((__tmp116798
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116798 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp116799
         '(ids)
         __tmp116797
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args116420_
        (apply make-instance gxc#::find-var-refs::t _$args116420_)))
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
      (lambda (_g116800_ _ids116391116394_ _stx116396_)
        (let ((_ids116399_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids116391116394_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids116391116394_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self116401_
                  (let ((__obj116775
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116775
                       _ids116399_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj116775))
                 (__tmp116801
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self116401_ _stx116396_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp116801
             gxc#current-compile-method
             _self116401_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys116390116408_ . _args116410_)
        (apply gxc#apply-find-var-refs__%
               _keys116390116408_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116390116408_ 'ids: absent-value))
               _args116410_)))
    (define gxc#apply-find-var-refs
      (lambda _args116392116416_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args116392116416_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp116804 (list gxc#::collect-expression-refs::t))
            (__tmp116802
             (let ((__tmp116803
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116803 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp116804
         '()
         __tmp116802
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args116386_
        (apply make-instance gxc#::collect-runtime-refs::t _$args116386_)))
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
      (lambda (_g116805_ _table116357116360_ _stx116362_)
        (let ((_table116365_
               (if (let ()
                     (declare (not safe))
                     (eq? _table116357116360_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table116357116360_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self116367_
                  (let ((__obj116777
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116777
                       _table116365_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj116777))
                 (__tmp116806
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self116367_ _stx116362_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp116806
             gxc#current-compile-method
             _self116367_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys116356116374_ . _args116376_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys116356116374_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116356116374_ 'table: absent-value))
               _args116376_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args116358116382_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args116358116382_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self116285_ _stx116286_)
        (let* ((_g116288116305_
                (lambda (_g116289116302_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116289116302_))))
               (_g116287116352_
                (lambda (_g116289116308_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116289116308_))
                      (let ((_e116292116310_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116289116308_))))
                        (let ((_hd116293116313_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116292116310_)))
                              (_tl116294116315_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116292116310_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116294116315_))
                              (let ((_e116295116318_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116294116315_))))
                                (let ((_hd116296116321_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116295116318_)))
                                      (_tl116297116323_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116295116318_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116297116323_))
                                      (let ((_e116298116326_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116297116323_))))
                                        (let ((_hd116299116329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116298116326_)))
                                              (_tl116300116331_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116298116326_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116300116331_))
                                              ((lambda (_L116334_ _L116335_)
                                                 (let ((_sym116350_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116335_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116350_))
                                                   (let ((__tmp116807
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp116807
                                                      _sym116350_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self116285_
                                                      _L116334_))))
                                               _hd116299116329_
                                               _hd116296116321_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116288116305_
                                                 _g116289116308_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116288116305_ _g116289116308_)))))
                              (let ()
                                (declare (not safe))
                                (_g116288116305_ _g116289116308_)))))
                      (let ()
                        (declare (not safe))
                        (_g116288116305_ _g116289116308_))))))
          (declare (not safe))
          (_g116287116352_ _stx116286_))))
    (define gxc#collect-methods-call%
      (lambda (_self115838_ _stx115839_)
        (let* ((___stx116522116523_ _stx115839_)
               (_g115843115945_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx116522116523_)))))
          (let ((___kont116524116525_
                 (lambda (_L116235_ _L116236_ _L116237_ _L116238_ _L116239_)
                   (let ((__tmp116808
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116236_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp116808))))
                (___kont116526116527_
                 (lambda (_L116061_ _L116062_ _L116063_ _L116064_)
                   (let ((__tmp116809
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116061_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp116809))))
                (___kont116528116529_ (lambda () '#!void)))
            (let ((___match116657116658_
                   (lambda (_e115850116107_
                            _hd115851116110_
                            _tl115852116112_
                            _e115853116115_
                            _hd115854116118_
                            _tl115855116120_
                            _e115856116123_
                            _hd115857116126_
                            _tl115858116128_
                            _e115859116131_
                            _hd115860116134_
                            _tl115861116136_
                            _e115862116139_
                            _hd115863116142_
                            _tl115864116144_
                            _e115865116147_
                            _hd115866116150_
                            _tl115867116152_
                            _e115868116155_
                            _hd115869116158_
                            _tl115870116160_
                            _e115871116163_
                            _hd115872116166_
                            _tl115873116168_
                            _e115874116171_
                            _hd115875116174_
                            _tl115876116176_
                            _e115877116179_
                            _hd115878116182_
                            _tl115879116184_
                            _e115880116187_
                            _hd115881116190_
                            _tl115882116192_
                            _e115883116195_
                            _hd115884116198_
                            _tl115885116200_
                            _e115886116203_
                            _hd115887116206_
                            _tl115888116208_
                            _e115889116211_
                            _hd115890116214_
                            _tl115891116216_
                            _e115892116219_
                            _hd115893116222_
                            _tl115894116224_
                            _e115895116227_
                            _hd115896116230_
                            _tl115897116232_)
                     (let ((_L116235_ _hd115896116230_)
                           (_L116236_ _hd115887116206_)
                           (_L116237_ _hd115878116182_)
                           (_L116238_ _hd115869116158_)
                           (_L116239_ _hd115860116134_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116239_
                              'bind-method!))
                           (___kont116524116525_
                            _L116235_
                            _L116236_
                            _L116237_
                            _L116238_
                            _L116239_)
                           (___kont116528116529_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx116522116523_))
                  (let ((_e115850116107_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx116522116523_))))
                    (let ((_tl115852116112_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115850116107_)))
                          (_hd115851116110_
                           (let ()
                             (declare (not safe))
                             (##car _e115850116107_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115852116112_))
                          (let ((_e115853116115_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115852116112_))))
                            (let ((_tl115855116120_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115853116115_)))
                                  (_hd115854116118_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115853116115_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115854116118_))
                                  (let ((_e115856116123_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115854116118_))))
                                    (let ((_tl115858116128_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115856116123_)))
                                          (_hd115857116126_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115856116123_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115857116126_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115857116126_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115858116128_))
                                                  (let ((_e115859116131_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115858116128_))))
                                                    (let ((_tl115861116136_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115859116131_)))
                                                          (_hd115860116134_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115859116131_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115861116136_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115855116120_))
                      (let ((_e115862116139_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115855116120_))))
                        (let ((_tl115864116144_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115862116139_)))
                              (_hd115863116142_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115862116139_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115863116142_))
                              (let ((_e115865116147_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115863116142_))))
                                (let ((_tl115867116152_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115865116147_)))
                                      (_hd115866116150_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115865116147_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115866116150_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115866116150_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115867116152_))
                                              (let ((_e115868116155_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115867116152_))))
                                                (let ((_tl115870116160_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115868116155_)))
                                                      (_hd115869116158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115868116155_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115870116160_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115864116144_))
                                                          (let ((_e115871116163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115864116144_))))
                    (let ((_tl115873116168_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115871116163_)))
                          (_hd115872116166_
                           (let ()
                             (declare (not safe))
                             (##car _e115871116163_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115872116166_))
                          (let ((_e115874116171_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115872116166_))))
                            (let ((_tl115876116176_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115874116171_)))
                                  (_hd115875116174_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115874116171_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115875116174_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115875116174_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115876116176_))
                                          (let ((_e115877116179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115876116176_))))
                                            (let ((_tl115879116184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115877116179_)))
                                                  (_hd115878116182_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115877116179_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115879116184_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115873116168_))
                                                      (let ((_e115880116187_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115873116168_))))
                (let ((_tl115882116192_
                       (let () (declare (not safe)) (##cdr _e115880116187_)))
                      (_hd115881116190_
                       (let () (declare (not safe)) (##car _e115880116187_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115881116190_))
                      (let ((_e115883116195_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115881116190_))))
                        (let ((_tl115885116200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115883116195_)))
                              (_hd115884116198_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115883116195_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115884116198_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115884116198_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115885116200_))
                                      (let ((_e115886116203_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115885116200_))))
                                        (let ((_tl115888116208_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115886116203_)))
                                              (_hd115887116206_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115886116203_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115888116208_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115882116192_))
                                                  (let ((_e115889116211_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115882116192_))))
                                                    (let ((_tl115891116216_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115889116211_)))
                                                          (_hd115890116214_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115889116211_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115890116214_))
                                                          (let ((_e115892116219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115890116214_))))
                    (let ((_tl115894116224_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115892116219_)))
                          (_hd115893116222_
                           (let ()
                             (declare (not safe))
                             (##car _e115892116219_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115893116222_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115893116222_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115894116224_))
                                  (let ((_e115895116227_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115894116224_))))
                                    (let ((_tl115897116232_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115895116227_)))
                                          (_hd115896116230_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115895116227_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115897116232_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115891116216_))
                                              (___match116657116658_
                                               _e115850116107_
                                               _hd115851116110_
                                               _tl115852116112_
                                               _e115853116115_
                                               _hd115854116118_
                                               _tl115855116120_
                                               _e115856116123_
                                               _hd115857116126_
                                               _tl115858116128_
                                               _e115859116131_
                                               _hd115860116134_
                                               _tl115861116136_
                                               _e115862116139_
                                               _hd115863116142_
                                               _tl115864116144_
                                               _e115865116147_
                                               _hd115866116150_
                                               _tl115867116152_
                                               _e115868116155_
                                               _hd115869116158_
                                               _tl115870116160_
                                               _e115871116163_
                                               _hd115872116166_
                                               _tl115873116168_
                                               _e115874116171_
                                               _hd115875116174_
                                               _tl115876116176_
                                               _e115877116179_
                                               _hd115878116182_
                                               _tl115879116184_
                                               _e115880116187_
                                               _hd115881116190_
                                               _tl115882116192_
                                               _e115883116195_
                                               _hd115884116198_
                                               _tl115885116200_
                                               _e115886116203_
                                               _hd115887116206_
                                               _tl115888116208_
                                               _e115889116211_
                                               _hd115890116214_
                                               _tl115891116216_
                                               _e115892116219_
                                               _hd115893116222_
                                               _tl115894116224_
                                               _e115895116227_
                                               _hd115896116230_
                                               _tl115897116232_)
                                              (___kont116528116529_))
                                          (___kont116528116529_))))
                                  (___kont116528116529_))
                              (___kont116528116529_))
                          (___kont116528116529_))))
                  (___kont116528116529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115882116192_))
                                                      (if (let ((__tmp116810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp116810 'bind-method!))
                  (let ((_L116061_ _hd115887116206_)
                        (_L116062_ _hd115878116182_)
                        (_L116063_ _hd115869116158_)
                        (_L116064_ _hd115860116134_))
                    (___kont116526116527_
                     _L116061_
                     _L116062_
                     _L116063_
                     _L116064_))
                  (___kont116528116529_))
              (___kont116528116529_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116528116529_))))
                                      (___kont116528116529_))
                                  (___kont116528116529_))
                              (___kont116528116529_))))
                      (___kont116528116529_))))
              (___kont116528116529_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116528116529_))))
                                          (___kont116528116529_))
                                      (___kont116528116529_))
                                  (___kont116528116529_))))
                          (___kont116528116529_))))
                  (___kont116528116529_))
              (___kont116528116529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116528116529_))
                                          (___kont116528116529_))
                                      (___kont116528116529_))))
                              (___kont116528116529_))))
                      (___kont116528116529_))
                  (___kont116528116529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116528116529_))
                                              (___kont116528116529_))
                                          (___kont116528116529_))))
                                  (___kont116528116529_))))
                          (___kont116528116529_))))
                  (___kont116528116529_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self115786_ _stx115787_)
        (let* ((_g115789115802_
                (lambda (_g115790115799_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115790115799_))))
               (_g115788115835_
                (lambda (_g115790115805_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115790115805_))
                      (let ((_e115792115807_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115790115805_))))
                        (let ((_hd115793115810_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115792115807_)))
                              (_tl115794115812_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115792115807_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115794115812_))
                              (let ((_e115795115815_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115794115812_))))
                                (let ((_hd115796115818_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115795115815_)))
                                      (_tl115797115820_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115795115815_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115797115820_))
                                      ((lambda (_L115823_)
                                         (if (let ((__tmp116811
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self115786_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115823_
                                                __tmp116811))
                                             (let ((__tmp116812
                                                    (let ((__tmp116813
                                                           (let ((__tmp116814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self115786_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp116814 '()))))
              (declare (not safe))
              (cons '%#ref __tmp116813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp116812
                                                _stx115787_))
                                             _stx115787_))
                                       _hd115796115818_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115789115802_ _g115790115805_)))))
                              (let ()
                                (declare (not safe))
                                (_g115789115802_ _g115790115805_)))))
                      (let ()
                        (declare (not safe))
                        (_g115789115802_ _g115790115805_))))))
          (declare (not safe))
          (_g115788115835_ _stx115787_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self115727_ _stx115728_)
        (let* ((_g115730115743_
                (lambda (_g115731115740_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115731115740_))))
               (_g115729115783_
                (lambda (_g115731115746_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115731115746_))
                      (let ((_e115733115748_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115731115746_))))
                        (let ((_hd115734115751_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115733115748_)))
                              (_tl115735115753_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115733115748_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115735115753_))
                              (let ((_e115736115756_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115735115753_))))
                                (let ((_hd115737115759_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115736115756_)))
                                      (_tl115738115761_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115736115756_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115738115761_))
                                      ((lambda (_L115764_)
                                         (let ((_$e115778_
                                                (let ((__tmp116816
                                                       (lambda (_sub115776_)
                                                         (let ((__tmp116817
                                                                (car _sub115776_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115764_
                                                            __tmp116817))))
                                                      (__tmp116815
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self115727_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp116816
                                                        __tmp116815))))
                                           (if _$e115778_
                                               ((lambda (_sub115781_)
                                                  (let ((__tmp116818
                                                         (let ((__tmp116819
                                                                (let ((__tmp116820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115781_)))
                          (declare (not safe))
                          (cons __tmp116820 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp116819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp116818
                                                     _stx115728_)))
                                                _$e115778_)
                                               _stx115728_)))
                                       _hd115737115759_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115730115743_ _g115731115746_)))))
                              (let ()
                                (declare (not safe))
                                (_g115730115743_ _g115731115746_)))))
                      (let ()
                        (declare (not safe))
                        (_g115730115743_ _g115731115746_))))))
          (declare (not safe))
          (_g115729115783_ _stx115728_))))
    (define gxc#expression-subst-setq%
      (lambda (_self115656_ _stx115657_)
        (let* ((_g115659115676_
                (lambda (_g115660115673_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115660115673_))))
               (_g115658115724_
                (lambda (_g115660115679_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115660115679_))
                      (let ((_e115663115681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115660115679_))))
                        (let ((_hd115664115684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115663115681_)))
                              (_tl115665115686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115663115681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115665115686_))
                              (let ((_e115666115689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115665115686_))))
                                (let ((_hd115667115692_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115666115689_)))
                                      (_tl115668115694_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115666115689_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115668115694_))
                                      (let ((_e115669115697_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115668115694_))))
                                        (let ((_hd115670115700_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115669115697_)))
                                              (_tl115671115702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115669115697_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115671115702_))
                                              ((lambda (_L115705_ _L115706_)
                                                 (let ((_new-expr115721_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self115656_
                                                           _L115705_)))
                                                       (_new-xid115722_
                                                        (if (let ((__tmp116821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self115656_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L115706_ __tmp116821))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self115656_ 'new-id))
                    _L115706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp116822
                                                          (let ((__tmp116823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116824
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115721_ '()))))
                           (declare (not safe))
                           (cons _new-xid115722_ __tmp116824))))
                    (declare (not safe))
                    (cons '%#set! __tmp116823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp116822
                                                      _stx115657_))))
                                               _hd115670115700_
                                               _hd115667115692_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115659115676_
                                                 _g115660115679_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115659115676_ _g115660115679_)))))
                              (let ()
                                (declare (not safe))
                                (_g115659115676_ _g115660115679_)))))
                      (let ()
                        (declare (not safe))
                        (_g115659115676_ _g115660115679_))))))
          (declare (not safe))
          (_g115658115724_ _stx115657_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self115580_ _stx115581_)
        (let* ((_g115583115600_
                (lambda (_g115584115597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115584115597_))))
               (_g115582115653_
                (lambda (_g115584115603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115584115603_))
                      (let ((_e115587115605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115584115603_))))
                        (let ((_hd115588115608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115587115605_)))
                              (_tl115589115610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115587115605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115589115610_))
                              (let ((_e115590115613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115589115610_))))
                                (let ((_hd115591115616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115590115613_)))
                                      (_tl115592115618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115590115613_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115592115618_))
                                      (let ((_e115593115621_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115592115618_))))
                                        (let ((_hd115594115624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115593115621_)))
                                              (_tl115595115626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115593115621_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115595115626_))
                                              ((lambda (_L115629_ _L115630_)
                                                 (let ((_new-expr115650_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self115580_
                                                           _L115629_)))
                                                       (_new-xid115651_
                                                        (let ((_$e115647_
                                                               (let ((__tmp116826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115645_)
                                (let ((__tmp116827 (car _sub115645_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115630_
                                   __tmp116827))))
                             (__tmp116825
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self115580_ 'subst))))
                         (declare (not safe))
                         (find __tmp116826 __tmp116825))))
                  (if _$e115647_ (cdr _$e115647_) _L115630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp116828
                                                          (let ((__tmp116829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116830
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115650_ '()))))
                           (declare (not safe))
                           (cons _new-xid115651_ __tmp116830))))
                    (declare (not safe))
                    (cons '%#set! __tmp116829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp116828
                                                      _stx115581_))))
                                               _hd115594115624_
                                               _hd115591115616_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115583115600_
                                                 _g115584115603_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115583115600_ _g115584115603_)))))
                              (let ()
                                (declare (not safe))
                                (_g115583115600_ _g115584115603_)))))
                      (let ()
                        (declare (not safe))
                        (_g115583115600_ _g115584115603_))))))
          (declare (not safe))
          (_g115582115653_ _stx115581_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self115526_ _stx115527_)
        (let* ((_g115529115542_
                (lambda (_g115530115539_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115530115539_))))
               (_g115528115577_
                (lambda (_g115530115545_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115530115545_))
                      (let ((_e115532115547_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115530115545_))))
                        (let ((_hd115533115550_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115532115547_)))
                              (_tl115534115552_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115532115547_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115534115552_))
                              (let ((_e115535115555_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115534115552_))))
                                (let ((_hd115536115558_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115535115555_)))
                                      (_tl115537115560_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115535115555_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115537115560_))
                                      ((lambda (_L115563_)
                                         (let* ((_eid115575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L115563_)))
                                                (__tmp116831
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self115526_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp116831
                                            _eid115575_
                                            1+
                                            '0)))
                                       _hd115536115558_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115529115542_ _g115530115545_)))))
                              (let ()
                                (declare (not safe))
                                (_g115529115542_ _g115530115545_)))))
                      (let ()
                        (declare (not safe))
                        (_g115529115542_ _g115530115545_))))))
          (declare (not safe))
          (_g115528115577_ _stx115527_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self115456_ _stx115457_)
        (let* ((_g115459115476_
                (lambda (_g115460115473_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115460115473_))))
               (_g115458115523_
                (lambda (_g115460115479_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115460115479_))
                      (let ((_e115463115481_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115460115479_))))
                        (let ((_hd115464115484_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115463115481_)))
                              (_tl115465115486_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115463115481_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115465115486_))
                              (let ((_e115466115489_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115465115486_))))
                                (let ((_hd115467115492_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115466115489_)))
                                      (_tl115468115494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115466115489_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115468115494_))
                                      (let ((_e115469115497_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115468115494_))))
                                        (let ((_hd115470115500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115469115497_)))
                                              (_tl115471115502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115469115497_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115471115502_))
                                              ((lambda (_L115505_ _L115506_)
                                                 (let ((_eid115521_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115506_))))
                                                   (let ((__tmp116832
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self115456_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp116832
                                                      _eid115521_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self115456_
                                                      _L115505_))))
                                               _hd115470115500_
                                               _hd115467115492_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115459115476_
                                                 _g115460115479_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115459115476_ _g115460115479_)))))
                              (let ()
                                (declare (not safe))
                                (_g115459115476_ _g115460115479_)))))
                      (let ()
                        (declare (not safe))
                        (_g115459115476_ _g115460115479_))))))
          (declare (not safe))
          (_g115458115523_ _stx115457_))))
    (define gxc#find-body%
      (lambda (_self115369_ _stx115370_)
        (let* ((_g115372115391_
                (lambda (_g115373115388_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115373115388_))))
               (_g115371115453_
                (lambda (_g115373115394_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115373115394_))
                      (let ((_e115375115396_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115373115394_))))
                        (let ((_hd115376115399_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115375115396_)))
                              (_tl115377115401_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115375115396_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115377115401_))
                              (let ((_g116833_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115377115401_
                                        '0))))
                                (begin
                                  (let ((_g116834_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g116833_)
                                               (##vector-length _g116833_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g116834_ 2)))
                                        (error "Context expects 2 values"
                                               _g116834_)))
                                  (let ((_target115378115404_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116833_ 0)))
                                        (_tl115380115406_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116833_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115380115406_))
                                        (letrec ((_loop115381115409_
                                                  (lambda (_hd115379115412_
                                                           _expr115385115414_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115379115412_))
                                                        (let ((_e115382115417_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115379115412_))))
                  (let ((_lp-hd115383115420_
                         (let () (declare (not safe)) (##car _e115382115417_)))
                        (_lp-tl115384115422_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115382115417_))))
                    (let ((__tmp116835
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115383115420_ _expr115385115414_))))
                      (declare (not safe))
                      (_loop115381115409_ _lp-tl115384115422_ __tmp116835))))
                (let ((_expr115386115425_ (reverse _expr115385115414_)))
                  ((lambda (_L115428_)
                     (let ((__tmp116838
                            (lambda (_g115441115443_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self115369_
                                 _g115441115443_))))
                           (__tmp116836
                            (let ((__tmp116837
                                   (lambda (_g115445115448_ _g115446115450_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115445115448_
                                             _g115446115450_)))))
                              (declare (not safe))
                              (foldr1 __tmp116837 '() _L115428_))))
                       (declare (not safe))
                       (ormap1 __tmp116838 __tmp116836)))
                   _expr115386115425_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115381115409_
                                             _target115378115404_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115372115391_
                                           _g115373115394_))))))
                              (let ()
                                (declare (not safe))
                                (_g115372115391_ _g115373115394_)))))
                      (let ()
                        (declare (not safe))
                        (_g115372115391_ _g115373115394_))))))
          (declare (not safe))
          (_g115371115453_ _stx115370_))))
    (define gxc#find-let-values%
      (lambda (_self115219_ _stx115220_)
        (let* ((_g115222115257_
                (lambda (_g115223115254_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115223115254_))))
               (_g115221115366_
                (lambda (_g115223115260_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115223115260_))
                      (let ((_e115227115262_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115223115260_))))
                        (let ((_hd115228115265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115227115262_)))
                              (_tl115229115267_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115227115262_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115229115267_))
                              (let ((_e115230115270_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115229115267_))))
                                (let ((_hd115231115273_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115230115270_)))
                                      (_tl115232115275_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115230115270_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115231115273_))
                                      (let ((_g116839_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115231115273_
                                                '0))))
                                        (begin
                                          (let ((_g116840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g116839_)
                                                       (##vector-length
                                                        _g116839_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g116840_ 2)))
                                                (error "Context expects 2 values"
                                                       _g116840_)))
                                          (let ((_target115233115278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g116839_ 0)))
                                                (_tl115235115280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g116839_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115235115280_))
                                                (letrec ((_loop115236115283_
                                                          (lambda (_hd115234115286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115240115288_
                           _bind115241115290_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115234115286_))
                        (let ((_e115237115293_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115234115286_))))
                          (let ((_lp-hd115238115296_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115237115293_)))
                                (_lp-tl115239115298_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115237115293_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115238115296_))
                                (let ((_e115244115301_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115238115296_))))
                                  (let ((_hd115245115304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115244115301_)))
                                        (_tl115246115306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115244115301_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115246115306_))
                                        (let ((_e115247115309_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115246115306_))))
                                          (let ((_hd115248115312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115247115309_)))
                                                (_tl115249115314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115247115309_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115249115314_))
                                                (let ((__tmp116842
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115248115312_
                                                               _expr115240115288_)))
                                                      (__tmp116841
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115245115304_
                                                               _bind115241115290_))))
                                                  (declare (not safe))
                                                  (_loop115236115283_
                                                   _lp-tl115239115298_
                                                   __tmp116842
                                                   __tmp116841))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115222115257_
                                                   _g115223115260_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115222115257_ _g115223115260_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115222115257_ _g115223115260_)))))
                        (let ((_expr115242115317_ (reverse _expr115240115288_))
                              (_bind115243115319_
                               (reverse _bind115241115290_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115232115275_))
                              (let ((_e115250115322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115232115275_))))
                                (let ((_hd115251115325_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115250115322_)))
                                      (_tl115252115327_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115250115322_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115252115327_))
                                      ((lambda (_L115330_ _L115331_ _L115332_)
                                         (let ((_$e115363_
                                                (let ((__tmp116845
                                                       (lambda (_g115351115353_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self115219_
                                                            _g115351115353_))))
                                                      (__tmp116843
                                                       (let ((__tmp116844
                                                              (lambda (_g115355115358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115356115360_)
                        (let ()
                          (declare (not safe))
                          (cons _g115355115358_ _g115356115360_)))))
                 (declare (not safe))
                 (foldr1 __tmp116844 '() _L115331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp116845
                                                          __tmp116843))))
                                           (if _$e115363_
                                               _$e115363_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self115219_
                                                  _L115330_)))))
                                       _hd115251115325_
                                       _expr115242115317_
                                       _bind115243115319_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115222115257_ _g115223115260_)))))
                              (let ()
                                (declare (not safe))
                                (_g115222115257_ _g115223115260_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115236115283_
                                                     _target115233115278_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115222115257_
                                                   _g115223115260_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115222115257_ _g115223115260_)))))
                              (let ()
                                (declare (not safe))
                                (_g115222115257_ _g115223115260_)))))
                      (let ()
                        (declare (not safe))
                        (_g115222115257_ _g115223115260_))))))
          (declare (not safe))
          (_g115221115366_ _stx115220_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self115163_ _stx115164_)
        (let* ((_g115166115179_
                (lambda (_g115167115176_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115167115176_))))
               (_g115165115216_
                (lambda (_g115167115182_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115167115182_))
                      (let ((_e115169115184_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115167115182_))))
                        (let ((_hd115170115187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115169115184_)))
                              (_tl115171115189_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115169115184_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115171115189_))
                              (let ((_e115172115192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115171115189_))))
                                (let ((_hd115173115195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115172115192_)))
                                      (_tl115174115197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115172115192_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115174115197_))
                                      ((lambda (_L115200_)
                                         (let ((__tmp116847
                                                (lambda (_g115211115213_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115200_
                                                     _g115211115213_))))
                                               (__tmp116846
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self115163_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp116847 __tmp116846)))
                                       _hd115173115195_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115166115179_ _g115167115182_)))))
                              (let ()
                                (declare (not safe))
                                (_g115166115179_ _g115167115182_)))))
                      (let ()
                        (declare (not safe))
                        (_g115166115179_ _g115167115182_))))))
          (declare (not safe))
          (_g115165115216_ _stx115164_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self115088_ _stx115089_)
        (let* ((_g115091115108_
                (lambda (_g115092115105_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115092115105_))))
               (_g115090115160_
                (lambda (_g115092115111_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115092115111_))
                      (let ((_e115095115113_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115092115111_))))
                        (let ((_hd115096115116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115095115113_)))
                              (_tl115097115118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115095115113_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115097115118_))
                              (let ((_e115098115121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115097115118_))))
                                (let ((_hd115099115124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115098115121_)))
                                      (_tl115100115126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115098115121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115100115126_))
                                      (let ((_e115101115129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115100115126_))))
                                        (let ((_hd115102115132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115101115129_)))
                                              (_tl115103115134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115101115129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115103115134_))
                                              ((lambda (_L115137_ _L115138_)
                                                 (let ((_$e115157_
                                                        (let ((__tmp116849
                                                               (lambda (_g115152115154_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115138_ _g115152115154_))))
                      (__tmp116848
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self115088_ 'ids))))
                  (declare (not safe))
                  (find __tmp116849 __tmp116848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115157_
                                                       _$e115157_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self115088_
                                                          _L115137_)))))
                                               _hd115102115132_
                                               _hd115099115124_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115091115108_
                                                 _g115092115111_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115091115108_ _g115092115111_)))))
                              (let ()
                                (declare (not safe))
                                (_g115091115108_ _g115092115111_)))))
                      (let ()
                        (declare (not safe))
                        (_g115091115108_ _g115092115111_))))))
          (declare (not safe))
          (_g115090115160_ _stx115089_))))))
