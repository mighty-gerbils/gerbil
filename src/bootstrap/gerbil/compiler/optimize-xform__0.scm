(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710488241)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp118104 (list gxc#::void::t))
            (__tmp118102
             (let ((__tmp118103
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118103 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp118104
         '()
         __tmp118102
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args117843_
        (apply make-instance gxc#::collect-mutators::t _$args117843_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp118105
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
        (make-promise __tmp118105)))
    (define gxc#apply-collect-mutators
      (lambda (_stx117835_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self117838_
                (let ((__obj118090
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj118090))
               (__tmp118106
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self117838_ _stx117835_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118106
           gxc#current-compile-method
           _self117838_))))
    (define gxc#::collect-methods::t
      (let ((__tmp118109 (list gxc#::void::t))
            (__tmp118107
             (let ((__tmp118108
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118108 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp118109
         '()
         __tmp118107
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args117832_
        (apply make-instance gxc#::collect-methods::t _$args117832_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp118110
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
        (make-promise __tmp118110)))
    (define gxc#apply-collect-methods
      (lambda (_stx117824_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self117827_
                (let ((__obj118092
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj118092))
               (__tmp118111
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self117827_ _stx117824_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118111
           gxc#current-compile-method
           _self117827_))))
    (define gxc#::expression-subst::t
      (let ((__tmp118114 (list gxc#::basic-xform-expression::t))
            (__tmp118112
             (let ((__tmp118113
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118113 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp118114
         '(id new-id)
         __tmp118112
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args117821_
        (apply make-instance gxc#::expression-subst::t _$args117821_)))
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
      (let ((__tmp118115
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
        (make-promise __tmp118115)))
    (define gxc#apply-expression-subst__%
      (lambda (_g118116_ _id117787117791_ _new-id117788117793_ _stx117795_)
        (let* ((_id117798_
                (if (let ()
                      (declare (not safe))
                      (eq? _id117787117791_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id117787117791_))
               (_new-id117800_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id117788117793_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id117788117793_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self117802_
                  (let ((__obj118094
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118094
                       _id117798_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118094
                       _new-id117800_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj118094))
                 (__tmp118117
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117802_ _stx117795_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118117
             gxc#current-compile-method
             _self117802_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys117786117809_ . _args117811_)
        (apply gxc#apply-expression-subst__%
               _keys117786117809_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117786117809_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117786117809_ 'new-id: absent-value))
               _args117811_)))
    (define gxc#apply-expression-subst
      (lambda _args117789117817_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args117789117817_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp118120 (list gxc#::basic-xform-expression::t))
            (__tmp118118
             (let ((__tmp118119
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118119 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp118120
         '(subst)
         __tmp118118
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args117782_
        (apply make-instance gxc#::expression-subst*::t _$args117782_)))
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
      (let ((__tmp118121
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
        (make-promise __tmp118121)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g118122_ _subst117753117756_ _stx117758_)
        (let ((_subst117761_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst117753117756_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst117753117756_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self117763_
                  (let ((__obj118096
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118096
                       _subst117761_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj118096))
                 (__tmp118123
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117763_ _stx117758_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118123
             gxc#current-compile-method
             _self117763_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys117752117770_ . _args117772_)
        (apply gxc#apply-expression-subst*__%
               _keys117752117770_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117752117770_ 'subst: absent-value))
               _args117772_)))
    (define gxc#apply-expression-subst*
      (lambda _args117754117778_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args117754117778_)))
    (define gxc#::find-expression::t
      (let ((__tmp118124 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp118124
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args117748_
        (apply make-instance gxc#::find-expression::t _$args117748_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp118125
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
        (make-promise __tmp118125)))
    (define gxc#::find-var-refs::t
      (let ((__tmp118128 (list gxc#::find-expression::t))
            (__tmp118126
             (let ((__tmp118127
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118127 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp118128
         '(ids)
         __tmp118126
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args117744_
        (apply make-instance gxc#::find-var-refs::t _$args117744_)))
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
      (let ((__tmp118129
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
        (make-promise __tmp118129)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g118130_ _ids117715117718_ _stx117720_)
        (let ((_ids117723_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids117715117718_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids117715117718_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self117725_
                  (let ((__obj118099
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118099
                       _ids117723_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj118099))
                 (__tmp118131
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117725_ _stx117720_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118131
             gxc#current-compile-method
             _self117725_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys117714117732_ . _args117734_)
        (apply gxc#apply-find-var-refs__%
               _keys117714117732_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117714117732_ 'ids: absent-value))
               _args117734_)))
    (define gxc#apply-find-var-refs
      (lambda _args117716117740_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args117716117740_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp118134 (list gxc#::collect-expression-refs::t))
            (__tmp118132
             (let ((__tmp118133
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118133 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp118134
         '()
         __tmp118132
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args117710_
        (apply make-instance gxc#::collect-runtime-refs::t _$args117710_)))
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
      (let ((__tmp118135
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
        (make-promise __tmp118135)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g118136_ _table117681117684_ _stx117686_)
        (let ((_table117689_
               (if (let ()
                     (declare (not safe))
                     (eq? _table117681117684_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table117681117684_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self117691_
                  (let ((__obj118101
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118101
                       _table117689_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj118101))
                 (__tmp118137
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117691_ _stx117686_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118137
             gxc#current-compile-method
             _self117691_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys117680117698_ . _args117700_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys117680117698_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117680117698_ 'table: absent-value))
               _args117700_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args117682117706_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args117682117706_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self117609_ _stx117610_)
        (let* ((_g117612117629_
                (lambda (_g117613117626_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117613117626_))))
               (_g117611117676_
                (lambda (_g117613117632_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117613117632_))
                      (let ((_e117618117634_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117613117632_))))
                        (let ((_hd117617117637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117618117634_)))
                              (_tl117616117639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117618117634_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117616117639_))
                              (let ((_e117621117642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117616117639_))))
                                (let ((_hd117620117645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117621117642_)))
                                      (_tl117619117647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117621117642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117619117647_))
                                      (let ((_e117624117650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117619117647_))))
                                        (let ((_hd117623117653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117624117650_)))
                                              (_tl117622117655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117624117650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117622117655_))
                                              ((lambda (_L117658_ _L117659_)
                                                 (let ((_sym117674_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L117659_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym117674_))
                                                   (let ((__tmp118138
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118138
                                                      _sym117674_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117609_
                                                      _L117658_))))
                                               _hd117623117653_
                                               _hd117620117645_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117612117629_
                                                 _g117613117632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117612117629_ _g117613117632_)))))
                              (let ()
                                (declare (not safe))
                                (_g117612117629_ _g117613117632_)))))
                      (let ()
                        (declare (not safe))
                        (_g117612117629_ _g117613117632_))))))
          (declare (not safe))
          (_g117611117676_ _stx117610_))))
    (define gxc#collect-methods-call%
      (lambda (_self117162_ _stx117163_)
        (let* ((___stx117846117847_ _stx117163_)
               (_g117167117269_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117846117847_)))))
          (let ((___kont117848117849_
                 (lambda (_L117559_ _L117560_ _L117561_ _L117562_ _L117563_)
                   (let ((__tmp118139
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117560_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118139))))
                (___kont117850117851_
                 (lambda (_L117385_ _L117386_ _L117387_ _L117388_)
                   (let ((__tmp118140
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117385_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118140))))
                (___kont117852117853_ (lambda () '#!void)))
            (let ((___match117981117982_
                   (lambda (_e117176117431_
                            _hd117175117434_
                            _tl117174117436_
                            _e117179117439_
                            _hd117178117442_
                            _tl117177117444_
                            _e117182117447_
                            _hd117181117450_
                            _tl117180117452_
                            _e117185117455_
                            _hd117184117458_
                            _tl117183117460_
                            _e117188117463_
                            _hd117187117466_
                            _tl117186117468_
                            _e117191117471_
                            _hd117190117474_
                            _tl117189117476_
                            _e117194117479_
                            _hd117193117482_
                            _tl117192117484_
                            _e117197117487_
                            _hd117196117490_
                            _tl117195117492_
                            _e117200117495_
                            _hd117199117498_
                            _tl117198117500_
                            _e117203117503_
                            _hd117202117506_
                            _tl117201117508_
                            _e117206117511_
                            _hd117205117514_
                            _tl117204117516_
                            _e117209117519_
                            _hd117208117522_
                            _tl117207117524_
                            _e117212117527_
                            _hd117211117530_
                            _tl117210117532_
                            _e117215117535_
                            _hd117214117538_
                            _tl117213117540_
                            _e117218117543_
                            _hd117217117546_
                            _tl117216117548_
                            _e117221117551_
                            _hd117220117554_
                            _tl117219117556_)
                     (let ((_L117559_ _hd117220117554_)
                           (_L117560_ _hd117211117530_)
                           (_L117561_ _hd117202117506_)
                           (_L117562_ _hd117193117482_)
                           (_L117563_ _hd117184117458_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L117563_
                              'bind-method!))
                           (___kont117848117849_
                            _L117559_
                            _L117560_
                            _L117561_
                            _L117562_
                            _L117563_)
                           (___kont117852117853_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117846117847_))
                  (let ((_e117176117431_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117846117847_))))
                    (let ((_tl117174117436_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117176117431_)))
                          (_hd117175117434_
                           (let ()
                             (declare (not safe))
                             (##car _e117176117431_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117174117436_))
                          (let ((_e117179117439_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117174117436_))))
                            (let ((_tl117177117444_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117179117439_)))
                                  (_hd117178117442_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117179117439_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117178117442_))
                                  (let ((_e117182117447_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117178117442_))))
                                    (let ((_tl117180117452_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117182117447_)))
                                          (_hd117181117450_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117182117447_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd117181117450_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd117181117450_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117180117452_))
                                                  (let ((_e117185117455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117180117452_))))
                                                    (let ((_tl117183117460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117185117455_)))
                                                          (_hd117184117458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117185117455_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117183117460_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117177117444_))
                      (let ((_e117188117463_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117177117444_))))
                        (let ((_tl117186117468_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117188117463_)))
                              (_hd117187117466_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117188117463_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117187117466_))
                              (let ((_e117191117471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117187117466_))))
                                (let ((_tl117189117476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117191117471_)))
                                      (_hd117190117474_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117191117471_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd117190117474_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd117190117474_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl117189117476_))
                                              (let ((_e117194117479_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl117189117476_))))
                                                (let ((_tl117192117484_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117194117479_)))
                                                      (_hd117193117482_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117194117479_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl117192117484_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl117186117468_))
                                                          (let ((_e117197117487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl117186117468_))))
                    (let ((_tl117195117492_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117197117487_)))
                          (_hd117196117490_
                           (let ()
                             (declare (not safe))
                             (##car _e117197117487_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd117196117490_))
                          (let ((_e117200117495_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd117196117490_))))
                            (let ((_tl117198117500_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117200117495_)))
                                  (_hd117199117498_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117200117495_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd117199117498_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd117199117498_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl117198117500_))
                                          (let ((_e117203117503_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl117198117500_))))
                                            (let ((_tl117201117508_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117203117503_)))
                                                  (_hd117202117506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117203117503_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl117201117508_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl117195117492_))
                                                      (let ((_e117206117511_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl117195117492_))))
                (let ((_tl117204117516_
                       (let () (declare (not safe)) (##cdr _e117206117511_)))
                      (_hd117205117514_
                       (let () (declare (not safe)) (##car _e117206117511_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117205117514_))
                      (let ((_e117209117519_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117205117514_))))
                        (let ((_tl117207117524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117209117519_)))
                              (_hd117208117522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117209117519_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd117208117522_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd117208117522_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117207117524_))
                                      (let ((_e117212117527_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117207117524_))))
                                        (let ((_tl117210117532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117212117527_)))
                                              (_hd117211117530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117212117527_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117210117532_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117204117516_))
                                                  (let ((_e117215117535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117204117516_))))
                                                    (let ((_tl117213117540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117215117535_)))
                                                          (_hd117214117538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117215117535_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd117214117538_))
                                                          (let ((_e117218117543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd117214117538_))))
                    (let ((_tl117216117548_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117218117543_)))
                          (_hd117217117546_
                           (let ()
                             (declare (not safe))
                             (##car _e117218117543_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd117217117546_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd117217117546_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117216117548_))
                                  (let ((_e117221117551_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117216117548_))))
                                    (let ((_tl117219117556_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117221117551_)))
                                          (_hd117220117554_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117221117551_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117219117556_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117213117540_))
                                              (___match117981117982_
                                               _e117176117431_
                                               _hd117175117434_
                                               _tl117174117436_
                                               _e117179117439_
                                               _hd117178117442_
                                               _tl117177117444_
                                               _e117182117447_
                                               _hd117181117450_
                                               _tl117180117452_
                                               _e117185117455_
                                               _hd117184117458_
                                               _tl117183117460_
                                               _e117188117463_
                                               _hd117187117466_
                                               _tl117186117468_
                                               _e117191117471_
                                               _hd117190117474_
                                               _tl117189117476_
                                               _e117194117479_
                                               _hd117193117482_
                                               _tl117192117484_
                                               _e117197117487_
                                               _hd117196117490_
                                               _tl117195117492_
                                               _e117200117495_
                                               _hd117199117498_
                                               _tl117198117500_
                                               _e117203117503_
                                               _hd117202117506_
                                               _tl117201117508_
                                               _e117206117511_
                                               _hd117205117514_
                                               _tl117204117516_
                                               _e117209117519_
                                               _hd117208117522_
                                               _tl117207117524_
                                               _e117212117527_
                                               _hd117211117530_
                                               _tl117210117532_
                                               _e117215117535_
                                               _hd117214117538_
                                               _tl117213117540_
                                               _e117218117543_
                                               _hd117217117546_
                                               _tl117216117548_
                                               _e117221117551_
                                               _hd117220117554_
                                               _tl117219117556_)
                                              (___kont117852117853_))
                                          (___kont117852117853_))))
                                  (___kont117852117853_))
                              (___kont117852117853_))
                          (___kont117852117853_))))
                  (___kont117852117853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl117204117516_))
                                                      (if (let ((__tmp118141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118141 'bind-method!))
                  (let ((_L117385_ _hd117211117530_)
                        (_L117386_ _hd117202117506_)
                        (_L117387_ _hd117193117482_)
                        (_L117388_ _hd117184117458_))
                    (___kont117850117851_
                     _L117385_
                     _L117386_
                     _L117387_
                     _L117388_))
                  (___kont117852117853_))
              (___kont117852117853_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117852117853_))))
                                      (___kont117852117853_))
                                  (___kont117852117853_))
                              (___kont117852117853_))))
                      (___kont117852117853_))))
              (___kont117852117853_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117852117853_))))
                                          (___kont117852117853_))
                                      (___kont117852117853_))
                                  (___kont117852117853_))))
                          (___kont117852117853_))))
                  (___kont117852117853_))
              (___kont117852117853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117852117853_))
                                          (___kont117852117853_))
                                      (___kont117852117853_))))
                              (___kont117852117853_))))
                      (___kont117852117853_))
                  (___kont117852117853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117852117853_))
                                              (___kont117852117853_))
                                          (___kont117852117853_))))
                                  (___kont117852117853_))))
                          (___kont117852117853_))))
                  (___kont117852117853_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self117110_ _stx117111_)
        (let* ((_g117113117126_
                (lambda (_g117114117123_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117114117123_))))
               (_g117112117159_
                (lambda (_g117114117129_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117114117129_))
                      (let ((_e117118117131_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117114117129_))))
                        (let ((_hd117117117134_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117118117131_)))
                              (_tl117116117136_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117118117131_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117116117136_))
                              (let ((_e117121117139_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117116117136_))))
                                (let ((_hd117120117142_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117121117139_)))
                                      (_tl117119117144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117121117139_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117119117144_))
                                      ((lambda (_L117147_)
                                         (if (let ((__tmp118145
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self117110_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L117147_
                                                __tmp118145))
                                             (let ((__tmp118142
                                                    (let ((__tmp118143
                                                           (let ((__tmp118144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self117110_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp118144 '()))))
              (declare (not safe))
              (cons '%#ref __tmp118143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118142
                                                _stx117111_))
                                             _stx117111_))
                                       _hd117120117142_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117113117126_ _g117114117129_)))))
                              (let ()
                                (declare (not safe))
                                (_g117113117126_ _g117114117129_)))))
                      (let ()
                        (declare (not safe))
                        (_g117113117126_ _g117114117129_))))))
          (declare (not safe))
          (_g117112117159_ _stx117111_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self117051_ _stx117052_)
        (let* ((_g117054117067_
                (lambda (_g117055117064_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117055117064_))))
               (_g117053117107_
                (lambda (_g117055117070_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117055117070_))
                      (let ((_e117059117072_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117055117070_))))
                        (let ((_hd117058117075_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117059117072_)))
                              (_tl117057117077_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117059117072_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117057117077_))
                              (let ((_e117062117080_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117057117077_))))
                                (let ((_hd117061117083_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117062117080_)))
                                      (_tl117060117085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117062117080_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117060117085_))
                                      ((lambda (_L117088_)
                                         (let ((_$e117102_
                                                (let ((__tmp118147
                                                       (lambda (_sub117100_)
                                                         (let ((__tmp118148
                                                                (car _sub117100_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L117088_
                                                            __tmp118148))))
                                                      (__tmp118146
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self117051_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp118147
                                                        __tmp118146))))
                                           (if _$e117102_
                                               ((lambda (_sub117105_)
                                                  (let ((__tmp118149
                                                         (let ((__tmp118150
                                                                (let ((__tmp118151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub117105_)))
                          (declare (not safe))
                          (cons __tmp118151 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118149
                                                     _stx117052_)))
                                                _$e117102_)
                                               _stx117052_)))
                                       _hd117061117083_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117054117067_ _g117055117070_)))))
                              (let ()
                                (declare (not safe))
                                (_g117054117067_ _g117055117070_)))))
                      (let ()
                        (declare (not safe))
                        (_g117054117067_ _g117055117070_))))))
          (declare (not safe))
          (_g117053117107_ _stx117052_))))
    (define gxc#expression-subst-setq%
      (lambda (_self116980_ _stx116981_)
        (let* ((_g116983117000_
                (lambda (_g116984116997_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116984116997_))))
               (_g116982117048_
                (lambda (_g116984117003_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116984117003_))
                      (let ((_e116989117005_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116984117003_))))
                        (let ((_hd116988117008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116989117005_)))
                              (_tl116987117010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116989117005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116987117010_))
                              (let ((_e116992117013_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116987117010_))))
                                (let ((_hd116991117016_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116992117013_)))
                                      (_tl116990117018_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116992117013_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116990117018_))
                                      (let ((_e116995117021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116990117018_))))
                                        (let ((_hd116994117024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116995117021_)))
                                              (_tl116993117026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116995117021_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116993117026_))
                                              ((lambda (_L117029_ _L117030_)
                                                 (let ((_new-expr117045_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116980_
                                                           _L117029_)))
                                                       (_new-xid117046_
                                                        (if (let ((__tmp118152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self116980_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L117030_ __tmp118152))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self116980_ 'new-id))
                    _L117030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118153
                                                          (let ((__tmp118154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118155
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr117045_ '()))))
                           (declare (not safe))
                           (cons _new-xid117046_ __tmp118155))))
                    (declare (not safe))
                    (cons '%#set! __tmp118154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118153
                                                      _stx116981_))))
                                               _hd116994117024_
                                               _hd116991117016_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116983117000_
                                                 _g116984117003_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116983117000_ _g116984117003_)))))
                              (let ()
                                (declare (not safe))
                                (_g116983117000_ _g116984117003_)))))
                      (let ()
                        (declare (not safe))
                        (_g116983117000_ _g116984117003_))))))
          (declare (not safe))
          (_g116982117048_ _stx116981_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self116904_ _stx116905_)
        (let* ((_g116907116924_
                (lambda (_g116908116921_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116908116921_))))
               (_g116906116977_
                (lambda (_g116908116927_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116908116927_))
                      (let ((_e116913116929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116908116927_))))
                        (let ((_hd116912116932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116913116929_)))
                              (_tl116911116934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116913116929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116911116934_))
                              (let ((_e116916116937_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116911116934_))))
                                (let ((_hd116915116940_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116916116937_)))
                                      (_tl116914116942_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116916116937_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116914116942_))
                                      (let ((_e116919116945_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116914116942_))))
                                        (let ((_hd116918116948_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116919116945_)))
                                              (_tl116917116950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116919116945_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116917116950_))
                                              ((lambda (_L116953_ _L116954_)
                                                 (let ((_new-expr116974_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116904_
                                                           _L116953_)))
                                                       (_new-xid116975_
                                                        (let ((_$e116971_
                                                               (let ((__tmp118157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116969_)
                                (let ((__tmp118158 (car _sub116969_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116954_
                                   __tmp118158))))
                             (__tmp118156
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self116904_ 'subst))))
                         (declare (not safe))
                         (find __tmp118157 __tmp118156))))
                  (if _$e116971_ (cdr _$e116971_) _L116954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118159
                                                          (let ((__tmp118160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118161
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116974_ '()))))
                           (declare (not safe))
                           (cons _new-xid116975_ __tmp118161))))
                    (declare (not safe))
                    (cons '%#set! __tmp118160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118159
                                                      _stx116905_))))
                                               _hd116918116948_
                                               _hd116915116940_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116907116924_
                                                 _g116908116927_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116907116924_ _g116908116927_)))))
                              (let ()
                                (declare (not safe))
                                (_g116907116924_ _g116908116927_)))))
                      (let ()
                        (declare (not safe))
                        (_g116907116924_ _g116908116927_))))))
          (declare (not safe))
          (_g116906116977_ _stx116905_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self116850_ _stx116851_)
        (let* ((_g116853116866_
                (lambda (_g116854116863_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116854116863_))))
               (_g116852116901_
                (lambda (_g116854116869_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116854116869_))
                      (let ((_e116858116871_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116854116869_))))
                        (let ((_hd116857116874_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116858116871_)))
                              (_tl116856116876_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116858116871_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116856116876_))
                              (let ((_e116861116879_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116856116876_))))
                                (let ((_hd116860116882_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116861116879_)))
                                      (_tl116859116884_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116861116879_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116859116884_))
                                      ((lambda (_L116887_)
                                         (let* ((_eid116899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L116887_)))
                                                (__tmp118162
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self116850_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp118162
                                            _eid116899_
                                            1+
                                            '0)))
                                       _hd116860116882_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116853116866_ _g116854116869_)))))
                              (let ()
                                (declare (not safe))
                                (_g116853116866_ _g116854116869_)))))
                      (let ()
                        (declare (not safe))
                        (_g116853116866_ _g116854116869_))))))
          (declare (not safe))
          (_g116852116901_ _stx116851_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self116780_ _stx116781_)
        (let* ((_g116783116800_
                (lambda (_g116784116797_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116784116797_))))
               (_g116782116847_
                (lambda (_g116784116803_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116784116803_))
                      (let ((_e116789116805_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116784116803_))))
                        (let ((_hd116788116808_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116789116805_)))
                              (_tl116787116810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116789116805_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116787116810_))
                              (let ((_e116792116813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116787116810_))))
                                (let ((_hd116791116816_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116792116813_)))
                                      (_tl116790116818_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116792116813_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116790116818_))
                                      (let ((_e116795116821_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116790116818_))))
                                        (let ((_hd116794116824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116795116821_)))
                                              (_tl116793116826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116795116821_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116793116826_))
                                              ((lambda (_L116829_ _L116830_)
                                                 (let ((_eid116845_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116830_))))
                                                   (let ((__tmp118163
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self116780_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp118163
                                                      _eid116845_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self116780_
                                                      _L116829_))))
                                               _hd116794116824_
                                               _hd116791116816_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116783116800_
                                                 _g116784116803_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116783116800_ _g116784116803_)))))
                              (let ()
                                (declare (not safe))
                                (_g116783116800_ _g116784116803_)))))
                      (let ()
                        (declare (not safe))
                        (_g116783116800_ _g116784116803_))))))
          (declare (not safe))
          (_g116782116847_ _stx116781_))))
    (define gxc#find-body%
      (lambda (_self116693_ _stx116694_)
        (let* ((_g116696116715_
                (lambda (_g116697116712_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116697116712_))))
               (_g116695116777_
                (lambda (_g116697116718_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116697116718_))
                      (let ((_e116701116720_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116697116718_))))
                        (let ((_hd116700116723_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116701116720_)))
                              (_tl116699116725_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116701116720_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116699116725_))
                              (let ((_g118164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116699116725_
                                        '0))))
                                (begin
                                  (let ((_g118165_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118164_)
                                               (##vector-length _g118164_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118165_ 2)))
                                        (error "Context expects 2 values"
                                               _g118165_)))
                                  (let ((_target116702116728_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118164_ 0)))
                                        (_tl116704116730_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118164_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116704116730_))
                                        (letrec ((_loop116705116733_
                                                  (lambda (_hd116703116736_
                                                           _expr116709116738_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116703116736_))
                                                        (let ((_e116706116741_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116703116736_))))
                  (let ((_lp-hd116707116744_
                         (let () (declare (not safe)) (##car _e116706116741_)))
                        (_lp-tl116708116746_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116706116741_))))
                    (let ((__tmp118169
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd116707116744_ _expr116709116738_))))
                      (declare (not safe))
                      (_loop116705116733_ _lp-tl116708116746_ __tmp118169))))
                (let ((_expr116710116749_ (reverse _expr116709116738_)))
                  ((lambda (_L116752_)
                     (let ((__tmp118168
                            (lambda (_g116765116767_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116693_
                                 _g116765116767_))))
                           (__tmp118166
                            (let ((__tmp118167
                                   (lambda (_g116769116772_ _g116770116774_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116769116772_
                                             _g116770116774_)))))
                              (declare (not safe))
                              (foldr1 __tmp118167 '() _L116752_))))
                       (declare (not safe))
                       (ormap1 __tmp118168 __tmp118166)))
                   _expr116710116749_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116705116733_
                                             _target116702116728_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116696116715_
                                           _g116697116718_))))))
                              (let ()
                                (declare (not safe))
                                (_g116696116715_ _g116697116718_)))))
                      (let ()
                        (declare (not safe))
                        (_g116696116715_ _g116697116718_))))))
          (declare (not safe))
          (_g116695116777_ _stx116694_))))
    (define gxc#find-let-values%
      (lambda (_self116543_ _stx116544_)
        (let* ((_g116546116581_
                (lambda (_g116547116578_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116547116578_))))
               (_g116545116690_
                (lambda (_g116547116584_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116547116584_))
                      (let ((_e116553116586_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116547116584_))))
                        (let ((_hd116552116589_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116553116586_)))
                              (_tl116551116591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116553116586_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116551116591_))
                              (let ((_e116556116594_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116551116591_))))
                                (let ((_hd116555116597_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116556116594_)))
                                      (_tl116554116599_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116556116594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd116555116597_))
                                      (let ((_g118170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd116555116597_
                                                '0))))
                                        (begin
                                          (let ((_g118171_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118170_)
                                                       (##vector-length
                                                        _g118170_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118171_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118171_)))
                                          (let ((_target116557116602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118170_ 0)))
                                                (_tl116559116604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118170_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116559116604_))
                                                (letrec ((_loop116560116607_
                                                          (lambda (_hd116558116610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr116564116612_
                           _bind116565116614_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd116558116610_))
                        (let ((_e116561116617_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd116558116610_))))
                          (let ((_lp-hd116562116620_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116561116617_)))
                                (_lp-tl116563116622_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116561116617_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd116562116620_))
                                (let ((_e116570116625_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd116562116620_))))
                                  (let ((_hd116569116628_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116570116625_)))
                                        (_tl116568116630_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116570116625_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl116568116630_))
                                        (let ((_e116573116633_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl116568116630_))))
                                          (let ((_hd116572116636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e116573116633_)))
                                                (_tl116571116638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e116573116633_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116571116638_))
                                                (let ((__tmp118176
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116572116636_
                                                               _expr116564116612_)))
                                                      (__tmp118175
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116569116628_
                                                               _bind116565116614_))))
                                                  (declare (not safe))
                                                  (_loop116560116607_
                                                   _lp-tl116563116622_
                                                   __tmp118176
                                                   __tmp118175))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116546116581_
                                                   _g116547116584_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116546116581_ _g116547116584_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116546116581_ _g116547116584_)))))
                        (let ((_expr116566116641_ (reverse _expr116564116612_))
                              (_bind116567116643_
                               (reverse _bind116565116614_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116554116599_))
                              (let ((_e116576116646_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116554116599_))))
                                (let ((_hd116575116649_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116576116646_)))
                                      (_tl116574116651_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116576116646_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116574116651_))
                                      ((lambda (_L116654_ _L116655_ _L116656_)
                                         (let ((_$e116687_
                                                (let ((__tmp118174
                                                       (lambda (_g116675116677_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self116543_
                                                            _g116675116677_))))
                                                      (__tmp118172
                                                       (let ((__tmp118173
                                                              (lambda (_g116679116682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g116680116684_)
                        (let ()
                          (declare (not safe))
                          (cons _g116679116682_ _g116680116684_)))))
                 (declare (not safe))
                 (foldr1 __tmp118173 '() _L116655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118174
                                                          __tmp118172))))
                                           (if _$e116687_
                                               _$e116687_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self116543_
                                                  _L116654_)))))
                                       _hd116575116649_
                                       _expr116566116641_
                                       _bind116567116643_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116546116581_ _g116547116584_)))))
                              (let ()
                                (declare (not safe))
                                (_g116546116581_ _g116547116584_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop116560116607_
                                                     _target116557116602_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116546116581_
                                                   _g116547116584_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116546116581_ _g116547116584_)))))
                              (let ()
                                (declare (not safe))
                                (_g116546116581_ _g116547116584_)))))
                      (let ()
                        (declare (not safe))
                        (_g116546116581_ _g116547116584_))))))
          (declare (not safe))
          (_g116545116690_ _stx116544_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self116487_ _stx116488_)
        (let* ((_g116490116503_
                (lambda (_g116491116500_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116491116500_))))
               (_g116489116540_
                (lambda (_g116491116506_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116491116506_))
                      (let ((_e116495116508_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116491116506_))))
                        (let ((_hd116494116511_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116495116508_)))
                              (_tl116493116513_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116495116508_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116493116513_))
                              (let ((_e116498116516_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116493116513_))))
                                (let ((_hd116497116519_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116498116516_)))
                                      (_tl116496116521_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116498116516_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116496116521_))
                                      ((lambda (_L116524_)
                                         (let ((__tmp118178
                                                (lambda (_g116535116537_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L116524_
                                                     _g116535116537_))))
                                               (__tmp118177
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self116487_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp118178 __tmp118177)))
                                       _hd116497116519_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116490116503_ _g116491116506_)))))
                              (let ()
                                (declare (not safe))
                                (_g116490116503_ _g116491116506_)))))
                      (let ()
                        (declare (not safe))
                        (_g116490116503_ _g116491116506_))))))
          (declare (not safe))
          (_g116489116540_ _stx116488_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self116412_ _stx116413_)
        (let* ((_g116415116432_
                (lambda (_g116416116429_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116416116429_))))
               (_g116414116484_
                (lambda (_g116416116435_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116416116435_))
                      (let ((_e116421116437_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116416116435_))))
                        (let ((_hd116420116440_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116421116437_)))
                              (_tl116419116442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116421116437_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116419116442_))
                              (let ((_e116424116445_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116419116442_))))
                                (let ((_hd116423116448_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116424116445_)))
                                      (_tl116422116450_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116424116445_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116422116450_))
                                      (let ((_e116427116453_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116422116450_))))
                                        (let ((_hd116426116456_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116427116453_)))
                                              (_tl116425116458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116427116453_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116425116458_))
                                              ((lambda (_L116461_ _L116462_)
                                                 (let ((_$e116481_
                                                        (let ((__tmp118180
                                                               (lambda (_g116476116478_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L116462_ _g116476116478_))))
                      (__tmp118179
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self116412_ 'ids))))
                  (declare (not safe))
                  (find __tmp118180 __tmp118179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e116481_
                                                       _$e116481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self116412_
                                                          _L116461_)))))
                                               _hd116426116456_
                                               _hd116423116448_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116415116432_
                                                 _g116416116435_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116415116432_ _g116416116435_)))))
                              (let ()
                                (declare (not safe))
                                (_g116415116432_ _g116416116435_)))))
                      (let ()
                        (declare (not safe))
                        (_g116415116432_ _g116416116435_))))))
          (declare (not safe))
          (_g116414116484_ _stx116413_))))))
