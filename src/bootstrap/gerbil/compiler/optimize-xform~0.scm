(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1711709198)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp115704 (list gxc#::void::t))
            (__tmp115703 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp115704
         '()
         __tmp115703
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args115444_
        (apply make-instance gxc#::collect-mutators::t _$args115444_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp115705
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
                 (__seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (__make-promise __tmp115705)))
    (define gxc#apply-collect-mutators
      (lambda (_stx115436_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self115439_
                (let ((__obj115691
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj115691))
               (__tmp115706
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self115439_ _stx115436_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp115706
           gxc#current-compile-method
           _self115439_))))
    (define gxc#::collect-methods::t
      (let ((__tmp115708 (list gxc#::void::t))
            (__tmp115707 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp115708
         '()
         __tmp115707
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args115433_
        (apply make-instance gxc#::collect-methods::t _$args115433_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp115709
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
                 (__seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (__make-promise __tmp115709)))
    (define gxc#apply-collect-methods
      (lambda (_stx115425_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self115428_
                (let ((__obj115693
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj115693))
               (__tmp115710
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self115428_ _stx115425_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp115710
           gxc#current-compile-method
           _self115428_))))
    (define gxc#::expression-subst::t
      (let ((__tmp115712 (list gxc#::basic-xform-expression::t))
            (__tmp115711 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp115712
         '(id new-id)
         __tmp115711
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args115422_
        (apply make-instance gxc#::expression-subst::t _$args115422_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp115713
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
                 (__seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (__make-promise __tmp115713)))
    (define gxc#apply-expression-subst__%
      (lambda (__115390_ _id115386115392_ _new-id115387115394_ _stx115396_)
        (let* ((_id115399_
                (if (eq? _id115386115392_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id115386115392_))
               (_new-id115401_
                (if (eq? _new-id115387115394_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id115387115394_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self115403_
                  (let ((__obj115695
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj115695
                       _id115399_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj115695
                       _new-id115401_
                       '2
                       '#f
                       '#f))
                    __obj115695))
                 (__tmp115714
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self115403_ _stx115396_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp115714
             gxc#current-compile-method
             _self115403_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys115385115410_ . _args115412_)
        (apply gxc#apply-expression-subst__%
               _keys115385115410_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys115385115410_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys115385115410_ 'new-id: absent-value))
               _args115412_)))
    (define gxc#apply-expression-subst
      (lambda _args115388115418_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args115388115418_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp115716 (list gxc#::basic-xform-expression::t))
            (__tmp115715 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp115716
         '(subst)
         __tmp115715
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args115381_
        (apply make-instance gxc#::expression-subst*::t _$args115381_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp115717
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
                 (__seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (__make-promise __tmp115717)))
    (define gxc#apply-expression-subst*__%
      (lambda (__115353_ _subst115350115355_ _stx115357_)
        (let ((_subst115360_
               (if (eq? _subst115350115355_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst115350115355_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self115362_
                  (let ((__obj115697
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj115697
                       _subst115360_
                       '1
                       '#f
                       '#f))
                    __obj115697))
                 (__tmp115718
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self115362_ _stx115357_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp115718
             gxc#current-compile-method
             _self115362_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys115349115369_ . _args115371_)
        (apply gxc#apply-expression-subst*__%
               _keys115349115369_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys115349115369_ 'subst: absent-value))
               _args115371_)))
    (define gxc#apply-expression-subst*
      (lambda _args115351115377_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args115351115377_)))
    (define gxc#::find-expression::t
      (let ((__tmp115719 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp115719
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args115345_
        (apply make-instance gxc#::find-expression::t _$args115345_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp115720
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
        (__make-promise __tmp115720)))
    (define gxc#::find-var-refs::t
      (let ((__tmp115722 (list gxc#::find-expression::t))
            (__tmp115721 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp115722
         '(ids)
         __tmp115721
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args115341_
        (apply make-instance gxc#::find-var-refs::t _$args115341_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp115723
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
                 (__seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp115723)))
    (define gxc#apply-find-var-refs__%
      (lambda (__115313_ _ids115310115315_ _stx115317_)
        (let ((_ids115320_
               (if (eq? _ids115310115315_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids115310115315_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self115322_
                  (let ((__obj115700
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj115700
                       _ids115320_
                       '1
                       '#f
                       '#f))
                    __obj115700))
                 (__tmp115724
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self115322_ _stx115317_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp115724
             gxc#current-compile-method
             _self115322_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys115309115329_ . _args115331_)
        (apply gxc#apply-find-var-refs__%
               _keys115309115329_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys115309115329_ 'ids: absent-value))
               _args115331_)))
    (define gxc#apply-find-var-refs
      (lambda _args115311115337_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args115311115337_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp115726 (list gxc#::collect-expression-refs::t))
            (__tmp115725 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp115726
         '()
         __tmp115725
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args115305_
        (apply make-instance gxc#::collect-runtime-refs::t _$args115305_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp115727
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
                 (__seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp115727)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (__115277_ _table115274115279_ _stx115281_)
        (let ((_table115284_
               (if (eq? _table115274115279_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table115274115279_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self115286_
                  (let ((__obj115702
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj115702
                       _table115284_
                       '1
                       '#f
                       '#f))
                    __obj115702))
                 (__tmp115728
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self115286_ _stx115281_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp115728
             gxc#current-compile-method
             _self115286_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys115273115293_ . _args115295_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys115273115293_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys115273115293_ 'table: absent-value))
               _args115295_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args115275115301_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args115275115301_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self115202_ _stx115203_)
        (let* ((_g115205115222_
                (lambda (_g115206115219_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115206115219_))))
               (_g115204115269_
                (lambda (_g115206115225_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115206115225_))
                      (let ((_e115211115227_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115206115225_))))
                        (let ((_hd115210115230_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115211115227_)))
                              (_tl115209115232_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115211115227_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115209115232_))
                              (let ((_e115214115235_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115209115232_))))
                                (let ((_hd115213115238_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115214115235_)))
                                      (_tl115212115240_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115214115235_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115212115240_))
                                      (let ((_e115217115243_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115212115240_))))
                                        (let ((_hd115216115246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115217115243_)))
                                              (_tl115215115248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115217115243_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115215115248_))
                                              ((lambda (_L115251_ _L115252_)
                                                 (let ((_sym115267_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115252_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym115267_))
                                                   (let ((__tmp115729
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp115729
                                                      _sym115267_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self115202_
                                                      _L115251_))))
                                               _hd115216115246_
                                               _hd115213115238_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115205115222_
                                                 _g115206115225_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115205115222_ _g115206115225_)))))
                              (let ()
                                (declare (not safe))
                                (_g115205115222_ _g115206115225_)))))
                      (let ()
                        (declare (not safe))
                        (_g115205115222_ _g115206115225_))))))
          (declare (not safe))
          (_g115204115269_ _stx115203_))))
    (define gxc#collect-methods-call%
      (lambda (_self114755_ _stx114756_)
        (let* ((___stx115447115448_ _stx114756_)
               (_g114760114862_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx115447115448_)))))
          (let ((___kont115449115450_
                 (lambda (_L115152_ _L115153_ _L115154_ _L115155_ _L115156_)
                   (let ((__tmp115730
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115153_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp115730))))
                (___kont115451115452_
                 (lambda (_L114978_ _L114979_ _L114980_ _L114981_)
                   (let ((__tmp115731
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L114978_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp115731))))
                (___kont115453115454_ (lambda () '#!void)))
            (let ((___match115582115583_
                   (lambda (_e114769115024_
                            _hd114768115027_
                            _tl114767115029_
                            _e114772115032_
                            _hd114771115035_
                            _tl114770115037_
                            _e114775115040_
                            _hd114774115043_
                            _tl114773115045_
                            _e114778115048_
                            _hd114777115051_
                            _tl114776115053_
                            _e114781115056_
                            _hd114780115059_
                            _tl114779115061_
                            _e114784115064_
                            _hd114783115067_
                            _tl114782115069_
                            _e114787115072_
                            _hd114786115075_
                            _tl114785115077_
                            _e114790115080_
                            _hd114789115083_
                            _tl114788115085_
                            _e114793115088_
                            _hd114792115091_
                            _tl114791115093_
                            _e114796115096_
                            _hd114795115099_
                            _tl114794115101_
                            _e114799115104_
                            _hd114798115107_
                            _tl114797115109_
                            _e114802115112_
                            _hd114801115115_
                            _tl114800115117_
                            _e114805115120_
                            _hd114804115123_
                            _tl114803115125_
                            _e114808115128_
                            _hd114807115131_
                            _tl114806115133_
                            _e114811115136_
                            _hd114810115139_
                            _tl114809115141_
                            _e114814115144_
                            _hd114813115147_
                            _tl114812115149_)
                     (let ((_L115152_ _hd114813115147_)
                           (_L115153_ _hd114804115123_)
                           (_L115154_ _hd114795115099_)
                           (_L115155_ _hd114786115075_)
                           (_L115156_ _hd114777115051_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L115156_
                              'bind-method!))
                           (___kont115449115450_
                            _L115152_
                            _L115153_
                            _L115154_
                            _L115155_
                            _L115156_)
                           (___kont115453115454_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx115447115448_))
                  (let ((_e114769115024_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx115447115448_))))
                    (let ((_tl114767115029_
                           (let ()
                             (declare (not safe))
                             (##cdr _e114769115024_)))
                          (_hd114768115027_
                           (let ()
                             (declare (not safe))
                             (##car _e114769115024_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl114767115029_))
                          (let ((_e114772115032_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl114767115029_))))
                            (let ((_tl114770115037_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e114772115032_)))
                                  (_hd114771115035_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e114772115032_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd114771115035_))
                                  (let ((_e114775115040_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd114771115035_))))
                                    (let ((_tl114773115045_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e114775115040_)))
                                          (_hd114774115043_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e114775115040_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd114774115043_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd114774115043_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl114773115045_))
                                                  (let ((_e114778115048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl114773115045_))))
                                                    (let ((_tl114776115053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e114778115048_)))
                                                          (_hd114777115051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e114778115048_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl114776115053_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl114770115037_))
                      (let ((_e114781115056_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl114770115037_))))
                        (let ((_tl114779115061_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114781115056_)))
                              (_hd114780115059_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114781115056_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd114780115059_))
                              (let ((_e114784115064_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd114780115059_))))
                                (let ((_tl114782115069_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114784115064_)))
                                      (_hd114783115067_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114784115064_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd114783115067_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd114783115067_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl114782115069_))
                                              (let ((_e114787115072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl114782115069_))))
                                                (let ((_tl114785115077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e114787115072_)))
                                                      (_hd114786115075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e114787115072_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl114785115077_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl114779115061_))
                                                          (let ((_e114790115080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl114779115061_))))
                    (let ((_tl114788115085_
                           (let ()
                             (declare (not safe))
                             (##cdr _e114790115080_)))
                          (_hd114789115083_
                           (let ()
                             (declare (not safe))
                             (##car _e114790115080_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd114789115083_))
                          (let ((_e114793115088_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd114789115083_))))
                            (let ((_tl114791115093_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e114793115088_)))
                                  (_hd114792115091_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e114793115088_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd114792115091_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd114792115091_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl114791115093_))
                                          (let ((_e114796115096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl114791115093_))))
                                            (let ((_tl114794115101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e114796115096_)))
                                                  (_hd114795115099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e114796115096_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl114794115101_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl114788115085_))
                                                      (let ((_e114799115104_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl114788115085_))))
                (let ((_tl114797115109_
                       (let () (declare (not safe)) (##cdr _e114799115104_)))
                      (_hd114798115107_
                       (let () (declare (not safe)) (##car _e114799115104_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd114798115107_))
                      (let ((_e114802115112_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd114798115107_))))
                        (let ((_tl114800115117_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114802115112_)))
                              (_hd114801115115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114802115112_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd114801115115_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd114801115115_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114800115117_))
                                      (let ((_e114805115120_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114800115117_))))
                                        (let ((_tl114803115125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114805115120_)))
                                              (_hd114804115123_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114805115120_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114803115125_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl114797115109_))
                                                  (let ((_e114808115128_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl114797115109_))))
                                                    (let ((_tl114806115133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e114808115128_)))
                                                          (_hd114807115131_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e114808115128_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd114807115131_))
                                                          (let ((_e114811115136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd114807115131_))))
                    (let ((_tl114809115141_
                           (let ()
                             (declare (not safe))
                             (##cdr _e114811115136_)))
                          (_hd114810115139_
                           (let ()
                             (declare (not safe))
                             (##car _e114811115136_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd114810115139_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd114810115139_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl114809115141_))
                                  (let ((_e114814115144_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl114809115141_))))
                                    (let ((_tl114812115149_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e114814115144_)))
                                          (_hd114813115147_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e114814115144_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl114812115149_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114806115133_))
                                              (___match115582115583_
                                               _e114769115024_
                                               _hd114768115027_
                                               _tl114767115029_
                                               _e114772115032_
                                               _hd114771115035_
                                               _tl114770115037_
                                               _e114775115040_
                                               _hd114774115043_
                                               _tl114773115045_
                                               _e114778115048_
                                               _hd114777115051_
                                               _tl114776115053_
                                               _e114781115056_
                                               _hd114780115059_
                                               _tl114779115061_
                                               _e114784115064_
                                               _hd114783115067_
                                               _tl114782115069_
                                               _e114787115072_
                                               _hd114786115075_
                                               _tl114785115077_
                                               _e114790115080_
                                               _hd114789115083_
                                               _tl114788115085_
                                               _e114793115088_
                                               _hd114792115091_
                                               _tl114791115093_
                                               _e114796115096_
                                               _hd114795115099_
                                               _tl114794115101_
                                               _e114799115104_
                                               _hd114798115107_
                                               _tl114797115109_
                                               _e114802115112_
                                               _hd114801115115_
                                               _tl114800115117_
                                               _e114805115120_
                                               _hd114804115123_
                                               _tl114803115125_
                                               _e114808115128_
                                               _hd114807115131_
                                               _tl114806115133_
                                               _e114811115136_
                                               _hd114810115139_
                                               _tl114809115141_
                                               _e114814115144_
                                               _hd114813115147_
                                               _tl114812115149_)
                                              (___kont115453115454_))
                                          (___kont115453115454_))))
                                  (___kont115453115454_))
                              (___kont115453115454_))
                          (___kont115453115454_))))
                  (___kont115453115454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl114797115109_))
                                                      (if (let ((__tmp115732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp115732 'bind-method!))
                  (let ((_L114978_ _hd114804115123_)
                        (_L114979_ _hd114795115099_)
                        (_L114980_ _hd114786115075_)
                        (_L114981_ _hd114777115051_))
                    (___kont115451115452_
                     _L114978_
                     _L114979_
                     _L114980_
                     _L114981_))
                  (___kont115453115454_))
              (___kont115453115454_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont115453115454_))))
                                      (___kont115453115454_))
                                  (___kont115453115454_))
                              (___kont115453115454_))))
                      (___kont115453115454_))))
              (___kont115453115454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont115453115454_))))
                                          (___kont115453115454_))
                                      (___kont115453115454_))
                                  (___kont115453115454_))))
                          (___kont115453115454_))))
                  (___kont115453115454_))
              (___kont115453115454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont115453115454_))
                                          (___kont115453115454_))
                                      (___kont115453115454_))))
                              (___kont115453115454_))))
                      (___kont115453115454_))
                  (___kont115453115454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont115453115454_))
                                              (___kont115453115454_))
                                          (___kont115453115454_))))
                                  (___kont115453115454_))))
                          (___kont115453115454_))))
                  (___kont115453115454_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self114703_ _stx114704_)
        (let* ((_g114706114719_
                (lambda (_g114707114716_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114707114716_))))
               (_g114705114752_
                (lambda (_g114707114722_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114707114722_))
                      (let ((_e114711114724_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114707114722_))))
                        (let ((_hd114710114727_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114711114724_)))
                              (_tl114709114729_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114711114724_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114709114729_))
                              (let ((_e114714114732_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114709114729_))))
                                (let ((_hd114713114735_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114714114732_)))
                                      (_tl114712114737_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114714114732_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114712114737_))
                                      ((lambda (_L114740_)
                                         (if (let ((__tmp115733
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self114703_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L114740_
                                                __tmp115733))
                                             (let ((__tmp115734
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self114703_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp115734
                                                _stx114704_))
                                             _stx114704_))
                                       _hd114713114735_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114706114719_ _g114707114722_)))))
                              (let ()
                                (declare (not safe))
                                (_g114706114719_ _g114707114722_)))))
                      (let ()
                        (declare (not safe))
                        (_g114706114719_ _g114707114722_))))))
          (declare (not safe))
          (_g114705114752_ _stx114704_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self114644_ _stx114645_)
        (let* ((_g114647114660_
                (lambda (_g114648114657_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114648114657_))))
               (_g114646114700_
                (lambda (_g114648114663_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114648114663_))
                      (let ((_e114652114665_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114648114663_))))
                        (let ((_hd114651114668_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114652114665_)))
                              (_tl114650114670_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114652114665_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114650114670_))
                              (let ((_e114655114673_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114650114670_))))
                                (let ((_hd114654114676_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114655114673_)))
                                      (_tl114653114678_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114655114673_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114653114678_))
                                      ((lambda (_L114681_)
                                         (let ((_$e114695_
                                                (let ((__tmp115736
                                                       (lambda (_sub114693_)
                                                         (let ((__tmp115737
                                                                (car _sub114693_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L114681_
                                                            __tmp115737))))
                                                      (__tmp115735
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self114644_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp115736
                                                          __tmp115735))))
                                           (if _$e114695_
                                               ((lambda (_sub114698_)
                                                  (let ((__tmp115738
                                                         (cons '%#ref
                                                               (cons (cdr _sub114698_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp115738
                                                     _stx114645_)))
                                                _$e114695_)
                                               _stx114645_)))
                                       _hd114654114676_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114647114660_ _g114648114663_)))))
                              (let ()
                                (declare (not safe))
                                (_g114647114660_ _g114648114663_)))))
                      (let ()
                        (declare (not safe))
                        (_g114647114660_ _g114648114663_))))))
          (declare (not safe))
          (_g114646114700_ _stx114645_))))
    (define gxc#expression-subst-setq%
      (lambda (_self114573_ _stx114574_)
        (let* ((_g114576114593_
                (lambda (_g114577114590_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114577114590_))))
               (_g114575114641_
                (lambda (_g114577114596_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114577114596_))
                      (let ((_e114582114598_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114577114596_))))
                        (let ((_hd114581114601_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114582114598_)))
                              (_tl114580114603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114582114598_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114580114603_))
                              (let ((_e114585114606_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114580114603_))))
                                (let ((_hd114584114609_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114585114606_)))
                                      (_tl114583114611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114585114606_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114583114611_))
                                      (let ((_e114588114614_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114583114611_))))
                                        (let ((_hd114587114617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114588114614_)))
                                              (_tl114586114619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114588114614_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114586114619_))
                                              ((lambda (_L114622_ _L114623_)
                                                 (let ((_new-expr114638_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self114573_
                                                           _L114622_)))
                                                       (_new-xid114639_
                                                        (if (let ((__tmp115739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self114573_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L114623_ __tmp115739))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self114573_ 'new-id))
                    _L114623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp115740
                                                          (cons '%#set!
                                                                (cons _new-xid114639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _new-expr114638_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp115740
                                                      _stx114574_))))
                                               _hd114587114617_
                                               _hd114584114609_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114576114593_
                                                 _g114577114596_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114576114593_ _g114577114596_)))))
                              (let ()
                                (declare (not safe))
                                (_g114576114593_ _g114577114596_)))))
                      (let ()
                        (declare (not safe))
                        (_g114576114593_ _g114577114596_))))))
          (declare (not safe))
          (_g114575114641_ _stx114574_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self114497_ _stx114498_)
        (let* ((_g114500114517_
                (lambda (_g114501114514_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114501114514_))))
               (_g114499114570_
                (lambda (_g114501114520_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114501114520_))
                      (let ((_e114506114522_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114501114520_))))
                        (let ((_hd114505114525_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114506114522_)))
                              (_tl114504114527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114506114522_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114504114527_))
                              (let ((_e114509114530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114504114527_))))
                                (let ((_hd114508114533_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114509114530_)))
                                      (_tl114507114535_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114509114530_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114507114535_))
                                      (let ((_e114512114538_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114507114535_))))
                                        (let ((_hd114511114541_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114512114538_)))
                                              (_tl114510114543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114512114538_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114510114543_))
                                              ((lambda (_L114546_ _L114547_)
                                                 (let ((_new-expr114567_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self114497_
                                                           _L114546_)))
                                                       (_new-xid114568_
                                                        (let ((_$e114564_
                                                               (let ((__tmp115742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub114562_)
                                (let ((__tmp115743 (car _sub114562_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L114547_
                                   __tmp115743))))
                             (__tmp115741
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self114497_ 'subst))))
                         (declare (not safe))
                         (__find __tmp115742 __tmp115741))))
                  (if _$e114564_ (cdr _$e114564_) _L114547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp115744
                                                          (cons '%#set!
                                                                (cons _new-xid114568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _new-expr114567_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp115744
                                                      _stx114498_))))
                                               _hd114511114541_
                                               _hd114508114533_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114500114517_
                                                 _g114501114520_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114500114517_ _g114501114520_)))))
                              (let ()
                                (declare (not safe))
                                (_g114500114517_ _g114501114520_)))))
                      (let ()
                        (declare (not safe))
                        (_g114500114517_ _g114501114520_))))))
          (declare (not safe))
          (_g114499114570_ _stx114498_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self114443_ _stx114444_)
        (let* ((_g114446114459_
                (lambda (_g114447114456_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114447114456_))))
               (_g114445114494_
                (lambda (_g114447114462_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114447114462_))
                      (let ((_e114451114464_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114447114462_))))
                        (let ((_hd114450114467_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114451114464_)))
                              (_tl114449114469_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114451114464_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114449114469_))
                              (let ((_e114454114472_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114449114469_))))
                                (let ((_hd114453114475_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114454114472_)))
                                      (_tl114452114477_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114454114472_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114452114477_))
                                      ((lambda (_L114480_)
                                         (let* ((_eid114492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L114480_)))
                                                (__tmp115745
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self114443_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp115745
                                            _eid114492_
                                            1+
                                            '0)))
                                       _hd114453114475_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114446114459_ _g114447114462_)))))
                              (let ()
                                (declare (not safe))
                                (_g114446114459_ _g114447114462_)))))
                      (let ()
                        (declare (not safe))
                        (_g114446114459_ _g114447114462_))))))
          (declare (not safe))
          (_g114445114494_ _stx114444_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self114373_ _stx114374_)
        (let* ((_g114376114393_
                (lambda (_g114377114390_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114377114390_))))
               (_g114375114440_
                (lambda (_g114377114396_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114377114396_))
                      (let ((_e114382114398_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114377114396_))))
                        (let ((_hd114381114401_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114382114398_)))
                              (_tl114380114403_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114382114398_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114380114403_))
                              (let ((_e114385114406_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114380114403_))))
                                (let ((_hd114384114409_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114385114406_)))
                                      (_tl114383114411_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114385114406_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114383114411_))
                                      (let ((_e114388114414_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114383114411_))))
                                        (let ((_hd114387114417_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114388114414_)))
                                              (_tl114386114419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114388114414_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114386114419_))
                                              ((lambda (_L114422_ _L114423_)
                                                 (let ((_eid114438_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L114423_))))
                                                   (let ((__tmp115746
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self114373_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp115746
                                                      _eid114438_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self114373_
                                                      _L114422_))))
                                               _hd114387114417_
                                               _hd114384114409_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114376114393_
                                                 _g114377114396_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114376114393_ _g114377114396_)))))
                              (let ()
                                (declare (not safe))
                                (_g114376114393_ _g114377114396_)))))
                      (let ()
                        (declare (not safe))
                        (_g114376114393_ _g114377114396_))))))
          (declare (not safe))
          (_g114375114440_ _stx114374_))))
    (define gxc#find-body%
      (lambda (_self114286_ _stx114287_)
        (let* ((_g114289114308_
                (lambda (_g114290114305_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114290114305_))))
               (_g114288114370_
                (lambda (_g114290114311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114290114311_))
                      (let ((_e114294114313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114290114311_))))
                        (let ((_hd114293114316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114294114313_)))
                              (_tl114292114318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114294114313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114292114318_))
                              (let ((_g115747_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114292114318_
                                        '0))))
                                (begin
                                  (let ((_g115748_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g115747_)
                                               (##vector-length _g115747_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g115748_ 2)))
                                        (error "Context expects 2 values"
                                               _g115748_)))
                                  (let ((_target114295114321_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115747_ 0)))
                                        (_tl114297114323_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115747_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114297114323_))
                                        (letrec ((_loop114298114326_
                                                  (lambda (_hd114296114329_
                                                           _expr114302114331_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114296114329_))
                                                        (let ((_e114299114334_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114296114329_))))
                  (let ((_lp-hd114300114337_
                         (let () (declare (not safe)) (##car _e114299114334_)))
                        (_lp-tl114301114339_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114299114334_))))
                    (let ((__tmp115749
                           (cons _lp-hd114300114337_ _expr114302114331_)))
                      (declare (not safe))
                      (_loop114298114326_ _lp-tl114301114339_ __tmp115749))))
                (let ((_expr114303114342_ (reverse _expr114302114331_)))
                  ((lambda (_L114345_)
                     (let ((__tmp115752
                            (lambda (_g114358114360_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self114286_
                                 _g114358114360_))))
                           (__tmp115750
                            (let ((__tmp115751
                                   (lambda (_g114362114365_ _g114363114367_)
                                     (cons _g114362114365_ _g114363114367_))))
                              (declare (not safe))
                              (__foldr1 __tmp115751 '() _L114345_))))
                       (declare (not safe))
                       (__ormap1 __tmp115752 __tmp115750)))
                   _expr114303114342_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114298114326_
                                             _target114295114321_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114289114308_
                                           _g114290114311_))))))
                              (let ()
                                (declare (not safe))
                                (_g114289114308_ _g114290114311_)))))
                      (let ()
                        (declare (not safe))
                        (_g114289114308_ _g114290114311_))))))
          (declare (not safe))
          (_g114288114370_ _stx114287_))))
    (define gxc#find-let-values%
      (lambda (_self114136_ _stx114137_)
        (let* ((_g114139114174_
                (lambda (_g114140114171_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114140114171_))))
               (_g114138114283_
                (lambda (_g114140114177_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114140114177_))
                      (let ((_e114146114179_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114140114177_))))
                        (let ((_hd114145114182_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114146114179_)))
                              (_tl114144114184_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114146114179_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114144114184_))
                              (let ((_e114149114187_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114144114184_))))
                                (let ((_hd114148114190_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114149114187_)))
                                      (_tl114147114192_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114149114187_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd114148114190_))
                                      (let ((_g115753_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd114148114190_
                                                '0))))
                                        (begin
                                          (let ((_g115754_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g115753_)
                                                       (##vector-length
                                                        _g115753_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g115754_ 2)))
                                                (error "Context expects 2 values"
                                                       _g115754_)))
                                          (let ((_target114150114195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g115753_ 0)))
                                                (_tl114152114197_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g115753_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114152114197_))
                                                (letrec ((_loop114153114200_
                                                          (lambda (_hd114151114203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr114157114205_
                           _bind114158114207_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd114151114203_))
                        (let ((_e114154114210_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd114151114203_))))
                          (let ((_lp-hd114155114213_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114154114210_)))
                                (_lp-tl114156114215_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114154114210_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd114155114213_))
                                (let ((_e114163114218_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd114155114213_))))
                                  (let ((_hd114162114221_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114163114218_)))
                                        (_tl114161114223_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114163114218_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl114161114223_))
                                        (let ((_e114166114226_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl114161114223_))))
                                          (let ((_hd114165114229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e114166114226_)))
                                                (_tl114164114231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e114166114226_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114164114231_))
                                                (let ((__tmp115756
                                                       (cons _hd114165114229_
                                                             _expr114157114205_))
                                                      (__tmp115755
                                                       (cons _hd114162114221_
                                                             _bind114158114207_)))
                                                  (declare (not safe))
                                                  (_loop114153114200_
                                                   _lp-tl114156114215_
                                                   __tmp115756
                                                   __tmp115755))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114139114174_
                                                   _g114140114177_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g114139114174_ _g114140114177_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114139114174_ _g114140114177_)))))
                        (let ((_expr114159114234_ (reverse _expr114157114205_))
                              (_bind114160114236_
                               (reverse _bind114158114207_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114147114192_))
                              (let ((_e114169114239_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114147114192_))))
                                (let ((_hd114168114242_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114169114239_)))
                                      (_tl114167114244_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114169114239_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114167114244_))
                                      ((lambda (_L114247_ _L114248_ _L114249_)
                                         (let ((_$e114280_
                                                (let ((__tmp115759
                                                       (lambda (_g114268114270_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self114136_
                                                            _g114268114270_))))
                                                      (__tmp115757
                                                       (let ((__tmp115758
                                                              (lambda (_g114272114275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g114273114277_)
                        (cons _g114272114275_ _g114273114277_))))
                 (declare (not safe))
                 (__foldr1 __tmp115758 '() _L114248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp115759
                                                   __tmp115757))))
                                           (if _$e114280_
                                               _$e114280_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self114136_
                                                  _L114247_)))))
                                       _hd114168114242_
                                       _expr114159114234_
                                       _bind114160114236_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114139114174_ _g114140114177_)))))
                              (let ()
                                (declare (not safe))
                                (_g114139114174_ _g114140114177_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop114153114200_
                                                     _target114150114195_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114139114174_
                                                   _g114140114177_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114139114174_ _g114140114177_)))))
                              (let ()
                                (declare (not safe))
                                (_g114139114174_ _g114140114177_)))))
                      (let ()
                        (declare (not safe))
                        (_g114139114174_ _g114140114177_))))))
          (declare (not safe))
          (_g114138114283_ _stx114137_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self114080_ _stx114081_)
        (let* ((_g114083114096_
                (lambda (_g114084114093_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114084114093_))))
               (_g114082114133_
                (lambda (_g114084114099_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114084114099_))
                      (let ((_e114088114101_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114084114099_))))
                        (let ((_hd114087114104_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114088114101_)))
                              (_tl114086114106_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114088114101_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114086114106_))
                              (let ((_e114091114109_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114086114106_))))
                                (let ((_hd114090114112_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114091114109_)))
                                      (_tl114089114114_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114091114109_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114089114114_))
                                      ((lambda (_L114117_)
                                         (let ((__tmp115761
                                                (lambda (_g114128114130_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L114117_
                                                     _g114128114130_))))
                                               (__tmp115760
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self114080_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp115761 __tmp115760)))
                                       _hd114090114112_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114083114096_ _g114084114099_)))))
                              (let ()
                                (declare (not safe))
                                (_g114083114096_ _g114084114099_)))))
                      (let ()
                        (declare (not safe))
                        (_g114083114096_ _g114084114099_))))))
          (declare (not safe))
          (_g114082114133_ _stx114081_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self114005_ _stx114006_)
        (let* ((_g114008114025_
                (lambda (_g114009114022_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114009114022_))))
               (_g114007114077_
                (lambda (_g114009114028_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114009114028_))
                      (let ((_e114014114030_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114009114028_))))
                        (let ((_hd114013114033_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114014114030_)))
                              (_tl114012114035_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114014114030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114012114035_))
                              (let ((_e114017114038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114012114035_))))
                                (let ((_hd114016114041_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114017114038_)))
                                      (_tl114015114043_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114017114038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114015114043_))
                                      (let ((_e114020114046_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114015114043_))))
                                        (let ((_hd114019114049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114020114046_)))
                                              (_tl114018114051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114020114046_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114018114051_))
                                              ((lambda (_L114054_ _L114055_)
                                                 (let ((_$e114074_
                                                        (let ((__tmp115763
                                                               (lambda (_g114069114071_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L114055_ _g114069114071_))))
                      (__tmp115762
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self114005_ 'ids))))
                  (declare (not safe))
                  (__find __tmp115763 __tmp115762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e114074_
                                                       _$e114074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self114005_
                                                          _L114054_)))))
                                               _hd114019114049_
                                               _hd114016114041_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114008114025_
                                                 _g114009114028_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114008114025_ _g114009114028_)))))
                              (let ()
                                (declare (not safe))
                                (_g114008114025_ _g114009114028_)))))
                      (let ()
                        (declare (not safe))
                        (_g114008114025_ _g114009114028_))))))
          (declare (not safe))
          (_g114007114077_ _stx114006_))))))
