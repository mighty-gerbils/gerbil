(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710617604)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp116828 (list gxc#::void::t))
            (__tmp116826
             (let ((__tmp116827
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116827 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp116828
         '()
         __tmp116826
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args116567_
        (apply make-instance gxc#::collect-mutators::t _$args116567_)))
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
      (lambda (_stx116559_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self116562_
                (let ((__obj116814
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj116814))
               (__tmp116829
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self116562_ _stx116559_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp116829
           gxc#current-compile-method
           _self116562_))))
    (define gxc#::collect-methods::t
      (let ((__tmp116832 (list gxc#::void::t))
            (__tmp116830
             (let ((__tmp116831
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116831 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp116832
         '()
         __tmp116830
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args116556_
        (apply make-instance gxc#::collect-methods::t _$args116556_)))
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
      (lambda (_stx116548_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self116551_
                (let ((__obj116816
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj116816))
               (__tmp116833
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self116551_ _stx116548_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp116833
           gxc#current-compile-method
           _self116551_))))
    (define gxc#::expression-subst::t
      (let ((__tmp116836 (list gxc#::basic-xform-expression::t))
            (__tmp116834
             (let ((__tmp116835
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116835 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp116836
         '(id new-id)
         __tmp116834
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args116545_
        (apply make-instance gxc#::expression-subst::t _$args116545_)))
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
      (lambda (_g116837_ _id116511116515_ _new-id116512116517_ _stx116519_)
        (let* ((_id116522_
                (if (let ()
                      (declare (not safe))
                      (eq? _id116511116515_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id116511116515_))
               (_new-id116524_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id116512116517_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id116512116517_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self116526_
                  (let ((__obj116818
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116818
                       _id116522_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116818
                       _new-id116524_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj116818))
                 (__tmp116838
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self116526_ _stx116519_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp116838
             gxc#current-compile-method
             _self116526_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys116510116533_ . _args116535_)
        (apply gxc#apply-expression-subst__%
               _keys116510116533_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116510116533_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116510116533_ 'new-id: absent-value))
               _args116535_)))
    (define gxc#apply-expression-subst
      (lambda _args116513116541_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args116513116541_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp116841 (list gxc#::basic-xform-expression::t))
            (__tmp116839
             (let ((__tmp116840
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116840 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp116841
         '(subst)
         __tmp116839
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args116506_
        (apply make-instance gxc#::expression-subst*::t _$args116506_)))
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
      (lambda (_g116842_ _subst116477116480_ _stx116482_)
        (let ((_subst116485_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst116477116480_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst116477116480_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self116487_
                  (let ((__obj116820
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116820
                       _subst116485_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj116820))
                 (__tmp116843
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self116487_ _stx116482_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp116843
             gxc#current-compile-method
             _self116487_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys116476116494_ . _args116496_)
        (apply gxc#apply-expression-subst*__%
               _keys116476116494_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116476116494_ 'subst: absent-value))
               _args116496_)))
    (define gxc#apply-expression-subst*
      (lambda _args116478116502_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args116478116502_)))
    (define gxc#::find-expression::t
      (let ((__tmp116844 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp116844
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args116472_
        (apply make-instance gxc#::find-expression::t _$args116472_)))
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
      (let ((__tmp116847 (list gxc#::find-expression::t))
            (__tmp116845
             (let ((__tmp116846
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116846 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp116847
         '(ids)
         __tmp116845
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args116468_
        (apply make-instance gxc#::find-var-refs::t _$args116468_)))
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
      (lambda (_g116848_ _ids116439116442_ _stx116444_)
        (let ((_ids116447_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids116439116442_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids116439116442_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self116449_
                  (let ((__obj116823
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116823
                       _ids116447_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj116823))
                 (__tmp116849
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self116449_ _stx116444_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp116849
             gxc#current-compile-method
             _self116449_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys116438116456_ . _args116458_)
        (apply gxc#apply-find-var-refs__%
               _keys116438116456_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116438116456_ 'ids: absent-value))
               _args116458_)))
    (define gxc#apply-find-var-refs
      (lambda _args116440116464_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args116440116464_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp116852 (list gxc#::collect-expression-refs::t))
            (__tmp116850
             (let ((__tmp116851
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp116851 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp116852
         '()
         __tmp116850
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args116434_
        (apply make-instance gxc#::collect-runtime-refs::t _$args116434_)))
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
      (lambda (_g116853_ _table116405116408_ _stx116410_)
        (let ((_table116413_
               (if (let ()
                     (declare (not safe))
                     (eq? _table116405116408_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table116405116408_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self116415_
                  (let ((__obj116825
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj116825
                       _table116413_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj116825))
                 (__tmp116854
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self116415_ _stx116410_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp116854
             gxc#current-compile-method
             _self116415_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys116404116422_ . _args116424_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys116404116422_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys116404116422_ 'table: absent-value))
               _args116424_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args116406116430_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args116406116430_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self116333_ _stx116334_)
        (let* ((_g116336116353_
                (lambda (_g116337116350_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116337116350_))))
               (_g116335116400_
                (lambda (_g116337116356_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116337116356_))
                      (let ((_e116340116358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116337116356_))))
                        (let ((_hd116341116361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116340116358_)))
                              (_tl116342116363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116340116358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116342116363_))
                              (let ((_e116343116366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116342116363_))))
                                (let ((_hd116344116369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116343116366_)))
                                      (_tl116345116371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116343116366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116345116371_))
                                      (let ((_e116346116374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116345116371_))))
                                        (let ((_hd116347116377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116346116374_)))
                                              (_tl116348116379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116346116374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116348116379_))
                                              ((lambda (_L116382_ _L116383_)
                                                 (let ((_sym116398_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116383_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116398_))
                                                   (let ((__tmp116855
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp116855
                                                      _sym116398_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self116333_
                                                      _L116382_))))
                                               _hd116347116377_
                                               _hd116344116369_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116336116353_
                                                 _g116337116356_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116336116353_ _g116337116356_)))))
                              (let ()
                                (declare (not safe))
                                (_g116336116353_ _g116337116356_)))))
                      (let ()
                        (declare (not safe))
                        (_g116336116353_ _g116337116356_))))))
          (declare (not safe))
          (_g116335116400_ _stx116334_))))
    (define gxc#collect-methods-call%
      (lambda (_self115886_ _stx115887_)
        (let* ((___stx116570116571_ _stx115887_)
               (_g115891115993_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx116570116571_)))))
          (let ((___kont116572116573_
                 (lambda (_L116283_ _L116284_ _L116285_ _L116286_ _L116287_)
                   (let ((__tmp116856
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116284_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp116856))))
                (___kont116574116575_
                 (lambda (_L116109_ _L116110_ _L116111_ _L116112_)
                   (let ((__tmp116857
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116109_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp116857))))
                (___kont116576116577_ (lambda () '#!void)))
            (let ((___match116705116706_
                   (lambda (_e115898116155_
                            _hd115899116158_
                            _tl115900116160_
                            _e115901116163_
                            _hd115902116166_
                            _tl115903116168_
                            _e115904116171_
                            _hd115905116174_
                            _tl115906116176_
                            _e115907116179_
                            _hd115908116182_
                            _tl115909116184_
                            _e115910116187_
                            _hd115911116190_
                            _tl115912116192_
                            _e115913116195_
                            _hd115914116198_
                            _tl115915116200_
                            _e115916116203_
                            _hd115917116206_
                            _tl115918116208_
                            _e115919116211_
                            _hd115920116214_
                            _tl115921116216_
                            _e115922116219_
                            _hd115923116222_
                            _tl115924116224_
                            _e115925116227_
                            _hd115926116230_
                            _tl115927116232_
                            _e115928116235_
                            _hd115929116238_
                            _tl115930116240_
                            _e115931116243_
                            _hd115932116246_
                            _tl115933116248_
                            _e115934116251_
                            _hd115935116254_
                            _tl115936116256_
                            _e115937116259_
                            _hd115938116262_
                            _tl115939116264_
                            _e115940116267_
                            _hd115941116270_
                            _tl115942116272_
                            _e115943116275_
                            _hd115944116278_
                            _tl115945116280_)
                     (let ((_L116283_ _hd115944116278_)
                           (_L116284_ _hd115935116254_)
                           (_L116285_ _hd115926116230_)
                           (_L116286_ _hd115917116206_)
                           (_L116287_ _hd115908116182_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116287_
                              'bind-method!))
                           (___kont116572116573_
                            _L116283_
                            _L116284_
                            _L116285_
                            _L116286_
                            _L116287_)
                           (___kont116576116577_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx116570116571_))
                  (let ((_e115898116155_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx116570116571_))))
                    (let ((_tl115900116160_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115898116155_)))
                          (_hd115899116158_
                           (let ()
                             (declare (not safe))
                             (##car _e115898116155_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115900116160_))
                          (let ((_e115901116163_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115900116160_))))
                            (let ((_tl115903116168_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115901116163_)))
                                  (_hd115902116166_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115901116163_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115902116166_))
                                  (let ((_e115904116171_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115902116166_))))
                                    (let ((_tl115906116176_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115904116171_)))
                                          (_hd115905116174_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115904116171_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115905116174_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115905116174_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115906116176_))
                                                  (let ((_e115907116179_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115906116176_))))
                                                    (let ((_tl115909116184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115907116179_)))
                                                          (_hd115908116182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115907116179_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115909116184_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115903116168_))
                      (let ((_e115910116187_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115903116168_))))
                        (let ((_tl115912116192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115910116187_)))
                              (_hd115911116190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115910116187_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115911116190_))
                              (let ((_e115913116195_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115911116190_))))
                                (let ((_tl115915116200_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115913116195_)))
                                      (_hd115914116198_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115913116195_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115914116198_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115914116198_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115915116200_))
                                              (let ((_e115916116203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115915116200_))))
                                                (let ((_tl115918116208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115916116203_)))
                                                      (_hd115917116206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115916116203_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115918116208_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115912116192_))
                                                          (let ((_e115919116211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115912116192_))))
                    (let ((_tl115921116216_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115919116211_)))
                          (_hd115920116214_
                           (let ()
                             (declare (not safe))
                             (##car _e115919116211_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115920116214_))
                          (let ((_e115922116219_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115920116214_))))
                            (let ((_tl115924116224_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115922116219_)))
                                  (_hd115923116222_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115922116219_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115923116222_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115923116222_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115924116224_))
                                          (let ((_e115925116227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115924116224_))))
                                            (let ((_tl115927116232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115925116227_)))
                                                  (_hd115926116230_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115925116227_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115927116232_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115921116216_))
                                                      (let ((_e115928116235_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115921116216_))))
                (let ((_tl115930116240_
                       (let () (declare (not safe)) (##cdr _e115928116235_)))
                      (_hd115929116238_
                       (let () (declare (not safe)) (##car _e115928116235_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115929116238_))
                      (let ((_e115931116243_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115929116238_))))
                        (let ((_tl115933116248_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115931116243_)))
                              (_hd115932116246_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115931116243_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115932116246_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115932116246_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115933116248_))
                                      (let ((_e115934116251_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115933116248_))))
                                        (let ((_tl115936116256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115934116251_)))
                                              (_hd115935116254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115934116251_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115936116256_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115930116240_))
                                                  (let ((_e115937116259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115930116240_))))
                                                    (let ((_tl115939116264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115937116259_)))
                                                          (_hd115938116262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115937116259_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115938116262_))
                                                          (let ((_e115940116267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115938116262_))))
                    (let ((_tl115942116272_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115940116267_)))
                          (_hd115941116270_
                           (let ()
                             (declare (not safe))
                             (##car _e115940116267_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115941116270_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115941116270_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115942116272_))
                                  (let ((_e115943116275_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115942116272_))))
                                    (let ((_tl115945116280_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115943116275_)))
                                          (_hd115944116278_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115943116275_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115945116280_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115939116264_))
                                              (___match116705116706_
                                               _e115898116155_
                                               _hd115899116158_
                                               _tl115900116160_
                                               _e115901116163_
                                               _hd115902116166_
                                               _tl115903116168_
                                               _e115904116171_
                                               _hd115905116174_
                                               _tl115906116176_
                                               _e115907116179_
                                               _hd115908116182_
                                               _tl115909116184_
                                               _e115910116187_
                                               _hd115911116190_
                                               _tl115912116192_
                                               _e115913116195_
                                               _hd115914116198_
                                               _tl115915116200_
                                               _e115916116203_
                                               _hd115917116206_
                                               _tl115918116208_
                                               _e115919116211_
                                               _hd115920116214_
                                               _tl115921116216_
                                               _e115922116219_
                                               _hd115923116222_
                                               _tl115924116224_
                                               _e115925116227_
                                               _hd115926116230_
                                               _tl115927116232_
                                               _e115928116235_
                                               _hd115929116238_
                                               _tl115930116240_
                                               _e115931116243_
                                               _hd115932116246_
                                               _tl115933116248_
                                               _e115934116251_
                                               _hd115935116254_
                                               _tl115936116256_
                                               _e115937116259_
                                               _hd115938116262_
                                               _tl115939116264_
                                               _e115940116267_
                                               _hd115941116270_
                                               _tl115942116272_
                                               _e115943116275_
                                               _hd115944116278_
                                               _tl115945116280_)
                                              (___kont116576116577_))
                                          (___kont116576116577_))))
                                  (___kont116576116577_))
                              (___kont116576116577_))
                          (___kont116576116577_))))
                  (___kont116576116577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115930116240_))
                                                      (if (let ((__tmp116858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp116858 'bind-method!))
                  (let ((_L116109_ _hd115935116254_)
                        (_L116110_ _hd115926116230_)
                        (_L116111_ _hd115917116206_)
                        (_L116112_ _hd115908116182_))
                    (___kont116574116575_
                     _L116109_
                     _L116110_
                     _L116111_
                     _L116112_))
                  (___kont116576116577_))
              (___kont116576116577_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116576116577_))))
                                      (___kont116576116577_))
                                  (___kont116576116577_))
                              (___kont116576116577_))))
                      (___kont116576116577_))))
              (___kont116576116577_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116576116577_))))
                                          (___kont116576116577_))
                                      (___kont116576116577_))
                                  (___kont116576116577_))))
                          (___kont116576116577_))))
                  (___kont116576116577_))
              (___kont116576116577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116576116577_))
                                          (___kont116576116577_))
                                      (___kont116576116577_))))
                              (___kont116576116577_))))
                      (___kont116576116577_))
                  (___kont116576116577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116576116577_))
                                              (___kont116576116577_))
                                          (___kont116576116577_))))
                                  (___kont116576116577_))))
                          (___kont116576116577_))))
                  (___kont116576116577_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self115834_ _stx115835_)
        (let* ((_g115837115850_
                (lambda (_g115838115847_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115838115847_))))
               (_g115836115883_
                (lambda (_g115838115853_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115838115853_))
                      (let ((_e115840115855_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115838115853_))))
                        (let ((_hd115841115858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115840115855_)))
                              (_tl115842115860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115840115855_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115842115860_))
                              (let ((_e115843115863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115842115860_))))
                                (let ((_hd115844115866_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115843115863_)))
                                      (_tl115845115868_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115843115863_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115845115868_))
                                      ((lambda (_L115871_)
                                         (if (let ((__tmp116859
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self115834_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115871_
                                                __tmp116859))
                                             (let ((__tmp116860
                                                    (let ((__tmp116861
                                                           (let ((__tmp116862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self115834_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp116862 '()))))
              (declare (not safe))
              (cons '%#ref __tmp116861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp116860
                                                _stx115835_))
                                             _stx115835_))
                                       _hd115844115866_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115837115850_ _g115838115853_)))))
                              (let ()
                                (declare (not safe))
                                (_g115837115850_ _g115838115853_)))))
                      (let ()
                        (declare (not safe))
                        (_g115837115850_ _g115838115853_))))))
          (declare (not safe))
          (_g115836115883_ _stx115835_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self115775_ _stx115776_)
        (let* ((_g115778115791_
                (lambda (_g115779115788_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115779115788_))))
               (_g115777115831_
                (lambda (_g115779115794_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115779115794_))
                      (let ((_e115781115796_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115779115794_))))
                        (let ((_hd115782115799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115781115796_)))
                              (_tl115783115801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115781115796_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115783115801_))
                              (let ((_e115784115804_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115783115801_))))
                                (let ((_hd115785115807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115784115804_)))
                                      (_tl115786115809_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115784115804_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115786115809_))
                                      ((lambda (_L115812_)
                                         (let ((_$e115826_
                                                (let ((__tmp116864
                                                       (lambda (_sub115824_)
                                                         (let ((__tmp116865
                                                                (car _sub115824_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115812_
                                                            __tmp116865))))
                                                      (__tmp116863
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self115775_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp116864
                                                        __tmp116863))))
                                           (if _$e115826_
                                               ((lambda (_sub115829_)
                                                  (let ((__tmp116866
                                                         (let ((__tmp116867
                                                                (let ((__tmp116868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115829_)))
                          (declare (not safe))
                          (cons __tmp116868 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp116867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp116866
                                                     _stx115776_)))
                                                _$e115826_)
                                               _stx115776_)))
                                       _hd115785115807_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115778115791_ _g115779115794_)))))
                              (let ()
                                (declare (not safe))
                                (_g115778115791_ _g115779115794_)))))
                      (let ()
                        (declare (not safe))
                        (_g115778115791_ _g115779115794_))))))
          (declare (not safe))
          (_g115777115831_ _stx115776_))))
    (define gxc#expression-subst-setq%
      (lambda (_self115704_ _stx115705_)
        (let* ((_g115707115724_
                (lambda (_g115708115721_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115708115721_))))
               (_g115706115772_
                (lambda (_g115708115727_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115708115727_))
                      (let ((_e115711115729_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115708115727_))))
                        (let ((_hd115712115732_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115711115729_)))
                              (_tl115713115734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115711115729_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115713115734_))
                              (let ((_e115714115737_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115713115734_))))
                                (let ((_hd115715115740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115714115737_)))
                                      (_tl115716115742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115714115737_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115716115742_))
                                      (let ((_e115717115745_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115716115742_))))
                                        (let ((_hd115718115748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115717115745_)))
                                              (_tl115719115750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115717115745_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115719115750_))
                                              ((lambda (_L115753_ _L115754_)
                                                 (let ((_new-expr115769_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self115704_
                                                           _L115753_)))
                                                       (_new-xid115770_
                                                        (if (let ((__tmp116869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self115704_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L115754_ __tmp116869))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self115704_ 'new-id))
                    _L115754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp116870
                                                          (let ((__tmp116871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116872
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115769_ '()))))
                           (declare (not safe))
                           (cons _new-xid115770_ __tmp116872))))
                    (declare (not safe))
                    (cons '%#set! __tmp116871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp116870
                                                      _stx115705_))))
                                               _hd115718115748_
                                               _hd115715115740_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115707115724_
                                                 _g115708115727_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115707115724_ _g115708115727_)))))
                              (let ()
                                (declare (not safe))
                                (_g115707115724_ _g115708115727_)))))
                      (let ()
                        (declare (not safe))
                        (_g115707115724_ _g115708115727_))))))
          (declare (not safe))
          (_g115706115772_ _stx115705_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self115628_ _stx115629_)
        (let* ((_g115631115648_
                (lambda (_g115632115645_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115632115645_))))
               (_g115630115701_
                (lambda (_g115632115651_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115632115651_))
                      (let ((_e115635115653_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115632115651_))))
                        (let ((_hd115636115656_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115635115653_)))
                              (_tl115637115658_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115635115653_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115637115658_))
                              (let ((_e115638115661_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115637115658_))))
                                (let ((_hd115639115664_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115638115661_)))
                                      (_tl115640115666_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115638115661_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115640115666_))
                                      (let ((_e115641115669_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115640115666_))))
                                        (let ((_hd115642115672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115641115669_)))
                                              (_tl115643115674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115641115669_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115643115674_))
                                              ((lambda (_L115677_ _L115678_)
                                                 (let ((_new-expr115698_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self115628_
                                                           _L115677_)))
                                                       (_new-xid115699_
                                                        (let ((_$e115695_
                                                               (let ((__tmp116874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115693_)
                                (let ((__tmp116875 (car _sub115693_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115678_
                                   __tmp116875))))
                             (__tmp116873
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self115628_ 'subst))))
                         (declare (not safe))
                         (find __tmp116874 __tmp116873))))
                  (if _$e115695_ (cdr _$e115695_) _L115678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp116876
                                                          (let ((__tmp116877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116878
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115698_ '()))))
                           (declare (not safe))
                           (cons _new-xid115699_ __tmp116878))))
                    (declare (not safe))
                    (cons '%#set! __tmp116877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp116876
                                                      _stx115629_))))
                                               _hd115642115672_
                                               _hd115639115664_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115631115648_
                                                 _g115632115651_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115631115648_ _g115632115651_)))))
                              (let ()
                                (declare (not safe))
                                (_g115631115648_ _g115632115651_)))))
                      (let ()
                        (declare (not safe))
                        (_g115631115648_ _g115632115651_))))))
          (declare (not safe))
          (_g115630115701_ _stx115629_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self115574_ _stx115575_)
        (let* ((_g115577115590_
                (lambda (_g115578115587_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115578115587_))))
               (_g115576115625_
                (lambda (_g115578115593_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115578115593_))
                      (let ((_e115580115595_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115578115593_))))
                        (let ((_hd115581115598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115580115595_)))
                              (_tl115582115600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115580115595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115582115600_))
                              (let ((_e115583115603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115582115600_))))
                                (let ((_hd115584115606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115583115603_)))
                                      (_tl115585115608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115583115603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115585115608_))
                                      ((lambda (_L115611_)
                                         (let* ((_eid115623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L115611_)))
                                                (__tmp116879
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self115574_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp116879
                                            _eid115623_
                                            1+
                                            '0)))
                                       _hd115584115606_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115577115590_ _g115578115593_)))))
                              (let ()
                                (declare (not safe))
                                (_g115577115590_ _g115578115593_)))))
                      (let ()
                        (declare (not safe))
                        (_g115577115590_ _g115578115593_))))))
          (declare (not safe))
          (_g115576115625_ _stx115575_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self115504_ _stx115505_)
        (let* ((_g115507115524_
                (lambda (_g115508115521_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115508115521_))))
               (_g115506115571_
                (lambda (_g115508115527_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115508115527_))
                      (let ((_e115511115529_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115508115527_))))
                        (let ((_hd115512115532_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115511115529_)))
                              (_tl115513115534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115511115529_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115513115534_))
                              (let ((_e115514115537_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115513115534_))))
                                (let ((_hd115515115540_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115514115537_)))
                                      (_tl115516115542_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115514115537_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115516115542_))
                                      (let ((_e115517115545_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115516115542_))))
                                        (let ((_hd115518115548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115517115545_)))
                                              (_tl115519115550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115517115545_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115519115550_))
                                              ((lambda (_L115553_ _L115554_)
                                                 (let ((_eid115569_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115554_))))
                                                   (let ((__tmp116880
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self115504_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp116880
                                                      _eid115569_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self115504_
                                                      _L115553_))))
                                               _hd115518115548_
                                               _hd115515115540_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115507115524_
                                                 _g115508115527_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115507115524_ _g115508115527_)))))
                              (let ()
                                (declare (not safe))
                                (_g115507115524_ _g115508115527_)))))
                      (let ()
                        (declare (not safe))
                        (_g115507115524_ _g115508115527_))))))
          (declare (not safe))
          (_g115506115571_ _stx115505_))))
    (define gxc#find-body%
      (lambda (_self115417_ _stx115418_)
        (let* ((_g115420115439_
                (lambda (_g115421115436_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115421115436_))))
               (_g115419115501_
                (lambda (_g115421115442_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115421115442_))
                      (let ((_e115423115444_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115421115442_))))
                        (let ((_hd115424115447_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115423115444_)))
                              (_tl115425115449_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115423115444_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115425115449_))
                              (let ((_g116881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115425115449_
                                        '0))))
                                (begin
                                  (let ((_g116882_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g116881_)
                                               (##vector-length _g116881_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g116882_ 2)))
                                        (error "Context expects 2 values"
                                               _g116882_)))
                                  (let ((_target115426115452_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116881_ 0)))
                                        (_tl115428115454_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116881_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115428115454_))
                                        (letrec ((_loop115429115457_
                                                  (lambda (_hd115427115460_
                                                           _expr115433115462_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115427115460_))
                                                        (let ((_e115430115465_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115427115460_))))
                  (let ((_lp-hd115431115468_
                         (let () (declare (not safe)) (##car _e115430115465_)))
                        (_lp-tl115432115470_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115430115465_))))
                    (let ((__tmp116883
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115431115468_ _expr115433115462_))))
                      (declare (not safe))
                      (_loop115429115457_ _lp-tl115432115470_ __tmp116883))))
                (let ((_expr115434115473_ (reverse _expr115433115462_)))
                  ((lambda (_L115476_)
                     (let ((__tmp116886
                            (lambda (_g115489115491_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self115417_
                                 _g115489115491_))))
                           (__tmp116884
                            (let ((__tmp116885
                                   (lambda (_g115493115496_ _g115494115498_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115493115496_
                                             _g115494115498_)))))
                              (declare (not safe))
                              (foldr1 __tmp116885 '() _L115476_))))
                       (declare (not safe))
                       (ormap1 __tmp116886 __tmp116884)))
                   _expr115434115473_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115429115457_
                                             _target115426115452_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115420115439_
                                           _g115421115442_))))))
                              (let ()
                                (declare (not safe))
                                (_g115420115439_ _g115421115442_)))))
                      (let ()
                        (declare (not safe))
                        (_g115420115439_ _g115421115442_))))))
          (declare (not safe))
          (_g115419115501_ _stx115418_))))
    (define gxc#find-let-values%
      (lambda (_self115267_ _stx115268_)
        (let* ((_g115270115305_
                (lambda (_g115271115302_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115271115302_))))
               (_g115269115414_
                (lambda (_g115271115308_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115271115308_))
                      (let ((_e115275115310_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115271115308_))))
                        (let ((_hd115276115313_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115275115310_)))
                              (_tl115277115315_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115275115310_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115277115315_))
                              (let ((_e115278115318_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115277115315_))))
                                (let ((_hd115279115321_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115278115318_)))
                                      (_tl115280115323_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115278115318_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115279115321_))
                                      (let ((_g116887_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115279115321_
                                                '0))))
                                        (begin
                                          (let ((_g116888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g116887_)
                                                       (##vector-length
                                                        _g116887_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g116888_ 2)))
                                                (error "Context expects 2 values"
                                                       _g116888_)))
                                          (let ((_target115281115326_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g116887_ 0)))
                                                (_tl115283115328_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g116887_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115283115328_))
                                                (letrec ((_loop115284115331_
                                                          (lambda (_hd115282115334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115288115336_
                           _bind115289115338_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115282115334_))
                        (let ((_e115285115341_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115282115334_))))
                          (let ((_lp-hd115286115344_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115285115341_)))
                                (_lp-tl115287115346_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115285115341_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115286115344_))
                                (let ((_e115292115349_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115286115344_))))
                                  (let ((_hd115293115352_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115292115349_)))
                                        (_tl115294115354_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115292115349_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115294115354_))
                                        (let ((_e115295115357_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115294115354_))))
                                          (let ((_hd115296115360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115295115357_)))
                                                (_tl115297115362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115295115357_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115297115362_))
                                                (let ((__tmp116890
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115296115360_
                                                               _expr115288115336_)))
                                                      (__tmp116889
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115293115352_
                                                               _bind115289115338_))))
                                                  (declare (not safe))
                                                  (_loop115284115331_
                                                   _lp-tl115287115346_
                                                   __tmp116890
                                                   __tmp116889))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115270115305_
                                                   _g115271115308_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115270115305_ _g115271115308_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115270115305_ _g115271115308_)))))
                        (let ((_expr115290115365_ (reverse _expr115288115336_))
                              (_bind115291115367_
                               (reverse _bind115289115338_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115280115323_))
                              (let ((_e115298115370_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115280115323_))))
                                (let ((_hd115299115373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115298115370_)))
                                      (_tl115300115375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115298115370_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115300115375_))
                                      ((lambda (_L115378_ _L115379_ _L115380_)
                                         (let ((_$e115411_
                                                (let ((__tmp116893
                                                       (lambda (_g115399115401_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self115267_
                                                            _g115399115401_))))
                                                      (__tmp116891
                                                       (let ((__tmp116892
                                                              (lambda (_g115403115406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115404115408_)
                        (let ()
                          (declare (not safe))
                          (cons _g115403115406_ _g115404115408_)))))
                 (declare (not safe))
                 (foldr1 __tmp116892 '() _L115379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp116893
                                                          __tmp116891))))
                                           (if _$e115411_
                                               _$e115411_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self115267_
                                                  _L115378_)))))
                                       _hd115299115373_
                                       _expr115290115365_
                                       _bind115291115367_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115270115305_ _g115271115308_)))))
                              (let ()
                                (declare (not safe))
                                (_g115270115305_ _g115271115308_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115284115331_
                                                     _target115281115326_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115270115305_
                                                   _g115271115308_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115270115305_ _g115271115308_)))))
                              (let ()
                                (declare (not safe))
                                (_g115270115305_ _g115271115308_)))))
                      (let ()
                        (declare (not safe))
                        (_g115270115305_ _g115271115308_))))))
          (declare (not safe))
          (_g115269115414_ _stx115268_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self115211_ _stx115212_)
        (let* ((_g115214115227_
                (lambda (_g115215115224_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115215115224_))))
               (_g115213115264_
                (lambda (_g115215115230_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115215115230_))
                      (let ((_e115217115232_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115215115230_))))
                        (let ((_hd115218115235_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115217115232_)))
                              (_tl115219115237_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115217115232_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115219115237_))
                              (let ((_e115220115240_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115219115237_))))
                                (let ((_hd115221115243_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115220115240_)))
                                      (_tl115222115245_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115220115240_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115222115245_))
                                      ((lambda (_L115248_)
                                         (let ((__tmp116895
                                                (lambda (_g115259115261_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115248_
                                                     _g115259115261_))))
                                               (__tmp116894
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self115211_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp116895 __tmp116894)))
                                       _hd115221115243_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115214115227_ _g115215115230_)))))
                              (let ()
                                (declare (not safe))
                                (_g115214115227_ _g115215115230_)))))
                      (let ()
                        (declare (not safe))
                        (_g115214115227_ _g115215115230_))))))
          (declare (not safe))
          (_g115213115264_ _stx115212_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self115136_ _stx115137_)
        (let* ((_g115139115156_
                (lambda (_g115140115153_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115140115153_))))
               (_g115138115208_
                (lambda (_g115140115159_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115140115159_))
                      (let ((_e115143115161_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115140115159_))))
                        (let ((_hd115144115164_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115143115161_)))
                              (_tl115145115166_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115143115161_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115145115166_))
                              (let ((_e115146115169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115145115166_))))
                                (let ((_hd115147115172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115146115169_)))
                                      (_tl115148115174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115146115169_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115148115174_))
                                      (let ((_e115149115177_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115148115174_))))
                                        (let ((_hd115150115180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115149115177_)))
                                              (_tl115151115182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115149115177_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115151115182_))
                                              ((lambda (_L115185_ _L115186_)
                                                 (let ((_$e115205_
                                                        (let ((__tmp116897
                                                               (lambda (_g115200115202_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115186_ _g115200115202_))))
                      (__tmp116896
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self115136_ 'ids))))
                  (declare (not safe))
                  (find __tmp116897 __tmp116896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115205_
                                                       _$e115205_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self115136_
                                                          _L115185_)))))
                                               _hd115150115180_
                                               _hd115147115172_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115139115156_
                                                 _g115140115159_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115139115156_ _g115140115159_)))))
                              (let ()
                                (declare (not safe))
                                (_g115139115156_ _g115140115159_)))))
                      (let ()
                        (declare (not safe))
                        (_g115139115156_ _g115140115159_))))))
          (declare (not safe))
          (_g115138115208_ _stx115137_))))))
