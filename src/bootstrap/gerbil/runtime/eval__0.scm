(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1701718632)
  (begin
    (define __context::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '#f
         '4
         '__context
         '()
         '#f
         '(t ns super table))))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args15373_
        (apply make-struct-instance __context::t _$args15373_)))
    (define __context-t
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '0)))
    (define __context-ns
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '1)))
    (define __context-super
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '2)))
    (define __context-table
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '3)))
    (define __context-t-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '0)))
    (define __context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '1)))
    (define __context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '2)))
    (define __context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '3)))
    (define &__context-t
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '0)))
    (define &__context-ns
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '1)))
    (define &__context-super
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '2)))
    (define &__context-table
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '3)))
    (define &__context-t-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '0)))
    (define &__context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '1)))
    (define &__context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '2)))
    (define &__context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '3)))
    (define __runtime::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '#f
         '1
         '__runtime
         '()
         '#f
         '(id))))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args15370_
        (apply make-struct-instance __runtime::t _$args15370_)))
    (define __runtime-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __runtime::t '0)))
    (define __runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __runtime::t '0)))
    (define &__runtime-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __runtime::t '0)))
    (define &__runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __runtime::t '0)))
    (define __syntax::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '#f
         '2
         '__syntax
         '()
         '#f
         '(e id))))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args15367_
        (apply make-struct-instance __syntax::t _$args15367_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __syntax::t '0)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __syntax::t '1)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-struct-field-mutator __syntax::t '0)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-struct-field-mutator __syntax::t '1)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __syntax::t '0)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __syntax::t '1)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __syntax::t '0)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __syntax::t '1)))
    (define __macro::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         __syntax::t
         '0
         '__macro
         '()
         '#f
         '())))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args15364_
        (apply make-struct-instance __macro::t _$args15364_)))
    (define __special-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         __macro::t
         '0
         '__special-form
         '()
         '#f
         '())))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args15361_
        (apply make-struct-instance __special-form::t _$args15361_)))
    (define __core-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         __syntax::t
         '0
         '__core-form
         '()
         '#f
         '())))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args15358_
        (apply make-struct-instance __core-form::t _$args15358_)))
    (define __core-expression::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         __core-form::t
         '0
         '__core-expression
         '()
         '#f
         '())))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args15355_
        (apply make-struct-instance __core-expression::t _$args15355_)))
    (define __core-special-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         __core-form::t
         '0
         '__core-special-form
         '()
         '#f
         '())))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args15352_
        (apply make-struct-instance __core-special-form::t _$args15352_)))
    (define __struct-info::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         __syntax::t
         '0
         '__struct-info
         '()
         '#f
         '())))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args15349_
        (apply make-struct-instance __struct-info::t _$args15349_)))
    (define __feature::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         __syntax::t
         '0
         '__feature
         '()
         '#f
         '())))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args15346_
        (apply make-struct-instance __feature::t _$args15346_)))
    (define __module::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         __context::t
         '4
         '__module
         '()
         '#f
         '(id path import export))))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args15343_
        (apply make-struct-instance __module::t _$args15343_)))
    (define __module-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '0)))
    (define __module-path
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '1)))
    (define __module-import
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '2)))
    (define __module-export
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '3)))
    (define __module-id-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '0)))
    (define __module-path-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '1)))
    (define __module-import-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '2)))
    (define __module-export-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '3)))
    (define &__module-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '0)))
    (define &__module-path
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '1)))
    (define &__module-import
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '2)))
    (define &__module-export
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '3)))
    (define &__module-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '0)))
    (define &__module-path-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '1)))
    (define &__module-import-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '2)))
    (define &__module-export-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '3)))
    (define __*modules* (let () (declare (not safe)) (make-table)))
    (define __*core* (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __*top*
      (let ((__tmp15559
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp15558 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp15559 __tmp15558)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id15318_ _ctx15319_)
        (if _ctx15319_
            (let ((_id15321_
                   (let () (declare (not safe)) (__AST-e _id15318_))))
              (let _lp15323_ ((_ctx15325_ _ctx15319_))
                (let ((_$e15327_
                       (table-ref
                        (##structure-ref _ctx15325_ '4 __context::t '#f)
                        _id15321_
                        '#f)))
                  (if _$e15327_
                      (values _$e15327_)
                      (let ((_$e15330_
                             (##structure-ref _ctx15325_ '3 __context::t '#f)))
                        (if _$e15330_
                            (let () (declare (not safe)) (_lp15323_ _$e15330_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id15336_)
        (let ((_ctx15338_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id15336_ _ctx15338_))))
    (define __core-resolve
      (lambda _g15561_
        (let ((_g15560_ (let () (declare (not safe)) (##length _g15561_))))
          (cond ((let () (declare (not safe)) (##fx= _g15560_ 1))
                 (apply (lambda (_id15336_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id15336_)))
                        _g15561_))
                ((let () (declare (not safe)) (##fx= _g15560_ 2))
                 (apply (lambda (_id15340_ _ctx15341_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id15340_ _ctx15341_)))
                        _g15561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g15561_))))))
    (define __core-bound-id?__%
      (lambda (_id15301_ _is?15302_)
        (let ((_$e15304_
               (let () (declare (not safe)) (__core-resolve__0 _id15301_))))
          (if _$e15304_ (_is?15302_ _$e15304_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id15310_)
        (let ((_is?15312_ true))
          (declare (not safe))
          (__core-bound-id?__% _id15310_ _is?15312_))))
    (define __core-bound-id?
      (lambda _g15563_
        (let ((_g15562_ (let () (declare (not safe)) (##length _g15563_))))
          (cond ((let () (declare (not safe)) (##fx= _g15562_ 1))
                 (apply (lambda (_id15310_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id15310_)))
                        _g15563_))
                ((let () (declare (not safe)) (##fx= _g15562_ 2))
                 (apply (lambda (_id15314_ _is?15315_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id15314_ _is?15315_)))
                        _g15563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g15563_))))))
    (define __core-bind-runtime!__%
      (lambda (_id15284_ _eid15285_ _ctx15286_)
        (if _eid15285_
            (let ((__tmp15566 (##structure-ref _ctx15286_ '4 __context::t '#f))
                  (__tmp15565
                   (let () (declare (not safe)) (__AST-e _id15284_)))
                  (__tmp15564
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid15285_))))
              (declare (not safe))
              (table-set! __tmp15566 __tmp15565 __tmp15564))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id15291_ _eid15292_)
        (let ((_ctx15294_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id15291_ _eid15292_ _ctx15294_))))
    (define __core-bind-runtime!
      (lambda _g15568_
        (let ((_g15567_ (let () (declare (not safe)) (##length _g15568_))))
          (cond ((let () (declare (not safe)) (##fx= _g15567_ 2))
                 (apply (lambda (_id15291_ _eid15292_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id15291_ _eid15292_)))
                        _g15568_))
                ((let () (declare (not safe)) (##fx= _g15567_ 3))
                 (apply (lambda (_id15296_ _eid15297_ _ctx15298_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id15296_
                             _eid15297_
                             _ctx15298_)))
                        _g15568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g15568_))))))
    (define __core-bind-syntax!__%
      (lambda (_id15267_ _e15268_ _make15269_)
        (let ((__tmp15569
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e15268_
                      'gerbil/runtime/eval#__syntax::t))
                   _e15268_
                   (_make15269_ _e15268_ _id15267_))))
          (declare (not safe))
          (table-set! __*core* _id15267_ __tmp15569))))
    (define __core-bind-syntax!__0
      (lambda (_id15274_ _e15275_)
        (let ((_make15277_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id15274_ _e15275_ _make15277_))))
    (define __core-bind-syntax!
      (lambda _g15571_
        (let ((_g15570_ (let () (declare (not safe)) (##length _g15571_))))
          (cond ((let () (declare (not safe)) (##fx= _g15570_ 2))
                 (apply (lambda (_id15274_ _e15275_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id15274_ _e15275_)))
                        _g15571_))
                ((let () (declare (not safe)) (##fx= _g15570_ 3))
                 (apply (lambda (_id15279_ _e15280_ _make15281_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id15279_
                             _e15280_
                             _make15281_)))
                        _g15571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g15571_))))))
    (define __core-bind-macro!
      (lambda (_id15263_ _e15264_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id15263_ _e15264_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id15260_ _e15261_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id15260_ _e15261_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id15244_ _e15245_ _ctx15246_)
        (let ((__tmp15575 (##structure-ref _ctx15246_ '4 __context::t '#f))
              (__tmp15574 (let () (declare (not safe)) (__AST-e _id15244_)))
              (__tmp15572
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e15245_
                      'gerbil/runtime/eval#__syntax::t))
                   _e15245_
                   (let ((__tmp15573
                          (let () (declare (not safe)) (__AST-e _id15244_))))
                     (declare (not safe))
                     (##structure __syntax::t _e15245_ __tmp15573)))))
          (declare (not safe))
          (table-set! __tmp15575 __tmp15574 __tmp15572))))
    (define __core-bind-user-syntax!__0
      (lambda (_id15251_ _e15252_)
        (let ((_ctx15254_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id15251_ _e15252_ _ctx15254_))))
    (define __core-bind-user-syntax!
      (lambda _g15577_
        (let ((_g15576_ (let () (declare (not safe)) (##length _g15577_))))
          (cond ((let () (declare (not safe)) (##fx= _g15576_ 2))
                 (apply (lambda (_id15251_ _e15252_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id15251_ _e15252_)))
                        _g15577_))
                ((let () (declare (not safe)) (##fx= _g15576_ 3))
                 (apply (lambda (_id15256_ _e15257_ _ctx15258_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id15256_
                             _e15257_
                             _ctx15258_)))
                        _g15577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g15577_))))))
    (define make-__runtime-id__%
      (lambda (_id15225_ _ctx15226_)
        (let ((_id15228_ (let () (declare (not safe)) (__AST-e _id15225_))))
          (if (let () (declare (not safe)) (eq? _id15228_ '_))
              '#f
              (if (uninterned-symbol? _id15228_)
                  (gensym _id15228_)
                  (if (let () (declare (not safe)) (symbol? _id15228_))
                      (let ((_$e15230_
                             (##structure-ref _ctx15226_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e15230_))
                            (gensym _id15228_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e15230_))
                                (let ((__tmp15578
                                       (##structure-ref
                                        _ctx15226_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp15578 '"#" _id15228_))
                                _id15228_)))
                      (error '"Illegal runtime identifier" _id15228_)))))))
    (define make-__runtime-id__0
      (lambda (_id15236_)
        (let ((_ctx15238_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id15236_ _ctx15238_))))
    (define make-__runtime-id
      (lambda _g15580_
        (let ((_g15579_ (let () (declare (not safe)) (##length _g15580_))))
          (cond ((let () (declare (not safe)) (##fx= _g15579_ 1))
                 (apply (lambda (_id15236_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id15236_)))
                        _g15580_))
                ((let () (declare (not safe)) (##fx= _g15579_ 2))
                 (apply (lambda (_id15240_ _ctx15241_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id15240_ _ctx15241_)))
                        _g15580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g15580_))))))
    (define make-__context-local__%
      (lambda (_super15214_)
        (let ((__tmp15581
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super15214_ __tmp15581))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super15220_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super15220_))))
    (define make-__context-local
      (lambda _g15583_
        (let ((_g15582_ (let () (declare (not safe)) (##length _g15583_))))
          (cond ((let () (declare (not safe)) (##fx= _g15582_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g15583_))
                ((let () (declare (not safe)) (##fx= _g15582_ 1))
                 (apply (lambda (_super15222_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super15222_)))
                        _g15583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g15583_))))))
    (define make-__context-module__%
      (lambda (_id15194_ _ns15195_ _path15196_ _super15197_)
        (let ((__tmp15584
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns15195_
           _super15197_
           __tmp15584
           _id15194_
           _path15196_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id15202_ _ns15203_ _path15204_)
        (let ((_super15206_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id15202_
           _ns15203_
           _path15204_
           _super15206_))))
    (define make-__context-module
      (lambda _g15586_
        (let ((_g15585_ (let () (declare (not safe)) (##length _g15586_))))
          (cond ((let () (declare (not safe)) (##fx= _g15585_ 3))
                 (apply (lambda (_id15202_ _ns15203_ _path15204_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id15202_
                             _ns15203_
                             _path15204_)))
                        _g15586_))
                ((let () (declare (not safe)) (##fx= _g15585_ 4))
                 (apply (lambda (_id15208_ _ns15209_ _path15210_ _super15211_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id15208_
                             _ns15209_
                             _path15210_
                             _super15211_)))
                        _g15586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g15586_))))))
    (define __SRC__%
      (lambda (_e15177_ _src-stx15178_)
        (if (or (let () (declare (not safe)) (pair? _e15177_))
                (let () (declare (not safe)) (symbol? _e15177_)))
            (let ((__tmp15590
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx15178_
                          'gerbil#AST::t))
                       (let ((__tmp15591
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx15178_))))
                         (declare (not safe))
                         (__locat __tmp15591))
                       '#f)))
              (declare (not safe))
              (##make-source _e15177_ __tmp15590))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e15177_ 'gerbil#AST::t))
                (let ((__tmp15589
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e15177_ '1 AST::t '#f)))
                      (__tmp15587
                       (let ((__tmp15588
                              (let ()
                                (declare (not safe))
                                (__AST-source _e15177_))))
                         (declare (not safe))
                         (__locat __tmp15588))))
                  (declare (not safe))
                  (##make-source __tmp15589 __tmp15587))
                (error '"BUG! Cannot sourcify object" _e15177_)))))
    (define __SRC__0
      (lambda (_e15186_)
        (let ((_src-stx15188_ '#f))
          (declare (not safe))
          (__SRC__% _e15186_ _src-stx15188_))))
    (define __SRC
      (lambda _g15593_
        (let ((_g15592_ (let () (declare (not safe)) (##length _g15593_))))
          (cond ((let () (declare (not safe)) (##fx= _g15592_ 1))
                 (apply (lambda (_e15186_)
                          (let () (declare (not safe)) (__SRC__0 _e15186_)))
                        _g15593_))
                ((let () (declare (not safe)) (##fx= _g15592_ 2))
                 (apply (lambda (_e15190_ _src-stx15191_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e15190_ _src-stx15191_)))
                        _g15593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g15593_))))))
    (define __locat
      (lambda (_loc15174_)
        (if (let () (declare (not safe)) (##locat? _loc15174_))
            _loc15174_
            '#f)))
    (define __check-values
      (lambda (_obj15169_ _k15170_)
        (let ((_count15172_
               (if (let () (declare (not safe)) (##values? _obj15169_))
                   (let () (declare (not safe)) (##vector-length _obj15169_))
                   '1)))
          (if (fx= _count15172_ _k15170_)
              '#!void
              (error (if (fx< _count15172_ _k15170_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj15169_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj15169_))
                         _obj15169_)
                     _k15170_)))))
    (define __compile
      (lambda (_stx15139_)
        (let* ((_$e15141_ _stx15139_)
               (_$E1514315149_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15141_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15141_))
              (let* ((_$tgt1514415152_
                      (let () (declare (not safe)) (__AST-e _$e15141_)))
                     (_$hd1514515155_
                      (let () (declare (not safe)) (##car _$tgt1514415152_)))
                     (_$tl1514615158_
                      (let () (declare (not safe)) (##cdr _$tgt1514415152_))))
                (let* ((_form15162_ _$hd1514515155_)
                       (_$e15164_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form15162_))))
                  (if _$e15164_
                      ((lambda (_bind15167_)
                         ((##structure-ref _bind15167_ '1 __syntax::t '#f)
                          _stx15139_))
                       _$e15164_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx15139_
                         _form15162_)))))
              (let () (declare (not safe)) (_$E1514315149_))))))
    (define __compile-error__%
      (lambda (_stx15126_ _detail15127_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx15126_
           _detail15127_))))
    (define __compile-error__0
      (lambda (_stx15132_)
        (let ((_detail15134_ '#f))
          (declare (not safe))
          (__compile-error__% _stx15132_ _detail15134_))))
    (define __compile-error
      (lambda _g15595_
        (let ((_g15594_ (let () (declare (not safe)) (##length _g15595_))))
          (cond ((let () (declare (not safe)) (##fx= _g15594_ 1))
                 (apply (lambda (_stx15132_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx15132_)))
                        _g15595_))
                ((let () (declare (not safe)) (##fx= _g15594_ 2))
                 (apply (lambda (_stx15136_ _detail15137_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx15136_ _detail15137_)))
                        _g15595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g15595_))))))
    (define __compile-ignore%
      (lambda (_stx15123_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx15123_))))
    (define __compile-begin%
      (lambda (_stx15098_)
        (let* ((_$e15100_ _stx15098_)
               (_$E1510215108_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15100_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15100_))
              (let* ((_$tgt1510315111_
                      (let () (declare (not safe)) (__AST-e _$e15100_)))
                     (_$hd1510415114_
                      (let () (declare (not safe)) (##car _$tgt1510315111_)))
                     (_$tl1510515117_
                      (let () (declare (not safe)) (##cdr _$tgt1510315111_))))
                (let* ((_body15121_ _$tl1510515117_)
                       (__tmp15596
                        (let ((__tmp15597 (map __compile _body15121_)))
                          (declare (not safe))
                          (cons 'begin __tmp15597))))
                  (declare (not safe))
                  (__SRC__% __tmp15596 _stx15098_)))
              (let () (declare (not safe)) (_$E1510215108_))))))
    (define __compile-begin-foreign%
      (lambda (_stx15073_)
        (let* ((_$e15075_ _stx15073_)
               (_$E1507715083_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15075_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15075_))
              (let* ((_$tgt1507815086_
                      (let () (declare (not safe)) (__AST-e _$e15075_)))
                     (_$hd1507915089_
                      (let () (declare (not safe)) (##car _$tgt1507815086_)))
                     (_$tl1508015092_
                      (let () (declare (not safe)) (##cdr _$tgt1507815086_))))
                (let* ((_body15096_ _$tl1508015092_)
                       (__tmp15598
                        (let ((__tmp15599
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body15096_))))
                          (declare (not safe))
                          (cons 'begin __tmp15599))))
                  (declare (not safe))
                  (__SRC__% __tmp15598 _stx15073_)))
              (let () (declare (not safe)) (_$E1507715083_))))))
    (define __compile-import%
      (lambda (_stx15048_)
        (let* ((_$e15050_ _stx15048_)
               (_$E1505215058_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15050_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15050_))
              (let* ((_$tgt1505315061_
                      (let () (declare (not safe)) (__AST-e _$e15050_)))
                     (_$hd1505415064_
                      (let () (declare (not safe)) (##car _$tgt1505315061_)))
                     (_$tl1505515067_
                      (let () (declare (not safe)) (##cdr _$tgt1505315061_))))
                (let* ((_body15071_ _$tl1505515067_)
                       (__tmp15600
                        (let ((__tmp15601
                               (let ((__tmp15602
                                      (let ((__tmp15603
                                             (let ()
                                               (declare (not safe))
                                               (cons _body15071_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp15603))))
                                 (declare (not safe))
                                 (cons __tmp15602 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp15601))))
                  (declare (not safe))
                  (__SRC__% __tmp15600 _stx15048_)))
              (let () (declare (not safe)) (_$E1505215058_))))))
    (define __compile-begin-annotation%
      (lambda (_stx14995_)
        (let* ((_$e14997_ _stx14995_)
               (_$E1499915011_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e14997_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e14997_))
              (let* ((_$tgt1500015014_
                      (let () (declare (not safe)) (__AST-e _$e14997_)))
                     (_$hd1500115017_
                      (let () (declare (not safe)) (##car _$tgt1500015014_)))
                     (_$tl1500215020_
                      (let () (declare (not safe)) (##cdr _$tgt1500015014_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1500215020_))
                    (let* ((_$tgt1500315024_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1500215020_)))
                           (_$hd1500415027_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1500315024_)))
                           (_$tl1500515030_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1500315024_))))
                      (let ((_ann15034_ _$hd1500415027_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1500515030_))
                            (let* ((_$tgt1500615036_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1500515030_)))
                                   (_$hd1500715039_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1500615036_)))
                                   (_$tl1500815042_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1500615036_))))
                              (let ((_expr15046_ _$hd1500715039_))
                                (if (let ((__tmp15604
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1500815042_))))
                                      (declare (not safe))
                                      (equal? __tmp15604 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr15046_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1499915011_)))))
                            (let () (declare (not safe)) (_$E1499915011_)))))
                    (let () (declare (not safe)) (_$E1499915011_))))
              (let () (declare (not safe)) (_$E1499915011_))))))
    (define __compile-define-values%
      (lambda (_stx14886_)
        (let* ((_$e14888_ _stx14886_)
               (_$E1489014902_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e14888_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e14888_))
              (let* ((_$tgt1489114905_
                      (let () (declare (not safe)) (__AST-e _$e14888_)))
                     (_$hd1489214908_
                      (let () (declare (not safe)) (##car _$tgt1489114905_)))
                     (_$tl1489314911_
                      (let () (declare (not safe)) (##cdr _$tgt1489114905_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1489314911_))
                    (let* ((_$tgt1489414915_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1489314911_)))
                           (_$hd1489514918_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1489414915_)))
                           (_$tl1489614921_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1489414915_))))
                      (let ((_hd14925_ _$hd1489514918_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1489614921_))
                            (let* ((_$tgt1489714927_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1489614921_)))
                                   (_$hd1489814930_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1489714927_)))
                                   (_$tl1489914933_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1489714927_))))
                              (let ((_expr14937_ _$hd1489814930_))
                                (if (let ((__tmp15637
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1489914933_))))
                                      (declare (not safe))
                                      (equal? __tmp15637 '()))
                                    (let* ((_$e14939_ _hd14925_)
                                           (_$E1494114982_
                                            (lambda ()
                                              (let ((_$E1494214967_
                                                     (lambda ()
                                                       (let* ((_$E1494314954_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e14939_))))
                      (_ids14957_ _hd14925_)
                      (_len14959_ (length _ids14957_))
                      (_tmp14961_
                       (let ((__tmp15605 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp15605))))
                 (let ((__tmp15606
                        (let ((__tmp15607
                               (let ((__tmp15624
                                      (let ((__tmp15625
                                             (let ((__tmp15626
                                                    (let ((__tmp15627
                                                           (let ((__tmp15628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr14937_))))
                     (declare (not safe))
                     (cons __tmp15628 '()))))
              (declare (not safe))
              (cons _tmp14961_ __tmp15627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp15626))))
                                        (declare (not safe))
                                        (__SRC__% __tmp15625 _stx14886_)))
                                     (__tmp15608
                                      (let ((__tmp15620
                                             (let ((__tmp15621
                                                    (let ((__tmp15622
                                                           (let ((__tmp15623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len14959_ '()))))
                     (declare (not safe))
                     (cons _tmp14961_ __tmp15623))))
              (declare (not safe))
              (cons '__check-values __tmp15622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp15621
                                                _stx14886_)))
                                            (__tmp15609
                                             (let ((__tmp15610
                                                    (let ((__tmp15612
                                                           (lambda (_id14964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k14965_)
                     (if (let () (declare (not safe)) (__AST-e _id14964_))
                         (let ((__tmp15613
                                (let ((__tmp15614
                                       (let ((__tmp15619
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id14964_)))
                                             (__tmp15615
                                              (let ((__tmp15616
                                                     (let ((__tmp15617
                                                            (let ((__tmp15618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k14965_ '()))))
                      (declare (not safe))
                      (cons _tmp14961_ __tmp15618))))
               (declare (not safe))
               (cons '##vector-ref __tmp15617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp15616 '()))))
                                         (declare (not safe))
                                         (cons __tmp15619 __tmp15615))))
                                  (declare (not safe))
                                  (cons 'define __tmp15614))))
                           (declare (not safe))
                           (__SRC__% __tmp15613 _stx14886_))
                         '#f)))
                  (__tmp15611 (let () (declare (not safe)) (iota _len14959_))))
              (declare (not safe))
              (filter-map2 __tmp15612 _ids14957_ __tmp15611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp15610))))
                                        (declare (not safe))
                                        (cons __tmp15620 __tmp15609))))
                                 (declare (not safe))
                                 (cons __tmp15624 __tmp15608))))
                          (declare (not safe))
                          (cons 'begin __tmp15607))))
                   (declare (not safe))
                   (__SRC__% __tmp15606 _stx14886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e14939_))
                                                    (let* ((_$tgt1494414970_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e14939_)))
                                                           (_$hd1494514973_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1494414970_)))
                                                           (_$tl1494614976_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1494414970_))))
                                                      (let ((_id14980_
                                                             _$hd1494514973_))
                                                        (if (let ((__tmp15634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1494614976_))))
                      (declare (not safe))
                      (equal? __tmp15634 '()))
                    (let ((__tmp15629
                           (let ((__tmp15630
                                  (let ((__tmp15633
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id14980_)))
                                        (__tmp15631
                                         (let ((__tmp15632
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr14937_))))
                                           (declare (not safe))
                                           (cons __tmp15632 '()))))
                                    (declare (not safe))
                                    (cons __tmp15633 __tmp15631))))
                             (declare (not safe))
                             (cons 'define __tmp15630))))
                      (declare (not safe))
                      (__SRC__% __tmp15629 _stx14886_))
                    (let () (declare (not safe)) (_$E1494214967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1494214967_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e14939_))
                                          (let* ((_$tgt1494714985_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e14939_)))
                                                 (_$hd1494814988_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1494714985_)))
                                                 (_$tl1494914991_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1494714985_))))
                                            (if (let ((__tmp15636
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1494814988_))))
                                                  (declare (not safe))
                                                  (equal? __tmp15636 '#f))
                                                (if (let ((__tmp15635
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1494914991_))))
                                                      (declare (not safe))
                                                      (equal? __tmp15635 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr14937_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1494114982_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1494114982_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1494114982_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1489014902_)))))
                            (let () (declare (not safe)) (_$E1489014902_)))))
                    (let () (declare (not safe)) (_$E1489014902_))))
              (let () (declare (not safe)) (_$E1489014902_))))))
    (define __compile-head-id
      (lambda (_e14884_)
        (let ((__tmp15638
               (if (let () (declare (not safe)) (__AST-e _e14884_))
                   _e14884_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp15638))))
    (define __compile-lambda-head
      (lambda (_hd14841_)
        (let _recur14843_ ((_rest14845_ _hd14841_))
          (let* ((_$e14847_ _rest14845_)
                 (_$E1484914867_
                  (lambda ()
                    (let ((_$E1485014864_
                           (lambda ()
                             (let* ((_$E1485114859_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e14847_))))
                                    (_tail14862_ _$e14847_))
                               (declare (not safe))
                               (__compile-head-id _tail14862_)))))
                      (if (let ((__tmp15639
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e14847_))))
                            (declare (not safe))
                            (equal? __tmp15639 '()))
                          '()
                          (let () (declare (not safe)) (_$E1485014864_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e14847_))
                (let* ((_$tgt1485214870_
                        (let () (declare (not safe)) (__AST-e _$e14847_)))
                       (_$hd1485314873_
                        (let () (declare (not safe)) (##car _$tgt1485214870_)))
                       (_$tl1485414876_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1485214870_))))
                  (let* ((_hd14880_ _$hd1485314873_)
                         (_rest14882_ _$tl1485414876_))
                    (let ((__tmp15641
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd14880_)))
                          (__tmp15640
                           (let ()
                             (declare (not safe))
                             (_recur14843_ _rest14882_))))
                      (declare (not safe))
                      (cons __tmp15641 __tmp15640))))
                (let () (declare (not safe)) (_$E1484914867_)))))))
    (define __compile-lambda%
      (lambda (_stx14788_)
        (let* ((_$e14790_ _stx14788_)
               (_$E1479214804_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e14790_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e14790_))
              (let* ((_$tgt1479314807_
                      (let () (declare (not safe)) (__AST-e _$e14790_)))
                     (_$hd1479414810_
                      (let () (declare (not safe)) (##car _$tgt1479314807_)))
                     (_$tl1479514813_
                      (let () (declare (not safe)) (##cdr _$tgt1479314807_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1479514813_))
                    (let* ((_$tgt1479614817_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1479514813_)))
                           (_$hd1479714820_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1479614817_)))
                           (_$tl1479814823_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1479614817_))))
                      (let ((_hd14827_ _$hd1479714820_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1479814823_))
                            (let* ((_$tgt1479914829_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1479814823_)))
                                   (_$hd1480014832_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1479914829_)))
                                   (_$tl1480114835_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1479914829_))))
                              (let ((_body14839_ _$hd1480014832_))
                                (if (let ((__tmp15647
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1480114835_))))
                                      (declare (not safe))
                                      (equal? __tmp15647 '()))
                                    (let ((__tmp15642
                                           (let ((__tmp15643
                                                  (let ((__tmp15646
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd14827_)))
                                                        (__tmp15644
                                                         (let ((__tmp15645
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body14839_))))
                   (declare (not safe))
                   (cons __tmp15645 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15646
                                                          __tmp15644))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp15643))))
                                      (declare (not safe))
                                      (__SRC__% __tmp15642 _stx14788_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1479214804_)))))
                            (let () (declare (not safe)) (_$E1479214804_)))))
                    (let () (declare (not safe)) (_$E1479214804_))))
              (let () (declare (not safe)) (_$E1479214804_))))))
    (define __compile-case-lambda%
      (lambda (_stx14580_)
        (letrec ((_variadic?14582_
                  (lambda (_hd14753_)
                    (let* ((_$e14755_ _hd14753_)
                           (_$E1475714773_
                            (lambda ()
                              (let ((_$E1475814770_
                                     (lambda ()
                                       (let ((_$E1475914767_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e14755_)))))
                                         '#t))))
                                (if (let ((__tmp15648
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e14755_))))
                                      (declare (not safe))
                                      (equal? __tmp15648 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1475814770_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e14755_))
                          (let* ((_$tgt1476014776_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e14755_)))
                                 (_$hd1476114779_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1476014776_)))
                                 (_$tl1476214782_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1476014776_))))
                            (let ((_rest14786_ _$tl1476214782_))
                              (declare (not safe))
                              (_variadic?14582_ _rest14786_)))
                          (let () (declare (not safe)) (_$E1475714773_))))))
                 (_arity14583_
                  (lambda (_hd14718_)
                    (let _lp14720_ ((_rest14722_ _hd14718_) (_k14723_ '0))
                      (let* ((_$e14725_ _rest14722_)
                             (_$E1472714738_
                              (lambda ()
                                (let ((_$E1472814735_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e14725_)))))
                                  _k14723_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e14725_))
                            (let* ((_$tgt1472914741_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e14725_)))
                                   (_$hd1473014744_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1472914741_)))
                                   (_$tl1473114747_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1472914741_))))
                              (let* ((_rest14751_ _$tl1473114747_)
                                     (__tmp15649
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k14723_ '1))))
                                (declare (not safe))
                                (_lp14720_ _rest14751_ __tmp15649)))
                            (let () (declare (not safe)) (_$E1472714738_)))))))
                 (_generate14584_
                  (lambda (_rest14645_ _args14646_ _len14647_)
                    (let* ((_$e14649_ _rest14645_)
                           (_$E1465114662_
                            (lambda ()
                              (let* ((_$E1465214659_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e14649_))))
                                     (__tmp15650
                                      (let ((__tmp15651
                                             (let ((__tmp15652
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args14646_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp15652))))
                                        (declare (not safe))
                                        (cons 'error __tmp15651))))
                                (declare (not safe))
                                (__SRC__% __tmp15650 _stx14580_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e14649_))
                          (let* ((_$tgt1465314665_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e14649_)))
                                 (_$hd1465414668_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1465314665_)))
                                 (_$tl1465514671_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1465314665_))))
                            (let* ((_clause14675_ _$hd1465414668_)
                                   (_rest14677_ _$tl1465514671_)
                                   (_$e14679_ _clause14675_)
                                   (_$E1468114690_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e14679_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e14679_))
                                  (let* ((_$tgt1468214693_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e14679_)))
                                         (_$hd1468314696_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1468214693_)))
                                         (_$tl1468414699_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1468214693_))))
                                    (let ((_hd14703_ _$hd1468314696_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1468414699_))
                                          (let* ((_$tgt1468514705_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1468414699_)))
                                                 (_$hd1468614708_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1468514705_)))
                                                 (_$tl1468714711_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1468514705_))))
                                            (if (let ((__tmp15667
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1468714711_))))
                                                  (declare (not safe))
                                                  (equal? __tmp15667 '()))
                                                (let ((_clen14715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity14583_
                                                          _hd14703_)))
                                                      (_cmp14716_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?14582_
                                                              _hd14703_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp15653
                                                         (let ((__tmp15654
                                                                (let ((__tmp15664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp15665
                                      (let ((__tmp15666
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen14715_ '()))))
                                        (declare (not safe))
                                        (cons _len14647_ __tmp15666))))
                                 (declare (not safe))
                                 (cons _cmp14716_ __tmp15665)))
                              (__tmp15655
                               (let ((__tmp15658
                                      (let ((__tmp15659
                                             (let ((__tmp15660
                                                    (let ((__tmp15662
                                                           (let ((__tmp15663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause14675_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp15663)))
                  (__tmp15661
                   (let () (declare (not safe)) (cons _args14646_ '()))))
              (declare (not safe))
              (cons __tmp15662 __tmp15661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp15660))))
                                        (declare (not safe))
                                        (__SRC__% __tmp15659 _stx14580_)))
                                     (__tmp15656
                                      (let ((__tmp15657
                                             (let ()
                                               (declare (not safe))
                                               (_generate14584_
                                                _rest14677_
                                                _args14646_
                                                _len14647_))))
                                        (declare (not safe))
                                        (cons __tmp15657 '()))))
                                 (declare (not safe))
                                 (cons __tmp15658 __tmp15656))))
                          (declare (not safe))
                          (cons __tmp15664 __tmp15655))))
                   (declare (not safe))
                   (cons 'if __tmp15654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp15653
                                                     _stx14580_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1468114690_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1468114690_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1468114690_)))))
                          (let () (declare (not safe)) (_$E1465114662_)))))))
          (let* ((_$e14586_ _stx14580_)
                 (_$E1458814620_
                  (lambda ()
                    (let ((_$E1458914602_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e14586_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e14586_))
                          (let* ((_$tgt1459014605_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e14586_)))
                                 (_$hd1459114608_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1459014605_)))
                                 (_$tl1459214611_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1459014605_))))
                            (let ((_clauses14615_ _$tl1459214611_))
                              (let ((_args14617_
                                     (let ((__tmp15668 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp15668 _stx14580_)))
                                    (_len14618_
                                     (let ((__tmp15669 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp15669 _stx14580_))))
                                (let ((__tmp15670
                                       (let ((__tmp15671
                                              (let ((__tmp15672
                                                     (let ((__tmp15673
                                                            (let ((__tmp15674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp15675
                                  (let ((__tmp15678
                                         (let ((__tmp15679
                                                (let ((__tmp15680
                                                       (let ((__tmp15681
                                                              (let ((__tmp15682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp15683
                                    (let ()
                                      (declare (not safe))
                                      (cons _args14617_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp15683))))
                        (declare (not safe))
                        (__SRC__% __tmp15682 _stx14580_))))
                 (declare (not safe))
                 (cons __tmp15681 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len14618_
                                                        __tmp15680))))
                                           (declare (not safe))
                                           (cons __tmp15679 '())))
                                        (__tmp15676
                                         (let ((__tmp15677
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate14584_
                                                   _clauses14615_
                                                   _args14617_
                                                   _len14618_))))
                                           (declare (not safe))
                                           (cons __tmp15677 '()))))
                                    (declare (not safe))
                                    (cons __tmp15678 __tmp15676))))
                             (declare (not safe))
                             (cons 'let __tmp15675))))
                      (declare (not safe))
                      (__SRC__% __tmp15674 _stx14580_))))
               (declare (not safe))
               (cons __tmp15673 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args14617_
                                                      __tmp15672))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp15671))))
                                  (declare (not safe))
                                  (__SRC__% __tmp15670 _stx14580_)))))
                          (let () (declare (not safe)) (_$E1458914602_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e14586_))
                (let* ((_$tgt1459314623_
                        (let () (declare (not safe)) (__AST-e _$e14586_)))
                       (_$hd1459414626_
                        (let () (declare (not safe)) (##car _$tgt1459314623_)))
                       (_$tl1459514629_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1459314623_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1459514629_))
                      (let* ((_$tgt1459614633_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1459514629_)))
                             (_$hd1459714636_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1459614633_)))
                             (_$tl1459814639_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1459614633_))))
                        (let ((_clause14643_ _$hd1459714636_))
                          (if (let ((__tmp15685
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1459814639_))))
                                (declare (not safe))
                                (equal? __tmp15685 '()))
                              (let ((__tmp15684
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause14643_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp15684))
                              (let () (declare (not safe)) (_$E1458814620_)))))
                      (let () (declare (not safe)) (_$E1458814620_))))
                (let () (declare (not safe)) (_$E1458814620_)))))))
    (define __compile-let-form
      (lambda (_stx14349_ _compile-simple14350_ _compile-values14351_)
        (letrec ((_simple-bind?14353_
                  (lambda (_hd14538_)
                    (let* ((_hd1453914549_ _hd14538_)
                           (_else1454214557_ (lambda () '#f)))
                      (let ((_K1454514570_ (lambda (_id14568_) '#t))
                            (_K1454414562_ (lambda () '#t)))
                        (let ((_try-match1454114565_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1453914549_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1454414562_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1454214557_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1453914549_))
                              (let ((_tl1454714575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1453914549_)))
                                    (_hd1454614573_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1453914549_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1454714575_))
                                    (let ((_id14578_ _hd1454614573_))
                                      (declare (not safe))
                                      (_K1454514570_ _id14578_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1454114565_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1454114565_))))))))
                 (_car-e14354_
                  (lambda (_hd14536_)
                    (if (let () (declare (not safe)) (pair? _hd14536_))
                        (car _hd14536_)
                        _hd14536_))))
          (let* ((_$e14356_ _stx14349_)
                 (_$E1435814501_
                  (lambda ()
                    (let ((_$E1435914381_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e14356_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e14356_))
                          (let* ((_$tgt1436014384_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e14356_)))
                                 (_$hd1436114387_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1436014384_)))
                                 (_$tl1436214390_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1436014384_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1436214390_))
                                (let* ((_$tgt1436314394_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1436214390_)))
                                       (_$hd1436414397_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1436314394_)))
                                       (_$tl1436514400_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1436314394_))))
                                  (let ((_hd14404_ _$hd1436414397_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1436514400_))
                                        (let* ((_$tgt1436614406_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1436514400_)))
                                               (_$hd1436714409_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1436614406_)))
                                               (_$tl1436814412_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1436614406_))))
                                          (let ((_body14416_ _$hd1436714409_))
                                            (if (let ((__tmp15688
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1436814412_))))
                                                  (declare (not safe))
                                                  (equal? __tmp15688 '()))
                                                (let* ((_hd-ids14456_
                                                        (map (lambda (_bind14418_)
                                                               (let* ((_$e14420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind14418_)
                              (_$E1442214431_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e14420_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e14420_))
                             (let* ((_$tgt1442314434_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e14420_)))
                                    (_$hd1442414437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1442314434_)))
                                    (_$tl1442514440_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1442314434_))))
                               (let ((_ids14444_ _$hd1442414437_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1442514440_))
                                     (let* ((_$tgt1442614446_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1442514440_)))
                                            (_$hd1442714449_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1442614446_)))
                                            (_$tl1442814452_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1442614446_))))
                                       (if (let ((__tmp15686
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1442814452_))))
                                             (declare (not safe))
                                             (equal? __tmp15686 '()))
                                           _ids14444_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1442214431_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1442214431_)))))
                             (let () (declare (not safe)) (_$E1442214431_)))))
                     _hd14404_))
               (_exprs14496_
                (map (lambda (_bind14458_)
                       (let* ((_$e14460_ _bind14458_)
                              (_$E1446214471_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e14460_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e14460_))
                             (let* ((_$tgt1446314474_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e14460_)))
                                    (_$hd1446414477_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1446314474_)))
                                    (_$tl1446514480_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1446314474_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1446514480_))
                                   (let* ((_$tgt1446614484_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1446514480_)))
                                          (_$hd1446714487_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1446614484_)))
                                          (_$tl1446814490_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1446614484_))))
                                     (let ((_expr14494_ _$hd1446714487_))
                                       (if (let ((__tmp15687
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1446814490_))))
                                             (declare (not safe))
                                             (equal? __tmp15687 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr14494_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1446214471_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1446214471_))))
                             (let () (declare (not safe)) (_$E1446214471_)))))
                     _hd14404_))
               (_body14498_
                (let () (declare (not safe)) (__compile _body14416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?14353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids14456_))
              (_compile-simple14350_
               (map _car-e14354_ _hd-ids14456_)
               _exprs14496_
               _body14498_)
              (_compile-values14351_ _hd-ids14456_ _exprs14496_ _body14498_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1435914381_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1435914381_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1435914381_))))
                          (let () (declare (not safe)) (_$E1435914381_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e14356_))
                (let* ((_$tgt1436914504_
                        (let () (declare (not safe)) (__AST-e _$e14356_)))
                       (_$hd1437014507_
                        (let () (declare (not safe)) (##car _$tgt1436914504_)))
                       (_$tl1437114510_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1436914504_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1437114510_))
                      (let* ((_$tgt1437214514_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1437114510_)))
                             (_$hd1437314517_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1437214514_)))
                             (_$tl1437414520_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1437214514_))))
                        (if (let ((__tmp15690
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1437314517_))))
                              (declare (not safe))
                              (equal? __tmp15690 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1437414520_))
                                (let* ((_$tgt1437514524_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1437414520_)))
                                       (_$hd1437614527_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1437514524_)))
                                       (_$tl1437714530_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1437514524_))))
                                  (let ((_body14534_ _$hd1437614527_))
                                    (if (let ((__tmp15689
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1437714530_))))
                                          (declare (not safe))
                                          (equal? __tmp15689 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body14534_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1435814501_)))))
                                (let () (declare (not safe)) (_$E1435814501_)))
                            (let () (declare (not safe)) (_$E1435814501_))))
                      (let () (declare (not safe)) (_$E1435814501_))))
                (let () (declare (not safe)) (_$E1435814501_)))))))
    (define __compile-let-values%
      (lambda (_stx14164_)
        (letrec ((_compile-simple14166_
                  (lambda (_hd-ids14345_ _exprs14346_ _body14347_)
                    (let ((__tmp15691
                           (let ((__tmp15692
                                  (let ((__tmp15694
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids14345_)
                                              _exprs14346_))
                                        (__tmp15693
                                         (let ()
                                           (declare (not safe))
                                           (cons _body14347_ '()))))
                                    (declare (not safe))
                                    (cons __tmp15694 __tmp15693))))
                             (declare (not safe))
                             (cons 'let __tmp15692))))
                      (declare (not safe))
                      (__SRC__% __tmp15691 _stx14164_))))
                 (_compile-values14167_
                  (lambda (_hd-ids14263_ _exprs14264_ _body14265_)
                    (let _lp14267_ ((_rest14269_ _hd-ids14263_)
                                    (_exprs14270_ _exprs14264_)
                                    (_bind14271_ '())
                                    (_post14272_ '()))
                      (let* ((_rest1427314287_ _rest14269_)
                             (_else1427614295_
                              (lambda ()
                                (let ((__tmp15695
                                       (let ((__tmp15696
                                              (let ((__tmp15699
                                                     (reverse _bind14271_))
                                                    (__tmp15697
                                                     (let ((__tmp15698
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post14168_
                                                               _post14272_
                                                               _body14265_))))
                                                       (declare (not safe))
                                                       (cons __tmp15698 '()))))
                                                (declare (not safe))
                                                (cons __tmp15699 __tmp15697))))
                                         (declare (not safe))
                                         (cons 'let __tmp15696))))
                                  (declare (not safe))
                                  (__SRC__% __tmp15695 _stx14164_)))))
                        (let ((_K1428114328_
                               (lambda (_rest14325_ _id14326_)
                                 (let ((__tmp15705 (cdr _exprs14270_))
                                       (__tmp15700
                                        (let ((__tmp15701
                                               (let ((__tmp15704
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id14326_)))
                                                     (__tmp15702
                                                      (let ((__tmp15703
                                                             (car _exprs14270_)))
                                                        (declare (not safe))
                                                        (cons __tmp15703
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp15704
                                                       __tmp15702))))
                                          (declare (not safe))
                                          (cons __tmp15701 _bind14271_))))
                                   (declare (not safe))
                                   (_lp14267_
                                    _rest14325_
                                    __tmp15705
                                    __tmp15700
                                    _post14272_))))
                              (_K1427814310_
                               (lambda (_rest14299_ _hd14300_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd14300_))
                                     (let ((__tmp15726 (cdr _exprs14270_))
                                           (__tmp15719
                                            (let ((__tmp15720
                                                   (let ((__tmp15725
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd14300_)))
                                                         (__tmp15721
                                                          (let ((__tmp15722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp15723
                                (let ((__tmp15724 (car _exprs14270_)))
                                  (declare (not safe))
                                  (cons __tmp15724 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp15723))))
                    (declare (not safe))
                    (cons __tmp15722 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp15725
                                                           __tmp15721))))
                                              (declare (not safe))
                                              (cons __tmp15720 _bind14271_))))
                                       (declare (not safe))
                                       (_lp14267_
                                        _rest14299_
                                        __tmp15726
                                        __tmp15719
                                        _post14272_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd14300_))
                                         (let* ((_len14302_ (length _hd14300_))
                                                (_tmp14304_
                                                 (let ((__tmp15706 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp15706))))
                                           (let ((__tmp15718
                                                  (cdr _exprs14270_))
                                                 (__tmp15714
                                                  (let ((__tmp15715
                                                         (let ((__tmp15716
                                                                (let ((__tmp15717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs14270_)))
                          (declare (not safe))
                          (cons __tmp15717 '()))))
                   (declare (not safe))
                   (cons _tmp14304_ __tmp15716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15715
                                                          _bind14271_)))
                                                 (__tmp15707
                                                  (let ((__tmp15708
                                                         (let ((__tmp15709
                                                                (let ((__tmp15710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp15712
                                      (lambda (_id14307_ _k14308_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id14307_))
                                            (let ((__tmp15713
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id14307_))))
                                              (declare (not safe))
                                              (cons __tmp15713 _k14308_))
                                            '#f)))
                                     (__tmp15711
                                      (let ()
                                        (declare (not safe))
                                        (iota _len14302_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp15712
                                  _hd14300_
                                  __tmp15711))))
                          (declare (not safe))
                          (cons _len14302_ __tmp15710))))
                   (declare (not safe))
                   (cons _tmp14304_ __tmp15709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15708
                                                          _post14272_))))
                                             (declare (not safe))
                                             (_lp14267_
                                              _rest14299_
                                              __tmp15718
                                              __tmp15714
                                              __tmp15707)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx14164_
                                            _hd14300_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1427314287_))
                              (let ((_tl1428314333_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1427314287_)))
                                    (_hd1428214331_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1427314287_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1428214331_))
                                    (let ((_tl1428514338_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1428214331_)))
                                          (_hd1428414336_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1428214331_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1428514338_))
                                          (let ((_id14341_ _hd1428414336_)
                                                (_rest14343_ _tl1428314333_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1428114328_
                                               _rest14343_
                                               _id14341_)))
                                          (let ((_hd14318_ _hd1428214331_)
                                                (_rest14320_ _tl1428314333_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1427814310_
                                               _rest14320_
                                               _hd14318_)))))
                                    (let ((_hd14318_ _hd1428214331_)
                                          (_rest14320_ _tl1428314333_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1427814310_
                                         _rest14320_
                                         _hd14318_)))))
                              (let ()
                                (declare (not safe))
                                (_else1427614295_))))))))
                 (_compile-post14168_
                  (lambda (_post14170_ _body14171_)
                    (let _lp14173_ ((_rest14175_ _post14170_)
                                    (_check14176_ '())
                                    (_bind14177_ '()))
                      (let* ((_rest1417814190_ _rest14175_)
                             (_else1418014198_
                              (lambda ()
                                (let ((__tmp15727
                                       (let ((__tmp15728
                                              (let ((__tmp15729
                                                     (let ((__tmp15730
                                                            (let ((__tmp15731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp15732
                                  (let ((__tmp15733
                                         (let ()
                                           (declare (not safe))
                                           (cons _body14171_ '()))))
                                    (declare (not safe))
                                    (cons _bind14177_ __tmp15733))))
                             (declare (not safe))
                             (cons 'let __tmp15732))))
                      (declare (not safe))
                      (__SRC__% __tmp15731 _stx14164_))))
               (declare (not safe))
               (cons __tmp15730 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp15729
                                                        _check14176_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp15728))))
                                  (declare (not safe))
                                  (__SRC__% __tmp15727 _stx14164_))))
                             (_K1418214237_
                              (lambda (_rest14201_
                                       _init14202_
                                       _len14203_
                                       _tmp14204_)
                                (let ((__tmp15741
                                       (let ((__tmp15742
                                              (let ((__tmp15743
                                                     (let ((__tmp15744
                                                            (let ((__tmp15745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len14203_ '()))))
                      (declare (not safe))
                      (cons _tmp14204_ __tmp15745))))
               (declare (not safe))
               (cons '__check-values __tmp15744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp15743
                                                 _stx14164_))))
                                         (declare (not safe))
                                         (cons __tmp15742 _check14176_)))
                                      (__tmp15734
                                       (let ((__tmp15735
                                              (lambda (_hd14206_ _r14207_)
                                                (let* ((_hd1420814215_
                                                        _hd14206_)
                                                       (_E1421014219_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1420814215_)))
               (_K1421114225_
                (lambda (_k14222_ _id14223_)
                  (let ((__tmp15736
                         (let ((__tmp15737
                                (let ((__tmp15738
                                       (let ((__tmp15739
                                              (let ((__tmp15740
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k14222_ '()))))
                                                (declare (not safe))
                                                (cons _tmp14204_ __tmp15740))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp15739))))
                                  (declare (not safe))
                                  (cons __tmp15738 '()))))
                           (declare (not safe))
                           (cons _id14223_ __tmp15737))))
                    (declare (not safe))
                    (cons __tmp15736 _r14207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1420814215_))
                                                      (let ((_hd1421214228_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1420814215_)))
                    (_tl1421314230_
                     (let () (declare (not safe)) (##cdr _hd1420814215_))))
                (let* ((_id14233_ _hd1421214228_) (_k14235_ _tl1421314230_))
                  (declare (not safe))
                  (_K1421114225_ _k14235_ _id14233_)))
              (let () (declare (not safe)) (_E1421014219_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp15735
                                                 _bind14177_
                                                 _init14202_))))
                                  (declare (not safe))
                                  (_lp14173_
                                   _rest14201_
                                   __tmp15741
                                   __tmp15734)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1417814190_))
                            (let ((_hd1418314240_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1417814190_)))
                                  (_tl1418414242_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1417814190_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1418314240_))
                                  (let ((_hd1418514245_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1418314240_)))
                                        (_tl1418614247_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1418314240_))))
                                    (let ((_tmp14250_ _hd1418514245_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1418614247_))
                                          (let ((_hd1418714252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1418614247_)))
                                                (_tl1418814254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1418614247_))))
                                            (let* ((_len14257_ _hd1418714252_)
                                                   (_init14259_ _tl1418814254_)
                                                   (_rest14261_
                                                    _tl1418414242_))
                                              (declare (not safe))
                                              (_K1418214237_
                                               _rest14261_
                                               _init14259_
                                               _len14257_
                                               _tmp14250_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1418014198_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1418014198_))))
                            (let ()
                              (declare (not safe))
                              (_else1418014198_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx14164_
             _compile-simple14166_
             _compile-values14167_)))))
    (define __compile-letrec-values%
      (lambda (_stx13964_)
        (letrec ((_compile-simple13966_
                  (lambda (_hd-ids14160_ _exprs14161_ _body14162_)
                    (let ((__tmp15746
                           (let ((__tmp15747
                                  (let ((__tmp15749
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids14160_)
                                              _exprs14161_))
                                        (__tmp15748
                                         (let ()
                                           (declare (not safe))
                                           (cons _body14162_ '()))))
                                    (declare (not safe))
                                    (cons __tmp15749 __tmp15748))))
                             (declare (not safe))
                             (cons 'letrec __tmp15747))))
                      (declare (not safe))
                      (__SRC__% __tmp15746 _stx13964_))))
                 (_compile-values13967_
                  (lambda (_hd-ids14074_ _exprs14075_ _body14076_)
                    (let _lp14078_ ((_rest14080_ _hd-ids14074_)
                                    (_exprs14081_ _exprs14075_)
                                    (_pre14082_ '())
                                    (_bind14083_ '())
                                    (_post14084_ '()))
                      (let* ((_rest1408514099_ _rest14080_)
                             (_else1408814107_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner13968_
                                   _pre14082_
                                   _bind14083_
                                   _post14084_
                                   _body14076_)))))
                        (let ((_K1409314143_
                               (lambda (_rest14140_ _id14141_)
                                 (let ((__tmp15755 (cdr _exprs14081_))
                                       (__tmp15750
                                        (let ((__tmp15751
                                               (let ((__tmp15754
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id14141_)))
                                                     (__tmp15752
                                                      (let ((__tmp15753
                                                             (car _exprs14081_)))
                                                        (declare (not safe))
                                                        (cons __tmp15753
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp15754
                                                       __tmp15752))))
                                          (declare (not safe))
                                          (cons __tmp15751 _bind14083_))))
                                   (declare (not safe))
                                   (_lp14078_
                                    _rest14140_
                                    __tmp15755
                                    _pre14082_
                                    __tmp15750
                                    _post14084_))))
                              (_K1409014125_
                               (lambda (_rest14111_ _hd14112_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd14112_))
                                     (let ((__tmp15783 (cdr _exprs14081_))
                                           (__tmp15776
                                            (let ((__tmp15777
                                                   (let ((__tmp15782
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd14112_)))
                                                         (__tmp15778
                                                          (let ((__tmp15779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp15780
                                (let ((__tmp15781 (car _exprs14081_)))
                                  (declare (not safe))
                                  (cons __tmp15781 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp15780))))
                    (declare (not safe))
                    (cons __tmp15779 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp15782
                                                           __tmp15778))))
                                              (declare (not safe))
                                              (cons __tmp15777 _bind14083_))))
                                       (declare (not safe))
                                       (_lp14078_
                                        _rest14111_
                                        __tmp15783
                                        _pre14082_
                                        __tmp15776
                                        _post14084_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd14112_))
                                         (let* ((_len14114_ (length _hd14112_))
                                                (_tmp14116_
                                                 (let ((__tmp15756 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp15756))))
                                           (let ((__tmp15775
                                                  (cdr _exprs14081_))
                                                 (__tmp15768
                                                  (let ((__tmp15769
                                                         (lambda (_id14119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r14120_)
                   (if (let () (declare (not safe)) (__AST-e _id14119_))
                       (let ((__tmp15770
                              (let ((__tmp15774
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id14119_)))
                                    (__tmp15771
                                     (let ((__tmp15772
                                            (let ((__tmp15773
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp15773))))
                                       (declare (not safe))
                                       (cons __tmp15772 '()))))
                                (declare (not safe))
                                (cons __tmp15774 __tmp15771))))
                         (declare (not safe))
                         (cons __tmp15770 _r14120_))
                       _r14120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp15769
                                                            _pre14082_
                                                            _hd14112_)))
                                                 (__tmp15764
                                                  (let ((__tmp15765
                                                         (let ((__tmp15766
                                                                (let ((__tmp15767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs14081_)))
                          (declare (not safe))
                          (cons __tmp15767 '()))))
                   (declare (not safe))
                   (cons _tmp14116_ __tmp15766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15765
                                                          _bind14083_)))
                                                 (__tmp15757
                                                  (let ((__tmp15758
                                                         (let ((__tmp15759
                                                                (let ((__tmp15760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp15762
                                      (lambda (_id14122_ _k14123_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id14122_))
                                            (let ((__tmp15763
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id14122_))))
                                              (declare (not safe))
                                              (cons __tmp15763 _k14123_))
                                            '#f)))
                                     (__tmp15761
                                      (let ()
                                        (declare (not safe))
                                        (iota _len14114_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp15762
                                  _hd14112_
                                  __tmp15761))))
                          (declare (not safe))
                          (cons _len14114_ __tmp15760))))
                   (declare (not safe))
                   (cons _tmp14116_ __tmp15759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15758
                                                          _post14084_))))
                                             (declare (not safe))
                                             (_lp14078_
                                              _rest14111_
                                              __tmp15775
                                              __tmp15768
                                              __tmp15764
                                              __tmp15757)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx13964_
                                            _hd14112_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1408514099_))
                              (let ((_tl1409514148_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1408514099_)))
                                    (_hd1409414146_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1408514099_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1409414146_))
                                    (let ((_tl1409714153_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1409414146_)))
                                          (_hd1409614151_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1409414146_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1409714153_))
                                          (let ((_id14156_ _hd1409614151_)
                                                (_rest14158_ _tl1409514148_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1409314143_
                                               _rest14158_
                                               _id14156_)))
                                          (let ((_hd14133_ _hd1409414146_)
                                                (_rest14135_ _tl1409514148_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1409014125_
                                               _rest14135_
                                               _hd14133_)))))
                                    (let ((_hd14133_ _hd1409414146_)
                                          (_rest14135_ _tl1409514148_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1409014125_
                                         _rest14135_
                                         _hd14133_)))))
                              (let ()
                                (declare (not safe))
                                (_else1408814107_))))))))
                 (_compile-inner13968_
                  (lambda (_pre14069_ _bind14070_ _post14071_ _body14072_)
                    (if (let () (declare (not safe)) (null? _pre14069_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind13969_
                           _bind14070_
                           _post14071_
                           _body14072_))
                        (let ((__tmp15784
                               (let ((__tmp15785
                                      (let ((__tmp15788 (reverse _pre14069_))
                                            (__tmp15786
                                             (let ((__tmp15787
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind13969_
                                                       _bind14070_
                                                       _post14071_
                                                       _body14072_))))
                                               (declare (not safe))
                                               (cons __tmp15787 '()))))
                                        (declare (not safe))
                                        (cons __tmp15788 __tmp15786))))
                                 (declare (not safe))
                                 (cons 'let __tmp15785))))
                          (declare (not safe))
                          (__SRC__% __tmp15784 _stx13964_)))))
                 (_compile-bind13969_
                  (lambda (_bind14065_ _post14066_ _body14067_)
                    (let ((__tmp15789
                           (let ((__tmp15790
                                  (let ((__tmp15793 (reverse _bind14065_))
                                        (__tmp15791
                                         (let ((__tmp15792
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post13970_
                                                   _post14066_
                                                   _body14067_))))
                                           (declare (not safe))
                                           (cons __tmp15792 '()))))
                                    (declare (not safe))
                                    (cons __tmp15793 __tmp15791))))
                             (declare (not safe))
                             (cons 'letrec __tmp15790))))
                      (declare (not safe))
                      (__SRC__% __tmp15789 _stx13964_))))
                 (_compile-post13970_
                  (lambda (_post13972_ _body13973_)
                    (let _lp13975_ ((_rest13977_ _post13972_)
                                    (_check13978_ '())
                                    (_bind13979_ '()))
                      (let* ((_rest1398013992_ _rest13977_)
                             (_else1398214000_
                              (lambda ()
                                (let ((__tmp15794
                                       (let ((__tmp15795
                                              (let ((__tmp15796
                                                     (let ((__tmp15797
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body13973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp15797 _bind13979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp15796
                                                        _check13978_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp15795))))
                                  (declare (not safe))
                                  (__SRC__% __tmp15794 _stx13964_))))
                             (_K1398414039_
                              (lambda (_rest14003_
                                       _init14004_
                                       _len14005_
                                       _tmp14006_)
                                (let ((__tmp15806
                                       (let ((__tmp15807
                                              (let ((__tmp15808
                                                     (let ((__tmp15809
                                                            (let ((__tmp15810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len14005_ '()))))
                      (declare (not safe))
                      (cons _tmp14006_ __tmp15810))))
               (declare (not safe))
               (cons '__check-values __tmp15809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp15808
                                                 _stx13964_))))
                                         (declare (not safe))
                                         (cons __tmp15807 _check13978_)))
                                      (__tmp15798
                                       (let ((__tmp15799
                                              (lambda (_hd14008_ _r14009_)
                                                (let* ((_hd1401014017_
                                                        _hd14008_)
                                                       (_E1401214021_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1401014017_)))
               (_K1401314027_
                (lambda (_k14024_ _id14025_)
                  (let ((__tmp15800
                         (let ((__tmp15801
                                (let ((__tmp15802
                                       (let ((__tmp15803
                                              (let ((__tmp15804
                                                     (let ((__tmp15805
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k14024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp14006_ __tmp15805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp15804))))
                                         (declare (not safe))
                                         (cons __tmp15803 '()))))
                                  (declare (not safe))
                                  (cons _id14025_ __tmp15802))))
                           (declare (not safe))
                           (cons 'set! __tmp15801))))
                    (declare (not safe))
                    (cons __tmp15800 _r14009_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1401014017_))
                                                      (let ((_hd1401414030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1401014017_)))
                    (_tl1401514032_
                     (let () (declare (not safe)) (##cdr _hd1401014017_))))
                (let* ((_id14035_ _hd1401414030_) (_k14037_ _tl1401514032_))
                  (declare (not safe))
                  (_K1401314027_ _k14037_ _id14035_)))
              (let () (declare (not safe)) (_E1401214021_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp15799
                                                 _bind13979_
                                                 _init14004_))))
                                  (declare (not safe))
                                  (_lp13975_
                                   _rest14003_
                                   __tmp15806
                                   __tmp15798)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1398013992_))
                            (let ((_hd1398514042_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1398013992_)))
                                  (_tl1398614044_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1398013992_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1398514042_))
                                  (let ((_hd1398714047_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1398514042_)))
                                        (_tl1398814049_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1398514042_))))
                                    (let ((_tmp14052_ _hd1398714047_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1398814049_))
                                          (let ((_hd1398914054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1398814049_)))
                                                (_tl1399014056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1398814049_))))
                                            (let* ((_len14059_ _hd1398914054_)
                                                   (_init14061_ _tl1399014056_)
                                                   (_rest14063_
                                                    _tl1398614044_))
                                              (declare (not safe))
                                              (_K1398414039_
                                               _rest14063_
                                               _init14061_
                                               _len14059_
                                               _tmp14052_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1398214000_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1398214000_))))
                            (let ()
                              (declare (not safe))
                              (_else1398214000_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx13964_
             _compile-simple13966_
             _compile-values13967_)))))
    (define __compile-letrec*-values%
      (lambda (_stx13719_)
        (letrec ((_compile-simple13721_
                  (lambda (_hd-ids13960_ _exprs13961_ _body13962_)
                    (let ((__tmp15811
                           (let ((__tmp15812
                                  (let ((__tmp15814
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids13960_)
                                              _exprs13961_))
                                        (__tmp15813
                                         (let ()
                                           (declare (not safe))
                                           (cons _body13962_ '()))))
                                    (declare (not safe))
                                    (cons __tmp15814 __tmp15813))))
                             (declare (not safe))
                             (cons 'letrec* __tmp15812))))
                      (declare (not safe))
                      (__SRC__% __tmp15811 _stx13719_))))
                 (_compile-values13722_
                  (lambda (_hd-ids13871_ _exprs13872_ _body13873_)
                    (let _lp13875_ ((_rest13877_ _hd-ids13871_)
                                    (_exprs13878_ _exprs13872_)
                                    (_bind13879_ '())
                                    (_post13880_ '()))
                      (let* ((_rest1388113895_ _rest13877_)
                             (_else1388413903_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind13723_
                                   _bind13879_
                                   _post13880_
                                   _body13873_)))))
                        (let ((_K1388913943_
                               (lambda (_rest13938_ _hd13939_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd13939_))
                                     (let ((_id13941_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd13939_))))
                                       (let ((__tmp15829 (cdr _exprs13878_))
                                             (__tmp15824
                                              (let ((__tmp15825
                                                     (let ((__tmp15826
                                                            (let ((__tmp15827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp15828
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp15828))))
                      (declare (not safe))
                      (cons __tmp15827 '()))))
               (declare (not safe))
               (cons _id13941_ __tmp15826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp15825 _bind13879_)))
                                             (__tmp15820
                                              (let ((__tmp15821
                                                     (let ((__tmp15822
                                                            (let ((__tmp15823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs13878_)))
                      (declare (not safe))
                      (cons __tmp15823 '()))))
               (declare (not safe))
               (cons _id13941_ __tmp15822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp15821
                                                      _post13880_))))
                                         (declare (not safe))
                                         (_lp13875_
                                          _rest13938_
                                          __tmp15829
                                          __tmp15824
                                          __tmp15820)))
                                     (let ((__tmp15819 (cdr _exprs13878_))
                                           (__tmp15815
                                            (let ((__tmp15816
                                                   (let ((__tmp15817
                                                          (let ((__tmp15818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs13878_)))
                    (declare (not safe))
                    (cons __tmp15818 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp15817))))
                                              (declare (not safe))
                                              (cons __tmp15816 _post13880_))))
                                       (declare (not safe))
                                       (_lp13875_
                                        _rest13938_
                                        __tmp15819
                                        _bind13879_
                                        __tmp15815)))))
                              (_K1388613923_
                               (lambda (_rest13907_ _hd13908_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd13908_))
                                     (let ((_id13910_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd13908_))))
                                       (let ((__tmp15865 (cdr _exprs13878_))
                                             (__tmp15860
                                              (let ((__tmp15861
                                                     (let ((__tmp15862
                                                            (let ((__tmp15863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp15864
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp15864))))
                      (declare (not safe))
                      (cons __tmp15863 '()))))
               (declare (not safe))
               (cons _id13910_ __tmp15862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp15861 _bind13879_)))
                                             (__tmp15854
                                              (let ((__tmp15855
                                                     (let ((__tmp15856
                                                            (let ((__tmp15857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp15858
                                  (let ((__tmp15859 (car _exprs13878_)))
                                    (declare (not safe))
                                    (cons __tmp15859 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp15858))))
                      (declare (not safe))
                      (cons __tmp15857 '()))))
               (declare (not safe))
               (cons _id13910_ __tmp15856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp15855
                                                      _post13880_))))
                                         (declare (not safe))
                                         (_lp13875_
                                          _rest13907_
                                          __tmp15865
                                          __tmp15860
                                          __tmp15854)))
                                     (if (let ((__tmp15853
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd13908_))))
                                           (declare (not safe))
                                           (not __tmp15853))
                                         (let ((__tmp15852 (cdr _exprs13878_))
                                               (__tmp15848
                                                (let ((__tmp15849
                                                       (let ((__tmp15850
                                                              (let ((__tmp15851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs13878_)))
                        (declare (not safe))
                        (cons __tmp15851 '()))))
                 (declare (not safe))
                 (cons '#f __tmp15850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp15849
                                                        _post13880_))))
                                           (declare (not safe))
                                           (_lp13875_
                                            _rest13907_
                                            __tmp15852
                                            _bind13879_
                                            __tmp15848))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd13908_))
                                             (let* ((_len13912_
                                                     (length _hd13908_))
                                                    (_tmp13914_
                                                     (let ((__tmp15830
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp15830))))
                                               (let ((__tmp15847
                                                      (cdr _exprs13878_))
                                                     (__tmp15840
                                                      (let ((__tmp15841
                                                             (lambda (_id13917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r13918_)
                       (if (let () (declare (not safe)) (__AST-e _id13917_))
                           (let ((__tmp15842
                                  (let ((__tmp15846
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id13917_)))
                                        (__tmp15843
                                         (let ((__tmp15844
                                                (let ((__tmp15845
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp15845))))
                                           (declare (not safe))
                                           (cons __tmp15844 '()))))
                                    (declare (not safe))
                                    (cons __tmp15846 __tmp15843))))
                             (declare (not safe))
                             (cons __tmp15842 _r13918_))
                           _r13918_))))
                (declare (not safe))
                (foldl1 __tmp15841 _bind13879_ _hd13908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp15831
                                                      (let ((__tmp15832
                                                             (let ((__tmp15833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp15839 (car _exprs13878_))
                                  (__tmp15834
                                   (let ((__tmp15835
                                          (let ((__tmp15837
                                                 (lambda (_id13920_ _k13921_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id13920_))
                                                       (let ((__tmp15838
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id13920_))))
                 (declare (not safe))
                 (cons __tmp15838 _k13921_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp15836
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len13912_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp15837
                                             _hd13908_
                                             __tmp15836))))
                                     (declare (not safe))
                                     (cons _len13912_ __tmp15835))))
                              (declare (not safe))
                              (cons __tmp15839 __tmp15834))))
                       (declare (not safe))
                       (cons _tmp13914_ __tmp15833))))
                (declare (not safe))
                (cons __tmp15832 _post13880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp13875_
                                                  _rest13907_
                                                  __tmp15847
                                                  __tmp15840
                                                  __tmp15831)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx13719_
                                                _hd13908_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1388113895_))
                              (let ((_tl1389113948_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1388113895_)))
                                    (_hd1389013946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1388113895_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1389013946_))
                                    (let ((_tl1389313953_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1389013946_)))
                                          (_hd1389213951_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1389013946_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1389313953_))
                                          (let ((_hd13956_ _hd1389213951_)
                                                (_rest13958_ _tl1389113948_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1388913943_
                                               _rest13958_
                                               _hd13956_)))
                                          (let ((_hd13931_ _hd1389013946_)
                                                (_rest13933_ _tl1389113948_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1388613923_
                                               _rest13933_
                                               _hd13931_)))))
                                    (let ((_hd13931_ _hd1389013946_)
                                          (_rest13933_ _tl1389113948_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1388613923_
                                         _rest13933_
                                         _hd13931_)))))
                              (let ()
                                (declare (not safe))
                                (_else1388413903_))))))))
                 (_compile-bind13723_
                  (lambda (_bind13867_ _post13868_ _body13869_)
                    (let ((__tmp15866
                           (let ((__tmp15867
                                  (let ((__tmp15870 (reverse _bind13867_))
                                        (__tmp15868
                                         (let ((__tmp15869
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post13724_
                                                   _post13868_
                                                   _body13869_))))
                                           (declare (not safe))
                                           (cons __tmp15869 '()))))
                                    (declare (not safe))
                                    (cons __tmp15870 __tmp15868))))
                             (declare (not safe))
                             (cons 'let __tmp15867))))
                      (declare (not safe))
                      (__SRC__% __tmp15866 _stx13719_))))
                 (_compile-post13724_
                  (lambda (_post13726_ _body13727_)
                    (let ((__tmp15871
                           (let ((__tmp15872
                                  (let ((__tmp15873
                                         (let ((__tmp15875
                                                (lambda (_hd13729_ _r13730_)
                                                  (let* ((_hd1373113754_
                                                          _hd13729_)
                                                         (_E1373513758_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1373113754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1374813852_
                                                           (lambda (_expr13850_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr13850_ _r13730_))))
                  (_K1374313830_
                   (lambda (_expr13827_ _id13828_)
                     (let ((__tmp15876
                            (let ((__tmp15877
                                   (let ((__tmp15878
                                          (let ((__tmp15879
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr13827_ '()))))
                                            (declare (not safe))
                                            (cons _id13828_ __tmp15879))))
                                     (declare (not safe))
                                     (cons 'set! __tmp15878))))
                              (declare (not safe))
                              (__SRC__% __tmp15877 _stx13719_))))
                       (declare (not safe))
                       (cons __tmp15876 _r13730_))))
                  (_K1373613797_
                   (lambda (_init13762_ _len13763_ _expr13764_ _tmp13765_)
                     (let ((__tmp15880
                            (let ((__tmp15881
                                   (let ((__tmp15882
                                          (let ((__tmp15896
                                                 (let ((__tmp15897
                                                        (let ((__tmp15898
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr13764_ '()))))
                  (declare (not safe))
                  (cons _tmp13765_ __tmp15898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp15897 '())))
                                                (__tmp15883
                                                 (let ((__tmp15892
                                                        (let ((__tmp15893
                                                               (let ((__tmp15894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp15895
                                     (let ()
                                       (declare (not safe))
                                       (cons _len13763_ '()))))
                                (declare (not safe))
                                (cons _tmp13765_ __tmp15895))))
                         (declare (not safe))
                         (cons '__check-values __tmp15894))))
                  (declare (not safe))
                  (__SRC__% __tmp15893 _stx13719_)))
               (__tmp15884
                (let ((__tmp15885
                       (map (lambda (_hd13767_)
                              (let* ((_hd1376813775_ _hd13767_)
                                     (_E1377013779_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1376813775_)))
                                     (_K1377113785_
                                      (lambda (_k13782_ _id13783_)
                                        (let ((__tmp15886
                                               (let ((__tmp15887
                                                      (let ((__tmp15888
                                                             (let ((__tmp15889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp15890
                                   (let ((__tmp15891
                                          (let ()
                                            (declare (not safe))
                                            (cons _k13782_ '()))))
                                     (declare (not safe))
                                     (cons _tmp13765_ __tmp15891))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp15890))))
                       (declare (not safe))
                       (cons __tmp15889 '()))))
                (declare (not safe))
                (cons _id13783_ __tmp15888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp15887))))
                                          (declare (not safe))
                                          (__SRC__% __tmp15886 _stx13719_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1376813775_))
                                    (let ((_hd1377213788_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1376813775_)))
                                          (_tl1377313790_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1376813775_))))
                                      (let* ((_id13793_ _hd1377213788_)
                                             (_k13795_ _tl1377313790_))
                                        (declare (not safe))
                                        (_K1377113785_ _k13795_ _id13793_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1377013779_)))))
                            _init13762_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp15885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp15892
                                                         __tmp15884))))
                                            (declare (not safe))
                                            (cons __tmp15896 __tmp15883))))
                                     (declare (not safe))
                                     (cons 'let __tmp15882))))
                              (declare (not safe))
                              (__SRC__% __tmp15881 _stx13719_))))
                       (declare (not safe))
                       (cons __tmp15880 _r13730_)))))
              (if (let () (declare (not safe)) (##pair? _hd1373113754_))
                  (let ((_tl1375013857_
                         (let () (declare (not safe)) (##cdr _hd1373113754_)))
                        (_hd1374913855_
                         (let () (declare (not safe)) (##car _hd1373113754_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1374913855_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1375013857_))
                            (let ((_tl1375213862_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1375013857_)))
                                  (_hd1375113860_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1375013857_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1375213862_))
                                  (let ((_expr13865_ _hd1375113860_))
                                    (declare (not safe))
                                    (_K1374813852_ _expr13865_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1375213862_))
                                      (let ((_tl1374213816_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1375213862_)))
                                            (_hd1374113814_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1375213862_))))
                                        (let ((_tmp13805_ _hd1374913855_)
                                              (_expr13812_ _hd1375113860_)
                                              (_len13819_ _hd1374113814_)
                                              (_init13821_ _tl1374213816_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1373613797_
                                             _init13821_
                                             _len13819_
                                             _expr13812_
                                             _tmp13805_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1373513758_)))))
                            (let () (declare (not safe)) (_E1373513758_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1375013857_))
                            (let ((_tl1374713842_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1375013857_)))
                                  (_hd1374613840_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1375013857_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1374713842_))
                                  (let ((_id13838_ _hd1374913855_)
                                        (_expr13845_ _hd1374613840_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1374313830_ _expr13845_ _id13838_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1374713842_))
                                      (let ((_tl1374213816_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1374713842_)))
                                            (_hd1374113814_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1374713842_))))
                                        (let ((_tmp13805_ _hd1374913855_)
                                              (_expr13812_ _hd1374613840_)
                                              (_len13819_ _hd1374113814_)
                                              (_init13821_ _tl1374213816_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1373613797_
                                             _init13821_
                                             _len13819_
                                             _expr13812_
                                             _tmp13805_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1373513758_)))))
                            (let () (declare (not safe)) (_E1373513758_)))))
                  (let () (declare (not safe)) (_E1373513758_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp15874 (list _body13727_)))
                                           (declare (not safe))
                                           (foldl1 __tmp15875
                                                   __tmp15874
                                                   _post13726_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp15873))))
                             (declare (not safe))
                             (cons 'begin __tmp15872))))
                      (declare (not safe))
                      (__SRC__% __tmp15871 _stx13719_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx13719_
             _compile-simple13721_
             _compile-values13722_)))))
    (define __compile-call%
      (lambda (_stx13679_)
        (let* ((_$e13681_ _stx13679_)
               (_$E1368313692_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13681_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13681_))
              (let* ((_$tgt1368413695_
                      (let () (declare (not safe)) (__AST-e _$e13681_)))
                     (_$hd1368513698_
                      (let () (declare (not safe)) (##car _$tgt1368413695_)))
                     (_$tl1368613701_
                      (let () (declare (not safe)) (##cdr _$tgt1368413695_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1368613701_))
                    (let* ((_$tgt1368713705_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1368613701_)))
                           (_$hd1368813708_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1368713705_)))
                           (_$tl1368913711_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1368713705_))))
                      (let* ((_rator13715_ _$hd1368813708_)
                             (_rands13717_ _$tl1368913711_)
                             (__tmp15899
                              (let ((__tmp15901
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator13715_)))
                                    (__tmp15900 (map __compile _rands13717_)))
                                (declare (not safe))
                                (cons __tmp15901 __tmp15900))))
                        (declare (not safe))
                        (__SRC__% __tmp15899 _stx13679_)))
                    (let () (declare (not safe)) (_$E1368313692_))))
              (let () (declare (not safe)) (_$E1368313692_))))))
    (define __compile-ref%
      (lambda (_stx13641_)
        (let* ((_$e13643_ _stx13641_)
               (_$E1364513654_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13643_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13643_))
              (let* ((_$tgt1364613657_
                      (let () (declare (not safe)) (__AST-e _$e13643_)))
                     (_$hd1364713660_
                      (let () (declare (not safe)) (##car _$tgt1364613657_)))
                     (_$tl1364813663_
                      (let () (declare (not safe)) (##cdr _$tgt1364613657_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1364813663_))
                    (let* ((_$tgt1364913667_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1364813663_)))
                           (_$hd1365013670_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1364913667_)))
                           (_$tl1365113673_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1364913667_))))
                      (let ((_id13677_ _$hd1365013670_))
                        (if (let ((__tmp15902
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1365113673_))))
                              (declare (not safe))
                              (equal? __tmp15902 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id13677_ _stx13641_))
                            (let () (declare (not safe)) (_$E1364513654_)))))
                    (let () (declare (not safe)) (_$E1364513654_))))
              (let () (declare (not safe)) (_$E1364513654_))))))
    (define __compile-setq%
      (lambda (_stx13588_)
        (let* ((_$e13590_ _stx13588_)
               (_$E1359213604_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13590_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13590_))
              (let* ((_$tgt1359313607_
                      (let () (declare (not safe)) (__AST-e _$e13590_)))
                     (_$hd1359413610_
                      (let () (declare (not safe)) (##car _$tgt1359313607_)))
                     (_$tl1359513613_
                      (let () (declare (not safe)) (##cdr _$tgt1359313607_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1359513613_))
                    (let* ((_$tgt1359613617_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1359513613_)))
                           (_$hd1359713620_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1359613617_)))
                           (_$tl1359813623_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1359613617_))))
                      (let ((_id13627_ _$hd1359713620_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1359813623_))
                            (let* ((_$tgt1359913629_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1359813623_)))
                                   (_$hd1360013632_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1359913629_)))
                                   (_$tl1360113635_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1359913629_))))
                              (let ((_expr13639_ _$hd1360013632_))
                                (if (let ((__tmp15908
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1360113635_))))
                                      (declare (not safe))
                                      (equal? __tmp15908 '()))
                                    (let ((__tmp15903
                                           (let ((__tmp15904
                                                  (let ((__tmp15907
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id13627_
                                                            _stx13588_)))
                                                        (__tmp15905
                                                         (let ((__tmp15906
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr13639_))))
                   (declare (not safe))
                   (cons __tmp15906 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15907
                                                          __tmp15905))))
                                             (declare (not safe))
                                             (cons 'set! __tmp15904))))
                                      (declare (not safe))
                                      (__SRC__% __tmp15903 _stx13588_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1359213604_)))))
                            (let () (declare (not safe)) (_$E1359213604_)))))
                    (let () (declare (not safe)) (_$E1359213604_))))
              (let () (declare (not safe)) (_$E1359213604_))))))
    (define __compile-if%
      (lambda (_stx13520_)
        (let* ((_$e13522_ _stx13520_)
               (_$E1352413539_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13522_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13522_))
              (let* ((_$tgt1352513542_
                      (let () (declare (not safe)) (__AST-e _$e13522_)))
                     (_$hd1352613545_
                      (let () (declare (not safe)) (##car _$tgt1352513542_)))
                     (_$tl1352713548_
                      (let () (declare (not safe)) (##cdr _$tgt1352513542_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1352713548_))
                    (let* ((_$tgt1352813552_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1352713548_)))
                           (_$hd1352913555_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1352813552_)))
                           (_$tl1353013558_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1352813552_))))
                      (let ((_p13562_ _$hd1352913555_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1353013558_))
                            (let* ((_$tgt1353113564_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1353013558_)))
                                   (_$hd1353213567_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1353113564_)))
                                   (_$tl1353313570_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1353113564_))))
                              (let ((_t13574_ _$hd1353213567_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1353313570_))
                                    (let* ((_$tgt1353413576_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1353313570_)))
                                           (_$hd1353513579_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1353413576_)))
                                           (_$tl1353613582_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1353413576_))))
                                      (let ((_f13586_ _$hd1353513579_))
                                        (if (let ((__tmp15916
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1353613582_))))
                                              (declare (not safe))
                                              (equal? __tmp15916 '()))
                                            (let ((__tmp15909
                                                   (let ((__tmp15910
                                                          (let ((__tmp15915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p13562_)))
                        (__tmp15911
                         (let ((__tmp15914
                                (let ()
                                  (declare (not safe))
                                  (__compile _t13574_)))
                               (__tmp15912
                                (let ((__tmp15913
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f13586_))))
                                  (declare (not safe))
                                  (cons __tmp15913 '()))))
                           (declare (not safe))
                           (cons __tmp15914 __tmp15912))))
                    (declare (not safe))
                    (cons __tmp15915 __tmp15911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp15910))))
                                              (declare (not safe))
                                              (__SRC__% __tmp15909 _stx13520_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1352413539_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1352413539_)))))
                            (let () (declare (not safe)) (_$E1352413539_)))))
                    (let () (declare (not safe)) (_$E1352413539_))))
              (let () (declare (not safe)) (_$E1352413539_))))))
    (define __compile-quote%
      (lambda (_stx13482_)
        (let* ((_$e13484_ _stx13482_)
               (_$E1348613495_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13484_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13484_))
              (let* ((_$tgt1348713498_
                      (let () (declare (not safe)) (__AST-e _$e13484_)))
                     (_$hd1348813501_
                      (let () (declare (not safe)) (##car _$tgt1348713498_)))
                     (_$tl1348913504_
                      (let () (declare (not safe)) (##cdr _$tgt1348713498_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1348913504_))
                    (let* ((_$tgt1349013508_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1348913504_)))
                           (_$hd1349113511_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1349013508_)))
                           (_$tl1349213514_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1349013508_))))
                      (let ((_e13518_ _$hd1349113511_))
                        (if (let ((__tmp15920
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1349213514_))))
                              (declare (not safe))
                              (equal? __tmp15920 '()))
                            (let ((__tmp15917
                                   (let ((__tmp15918
                                          (let ((__tmp15919
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e13518_))))
                                            (declare (not safe))
                                            (cons __tmp15919 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp15918))))
                              (declare (not safe))
                              (__SRC__% __tmp15917 _stx13482_))
                            (let () (declare (not safe)) (_$E1348613495_)))))
                    (let () (declare (not safe)) (_$E1348613495_))))
              (let () (declare (not safe)) (_$E1348613495_))))))
    (define __compile-quote-syntax%
      (lambda (_stx13444_)
        (let* ((_$e13446_ _stx13444_)
               (_$E1344813457_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13446_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13446_))
              (let* ((_$tgt1344913460_
                      (let () (declare (not safe)) (__AST-e _$e13446_)))
                     (_$hd1345013463_
                      (let () (declare (not safe)) (##car _$tgt1344913460_)))
                     (_$tl1345113466_
                      (let () (declare (not safe)) (##cdr _$tgt1344913460_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1345113466_))
                    (let* ((_$tgt1345213470_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1345113466_)))
                           (_$hd1345313473_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1345213470_)))
                           (_$tl1345413476_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1345213470_))))
                      (let ((_e13480_ _$hd1345313473_))
                        (if (let ((__tmp15923
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1345413476_))))
                              (declare (not safe))
                              (equal? __tmp15923 '()))
                            (let ((__tmp15921
                                   (let ((__tmp15922
                                          (let ()
                                            (declare (not safe))
                                            (cons _e13480_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp15922))))
                              (declare (not safe))
                              (__SRC__% __tmp15921 _stx13444_))
                            (let () (declare (not safe)) (_$E1344813457_)))))
                    (let () (declare (not safe)) (_$E1344813457_))))
              (let () (declare (not safe)) (_$E1344813457_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))
