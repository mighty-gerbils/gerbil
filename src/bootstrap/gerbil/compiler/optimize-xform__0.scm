(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710237312)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp118168 (list gxc#::void::t))
            (__tmp118166
             (let ((__tmp118167
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118167 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp118168
         '()
         __tmp118166
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args117907_
        (apply make-instance gxc#::collect-mutators::t _$args117907_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp118169
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
        (make-promise __tmp118169)))
    (define gxc#apply-collect-mutators
      (lambda (_stx117899_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self117902_
                (let ((__obj118154
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj118154))
               (__tmp118170
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self117902_ _stx117899_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118170
           gxc#current-compile-method
           _self117902_))))
    (define gxc#::collect-methods::t
      (let ((__tmp118173 (list gxc#::void::t))
            (__tmp118171
             (let ((__tmp118172
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118172 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp118173
         '()
         __tmp118171
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args117896_
        (apply make-instance gxc#::collect-methods::t _$args117896_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp118174
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
        (make-promise __tmp118174)))
    (define gxc#apply-collect-methods
      (lambda (_stx117888_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self117891_
                (let ((__obj118156
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj118156))
               (__tmp118175
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self117891_ _stx117888_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118175
           gxc#current-compile-method
           _self117891_))))
    (define gxc#::expression-subst::t
      (let ((__tmp118178 (list gxc#::basic-xform-expression::t))
            (__tmp118176
             (let ((__tmp118177
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118177 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp118178
         '(id new-id)
         __tmp118176
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args117885_
        (apply make-instance gxc#::expression-subst::t _$args117885_)))
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
      (let ((__tmp118179
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
        (make-promise __tmp118179)))
    (define gxc#apply-expression-subst__%
      (lambda (_g118180_ _id117851117855_ _new-id117852117857_ _stx117859_)
        (let* ((_id117862_
                (if (let ()
                      (declare (not safe))
                      (eq? _id117851117855_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id117851117855_))
               (_new-id117864_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id117852117857_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id117852117857_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self117866_
                  (let ((__obj118158
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118158
                       _id117862_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118158
                       _new-id117864_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj118158))
                 (__tmp118181
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117866_ _stx117859_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118181
             gxc#current-compile-method
             _self117866_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys117850117873_ . _args117875_)
        (apply gxc#apply-expression-subst__%
               _keys117850117873_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117850117873_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117850117873_ 'new-id: absent-value))
               _args117875_)))
    (define gxc#apply-expression-subst
      (lambda _args117853117881_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args117853117881_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp118184 (list gxc#::basic-xform-expression::t))
            (__tmp118182
             (let ((__tmp118183
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118183 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp118184
         '(subst)
         __tmp118182
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args117846_
        (apply make-instance gxc#::expression-subst*::t _$args117846_)))
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
      (let ((__tmp118185
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
        (make-promise __tmp118185)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g118186_ _subst117817117820_ _stx117822_)
        (let ((_subst117825_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst117817117820_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst117817117820_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self117827_
                  (let ((__obj118160
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118160
                       _subst117825_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj118160))
                 (__tmp118187
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117827_ _stx117822_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118187
             gxc#current-compile-method
             _self117827_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys117816117834_ . _args117836_)
        (apply gxc#apply-expression-subst*__%
               _keys117816117834_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117816117834_ 'subst: absent-value))
               _args117836_)))
    (define gxc#apply-expression-subst*
      (lambda _args117818117842_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args117818117842_)))
    (define gxc#::find-expression::t
      (let ((__tmp118188 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp118188
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args117812_
        (apply make-instance gxc#::find-expression::t _$args117812_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp118189
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
        (make-promise __tmp118189)))
    (define gxc#::find-var-refs::t
      (let ((__tmp118192 (list gxc#::find-expression::t))
            (__tmp118190
             (let ((__tmp118191
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118191 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp118192
         '(ids)
         __tmp118190
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args117808_
        (apply make-instance gxc#::find-var-refs::t _$args117808_)))
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
      (let ((__tmp118193
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
        (make-promise __tmp118193)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g118194_ _ids117779117782_ _stx117784_)
        (let ((_ids117787_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids117779117782_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids117779117782_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self117789_
                  (let ((__obj118163
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118163
                       _ids117787_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj118163))
                 (__tmp118195
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117789_ _stx117784_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118195
             gxc#current-compile-method
             _self117789_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys117778117796_ . _args117798_)
        (apply gxc#apply-find-var-refs__%
               _keys117778117796_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117778117796_ 'ids: absent-value))
               _args117798_)))
    (define gxc#apply-find-var-refs
      (lambda _args117780117804_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args117780117804_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp118198 (list gxc#::collect-expression-refs::t))
            (__tmp118196
             (let ((__tmp118197
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118197 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp118198
         '()
         __tmp118196
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args117774_
        (apply make-instance gxc#::collect-runtime-refs::t _$args117774_)))
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
      (let ((__tmp118199
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
        (make-promise __tmp118199)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g118200_ _table117745117748_ _stx117750_)
        (let ((_table117753_
               (if (let ()
                     (declare (not safe))
                     (eq? _table117745117748_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table117745117748_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self117755_
                  (let ((__obj118165
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118165
                       _table117753_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj118165))
                 (__tmp118201
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117755_ _stx117750_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118201
             gxc#current-compile-method
             _self117755_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys117744117762_ . _args117764_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys117744117762_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117744117762_ 'table: absent-value))
               _args117764_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args117746117770_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args117746117770_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self117673_ _stx117674_)
        (let* ((_g117676117693_
                (lambda (_g117677117690_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117677117690_))))
               (_g117675117740_
                (lambda (_g117677117696_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117677117696_))
                      (let ((_e117682117698_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117677117696_))))
                        (let ((_hd117681117701_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117682117698_)))
                              (_tl117680117703_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117682117698_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117680117703_))
                              (let ((_e117685117706_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117680117703_))))
                                (let ((_hd117684117709_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117685117706_)))
                                      (_tl117683117711_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117685117706_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117683117711_))
                                      (let ((_e117688117714_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117683117711_))))
                                        (let ((_hd117687117717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117688117714_)))
                                              (_tl117686117719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117688117714_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117686117719_))
                                              ((lambda (_L117722_ _L117723_)
                                                 (let ((_sym117738_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L117723_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym117738_))
                                                   (let ((__tmp118202
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118202
                                                      _sym117738_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117673_
                                                      _L117722_))))
                                               _hd117687117717_
                                               _hd117684117709_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117676117693_
                                                 _g117677117696_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117676117693_ _g117677117696_)))))
                              (let ()
                                (declare (not safe))
                                (_g117676117693_ _g117677117696_)))))
                      (let ()
                        (declare (not safe))
                        (_g117676117693_ _g117677117696_))))))
          (declare (not safe))
          (_g117675117740_ _stx117674_))))
    (define gxc#collect-methods-call%
      (lambda (_self117226_ _stx117227_)
        (let* ((___stx117910117911_ _stx117227_)
               (_g117231117333_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117910117911_)))))
          (let ((___kont117912117913_
                 (lambda (_L117623_ _L117624_ _L117625_ _L117626_ _L117627_)
                   (let ((__tmp118203
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117624_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118203))))
                (___kont117914117915_
                 (lambda (_L117449_ _L117450_ _L117451_ _L117452_)
                   (let ((__tmp118204
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117449_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118204))))
                (___kont117916117917_ (lambda () '#!void)))
            (let ((___match118045118046_
                   (lambda (_e117240117495_
                            _hd117239117498_
                            _tl117238117500_
                            _e117243117503_
                            _hd117242117506_
                            _tl117241117508_
                            _e117246117511_
                            _hd117245117514_
                            _tl117244117516_
                            _e117249117519_
                            _hd117248117522_
                            _tl117247117524_
                            _e117252117527_
                            _hd117251117530_
                            _tl117250117532_
                            _e117255117535_
                            _hd117254117538_
                            _tl117253117540_
                            _e117258117543_
                            _hd117257117546_
                            _tl117256117548_
                            _e117261117551_
                            _hd117260117554_
                            _tl117259117556_
                            _e117264117559_
                            _hd117263117562_
                            _tl117262117564_
                            _e117267117567_
                            _hd117266117570_
                            _tl117265117572_
                            _e117270117575_
                            _hd117269117578_
                            _tl117268117580_
                            _e117273117583_
                            _hd117272117586_
                            _tl117271117588_
                            _e117276117591_
                            _hd117275117594_
                            _tl117274117596_
                            _e117279117599_
                            _hd117278117602_
                            _tl117277117604_
                            _e117282117607_
                            _hd117281117610_
                            _tl117280117612_
                            _e117285117615_
                            _hd117284117618_
                            _tl117283117620_)
                     (let ((_L117623_ _hd117284117618_)
                           (_L117624_ _hd117275117594_)
                           (_L117625_ _hd117266117570_)
                           (_L117626_ _hd117257117546_)
                           (_L117627_ _hd117248117522_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L117627_
                              'bind-method!))
                           (___kont117912117913_
                            _L117623_
                            _L117624_
                            _L117625_
                            _L117626_
                            _L117627_)
                           (___kont117916117917_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117910117911_))
                  (let ((_e117240117495_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117910117911_))))
                    (let ((_tl117238117500_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117240117495_)))
                          (_hd117239117498_
                           (let ()
                             (declare (not safe))
                             (##car _e117240117495_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117238117500_))
                          (let ((_e117243117503_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117238117500_))))
                            (let ((_tl117241117508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117243117503_)))
                                  (_hd117242117506_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117243117503_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117242117506_))
                                  (let ((_e117246117511_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117242117506_))))
                                    (let ((_tl117244117516_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117246117511_)))
                                          (_hd117245117514_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117246117511_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd117245117514_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd117245117514_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117244117516_))
                                                  (let ((_e117249117519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117244117516_))))
                                                    (let ((_tl117247117524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117249117519_)))
                                                          (_hd117248117522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117249117519_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117247117524_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117241117508_))
                      (let ((_e117252117527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117241117508_))))
                        (let ((_tl117250117532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117252117527_)))
                              (_hd117251117530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117252117527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117251117530_))
                              (let ((_e117255117535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117251117530_))))
                                (let ((_tl117253117540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117255117535_)))
                                      (_hd117254117538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117255117535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd117254117538_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd117254117538_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl117253117540_))
                                              (let ((_e117258117543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl117253117540_))))
                                                (let ((_tl117256117548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117258117543_)))
                                                      (_hd117257117546_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117258117543_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl117256117548_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl117250117532_))
                                                          (let ((_e117261117551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl117250117532_))))
                    (let ((_tl117259117556_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117261117551_)))
                          (_hd117260117554_
                           (let ()
                             (declare (not safe))
                             (##car _e117261117551_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd117260117554_))
                          (let ((_e117264117559_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd117260117554_))))
                            (let ((_tl117262117564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117264117559_)))
                                  (_hd117263117562_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117264117559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd117263117562_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd117263117562_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl117262117564_))
                                          (let ((_e117267117567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl117262117564_))))
                                            (let ((_tl117265117572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117267117567_)))
                                                  (_hd117266117570_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117267117567_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl117265117572_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl117259117556_))
                                                      (let ((_e117270117575_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl117259117556_))))
                (let ((_tl117268117580_
                       (let () (declare (not safe)) (##cdr _e117270117575_)))
                      (_hd117269117578_
                       (let () (declare (not safe)) (##car _e117270117575_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117269117578_))
                      (let ((_e117273117583_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117269117578_))))
                        (let ((_tl117271117588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117273117583_)))
                              (_hd117272117586_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117273117583_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd117272117586_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd117272117586_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117271117588_))
                                      (let ((_e117276117591_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117271117588_))))
                                        (let ((_tl117274117596_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117276117591_)))
                                              (_hd117275117594_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117276117591_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117274117596_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117268117580_))
                                                  (let ((_e117279117599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117268117580_))))
                                                    (let ((_tl117277117604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117279117599_)))
                                                          (_hd117278117602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117279117599_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd117278117602_))
                                                          (let ((_e117282117607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd117278117602_))))
                    (let ((_tl117280117612_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117282117607_)))
                          (_hd117281117610_
                           (let ()
                             (declare (not safe))
                             (##car _e117282117607_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd117281117610_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd117281117610_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117280117612_))
                                  (let ((_e117285117615_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117280117612_))))
                                    (let ((_tl117283117620_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117285117615_)))
                                          (_hd117284117618_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117285117615_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117283117620_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117277117604_))
                                              (___match118045118046_
                                               _e117240117495_
                                               _hd117239117498_
                                               _tl117238117500_
                                               _e117243117503_
                                               _hd117242117506_
                                               _tl117241117508_
                                               _e117246117511_
                                               _hd117245117514_
                                               _tl117244117516_
                                               _e117249117519_
                                               _hd117248117522_
                                               _tl117247117524_
                                               _e117252117527_
                                               _hd117251117530_
                                               _tl117250117532_
                                               _e117255117535_
                                               _hd117254117538_
                                               _tl117253117540_
                                               _e117258117543_
                                               _hd117257117546_
                                               _tl117256117548_
                                               _e117261117551_
                                               _hd117260117554_
                                               _tl117259117556_
                                               _e117264117559_
                                               _hd117263117562_
                                               _tl117262117564_
                                               _e117267117567_
                                               _hd117266117570_
                                               _tl117265117572_
                                               _e117270117575_
                                               _hd117269117578_
                                               _tl117268117580_
                                               _e117273117583_
                                               _hd117272117586_
                                               _tl117271117588_
                                               _e117276117591_
                                               _hd117275117594_
                                               _tl117274117596_
                                               _e117279117599_
                                               _hd117278117602_
                                               _tl117277117604_
                                               _e117282117607_
                                               _hd117281117610_
                                               _tl117280117612_
                                               _e117285117615_
                                               _hd117284117618_
                                               _tl117283117620_)
                                              (___kont117916117917_))
                                          (___kont117916117917_))))
                                  (___kont117916117917_))
                              (___kont117916117917_))
                          (___kont117916117917_))))
                  (___kont117916117917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl117268117580_))
                                                      (if (let ((__tmp118205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118205 'bind-method!))
                  (let ((_L117449_ _hd117275117594_)
                        (_L117450_ _hd117266117570_)
                        (_L117451_ _hd117257117546_)
                        (_L117452_ _hd117248117522_))
                    (___kont117914117915_
                     _L117449_
                     _L117450_
                     _L117451_
                     _L117452_))
                  (___kont117916117917_))
              (___kont117916117917_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117916117917_))))
                                      (___kont117916117917_))
                                  (___kont117916117917_))
                              (___kont117916117917_))))
                      (___kont117916117917_))))
              (___kont117916117917_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117916117917_))))
                                          (___kont117916117917_))
                                      (___kont117916117917_))
                                  (___kont117916117917_))))
                          (___kont117916117917_))))
                  (___kont117916117917_))
              (___kont117916117917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117916117917_))
                                          (___kont117916117917_))
                                      (___kont117916117917_))))
                              (___kont117916117917_))))
                      (___kont117916117917_))
                  (___kont117916117917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117916117917_))
                                              (___kont117916117917_))
                                          (___kont117916117917_))))
                                  (___kont117916117917_))))
                          (___kont117916117917_))))
                  (___kont117916117917_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self117174_ _stx117175_)
        (let* ((_g117177117190_
                (lambda (_g117178117187_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117178117187_))))
               (_g117176117223_
                (lambda (_g117178117193_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117178117193_))
                      (let ((_e117182117195_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117178117193_))))
                        (let ((_hd117181117198_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117182117195_)))
                              (_tl117180117200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117182117195_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117180117200_))
                              (let ((_e117185117203_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117180117200_))))
                                (let ((_hd117184117206_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117185117203_)))
                                      (_tl117183117208_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117185117203_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117183117208_))
                                      ((lambda (_L117211_)
                                         (if (let ((__tmp118209
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self117174_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L117211_
                                                __tmp118209))
                                             (let ((__tmp118206
                                                    (let ((__tmp118207
                                                           (let ((__tmp118208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self117174_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp118208 '()))))
              (declare (not safe))
              (cons '%#ref __tmp118207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118206
                                                _stx117175_))
                                             _stx117175_))
                                       _hd117184117206_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117177117190_ _g117178117193_)))))
                              (let ()
                                (declare (not safe))
                                (_g117177117190_ _g117178117193_)))))
                      (let ()
                        (declare (not safe))
                        (_g117177117190_ _g117178117193_))))))
          (declare (not safe))
          (_g117176117223_ _stx117175_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self117115_ _stx117116_)
        (let* ((_g117118117131_
                (lambda (_g117119117128_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117119117128_))))
               (_g117117117171_
                (lambda (_g117119117134_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117119117134_))
                      (let ((_e117123117136_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117119117134_))))
                        (let ((_hd117122117139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117123117136_)))
                              (_tl117121117141_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117123117136_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117121117141_))
                              (let ((_e117126117144_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117121117141_))))
                                (let ((_hd117125117147_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117126117144_)))
                                      (_tl117124117149_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117126117144_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117124117149_))
                                      ((lambda (_L117152_)
                                         (let ((_$e117166_
                                                (let ((__tmp118211
                                                       (lambda (_sub117164_)
                                                         (let ((__tmp118212
                                                                (car _sub117164_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L117152_
                                                            __tmp118212))))
                                                      (__tmp118210
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self117115_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp118211
                                                        __tmp118210))))
                                           (if _$e117166_
                                               ((lambda (_sub117169_)
                                                  (let ((__tmp118213
                                                         (let ((__tmp118214
                                                                (let ((__tmp118215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub117169_)))
                          (declare (not safe))
                          (cons __tmp118215 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118213
                                                     _stx117116_)))
                                                _$e117166_)
                                               _stx117116_)))
                                       _hd117125117147_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117118117131_ _g117119117134_)))))
                              (let ()
                                (declare (not safe))
                                (_g117118117131_ _g117119117134_)))))
                      (let ()
                        (declare (not safe))
                        (_g117118117131_ _g117119117134_))))))
          (declare (not safe))
          (_g117117117171_ _stx117116_))))
    (define gxc#expression-subst-setq%
      (lambda (_self117044_ _stx117045_)
        (let* ((_g117047117064_
                (lambda (_g117048117061_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117048117061_))))
               (_g117046117112_
                (lambda (_g117048117067_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117048117067_))
                      (let ((_e117053117069_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117048117067_))))
                        (let ((_hd117052117072_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117053117069_)))
                              (_tl117051117074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117053117069_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117051117074_))
                              (let ((_e117056117077_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117051117074_))))
                                (let ((_hd117055117080_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117056117077_)))
                                      (_tl117054117082_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117056117077_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117054117082_))
                                      (let ((_e117059117085_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117054117082_))))
                                        (let ((_hd117058117088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117059117085_)))
                                              (_tl117057117090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117059117085_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117057117090_))
                                              ((lambda (_L117093_ _L117094_)
                                                 (let ((_new-expr117109_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self117044_
                                                           _L117093_)))
                                                       (_new-xid117110_
                                                        (if (let ((__tmp118216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self117044_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L117094_ __tmp118216))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self117044_ 'new-id))
                    _L117094_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118217
                                                          (let ((__tmp118218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118219
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr117109_ '()))))
                           (declare (not safe))
                           (cons _new-xid117110_ __tmp118219))))
                    (declare (not safe))
                    (cons '%#set! __tmp118218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118217
                                                      _stx117045_))))
                                               _hd117058117088_
                                               _hd117055117080_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117047117064_
                                                 _g117048117067_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117047117064_ _g117048117067_)))))
                              (let ()
                                (declare (not safe))
                                (_g117047117064_ _g117048117067_)))))
                      (let ()
                        (declare (not safe))
                        (_g117047117064_ _g117048117067_))))))
          (declare (not safe))
          (_g117046117112_ _stx117045_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self116968_ _stx116969_)
        (let* ((_g116971116988_
                (lambda (_g116972116985_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116972116985_))))
               (_g116970117041_
                (lambda (_g116972116991_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116972116991_))
                      (let ((_e116977116993_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116972116991_))))
                        (let ((_hd116976116996_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116977116993_)))
                              (_tl116975116998_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116977116993_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116975116998_))
                              (let ((_e116980117001_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116975116998_))))
                                (let ((_hd116979117004_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116980117001_)))
                                      (_tl116978117006_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116980117001_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116978117006_))
                                      (let ((_e116983117009_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116978117006_))))
                                        (let ((_hd116982117012_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116983117009_)))
                                              (_tl116981117014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116983117009_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116981117014_))
                                              ((lambda (_L117017_ _L117018_)
                                                 (let ((_new-expr117038_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116968_
                                                           _L117017_)))
                                                       (_new-xid117039_
                                                        (let ((_$e117035_
                                                               (let ((__tmp118221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub117033_)
                                (let ((__tmp118222 (car _sub117033_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L117018_
                                   __tmp118222))))
                             (__tmp118220
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self116968_ 'subst))))
                         (declare (not safe))
                         (find __tmp118221 __tmp118220))))
                  (if _$e117035_ (cdr _$e117035_) _L117018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118223
                                                          (let ((__tmp118224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118225
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr117038_ '()))))
                           (declare (not safe))
                           (cons _new-xid117039_ __tmp118225))))
                    (declare (not safe))
                    (cons '%#set! __tmp118224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118223
                                                      _stx116969_))))
                                               _hd116982117012_
                                               _hd116979117004_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116971116988_
                                                 _g116972116991_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116971116988_ _g116972116991_)))))
                              (let ()
                                (declare (not safe))
                                (_g116971116988_ _g116972116991_)))))
                      (let ()
                        (declare (not safe))
                        (_g116971116988_ _g116972116991_))))))
          (declare (not safe))
          (_g116970117041_ _stx116969_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self116914_ _stx116915_)
        (let* ((_g116917116930_
                (lambda (_g116918116927_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116918116927_))))
               (_g116916116965_
                (lambda (_g116918116933_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116918116933_))
                      (let ((_e116922116935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116918116933_))))
                        (let ((_hd116921116938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116922116935_)))
                              (_tl116920116940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116922116935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116920116940_))
                              (let ((_e116925116943_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116920116940_))))
                                (let ((_hd116924116946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116925116943_)))
                                      (_tl116923116948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116925116943_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116923116948_))
                                      ((lambda (_L116951_)
                                         (let* ((_eid116963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L116951_)))
                                                (__tmp118226
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self116914_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp118226
                                            _eid116963_
                                            1+
                                            '0)))
                                       _hd116924116946_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116917116930_ _g116918116933_)))))
                              (let ()
                                (declare (not safe))
                                (_g116917116930_ _g116918116933_)))))
                      (let ()
                        (declare (not safe))
                        (_g116917116930_ _g116918116933_))))))
          (declare (not safe))
          (_g116916116965_ _stx116915_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self116844_ _stx116845_)
        (let* ((_g116847116864_
                (lambda (_g116848116861_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116848116861_))))
               (_g116846116911_
                (lambda (_g116848116867_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116848116867_))
                      (let ((_e116853116869_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116848116867_))))
                        (let ((_hd116852116872_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116853116869_)))
                              (_tl116851116874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116853116869_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116851116874_))
                              (let ((_e116856116877_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116851116874_))))
                                (let ((_hd116855116880_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116856116877_)))
                                      (_tl116854116882_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116856116877_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116854116882_))
                                      (let ((_e116859116885_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116854116882_))))
                                        (let ((_hd116858116888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116859116885_)))
                                              (_tl116857116890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116859116885_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116857116890_))
                                              ((lambda (_L116893_ _L116894_)
                                                 (let ((_eid116909_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116894_))))
                                                   (let ((__tmp118227
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self116844_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp118227
                                                      _eid116909_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self116844_
                                                      _L116893_))))
                                               _hd116858116888_
                                               _hd116855116880_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116847116864_
                                                 _g116848116867_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116847116864_ _g116848116867_)))))
                              (let ()
                                (declare (not safe))
                                (_g116847116864_ _g116848116867_)))))
                      (let ()
                        (declare (not safe))
                        (_g116847116864_ _g116848116867_))))))
          (declare (not safe))
          (_g116846116911_ _stx116845_))))
    (define gxc#find-body%
      (lambda (_self116757_ _stx116758_)
        (let* ((_g116760116779_
                (lambda (_g116761116776_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116761116776_))))
               (_g116759116841_
                (lambda (_g116761116782_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116761116782_))
                      (let ((_e116765116784_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116761116782_))))
                        (let ((_hd116764116787_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116765116784_)))
                              (_tl116763116789_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116765116784_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116763116789_))
                              (let ((_g118228_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116763116789_
                                        '0))))
                                (begin
                                  (let ((_g118229_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118228_)
                                               (##vector-length _g118228_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118229_ 2)))
                                        (error "Context expects 2 values"
                                               _g118229_)))
                                  (let ((_target116766116792_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118228_ 0)))
                                        (_tl116768116794_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118228_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116768116794_))
                                        (letrec ((_loop116769116797_
                                                  (lambda (_hd116767116800_
                                                           _expr116773116802_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116767116800_))
                                                        (let ((_e116770116805_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116767116800_))))
                  (let ((_lp-hd116771116808_
                         (let () (declare (not safe)) (##car _e116770116805_)))
                        (_lp-tl116772116810_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116770116805_))))
                    (let ((__tmp118233
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd116771116808_ _expr116773116802_))))
                      (declare (not safe))
                      (_loop116769116797_ _lp-tl116772116810_ __tmp118233))))
                (let ((_expr116774116813_ (reverse _expr116773116802_)))
                  ((lambda (_L116816_)
                     (let ((__tmp118232
                            (lambda (_g116829116831_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116757_
                                 _g116829116831_))))
                           (__tmp118230
                            (let ((__tmp118231
                                   (lambda (_g116833116836_ _g116834116838_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116833116836_
                                             _g116834116838_)))))
                              (declare (not safe))
                              (foldr1 __tmp118231 '() _L116816_))))
                       (declare (not safe))
                       (ormap1 __tmp118232 __tmp118230)))
                   _expr116774116813_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116769116797_
                                             _target116766116792_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116760116779_
                                           _g116761116782_))))))
                              (let ()
                                (declare (not safe))
                                (_g116760116779_ _g116761116782_)))))
                      (let ()
                        (declare (not safe))
                        (_g116760116779_ _g116761116782_))))))
          (declare (not safe))
          (_g116759116841_ _stx116758_))))
    (define gxc#find-let-values%
      (lambda (_self116607_ _stx116608_)
        (let* ((_g116610116645_
                (lambda (_g116611116642_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116611116642_))))
               (_g116609116754_
                (lambda (_g116611116648_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116611116648_))
                      (let ((_e116617116650_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116611116648_))))
                        (let ((_hd116616116653_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116617116650_)))
                              (_tl116615116655_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116617116650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116615116655_))
                              (let ((_e116620116658_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116615116655_))))
                                (let ((_hd116619116661_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116620116658_)))
                                      (_tl116618116663_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116620116658_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd116619116661_))
                                      (let ((_g118234_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd116619116661_
                                                '0))))
                                        (begin
                                          (let ((_g118235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118234_)
                                                       (##vector-length
                                                        _g118234_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118235_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118235_)))
                                          (let ((_target116621116666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118234_ 0)))
                                                (_tl116623116668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118234_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116623116668_))
                                                (letrec ((_loop116624116671_
                                                          (lambda (_hd116622116674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr116628116676_
                           _bind116629116678_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd116622116674_))
                        (let ((_e116625116681_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd116622116674_))))
                          (let ((_lp-hd116626116684_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116625116681_)))
                                (_lp-tl116627116686_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116625116681_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd116626116684_))
                                (let ((_e116634116689_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd116626116684_))))
                                  (let ((_hd116633116692_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116634116689_)))
                                        (_tl116632116694_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116634116689_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl116632116694_))
                                        (let ((_e116637116697_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl116632116694_))))
                                          (let ((_hd116636116700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e116637116697_)))
                                                (_tl116635116702_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e116637116697_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116635116702_))
                                                (let ((__tmp118240
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116636116700_
                                                               _expr116628116676_)))
                                                      (__tmp118239
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116633116692_
                                                               _bind116629116678_))))
                                                  (declare (not safe))
                                                  (_loop116624116671_
                                                   _lp-tl116627116686_
                                                   __tmp118240
                                                   __tmp118239))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116610116645_
                                                   _g116611116648_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116610116645_ _g116611116648_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116610116645_ _g116611116648_)))))
                        (let ((_expr116630116705_ (reverse _expr116628116676_))
                              (_bind116631116707_
                               (reverse _bind116629116678_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116618116663_))
                              (let ((_e116640116710_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116618116663_))))
                                (let ((_hd116639116713_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116640116710_)))
                                      (_tl116638116715_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116640116710_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116638116715_))
                                      ((lambda (_L116718_ _L116719_ _L116720_)
                                         (let ((_$e116751_
                                                (let ((__tmp118238
                                                       (lambda (_g116739116741_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self116607_
                                                            _g116739116741_))))
                                                      (__tmp118236
                                                       (let ((__tmp118237
                                                              (lambda (_g116743116746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g116744116748_)
                        (let ()
                          (declare (not safe))
                          (cons _g116743116746_ _g116744116748_)))))
                 (declare (not safe))
                 (foldr1 __tmp118237 '() _L116719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118238
                                                          __tmp118236))))
                                           (if _$e116751_
                                               _$e116751_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self116607_
                                                  _L116718_)))))
                                       _hd116639116713_
                                       _expr116630116705_
                                       _bind116631116707_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116610116645_ _g116611116648_)))))
                              (let ()
                                (declare (not safe))
                                (_g116610116645_ _g116611116648_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop116624116671_
                                                     _target116621116666_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116610116645_
                                                   _g116611116648_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116610116645_ _g116611116648_)))))
                              (let ()
                                (declare (not safe))
                                (_g116610116645_ _g116611116648_)))))
                      (let ()
                        (declare (not safe))
                        (_g116610116645_ _g116611116648_))))))
          (declare (not safe))
          (_g116609116754_ _stx116608_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self116551_ _stx116552_)
        (let* ((_g116554116567_
                (lambda (_g116555116564_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116555116564_))))
               (_g116553116604_
                (lambda (_g116555116570_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116555116570_))
                      (let ((_e116559116572_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116555116570_))))
                        (let ((_hd116558116575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116559116572_)))
                              (_tl116557116577_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116559116572_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116557116577_))
                              (let ((_e116562116580_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116557116577_))))
                                (let ((_hd116561116583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116562116580_)))
                                      (_tl116560116585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116562116580_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116560116585_))
                                      ((lambda (_L116588_)
                                         (let ((__tmp118242
                                                (lambda (_g116599116601_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L116588_
                                                     _g116599116601_))))
                                               (__tmp118241
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self116551_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp118242 __tmp118241)))
                                       _hd116561116583_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116554116567_ _g116555116570_)))))
                              (let ()
                                (declare (not safe))
                                (_g116554116567_ _g116555116570_)))))
                      (let ()
                        (declare (not safe))
                        (_g116554116567_ _g116555116570_))))))
          (declare (not safe))
          (_g116553116604_ _stx116552_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self116476_ _stx116477_)
        (let* ((_g116479116496_
                (lambda (_g116480116493_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116480116493_))))
               (_g116478116548_
                (lambda (_g116480116499_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116480116499_))
                      (let ((_e116485116501_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116480116499_))))
                        (let ((_hd116484116504_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116485116501_)))
                              (_tl116483116506_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116485116501_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116483116506_))
                              (let ((_e116488116509_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116483116506_))))
                                (let ((_hd116487116512_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116488116509_)))
                                      (_tl116486116514_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116488116509_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116486116514_))
                                      (let ((_e116491116517_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116486116514_))))
                                        (let ((_hd116490116520_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116491116517_)))
                                              (_tl116489116522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116491116517_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116489116522_))
                                              ((lambda (_L116525_ _L116526_)
                                                 (let ((_$e116545_
                                                        (let ((__tmp118244
                                                               (lambda (_g116540116542_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L116526_ _g116540116542_))))
                      (__tmp118243
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self116476_ 'ids))))
                  (declare (not safe))
                  (find __tmp118244 __tmp118243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e116545_
                                                       _$e116545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self116476_
                                                          _L116525_)))))
                                               _hd116490116520_
                                               _hd116487116512_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116479116496_
                                                 _g116480116499_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116479116496_ _g116480116499_)))))
                              (let ()
                                (declare (not safe))
                                (_g116479116496_ _g116480116499_)))))
                      (let ()
                        (declare (not safe))
                        (_g116479116496_ _g116480116499_))))))
          (declare (not safe))
          (_g116478116548_ _stx116477_))))))
