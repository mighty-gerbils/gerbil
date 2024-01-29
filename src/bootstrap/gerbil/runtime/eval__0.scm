(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1706556807)
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
      (lambda _$args17355_
        (apply make-struct-instance __context::t _$args17355_)))
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
      (lambda _$args17352_
        (apply make-struct-instance __runtime::t _$args17352_)))
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
      (lambda _$args17349_
        (apply make-struct-instance __syntax::t _$args17349_)))
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
      (lambda _$args17346_
        (apply make-struct-instance __macro::t _$args17346_)))
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
      (lambda _$args17343_
        (apply make-struct-instance __special-form::t _$args17343_)))
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
      (lambda _$args17340_
        (apply make-struct-instance __core-form::t _$args17340_)))
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
      (lambda _$args17337_
        (apply make-struct-instance __core-expression::t _$args17337_)))
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
      (lambda _$args17334_
        (apply make-struct-instance __core-special-form::t _$args17334_)))
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
      (lambda _$args17331_
        (apply make-struct-instance __struct-info::t _$args17331_)))
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
      (lambda _$args17328_
        (apply make-struct-instance __feature::t _$args17328_)))
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
      (lambda _$args17325_
        (apply make-struct-instance __module::t _$args17325_)))
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
      (let ((__tmp17541
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17540 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17541 __tmp17540)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17300_ _ctx17301_)
        (if _ctx17301_
            (let ((_id17303_
                   (let () (declare (not safe)) (__AST-e _id17300_))))
              (let _lp17305_ ((_ctx17307_ _ctx17301_))
                (let ((_$e17309_
                       (table-ref
                        (##structure-ref _ctx17307_ '4 __context::t '#f)
                        _id17303_
                        '#f)))
                  (if _$e17309_
                      (values _$e17309_)
                      (let ((_$e17312_
                             (##structure-ref _ctx17307_ '3 __context::t '#f)))
                        (if _$e17312_
                            (let () (declare (not safe)) (_lp17305_ _$e17312_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17318_)
        (let ((_ctx17320_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17318_ _ctx17320_))))
    (define __core-resolve
      (lambda _g17543_
        (let ((_g17542_ (let () (declare (not safe)) (##length _g17543_))))
          (cond ((let () (declare (not safe)) (##fx= _g17542_ 1))
                 (apply (lambda (_id17318_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17318_)))
                        _g17543_))
                ((let () (declare (not safe)) (##fx= _g17542_ 2))
                 (apply (lambda (_id17322_ _ctx17323_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17322_ _ctx17323_)))
                        _g17543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17543_))))))
    (define __core-bound-id?__%
      (lambda (_id17283_ _is?17284_)
        (let ((_$e17286_
               (let () (declare (not safe)) (__core-resolve__0 _id17283_))))
          (if _$e17286_ (_is?17284_ _$e17286_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17292_)
        (let ((_is?17294_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17292_ _is?17294_))))
    (define __core-bound-id?
      (lambda _g17545_
        (let ((_g17544_ (let () (declare (not safe)) (##length _g17545_))))
          (cond ((let () (declare (not safe)) (##fx= _g17544_ 1))
                 (apply (lambda (_id17292_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17292_)))
                        _g17545_))
                ((let () (declare (not safe)) (##fx= _g17544_ 2))
                 (apply (lambda (_id17296_ _is?17297_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17296_ _is?17297_)))
                        _g17545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17545_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17266_ _eid17267_ _ctx17268_)
        (if _eid17267_
            (let ((__tmp17548 (##structure-ref _ctx17268_ '4 __context::t '#f))
                  (__tmp17547
                   (let () (declare (not safe)) (__AST-e _id17266_)))
                  (__tmp17546
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17267_))))
              (declare (not safe))
              (table-set! __tmp17548 __tmp17547 __tmp17546))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17273_ _eid17274_)
        (let ((_ctx17276_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17273_ _eid17274_ _ctx17276_))))
    (define __core-bind-runtime!
      (lambda _g17550_
        (let ((_g17549_ (let () (declare (not safe)) (##length _g17550_))))
          (cond ((let () (declare (not safe)) (##fx= _g17549_ 2))
                 (apply (lambda (_id17273_ _eid17274_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17273_ _eid17274_)))
                        _g17550_))
                ((let () (declare (not safe)) (##fx= _g17549_ 3))
                 (apply (lambda (_id17278_ _eid17279_ _ctx17280_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17278_
                             _eid17279_
                             _ctx17280_)))
                        _g17550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17550_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17249_ _e17250_ _make17251_)
        (let ((__tmp17551
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17250_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17250_
                   (_make17251_ _e17250_ _id17249_))))
          (declare (not safe))
          (table-set! __*core* _id17249_ __tmp17551))))
    (define __core-bind-syntax!__0
      (lambda (_id17256_ _e17257_)
        (let ((_make17259_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17256_ _e17257_ _make17259_))))
    (define __core-bind-syntax!
      (lambda _g17553_
        (let ((_g17552_ (let () (declare (not safe)) (##length _g17553_))))
          (cond ((let () (declare (not safe)) (##fx= _g17552_ 2))
                 (apply (lambda (_id17256_ _e17257_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17256_ _e17257_)))
                        _g17553_))
                ((let () (declare (not safe)) (##fx= _g17552_ 3))
                 (apply (lambda (_id17261_ _e17262_ _make17263_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17261_
                             _e17262_
                             _make17263_)))
                        _g17553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17553_))))))
    (define __core-bind-macro!
      (lambda (_id17245_ _e17246_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17245_ _e17246_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17242_ _e17243_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17242_ _e17243_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17226_ _e17227_ _ctx17228_)
        (let ((__tmp17557 (##structure-ref _ctx17228_ '4 __context::t '#f))
              (__tmp17556 (let () (declare (not safe)) (__AST-e _id17226_)))
              (__tmp17554
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17227_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17227_
                   (let ((__tmp17555
                          (let () (declare (not safe)) (__AST-e _id17226_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17227_ __tmp17555)))))
          (declare (not safe))
          (table-set! __tmp17557 __tmp17556 __tmp17554))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17233_ _e17234_)
        (let ((_ctx17236_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17233_ _e17234_ _ctx17236_))))
    (define __core-bind-user-syntax!
      (lambda _g17559_
        (let ((_g17558_ (let () (declare (not safe)) (##length _g17559_))))
          (cond ((let () (declare (not safe)) (##fx= _g17558_ 2))
                 (apply (lambda (_id17233_ _e17234_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17233_ _e17234_)))
                        _g17559_))
                ((let () (declare (not safe)) (##fx= _g17558_ 3))
                 (apply (lambda (_id17238_ _e17239_ _ctx17240_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17238_
                             _e17239_
                             _ctx17240_)))
                        _g17559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17559_))))))
    (define make-__runtime-id__%
      (lambda (_id17207_ _ctx17208_)
        (let ((_id17210_ (let () (declare (not safe)) (__AST-e _id17207_))))
          (if (let () (declare (not safe)) (eq? _id17210_ '_))
              '#f
              (if (uninterned-symbol? _id17210_)
                  (gensym _id17210_)
                  (if (let () (declare (not safe)) (symbol? _id17210_))
                      (let ((_$e17212_
                             (##structure-ref _ctx17208_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17212_))
                            (gensym _id17210_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17212_))
                                (let ((__tmp17560
                                       (##structure-ref
                                        _ctx17208_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp17560 '"#" _id17210_))
                                _id17210_)))
                      (error '"Illegal runtime identifier" _id17210_)))))))
    (define make-__runtime-id__0
      (lambda (_id17218_)
        (let ((_ctx17220_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17218_ _ctx17220_))))
    (define make-__runtime-id
      (lambda _g17562_
        (let ((_g17561_ (let () (declare (not safe)) (##length _g17562_))))
          (cond ((let () (declare (not safe)) (##fx= _g17561_ 1))
                 (apply (lambda (_id17218_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17218_)))
                        _g17562_))
                ((let () (declare (not safe)) (##fx= _g17561_ 2))
                 (apply (lambda (_id17222_ _ctx17223_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17222_ _ctx17223_)))
                        _g17562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17562_))))))
    (define make-__context-local__%
      (lambda (_super17196_)
        (let ((__tmp17563
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17196_ __tmp17563))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17202_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17202_))))
    (define make-__context-local
      (lambda _g17565_
        (let ((_g17564_ (let () (declare (not safe)) (##length _g17565_))))
          (cond ((let () (declare (not safe)) (##fx= _g17564_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17565_))
                ((let () (declare (not safe)) (##fx= _g17564_ 1))
                 (apply (lambda (_super17204_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17204_)))
                        _g17565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17565_))))))
    (define make-__context-module__%
      (lambda (_id17176_ _ns17177_ _path17178_ _super17179_)
        (let ((__tmp17566
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17177_
           _super17179_
           __tmp17566
           _id17176_
           _path17178_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17184_ _ns17185_ _path17186_)
        (let ((_super17188_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17184_
           _ns17185_
           _path17186_
           _super17188_))))
    (define make-__context-module
      (lambda _g17568_
        (let ((_g17567_ (let () (declare (not safe)) (##length _g17568_))))
          (cond ((let () (declare (not safe)) (##fx= _g17567_ 3))
                 (apply (lambda (_id17184_ _ns17185_ _path17186_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17184_
                             _ns17185_
                             _path17186_)))
                        _g17568_))
                ((let () (declare (not safe)) (##fx= _g17567_ 4))
                 (apply (lambda (_id17190_ _ns17191_ _path17192_ _super17193_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17190_
                             _ns17191_
                             _path17192_
                             _super17193_)))
                        _g17568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17568_))))))
    (define __SRC__%
      (lambda (_e17159_ _src-stx17160_)
        (if (or (let () (declare (not safe)) (pair? _e17159_))
                (let () (declare (not safe)) (symbol? _e17159_)))
            (let ((__tmp17572
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17160_
                          'gerbil#AST::t))
                       (let ((__tmp17573
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17160_))))
                         (declare (not safe))
                         (__locat __tmp17573))
                       '#f)))
              (declare (not safe))
              (##make-source _e17159_ __tmp17572))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17159_ 'gerbil#AST::t))
                (let ((__tmp17571
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17159_ '1 AST::t '#f)))
                      (__tmp17569
                       (let ((__tmp17570
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17159_))))
                         (declare (not safe))
                         (__locat __tmp17570))))
                  (declare (not safe))
                  (##make-source __tmp17571 __tmp17569))
                (error '"BUG! Cannot sourcify object" _e17159_)))))
    (define __SRC__0
      (lambda (_e17168_)
        (let ((_src-stx17170_ '#f))
          (declare (not safe))
          (__SRC__% _e17168_ _src-stx17170_))))
    (define __SRC
      (lambda _g17575_
        (let ((_g17574_ (let () (declare (not safe)) (##length _g17575_))))
          (cond ((let () (declare (not safe)) (##fx= _g17574_ 1))
                 (apply (lambda (_e17168_)
                          (let () (declare (not safe)) (__SRC__0 _e17168_)))
                        _g17575_))
                ((let () (declare (not safe)) (##fx= _g17574_ 2))
                 (apply (lambda (_e17172_ _src-stx17173_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17172_ _src-stx17173_)))
                        _g17575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17575_))))))
    (define __locat
      (lambda (_loc17156_)
        (if (let () (declare (not safe)) (##locat? _loc17156_))
            _loc17156_
            '#f)))
    (define __check-values
      (lambda (_obj17151_ _k17152_)
        (let ((_count17154_
               (if (let () (declare (not safe)) (##values? _obj17151_))
                   (let () (declare (not safe)) (##vector-length _obj17151_))
                   '1)))
          (if (fx= _count17154_ _k17152_)
              '#!void
              (error (if (fx< _count17154_ _k17152_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17151_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17151_))
                         _obj17151_)
                     _k17152_)))))
    (define __compile
      (lambda (_stx17121_)
        (let* ((_$e17123_ _stx17121_)
               (_$E1712517131_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17123_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17123_))
              (let* ((_$tgt1712617134_
                      (let () (declare (not safe)) (__AST-e _$e17123_)))
                     (_$hd1712717137_
                      (let () (declare (not safe)) (##car _$tgt1712617134_)))
                     (_$tl1712817140_
                      (let () (declare (not safe)) (##cdr _$tgt1712617134_))))
                (let* ((_form17144_ _$hd1712717137_)
                       (_$e17146_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17144_))))
                  (if _$e17146_
                      ((lambda (_bind17149_)
                         ((##structure-ref _bind17149_ '1 __syntax::t '#f)
                          _stx17121_))
                       _$e17146_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx17121_
                         _form17144_)))))
              (let () (declare (not safe)) (_$E1712517131_))))))
    (define __compile-error__%
      (lambda (_stx17108_ _detail17109_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17108_
           _detail17109_))))
    (define __compile-error__0
      (lambda (_stx17114_)
        (let ((_detail17116_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17114_ _detail17116_))))
    (define __compile-error
      (lambda _g17577_
        (let ((_g17576_ (let () (declare (not safe)) (##length _g17577_))))
          (cond ((let () (declare (not safe)) (##fx= _g17576_ 1))
                 (apply (lambda (_stx17114_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17114_)))
                        _g17577_))
                ((let () (declare (not safe)) (##fx= _g17576_ 2))
                 (apply (lambda (_stx17118_ _detail17119_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17118_ _detail17119_)))
                        _g17577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17577_))))))
    (define __compile-ignore%
      (lambda (_stx17105_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17105_))))
    (define __compile-begin%
      (lambda (_stx17080_)
        (let* ((_$e17082_ _stx17080_)
               (_$E1708417090_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17082_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17082_))
              (let* ((_$tgt1708517093_
                      (let () (declare (not safe)) (__AST-e _$e17082_)))
                     (_$hd1708617096_
                      (let () (declare (not safe)) (##car _$tgt1708517093_)))
                     (_$tl1708717099_
                      (let () (declare (not safe)) (##cdr _$tgt1708517093_))))
                (let* ((_body17103_ _$tl1708717099_)
                       (__tmp17578
                        (let ((__tmp17579 (map __compile _body17103_)))
                          (declare (not safe))
                          (cons 'begin __tmp17579))))
                  (declare (not safe))
                  (__SRC__% __tmp17578 _stx17080_)))
              (let () (declare (not safe)) (_$E1708417090_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17055_)
        (let* ((_$e17057_ _stx17055_)
               (_$E1705917065_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17057_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17057_))
              (let* ((_$tgt1706017068_
                      (let () (declare (not safe)) (__AST-e _$e17057_)))
                     (_$hd1706117071_
                      (let () (declare (not safe)) (##car _$tgt1706017068_)))
                     (_$tl1706217074_
                      (let () (declare (not safe)) (##cdr _$tgt1706017068_))))
                (let* ((_body17078_ _$tl1706217074_)
                       (__tmp17580
                        (let ((__tmp17581
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17078_))))
                          (declare (not safe))
                          (cons 'begin __tmp17581))))
                  (declare (not safe))
                  (__SRC__% __tmp17580 _stx17055_)))
              (let () (declare (not safe)) (_$E1705917065_))))))
    (define __compile-import%
      (lambda (_stx17030_)
        (let* ((_$e17032_ _stx17030_)
               (_$E1703417040_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17032_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17032_))
              (let* ((_$tgt1703517043_
                      (let () (declare (not safe)) (__AST-e _$e17032_)))
                     (_$hd1703617046_
                      (let () (declare (not safe)) (##car _$tgt1703517043_)))
                     (_$tl1703717049_
                      (let () (declare (not safe)) (##cdr _$tgt1703517043_))))
                (let* ((_body17053_ _$tl1703717049_)
                       (__tmp17582
                        (let ((__tmp17583
                               (let ((__tmp17584
                                      (let ((__tmp17585
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17053_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17585))))
                                 (declare (not safe))
                                 (cons __tmp17584 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17583))))
                  (declare (not safe))
                  (__SRC__% __tmp17582 _stx17030_)))
              (let () (declare (not safe)) (_$E1703417040_))))))
    (define __compile-begin-annotation%
      (lambda (_stx16977_)
        (let* ((_$e16979_ _stx16977_)
               (_$E1698116993_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16979_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16979_))
              (let* ((_$tgt1698216996_
                      (let () (declare (not safe)) (__AST-e _$e16979_)))
                     (_$hd1698316999_
                      (let () (declare (not safe)) (##car _$tgt1698216996_)))
                     (_$tl1698417002_
                      (let () (declare (not safe)) (##cdr _$tgt1698216996_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1698417002_))
                    (let* ((_$tgt1698517006_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1698417002_)))
                           (_$hd1698617009_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1698517006_)))
                           (_$tl1698717012_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1698517006_))))
                      (let ((_ann17016_ _$hd1698617009_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1698717012_))
                            (let* ((_$tgt1698817018_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1698717012_)))
                                   (_$hd1698917021_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1698817018_)))
                                   (_$tl1699017024_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1698817018_))))
                              (let ((_expr17028_ _$hd1698917021_))
                                (if (let ((__tmp17586
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1699017024_))))
                                      (declare (not safe))
                                      (equal? __tmp17586 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17028_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1698116993_)))))
                            (let () (declare (not safe)) (_$E1698116993_)))))
                    (let () (declare (not safe)) (_$E1698116993_))))
              (let () (declare (not safe)) (_$E1698116993_))))))
    (define __compile-define-values%
      (lambda (_stx16868_)
        (let* ((_$e16870_ _stx16868_)
               (_$E1687216884_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16870_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16870_))
              (let* ((_$tgt1687316887_
                      (let () (declare (not safe)) (__AST-e _$e16870_)))
                     (_$hd1687416890_
                      (let () (declare (not safe)) (##car _$tgt1687316887_)))
                     (_$tl1687516893_
                      (let () (declare (not safe)) (##cdr _$tgt1687316887_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1687516893_))
                    (let* ((_$tgt1687616897_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1687516893_)))
                           (_$hd1687716900_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1687616897_)))
                           (_$tl1687816903_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1687616897_))))
                      (let ((_hd16907_ _$hd1687716900_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1687816903_))
                            (let* ((_$tgt1687916909_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1687816903_)))
                                   (_$hd1688016912_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1687916909_)))
                                   (_$tl1688116915_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1687916909_))))
                              (let ((_expr16919_ _$hd1688016912_))
                                (if (let ((__tmp17619
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1688116915_))))
                                      (declare (not safe))
                                      (equal? __tmp17619 '()))
                                    (let* ((_$e16921_ _hd16907_)
                                           (_$E1692316964_
                                            (lambda ()
                                              (let ((_$E1692416949_
                                                     (lambda ()
                                                       (let* ((_$E1692516936_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e16921_))))
                      (_ids16939_ _hd16907_)
                      (_len16941_ (length _ids16939_))
                      (_tmp16943_
                       (let ((__tmp17587 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17587))))
                 (let ((__tmp17588
                        (let ((__tmp17589
                               (let ((__tmp17606
                                      (let ((__tmp17607
                                             (let ((__tmp17608
                                                    (let ((__tmp17609
                                                           (let ((__tmp17610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr16919_))))
                     (declare (not safe))
                     (cons __tmp17610 '()))))
              (declare (not safe))
              (cons _tmp16943_ __tmp17609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17608))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17607 _stx16868_)))
                                     (__tmp17590
                                      (let ((__tmp17602
                                             (let ((__tmp17603
                                                    (let ((__tmp17604
                                                           (let ((__tmp17605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len16941_ '()))))
                     (declare (not safe))
                     (cons _tmp16943_ __tmp17605))))
              (declare (not safe))
              (cons '__check-values __tmp17604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17603
                                                _stx16868_)))
                                            (__tmp17591
                                             (let ((__tmp17592
                                                    (let ((__tmp17594
                                                           (lambda (_id16946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k16947_)
                     (if (let () (declare (not safe)) (__AST-e _id16946_))
                         (let ((__tmp17595
                                (let ((__tmp17596
                                       (let ((__tmp17601
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id16946_)))
                                             (__tmp17597
                                              (let ((__tmp17598
                                                     (let ((__tmp17599
                                                            (let ((__tmp17600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k16947_ '()))))
                      (declare (not safe))
                      (cons _tmp16943_ __tmp17600))))
               (declare (not safe))
               (cons '##vector-ref __tmp17599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17598 '()))))
                                         (declare (not safe))
                                         (cons __tmp17601 __tmp17597))))
                                  (declare (not safe))
                                  (cons 'define __tmp17596))))
                           (declare (not safe))
                           (__SRC__% __tmp17595 _stx16868_))
                         '#f)))
                  (__tmp17593 (let () (declare (not safe)) (iota _len16941_))))
              (declare (not safe))
              (filter-map2 __tmp17594 _ids16939_ __tmp17593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17592))))
                                        (declare (not safe))
                                        (cons __tmp17602 __tmp17591))))
                                 (declare (not safe))
                                 (cons __tmp17606 __tmp17590))))
                          (declare (not safe))
                          (cons 'begin __tmp17589))))
                   (declare (not safe))
                   (__SRC__% __tmp17588 _stx16868_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e16921_))
                                                    (let* ((_$tgt1692616952_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e16921_)))
                                                           (_$hd1692716955_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1692616952_)))
                                                           (_$tl1692816958_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1692616952_))))
                                                      (let ((_id16962_
                                                             _$hd1692716955_))
                                                        (if (let ((__tmp17616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1692816958_))))
                      (declare (not safe))
                      (equal? __tmp17616 '()))
                    (let ((__tmp17611
                           (let ((__tmp17612
                                  (let ((__tmp17615
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id16962_)))
                                        (__tmp17613
                                         (let ((__tmp17614
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr16919_))))
                                           (declare (not safe))
                                           (cons __tmp17614 '()))))
                                    (declare (not safe))
                                    (cons __tmp17615 __tmp17613))))
                             (declare (not safe))
                             (cons 'define __tmp17612))))
                      (declare (not safe))
                      (__SRC__% __tmp17611 _stx16868_))
                    (let () (declare (not safe)) (_$E1692416949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1692416949_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e16921_))
                                          (let* ((_$tgt1692916967_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e16921_)))
                                                 (_$hd1693016970_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1692916967_)))
                                                 (_$tl1693116973_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1692916967_))))
                                            (if (let ((__tmp17618
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1693016970_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17618 '#f))
                                                (if (let ((__tmp17617
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1693116973_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17617 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr16919_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1692316964_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1692316964_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1692316964_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1687216884_)))))
                            (let () (declare (not safe)) (_$E1687216884_)))))
                    (let () (declare (not safe)) (_$E1687216884_))))
              (let () (declare (not safe)) (_$E1687216884_))))))
    (define __compile-head-id
      (lambda (_e16866_)
        (let ((__tmp17620
               (if (let () (declare (not safe)) (__AST-e _e16866_))
                   _e16866_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17620))))
    (define __compile-lambda-head
      (lambda (_hd16823_)
        (let _recur16825_ ((_rest16827_ _hd16823_))
          (let* ((_$e16829_ _rest16827_)
                 (_$E1683116849_
                  (lambda ()
                    (let ((_$E1683216846_
                           (lambda ()
                             (let* ((_$E1683316841_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e16829_))))
                                    (_tail16844_ _$e16829_))
                               (declare (not safe))
                               (__compile-head-id _tail16844_)))))
                      (if (let ((__tmp17621
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16829_))))
                            (declare (not safe))
                            (equal? __tmp17621 '()))
                          '()
                          (let () (declare (not safe)) (_$E1683216846_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16829_))
                (let* ((_$tgt1683416852_
                        (let () (declare (not safe)) (__AST-e _$e16829_)))
                       (_$hd1683516855_
                        (let () (declare (not safe)) (##car _$tgt1683416852_)))
                       (_$tl1683616858_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1683416852_))))
                  (let* ((_hd16862_ _$hd1683516855_)
                         (_rest16864_ _$tl1683616858_))
                    (let ((__tmp17623
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16862_)))
                          (__tmp17622
                           (let ()
                             (declare (not safe))
                             (_recur16825_ _rest16864_))))
                      (declare (not safe))
                      (cons __tmp17623 __tmp17622))))
                (let () (declare (not safe)) (_$E1683116849_)))))))
    (define __compile-lambda%
      (lambda (_stx16770_)
        (let* ((_$e16772_ _stx16770_)
               (_$E1677416786_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16772_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16772_))
              (let* ((_$tgt1677516789_
                      (let () (declare (not safe)) (__AST-e _$e16772_)))
                     (_$hd1677616792_
                      (let () (declare (not safe)) (##car _$tgt1677516789_)))
                     (_$tl1677716795_
                      (let () (declare (not safe)) (##cdr _$tgt1677516789_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1677716795_))
                    (let* ((_$tgt1677816799_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1677716795_)))
                           (_$hd1677916802_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1677816799_)))
                           (_$tl1678016805_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1677816799_))))
                      (let ((_hd16809_ _$hd1677916802_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1678016805_))
                            (let* ((_$tgt1678116811_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1678016805_)))
                                   (_$hd1678216814_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1678116811_)))
                                   (_$tl1678316817_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1678116811_))))
                              (let ((_body16821_ _$hd1678216814_))
                                (if (let ((__tmp17629
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1678316817_))))
                                      (declare (not safe))
                                      (equal? __tmp17629 '()))
                                    (let ((__tmp17624
                                           (let ((__tmp17625
                                                  (let ((__tmp17628
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16809_)))
                                                        (__tmp17626
                                                         (let ((__tmp17627
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16821_))))
                   (declare (not safe))
                   (cons __tmp17627 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17628
                                                          __tmp17626))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17625))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17624 _stx16770_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1677416786_)))))
                            (let () (declare (not safe)) (_$E1677416786_)))))
                    (let () (declare (not safe)) (_$E1677416786_))))
              (let () (declare (not safe)) (_$E1677416786_))))))
    (define __compile-case-lambda%
      (lambda (_stx16562_)
        (letrec ((_variadic?16564_
                  (lambda (_hd16735_)
                    (let* ((_$e16737_ _hd16735_)
                           (_$E1673916755_
                            (lambda ()
                              (let ((_$E1674016752_
                                     (lambda ()
                                       (let ((_$E1674116749_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e16737_)))))
                                         '#t))))
                                (if (let ((__tmp17630
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16737_))))
                                      (declare (not safe))
                                      (equal? __tmp17630 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1674016752_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16737_))
                          (let* ((_$tgt1674216758_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16737_)))
                                 (_$hd1674316761_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1674216758_)))
                                 (_$tl1674416764_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1674216758_))))
                            (let ((_rest16768_ _$tl1674416764_))
                              (declare (not safe))
                              (_variadic?16564_ _rest16768_)))
                          (let () (declare (not safe)) (_$E1673916755_))))))
                 (_arity16565_
                  (lambda (_hd16700_)
                    (let _lp16702_ ((_rest16704_ _hd16700_) (_k16705_ '0))
                      (let* ((_$e16707_ _rest16704_)
                             (_$E1670916720_
                              (lambda ()
                                (let ((_$E1671016717_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e16707_)))))
                                  _k16705_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16707_))
                            (let* ((_$tgt1671116723_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16707_)))
                                   (_$hd1671216726_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1671116723_)))
                                   (_$tl1671316729_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1671116723_))))
                              (let* ((_rest16733_ _$tl1671316729_)
                                     (__tmp17631
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16705_ '1))))
                                (declare (not safe))
                                (_lp16702_ _rest16733_ __tmp17631)))
                            (let () (declare (not safe)) (_$E1670916720_)))))))
                 (_generate16566_
                  (lambda (_rest16627_ _args16628_ _len16629_)
                    (let* ((_$e16631_ _rest16627_)
                           (_$E1663316644_
                            (lambda ()
                              (let* ((_$E1663416641_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e16631_))))
                                     (__tmp17632
                                      (let ((__tmp17633
                                             (let ((__tmp17634
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16628_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17634))))
                                        (declare (not safe))
                                        (cons 'error __tmp17633))))
                                (declare (not safe))
                                (__SRC__% __tmp17632 _stx16562_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16631_))
                          (let* ((_$tgt1663516647_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16631_)))
                                 (_$hd1663616650_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1663516647_)))
                                 (_$tl1663716653_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1663516647_))))
                            (let* ((_clause16657_ _$hd1663616650_)
                                   (_rest16659_ _$tl1663716653_)
                                   (_$e16661_ _clause16657_)
                                   (_$E1666316672_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e16661_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16661_))
                                  (let* ((_$tgt1666416675_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16661_)))
                                         (_$hd1666516678_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1666416675_)))
                                         (_$tl1666616681_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1666416675_))))
                                    (let ((_hd16685_ _$hd1666516678_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1666616681_))
                                          (let* ((_$tgt1666716687_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1666616681_)))
                                                 (_$hd1666816690_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1666716687_)))
                                                 (_$tl1666916693_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1666716687_))))
                                            (if (let ((__tmp17649
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1666916693_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17649 '()))
                                                (let ((_clen16697_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16565_
                                                          _hd16685_)))
                                                      (_cmp16698_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16564_
                                                              _hd16685_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17635
                                                         (let ((__tmp17636
                                                                (let ((__tmp17646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17647
                                      (let ((__tmp17648
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16697_ '()))))
                                        (declare (not safe))
                                        (cons _len16629_ __tmp17648))))
                                 (declare (not safe))
                                 (cons _cmp16698_ __tmp17647)))
                              (__tmp17637
                               (let ((__tmp17640
                                      (let ((__tmp17641
                                             (let ((__tmp17642
                                                    (let ((__tmp17644
                                                           (let ((__tmp17645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16657_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17645)))
                  (__tmp17643
                   (let () (declare (not safe)) (cons _args16628_ '()))))
              (declare (not safe))
              (cons __tmp17644 __tmp17643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17642))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17641 _stx16562_)))
                                     (__tmp17638
                                      (let ((__tmp17639
                                             (let ()
                                               (declare (not safe))
                                               (_generate16566_
                                                _rest16659_
                                                _args16628_
                                                _len16629_))))
                                        (declare (not safe))
                                        (cons __tmp17639 '()))))
                                 (declare (not safe))
                                 (cons __tmp17640 __tmp17638))))
                          (declare (not safe))
                          (cons __tmp17646 __tmp17637))))
                   (declare (not safe))
                   (cons 'if __tmp17636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17635
                                                     _stx16562_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1666316672_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1666316672_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1666316672_)))))
                          (let () (declare (not safe)) (_$E1663316644_)))))))
          (let* ((_$e16568_ _stx16562_)
                 (_$E1657016602_
                  (lambda ()
                    (let ((_$E1657116584_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e16568_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16568_))
                          (let* ((_$tgt1657216587_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16568_)))
                                 (_$hd1657316590_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1657216587_)))
                                 (_$tl1657416593_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1657216587_))))
                            (let ((_clauses16597_ _$tl1657416593_))
                              (let ((_args16599_
                                     (let ((__tmp17650 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17650 _stx16562_)))
                                    (_len16600_
                                     (let ((__tmp17651 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17651 _stx16562_))))
                                (let ((__tmp17652
                                       (let ((__tmp17653
                                              (let ((__tmp17654
                                                     (let ((__tmp17655
                                                            (let ((__tmp17656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17657
                                  (let ((__tmp17660
                                         (let ((__tmp17661
                                                (let ((__tmp17662
                                                       (let ((__tmp17663
                                                              (let ((__tmp17664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17665
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16599_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17665))))
                        (declare (not safe))
                        (__SRC__% __tmp17664 _stx16562_))))
                 (declare (not safe))
                 (cons __tmp17663 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16600_
                                                        __tmp17662))))
                                           (declare (not safe))
                                           (cons __tmp17661 '())))
                                        (__tmp17658
                                         (let ((__tmp17659
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16566_
                                                   _clauses16597_
                                                   _args16599_
                                                   _len16600_))))
                                           (declare (not safe))
                                           (cons __tmp17659 '()))))
                                    (declare (not safe))
                                    (cons __tmp17660 __tmp17658))))
                             (declare (not safe))
                             (cons 'let __tmp17657))))
                      (declare (not safe))
                      (__SRC__% __tmp17656 _stx16562_))))
               (declare (not safe))
               (cons __tmp17655 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16599_
                                                      __tmp17654))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17653))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17652 _stx16562_)))))
                          (let () (declare (not safe)) (_$E1657116584_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16568_))
                (let* ((_$tgt1657516605_
                        (let () (declare (not safe)) (__AST-e _$e16568_)))
                       (_$hd1657616608_
                        (let () (declare (not safe)) (##car _$tgt1657516605_)))
                       (_$tl1657716611_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1657516605_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1657716611_))
                      (let* ((_$tgt1657816615_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1657716611_)))
                             (_$hd1657916618_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1657816615_)))
                             (_$tl1658016621_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1657816615_))))
                        (let ((_clause16625_ _$hd1657916618_))
                          (if (let ((__tmp17667
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1658016621_))))
                                (declare (not safe))
                                (equal? __tmp17667 '()))
                              (let ((__tmp17666
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16625_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17666))
                              (let () (declare (not safe)) (_$E1657016602_)))))
                      (let () (declare (not safe)) (_$E1657016602_))))
                (let () (declare (not safe)) (_$E1657016602_)))))))
    (define __compile-let-form
      (lambda (_stx16331_ _compile-simple16332_ _compile-values16333_)
        (letrec ((_simple-bind?16335_
                  (lambda (_hd16520_)
                    (let* ((_hd1652116531_ _hd16520_)
                           (_else1652416539_ (lambda () '#f)))
                      (let ((_K1652716552_ (lambda (_id16550_) '#t))
                            (_K1652616544_ (lambda () '#t)))
                        (let ((_try-match1652316547_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1652116531_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1652616544_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1652416539_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1652116531_))
                              (let ((_tl1652916557_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1652116531_)))
                                    (_hd1652816555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1652116531_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1652916557_))
                                    (let ((_id16560_ _hd1652816555_))
                                      (declare (not safe))
                                      (_K1652716552_ _id16560_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1652316547_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1652316547_))))))))
                 (_car-e16336_
                  (lambda (_hd16518_)
                    (if (let () (declare (not safe)) (pair? _hd16518_))
                        (car _hd16518_)
                        _hd16518_))))
          (let* ((_$e16338_ _stx16331_)
                 (_$E1634016483_
                  (lambda ()
                    (let ((_$E1634116363_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e16338_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16338_))
                          (let* ((_$tgt1634216366_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16338_)))
                                 (_$hd1634316369_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1634216366_)))
                                 (_$tl1634416372_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1634216366_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1634416372_))
                                (let* ((_$tgt1634516376_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1634416372_)))
                                       (_$hd1634616379_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1634516376_)))
                                       (_$tl1634716382_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1634516376_))))
                                  (let ((_hd16386_ _$hd1634616379_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1634716382_))
                                        (let* ((_$tgt1634816388_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1634716382_)))
                                               (_$hd1634916391_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1634816388_)))
                                               (_$tl1635016394_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1634816388_))))
                                          (let ((_body16398_ _$hd1634916391_))
                                            (if (let ((__tmp17670
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1635016394_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17670 '()))
                                                (let* ((_hd-ids16438_
                                                        (map (lambda (_bind16400_)
                                                               (let* ((_$e16402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16400_)
                              (_$E1640416413_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e16402_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16402_))
                             (let* ((_$tgt1640516416_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16402_)))
                                    (_$hd1640616419_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1640516416_)))
                                    (_$tl1640716422_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1640516416_))))
                               (let ((_ids16426_ _$hd1640616419_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1640716422_))
                                     (let* ((_$tgt1640816428_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1640716422_)))
                                            (_$hd1640916431_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1640816428_)))
                                            (_$tl1641016434_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1640816428_))))
                                       (if (let ((__tmp17668
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1641016434_))))
                                             (declare (not safe))
                                             (equal? __tmp17668 '()))
                                           _ids16426_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1640416413_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1640416413_)))))
                             (let () (declare (not safe)) (_$E1640416413_)))))
                     _hd16386_))
               (_exprs16478_
                (map (lambda (_bind16440_)
                       (let* ((_$e16442_ _bind16440_)
                              (_$E1644416453_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e16442_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16442_))
                             (let* ((_$tgt1644516456_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16442_)))
                                    (_$hd1644616459_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1644516456_)))
                                    (_$tl1644716462_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1644516456_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1644716462_))
                                   (let* ((_$tgt1644816466_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1644716462_)))
                                          (_$hd1644916469_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1644816466_)))
                                          (_$tl1645016472_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1644816466_))))
                                     (let ((_expr16476_ _$hd1644916469_))
                                       (if (let ((__tmp17669
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1645016472_))))
                                             (declare (not safe))
                                             (equal? __tmp17669 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16476_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1644416453_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1644416453_))))
                             (let () (declare (not safe)) (_$E1644416453_)))))
                     _hd16386_))
               (_body16480_
                (let () (declare (not safe)) (__compile _body16398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16438_))
              (_compile-simple16332_
               (map _car-e16336_ _hd-ids16438_)
               _exprs16478_
               _body16480_)
              (_compile-values16333_ _hd-ids16438_ _exprs16478_ _body16480_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1634116363_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1634116363_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1634116363_))))
                          (let () (declare (not safe)) (_$E1634116363_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16338_))
                (let* ((_$tgt1635116486_
                        (let () (declare (not safe)) (__AST-e _$e16338_)))
                       (_$hd1635216489_
                        (let () (declare (not safe)) (##car _$tgt1635116486_)))
                       (_$tl1635316492_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1635116486_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1635316492_))
                      (let* ((_$tgt1635416496_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1635316492_)))
                             (_$hd1635516499_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1635416496_)))
                             (_$tl1635616502_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1635416496_))))
                        (if (let ((__tmp17672
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1635516499_))))
                              (declare (not safe))
                              (equal? __tmp17672 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1635616502_))
                                (let* ((_$tgt1635716506_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1635616502_)))
                                       (_$hd1635816509_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1635716506_)))
                                       (_$tl1635916512_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1635716506_))))
                                  (let ((_body16516_ _$hd1635816509_))
                                    (if (let ((__tmp17671
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1635916512_))))
                                          (declare (not safe))
                                          (equal? __tmp17671 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16516_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1634016483_)))))
                                (let () (declare (not safe)) (_$E1634016483_)))
                            (let () (declare (not safe)) (_$E1634016483_))))
                      (let () (declare (not safe)) (_$E1634016483_))))
                (let () (declare (not safe)) (_$E1634016483_)))))))
    (define __compile-let-values%
      (lambda (_stx16146_)
        (letrec ((_compile-simple16148_
                  (lambda (_hd-ids16327_ _exprs16328_ _body16329_)
                    (let ((__tmp17673
                           (let ((__tmp17674
                                  (let ((__tmp17676
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16327_)
                                              _exprs16328_))
                                        (__tmp17675
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16329_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17676 __tmp17675))))
                             (declare (not safe))
                             (cons 'let __tmp17674))))
                      (declare (not safe))
                      (__SRC__% __tmp17673 _stx16146_))))
                 (_compile-values16149_
                  (lambda (_hd-ids16245_ _exprs16246_ _body16247_)
                    (let _lp16249_ ((_rest16251_ _hd-ids16245_)
                                    (_exprs16252_ _exprs16246_)
                                    (_bind16253_ '())
                                    (_post16254_ '()))
                      (let* ((_rest1625516269_ _rest16251_)
                             (_else1625816277_
                              (lambda ()
                                (let ((__tmp17677
                                       (let ((__tmp17678
                                              (let ((__tmp17681
                                                     (reverse _bind16253_))
                                                    (__tmp17679
                                                     (let ((__tmp17680
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16150_
                                                               _post16254_
                                                               _body16247_))))
                                                       (declare (not safe))
                                                       (cons __tmp17680 '()))))
                                                (declare (not safe))
                                                (cons __tmp17681 __tmp17679))))
                                         (declare (not safe))
                                         (cons 'let __tmp17678))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17677 _stx16146_)))))
                        (let ((_K1626316310_
                               (lambda (_rest16307_ _id16308_)
                                 (let ((__tmp17687 (cdr _exprs16252_))
                                       (__tmp17682
                                        (let ((__tmp17683
                                               (let ((__tmp17686
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16308_)))
                                                     (__tmp17684
                                                      (let ((__tmp17685
                                                             (car _exprs16252_)))
                                                        (declare (not safe))
                                                        (cons __tmp17685
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17686
                                                       __tmp17684))))
                                          (declare (not safe))
                                          (cons __tmp17683 _bind16253_))))
                                   (declare (not safe))
                                   (_lp16249_
                                    _rest16307_
                                    __tmp17687
                                    __tmp17682
                                    _post16254_))))
                              (_K1626016292_
                               (lambda (_rest16281_ _hd16282_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16282_))
                                     (let ((__tmp17708 (cdr _exprs16252_))
                                           (__tmp17701
                                            (let ((__tmp17702
                                                   (let ((__tmp17707
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16282_)))
                                                         (__tmp17703
                                                          (let ((__tmp17704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17705
                                (let ((__tmp17706 (car _exprs16252_)))
                                  (declare (not safe))
                                  (cons __tmp17706 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17705))))
                    (declare (not safe))
                    (cons __tmp17704 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17707
                                                           __tmp17703))))
                                              (declare (not safe))
                                              (cons __tmp17702 _bind16253_))))
                                       (declare (not safe))
                                       (_lp16249_
                                        _rest16281_
                                        __tmp17708
                                        __tmp17701
                                        _post16254_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16282_))
                                         (let* ((_len16284_ (length _hd16282_))
                                                (_tmp16286_
                                                 (let ((__tmp17688 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17688))))
                                           (let ((__tmp17700
                                                  (cdr _exprs16252_))
                                                 (__tmp17696
                                                  (let ((__tmp17697
                                                         (let ((__tmp17698
                                                                (let ((__tmp17699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16252_)))
                          (declare (not safe))
                          (cons __tmp17699 '()))))
                   (declare (not safe))
                   (cons _tmp16286_ __tmp17698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17697
                                                          _bind16253_)))
                                                 (__tmp17689
                                                  (let ((__tmp17690
                                                         (let ((__tmp17691
                                                                (let ((__tmp17692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17694
                                      (lambda (_id16289_ _k16290_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16289_))
                                            (let ((__tmp17695
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16289_))))
                                              (declare (not safe))
                                              (cons __tmp17695 _k16290_))
                                            '#f)))
                                     (__tmp17693
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16284_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17694
                                  _hd16282_
                                  __tmp17693))))
                          (declare (not safe))
                          (cons _len16284_ __tmp17692))))
                   (declare (not safe))
                   (cons _tmp16286_ __tmp17691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17690
                                                          _post16254_))))
                                             (declare (not safe))
                                             (_lp16249_
                                              _rest16281_
                                              __tmp17700
                                              __tmp17696
                                              __tmp17689)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16146_
                                            _hd16282_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1625516269_))
                              (let ((_tl1626516315_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1625516269_)))
                                    (_hd1626416313_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1625516269_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1626416313_))
                                    (let ((_tl1626716320_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1626416313_)))
                                          (_hd1626616318_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1626416313_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1626716320_))
                                          (let ((_id16323_ _hd1626616318_)
                                                (_rest16325_ _tl1626516315_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1626316310_
                                               _rest16325_
                                               _id16323_)))
                                          (let ((_hd16300_ _hd1626416313_)
                                                (_rest16302_ _tl1626516315_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1626016292_
                                               _rest16302_
                                               _hd16300_)))))
                                    (let ((_hd16300_ _hd1626416313_)
                                          (_rest16302_ _tl1626516315_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1626016292_
                                         _rest16302_
                                         _hd16300_)))))
                              (let ()
                                (declare (not safe))
                                (_else1625816277_))))))))
                 (_compile-post16150_
                  (lambda (_post16152_ _body16153_)
                    (let _lp16155_ ((_rest16157_ _post16152_)
                                    (_check16158_ '())
                                    (_bind16159_ '()))
                      (let* ((_rest1616016172_ _rest16157_)
                             (_else1616216180_
                              (lambda ()
                                (let ((__tmp17709
                                       (let ((__tmp17710
                                              (let ((__tmp17711
                                                     (let ((__tmp17712
                                                            (let ((__tmp17713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17714
                                  (let ((__tmp17715
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16153_ '()))))
                                    (declare (not safe))
                                    (cons _bind16159_ __tmp17715))))
                             (declare (not safe))
                             (cons 'let __tmp17714))))
                      (declare (not safe))
                      (__SRC__% __tmp17713 _stx16146_))))
               (declare (not safe))
               (cons __tmp17712 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17711
                                                        _check16158_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17710))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17709 _stx16146_))))
                             (_K1616416219_
                              (lambda (_rest16183_
                                       _init16184_
                                       _len16185_
                                       _tmp16186_)
                                (let ((__tmp17723
                                       (let ((__tmp17724
                                              (let ((__tmp17725
                                                     (let ((__tmp17726
                                                            (let ((__tmp17727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16185_ '()))))
                      (declare (not safe))
                      (cons _tmp16186_ __tmp17727))))
               (declare (not safe))
               (cons '__check-values __tmp17726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17725
                                                 _stx16146_))))
                                         (declare (not safe))
                                         (cons __tmp17724 _check16158_)))
                                      (__tmp17716
                                       (let ((__tmp17717
                                              (lambda (_hd16188_ _r16189_)
                                                (let* ((_hd1619016197_
                                                        _hd16188_)
                                                       (_E1619216201_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1619016197_)))
               (_K1619316207_
                (lambda (_k16204_ _id16205_)
                  (let ((__tmp17718
                         (let ((__tmp17719
                                (let ((__tmp17720
                                       (let ((__tmp17721
                                              (let ((__tmp17722
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16204_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16186_ __tmp17722))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17721))))
                                  (declare (not safe))
                                  (cons __tmp17720 '()))))
                           (declare (not safe))
                           (cons _id16205_ __tmp17719))))
                    (declare (not safe))
                    (cons __tmp17718 _r16189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1619016197_))
                                                      (let ((_hd1619416210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1619016197_)))
                    (_tl1619516212_
                     (let () (declare (not safe)) (##cdr _hd1619016197_))))
                (let* ((_id16215_ _hd1619416210_) (_k16217_ _tl1619516212_))
                  (declare (not safe))
                  (_K1619316207_ _k16217_ _id16215_)))
              (let () (declare (not safe)) (_E1619216201_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17717
                                                 _bind16159_
                                                 _init16184_))))
                                  (declare (not safe))
                                  (_lp16155_
                                   _rest16183_
                                   __tmp17723
                                   __tmp17716)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1616016172_))
                            (let ((_hd1616516222_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1616016172_)))
                                  (_tl1616616224_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1616016172_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1616516222_))
                                  (let ((_hd1616716227_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1616516222_)))
                                        (_tl1616816229_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1616516222_))))
                                    (let ((_tmp16232_ _hd1616716227_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1616816229_))
                                          (let ((_hd1616916234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1616816229_)))
                                                (_tl1617016236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1616816229_))))
                                            (let* ((_len16239_ _hd1616916234_)
                                                   (_init16241_ _tl1617016236_)
                                                   (_rest16243_
                                                    _tl1616616224_))
                                              (declare (not safe))
                                              (_K1616416219_
                                               _rest16243_
                                               _init16241_
                                               _len16239_
                                               _tmp16232_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1616216180_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1616216180_))))
                            (let ()
                              (declare (not safe))
                              (_else1616216180_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16146_
             _compile-simple16148_
             _compile-values16149_)))))
    (define __compile-letrec-values%
      (lambda (_stx15946_)
        (letrec ((_compile-simple15948_
                  (lambda (_hd-ids16142_ _exprs16143_ _body16144_)
                    (let ((__tmp17728
                           (let ((__tmp17729
                                  (let ((__tmp17731
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16142_)
                                              _exprs16143_))
                                        (__tmp17730
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16144_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17731 __tmp17730))))
                             (declare (not safe))
                             (cons 'letrec __tmp17729))))
                      (declare (not safe))
                      (__SRC__% __tmp17728 _stx15946_))))
                 (_compile-values15949_
                  (lambda (_hd-ids16056_ _exprs16057_ _body16058_)
                    (let _lp16060_ ((_rest16062_ _hd-ids16056_)
                                    (_exprs16063_ _exprs16057_)
                                    (_pre16064_ '())
                                    (_bind16065_ '())
                                    (_post16066_ '()))
                      (let* ((_rest1606716081_ _rest16062_)
                             (_else1607016089_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner15950_
                                   _pre16064_
                                   _bind16065_
                                   _post16066_
                                   _body16058_)))))
                        (let ((_K1607516125_
                               (lambda (_rest16122_ _id16123_)
                                 (let ((__tmp17737 (cdr _exprs16063_))
                                       (__tmp17732
                                        (let ((__tmp17733
                                               (let ((__tmp17736
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16123_)))
                                                     (__tmp17734
                                                      (let ((__tmp17735
                                                             (car _exprs16063_)))
                                                        (declare (not safe))
                                                        (cons __tmp17735
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17736
                                                       __tmp17734))))
                                          (declare (not safe))
                                          (cons __tmp17733 _bind16065_))))
                                   (declare (not safe))
                                   (_lp16060_
                                    _rest16122_
                                    __tmp17737
                                    _pre16064_
                                    __tmp17732
                                    _post16066_))))
                              (_K1607216107_
                               (lambda (_rest16093_ _hd16094_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16094_))
                                     (let ((__tmp17765 (cdr _exprs16063_))
                                           (__tmp17758
                                            (let ((__tmp17759
                                                   (let ((__tmp17764
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16094_)))
                                                         (__tmp17760
                                                          (let ((__tmp17761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17762
                                (let ((__tmp17763 (car _exprs16063_)))
                                  (declare (not safe))
                                  (cons __tmp17763 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17762))))
                    (declare (not safe))
                    (cons __tmp17761 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17764
                                                           __tmp17760))))
                                              (declare (not safe))
                                              (cons __tmp17759 _bind16065_))))
                                       (declare (not safe))
                                       (_lp16060_
                                        _rest16093_
                                        __tmp17765
                                        _pre16064_
                                        __tmp17758
                                        _post16066_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16094_))
                                         (let* ((_len16096_ (length _hd16094_))
                                                (_tmp16098_
                                                 (let ((__tmp17738 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17738))))
                                           (let ((__tmp17757
                                                  (cdr _exprs16063_))
                                                 (__tmp17750
                                                  (let ((__tmp17751
                                                         (lambda (_id16101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16102_)
                   (if (let () (declare (not safe)) (__AST-e _id16101_))
                       (let ((__tmp17752
                              (let ((__tmp17756
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16101_)))
                                    (__tmp17753
                                     (let ((__tmp17754
                                            (let ((__tmp17755
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17755))))
                                       (declare (not safe))
                                       (cons __tmp17754 '()))))
                                (declare (not safe))
                                (cons __tmp17756 __tmp17753))))
                         (declare (not safe))
                         (cons __tmp17752 _r16102_))
                       _r16102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17751
                                                            _pre16064_
                                                            _hd16094_)))
                                                 (__tmp17746
                                                  (let ((__tmp17747
                                                         (let ((__tmp17748
                                                                (let ((__tmp17749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16063_)))
                          (declare (not safe))
                          (cons __tmp17749 '()))))
                   (declare (not safe))
                   (cons _tmp16098_ __tmp17748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17747
                                                          _bind16065_)))
                                                 (__tmp17739
                                                  (let ((__tmp17740
                                                         (let ((__tmp17741
                                                                (let ((__tmp17742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17744
                                      (lambda (_id16104_ _k16105_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16104_))
                                            (let ((__tmp17745
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16104_))))
                                              (declare (not safe))
                                              (cons __tmp17745 _k16105_))
                                            '#f)))
                                     (__tmp17743
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16096_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17744
                                  _hd16094_
                                  __tmp17743))))
                          (declare (not safe))
                          (cons _len16096_ __tmp17742))))
                   (declare (not safe))
                   (cons _tmp16098_ __tmp17741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17740
                                                          _post16066_))))
                                             (declare (not safe))
                                             (_lp16060_
                                              _rest16093_
                                              __tmp17757
                                              __tmp17750
                                              __tmp17746
                                              __tmp17739)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15946_
                                            _hd16094_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1606716081_))
                              (let ((_tl1607716130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1606716081_)))
                                    (_hd1607616128_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1606716081_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1607616128_))
                                    (let ((_tl1607916135_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1607616128_)))
                                          (_hd1607816133_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1607616128_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1607916135_))
                                          (let ((_id16138_ _hd1607816133_)
                                                (_rest16140_ _tl1607716130_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1607516125_
                                               _rest16140_
                                               _id16138_)))
                                          (let ((_hd16115_ _hd1607616128_)
                                                (_rest16117_ _tl1607716130_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1607216107_
                                               _rest16117_
                                               _hd16115_)))))
                                    (let ((_hd16115_ _hd1607616128_)
                                          (_rest16117_ _tl1607716130_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1607216107_
                                         _rest16117_
                                         _hd16115_)))))
                              (let ()
                                (declare (not safe))
                                (_else1607016089_))))))))
                 (_compile-inner15950_
                  (lambda (_pre16051_ _bind16052_ _post16053_ _body16054_)
                    (if (let () (declare (not safe)) (null? _pre16051_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind15951_
                           _bind16052_
                           _post16053_
                           _body16054_))
                        (let ((__tmp17766
                               (let ((__tmp17767
                                      (let ((__tmp17770 (reverse _pre16051_))
                                            (__tmp17768
                                             (let ((__tmp17769
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind15951_
                                                       _bind16052_
                                                       _post16053_
                                                       _body16054_))))
                                               (declare (not safe))
                                               (cons __tmp17769 '()))))
                                        (declare (not safe))
                                        (cons __tmp17770 __tmp17768))))
                                 (declare (not safe))
                                 (cons 'let __tmp17767))))
                          (declare (not safe))
                          (__SRC__% __tmp17766 _stx15946_)))))
                 (_compile-bind15951_
                  (lambda (_bind16047_ _post16048_ _body16049_)
                    (let ((__tmp17771
                           (let ((__tmp17772
                                  (let ((__tmp17775 (reverse _bind16047_))
                                        (__tmp17773
                                         (let ((__tmp17774
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15952_
                                                   _post16048_
                                                   _body16049_))))
                                           (declare (not safe))
                                           (cons __tmp17774 '()))))
                                    (declare (not safe))
                                    (cons __tmp17775 __tmp17773))))
                             (declare (not safe))
                             (cons 'letrec __tmp17772))))
                      (declare (not safe))
                      (__SRC__% __tmp17771 _stx15946_))))
                 (_compile-post15952_
                  (lambda (_post15954_ _body15955_)
                    (let _lp15957_ ((_rest15959_ _post15954_)
                                    (_check15960_ '())
                                    (_bind15961_ '()))
                      (let* ((_rest1596215974_ _rest15959_)
                             (_else1596415982_
                              (lambda ()
                                (let ((__tmp17776
                                       (let ((__tmp17777
                                              (let ((__tmp17778
                                                     (let ((__tmp17779
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body15955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17779 _bind15961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17778
                                                        _check15960_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17777))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17776 _stx15946_))))
                             (_K1596616021_
                              (lambda (_rest15985_
                                       _init15986_
                                       _len15987_
                                       _tmp15988_)
                                (let ((__tmp17788
                                       (let ((__tmp17789
                                              (let ((__tmp17790
                                                     (let ((__tmp17791
                                                            (let ((__tmp17792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len15987_ '()))))
                      (declare (not safe))
                      (cons _tmp15988_ __tmp17792))))
               (declare (not safe))
               (cons '__check-values __tmp17791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17790
                                                 _stx15946_))))
                                         (declare (not safe))
                                         (cons __tmp17789 _check15960_)))
                                      (__tmp17780
                                       (let ((__tmp17781
                                              (lambda (_hd15990_ _r15991_)
                                                (let* ((_hd1599215999_
                                                        _hd15990_)
                                                       (_E1599416003_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1599215999_)))
               (_K1599516009_
                (lambda (_k16006_ _id16007_)
                  (let ((__tmp17782
                         (let ((__tmp17783
                                (let ((__tmp17784
                                       (let ((__tmp17785
                                              (let ((__tmp17786
                                                     (let ((__tmp17787
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k16006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp15988_ __tmp17787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17786))))
                                         (declare (not safe))
                                         (cons __tmp17785 '()))))
                                  (declare (not safe))
                                  (cons _id16007_ __tmp17784))))
                           (declare (not safe))
                           (cons 'set! __tmp17783))))
                    (declare (not safe))
                    (cons __tmp17782 _r15991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1599215999_))
                                                      (let ((_hd1599616012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1599215999_)))
                    (_tl1599716014_
                     (let () (declare (not safe)) (##cdr _hd1599215999_))))
                (let* ((_id16017_ _hd1599616012_) (_k16019_ _tl1599716014_))
                  (declare (not safe))
                  (_K1599516009_ _k16019_ _id16017_)))
              (let () (declare (not safe)) (_E1599416003_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17781
                                                 _bind15961_
                                                 _init15986_))))
                                  (declare (not safe))
                                  (_lp15957_
                                   _rest15985_
                                   __tmp17788
                                   __tmp17780)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1596215974_))
                            (let ((_hd1596716024_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1596215974_)))
                                  (_tl1596816026_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1596215974_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1596716024_))
                                  (let ((_hd1596916029_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1596716024_)))
                                        (_tl1597016031_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1596716024_))))
                                    (let ((_tmp16034_ _hd1596916029_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1597016031_))
                                          (let ((_hd1597116036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1597016031_)))
                                                (_tl1597216038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1597016031_))))
                                            (let* ((_len16041_ _hd1597116036_)
                                                   (_init16043_ _tl1597216038_)
                                                   (_rest16045_
                                                    _tl1596816026_))
                                              (declare (not safe))
                                              (_K1596616021_
                                               _rest16045_
                                               _init16043_
                                               _len16041_
                                               _tmp16034_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1596415982_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1596415982_))))
                            (let ()
                              (declare (not safe))
                              (_else1596415982_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15946_
             _compile-simple15948_
             _compile-values15949_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15701_)
        (letrec ((_compile-simple15703_
                  (lambda (_hd-ids15942_ _exprs15943_ _body15944_)
                    (let ((__tmp17793
                           (let ((__tmp17794
                                  (let ((__tmp17796
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids15942_)
                                              _exprs15943_))
                                        (__tmp17795
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15944_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17796 __tmp17795))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17794))))
                      (declare (not safe))
                      (__SRC__% __tmp17793 _stx15701_))))
                 (_compile-values15704_
                  (lambda (_hd-ids15853_ _exprs15854_ _body15855_)
                    (let _lp15857_ ((_rest15859_ _hd-ids15853_)
                                    (_exprs15860_ _exprs15854_)
                                    (_bind15861_ '())
                                    (_post15862_ '()))
                      (let* ((_rest1586315877_ _rest15859_)
                             (_else1586615885_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15705_
                                   _bind15861_
                                   _post15862_
                                   _body15855_)))))
                        (let ((_K1587115925_
                               (lambda (_rest15920_ _hd15921_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15921_))
                                     (let ((_id15923_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15921_))))
                                       (let ((__tmp17811 (cdr _exprs15860_))
                                             (__tmp17806
                                              (let ((__tmp17807
                                                     (let ((__tmp17808
                                                            (let ((__tmp17809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17810
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17810))))
                      (declare (not safe))
                      (cons __tmp17809 '()))))
               (declare (not safe))
               (cons _id15923_ __tmp17808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17807 _bind15861_)))
                                             (__tmp17802
                                              (let ((__tmp17803
                                                     (let ((__tmp17804
                                                            (let ((__tmp17805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs15860_)))
                      (declare (not safe))
                      (cons __tmp17805 '()))))
               (declare (not safe))
               (cons _id15923_ __tmp17804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17803
                                                      _post15862_))))
                                         (declare (not safe))
                                         (_lp15857_
                                          _rest15920_
                                          __tmp17811
                                          __tmp17806
                                          __tmp17802)))
                                     (let ((__tmp17801 (cdr _exprs15860_))
                                           (__tmp17797
                                            (let ((__tmp17798
                                                   (let ((__tmp17799
                                                          (let ((__tmp17800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs15860_)))
                    (declare (not safe))
                    (cons __tmp17800 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17799))))
                                              (declare (not safe))
                                              (cons __tmp17798 _post15862_))))
                                       (declare (not safe))
                                       (_lp15857_
                                        _rest15920_
                                        __tmp17801
                                        _bind15861_
                                        __tmp17797)))))
                              (_K1586815905_
                               (lambda (_rest15889_ _hd15890_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15890_))
                                     (let ((_id15892_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15890_))))
                                       (let ((__tmp17847 (cdr _exprs15860_))
                                             (__tmp17842
                                              (let ((__tmp17843
                                                     (let ((__tmp17844
                                                            (let ((__tmp17845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17846
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17846))))
                      (declare (not safe))
                      (cons __tmp17845 '()))))
               (declare (not safe))
               (cons _id15892_ __tmp17844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17843 _bind15861_)))
                                             (__tmp17836
                                              (let ((__tmp17837
                                                     (let ((__tmp17838
                                                            (let ((__tmp17839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17840
                                  (let ((__tmp17841 (car _exprs15860_)))
                                    (declare (not safe))
                                    (cons __tmp17841 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17840))))
                      (declare (not safe))
                      (cons __tmp17839 '()))))
               (declare (not safe))
               (cons _id15892_ __tmp17838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17837
                                                      _post15862_))))
                                         (declare (not safe))
                                         (_lp15857_
                                          _rest15889_
                                          __tmp17847
                                          __tmp17842
                                          __tmp17836)))
                                     (if (let ((__tmp17835
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15890_))))
                                           (declare (not safe))
                                           (not __tmp17835))
                                         (let ((__tmp17834 (cdr _exprs15860_))
                                               (__tmp17830
                                                (let ((__tmp17831
                                                       (let ((__tmp17832
                                                              (let ((__tmp17833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs15860_)))
                        (declare (not safe))
                        (cons __tmp17833 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17831
                                                        _post15862_))))
                                           (declare (not safe))
                                           (_lp15857_
                                            _rest15889_
                                            __tmp17834
                                            _bind15861_
                                            __tmp17830))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15890_))
                                             (let* ((_len15894_
                                                     (length _hd15890_))
                                                    (_tmp15896_
                                                     (let ((__tmp17812
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17812))))
                                               (let ((__tmp17829
                                                      (cdr _exprs15860_))
                                                     (__tmp17822
                                                      (let ((__tmp17823
                                                             (lambda (_id15899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15900_)
                       (if (let () (declare (not safe)) (__AST-e _id15899_))
                           (let ((__tmp17824
                                  (let ((__tmp17828
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15899_)))
                                        (__tmp17825
                                         (let ((__tmp17826
                                                (let ((__tmp17827
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17827))))
                                           (declare (not safe))
                                           (cons __tmp17826 '()))))
                                    (declare (not safe))
                                    (cons __tmp17828 __tmp17825))))
                             (declare (not safe))
                             (cons __tmp17824 _r15900_))
                           _r15900_))))
                (declare (not safe))
                (foldl1 __tmp17823 _bind15861_ _hd15890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17813
                                                      (let ((__tmp17814
                                                             (let ((__tmp17815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17821 (car _exprs15860_))
                                  (__tmp17816
                                   (let ((__tmp17817
                                          (let ((__tmp17819
                                                 (lambda (_id15902_ _k15903_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15902_))
                                                       (let ((__tmp17820
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15902_))))
                 (declare (not safe))
                 (cons __tmp17820 _k15903_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17818
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15894_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17819
                                             _hd15890_
                                             __tmp17818))))
                                     (declare (not safe))
                                     (cons _len15894_ __tmp17817))))
                              (declare (not safe))
                              (cons __tmp17821 __tmp17816))))
                       (declare (not safe))
                       (cons _tmp15896_ __tmp17815))))
                (declare (not safe))
                (cons __tmp17814 _post15862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15857_
                                                  _rest15889_
                                                  __tmp17829
                                                  __tmp17822
                                                  __tmp17813)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15701_
                                                _hd15890_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1586315877_))
                              (let ((_tl1587315930_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1586315877_)))
                                    (_hd1587215928_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1586315877_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1587215928_))
                                    (let ((_tl1587515935_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1587215928_)))
                                          (_hd1587415933_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1587215928_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1587515935_))
                                          (let ((_hd15938_ _hd1587415933_)
                                                (_rest15940_ _tl1587315930_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1587115925_
                                               _rest15940_
                                               _hd15938_)))
                                          (let ((_hd15913_ _hd1587215928_)
                                                (_rest15915_ _tl1587315930_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1586815905_
                                               _rest15915_
                                               _hd15913_)))))
                                    (let ((_hd15913_ _hd1587215928_)
                                          (_rest15915_ _tl1587315930_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1586815905_
                                         _rest15915_
                                         _hd15913_)))))
                              (let ()
                                (declare (not safe))
                                (_else1586615885_))))))))
                 (_compile-bind15705_
                  (lambda (_bind15849_ _post15850_ _body15851_)
                    (let ((__tmp17848
                           (let ((__tmp17849
                                  (let ((__tmp17852 (reverse _bind15849_))
                                        (__tmp17850
                                         (let ((__tmp17851
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15706_
                                                   _post15850_
                                                   _body15851_))))
                                           (declare (not safe))
                                           (cons __tmp17851 '()))))
                                    (declare (not safe))
                                    (cons __tmp17852 __tmp17850))))
                             (declare (not safe))
                             (cons 'let __tmp17849))))
                      (declare (not safe))
                      (__SRC__% __tmp17848 _stx15701_))))
                 (_compile-post15706_
                  (lambda (_post15708_ _body15709_)
                    (let ((__tmp17853
                           (let ((__tmp17854
                                  (let ((__tmp17855
                                         (let ((__tmp17857
                                                (lambda (_hd15711_ _r15712_)
                                                  (let* ((_hd1571315736_
                                                          _hd15711_)
                                                         (_E1571715740_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1571315736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1573015834_
                                                           (lambda (_expr15832_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15832_ _r15712_))))
                  (_K1572515812_
                   (lambda (_expr15809_ _id15810_)
                     (let ((__tmp17858
                            (let ((__tmp17859
                                   (let ((__tmp17860
                                          (let ((__tmp17861
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15809_ '()))))
                                            (declare (not safe))
                                            (cons _id15810_ __tmp17861))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17860))))
                              (declare (not safe))
                              (__SRC__% __tmp17859 _stx15701_))))
                       (declare (not safe))
                       (cons __tmp17858 _r15712_))))
                  (_K1571815779_
                   (lambda (_init15744_ _len15745_ _expr15746_ _tmp15747_)
                     (let ((__tmp17862
                            (let ((__tmp17863
                                   (let ((__tmp17864
                                          (let ((__tmp17878
                                                 (let ((__tmp17879
                                                        (let ((__tmp17880
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15746_ '()))))
                  (declare (not safe))
                  (cons _tmp15747_ __tmp17880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17879 '())))
                                                (__tmp17865
                                                 (let ((__tmp17874
                                                        (let ((__tmp17875
                                                               (let ((__tmp17876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17877
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15745_ '()))))
                                (declare (not safe))
                                (cons _tmp15747_ __tmp17877))))
                         (declare (not safe))
                         (cons '__check-values __tmp17876))))
                  (declare (not safe))
                  (__SRC__% __tmp17875 _stx15701_)))
               (__tmp17866
                (let ((__tmp17867
                       (map (lambda (_hd15749_)
                              (let* ((_hd1575015757_ _hd15749_)
                                     (_E1575215761_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1575015757_)))
                                     (_K1575315767_
                                      (lambda (_k15764_ _id15765_)
                                        (let ((__tmp17868
                                               (let ((__tmp17869
                                                      (let ((__tmp17870
                                                             (let ((__tmp17871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17872
                                   (let ((__tmp17873
                                          (let ()
                                            (declare (not safe))
                                            (cons _k15764_ '()))))
                                     (declare (not safe))
                                     (cons _tmp15747_ __tmp17873))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp17872))))
                       (declare (not safe))
                       (cons __tmp17871 '()))))
                (declare (not safe))
                (cons _id15765_ __tmp17870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp17869))))
                                          (declare (not safe))
                                          (__SRC__% __tmp17868 _stx15701_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1575015757_))
                                    (let ((_hd1575415770_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1575015757_)))
                                          (_tl1575515772_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1575015757_))))
                                      (let* ((_id15775_ _hd1575415770_)
                                             (_k15777_ _tl1575515772_))
                                        (declare (not safe))
                                        (_K1575315767_ _k15777_ _id15775_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1575215761_)))))
                            _init15744_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17874
                                                         __tmp17866))))
                                            (declare (not safe))
                                            (cons __tmp17878 __tmp17865))))
                                     (declare (not safe))
                                     (cons 'let __tmp17864))))
                              (declare (not safe))
                              (__SRC__% __tmp17863 _stx15701_))))
                       (declare (not safe))
                       (cons __tmp17862 _r15712_)))))
              (if (let () (declare (not safe)) (##pair? _hd1571315736_))
                  (let ((_tl1573215839_
                         (let () (declare (not safe)) (##cdr _hd1571315736_)))
                        (_hd1573115837_
                         (let () (declare (not safe)) (##car _hd1571315736_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1573115837_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1573215839_))
                            (let ((_tl1573415844_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1573215839_)))
                                  (_hd1573315842_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1573215839_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1573415844_))
                                  (let ((_expr15847_ _hd1573315842_))
                                    (declare (not safe))
                                    (_K1573015834_ _expr15847_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1573415844_))
                                      (let ((_tl1572415798_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1573415844_)))
                                            (_hd1572315796_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1573415844_))))
                                        (let ((_tmp15787_ _hd1573115837_)
                                              (_expr15794_ _hd1573315842_)
                                              (_len15801_ _hd1572315796_)
                                              (_init15803_ _tl1572415798_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1571815779_
                                             _init15803_
                                             _len15801_
                                             _expr15794_
                                             _tmp15787_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1571715740_)))))
                            (let () (declare (not safe)) (_E1571715740_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1573215839_))
                            (let ((_tl1572915824_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1573215839_)))
                                  (_hd1572815822_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1573215839_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1572915824_))
                                  (let ((_id15820_ _hd1573115837_)
                                        (_expr15827_ _hd1572815822_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1572515812_ _expr15827_ _id15820_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1572915824_))
                                      (let ((_tl1572415798_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1572915824_)))
                                            (_hd1572315796_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1572915824_))))
                                        (let ((_tmp15787_ _hd1573115837_)
                                              (_expr15794_ _hd1572815822_)
                                              (_len15801_ _hd1572315796_)
                                              (_init15803_ _tl1572415798_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1571815779_
                                             _init15803_
                                             _len15801_
                                             _expr15794_
                                             _tmp15787_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1571715740_)))))
                            (let () (declare (not safe)) (_E1571715740_)))))
                  (let () (declare (not safe)) (_E1571715740_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17856 (list _body15709_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17857
                                                   __tmp17856
                                                   _post15708_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17855))))
                             (declare (not safe))
                             (cons 'begin __tmp17854))))
                      (declare (not safe))
                      (__SRC__% __tmp17853 _stx15701_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15701_
             _compile-simple15703_
             _compile-values15704_)))))
    (define __compile-call%
      (lambda (_stx15661_)
        (let* ((_$e15663_ _stx15661_)
               (_$E1566515674_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15663_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15663_))
              (let* ((_$tgt1566615677_
                      (let () (declare (not safe)) (__AST-e _$e15663_)))
                     (_$hd1566715680_
                      (let () (declare (not safe)) (##car _$tgt1566615677_)))
                     (_$tl1566815683_
                      (let () (declare (not safe)) (##cdr _$tgt1566615677_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1566815683_))
                    (let* ((_$tgt1566915687_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1566815683_)))
                           (_$hd1567015690_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1566915687_)))
                           (_$tl1567115693_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1566915687_))))
                      (let* ((_rator15697_ _$hd1567015690_)
                             (_rands15699_ _$tl1567115693_)
                             (__tmp17881
                              (let ((__tmp17883
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15697_)))
                                    (__tmp17882 (map __compile _rands15699_)))
                                (declare (not safe))
                                (cons __tmp17883 __tmp17882))))
                        (declare (not safe))
                        (__SRC__% __tmp17881 _stx15661_)))
                    (let () (declare (not safe)) (_$E1566515674_))))
              (let () (declare (not safe)) (_$E1566515674_))))))
    (define __compile-ref%
      (lambda (_stx15623_)
        (let* ((_$e15625_ _stx15623_)
               (_$E1562715636_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15625_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15625_))
              (let* ((_$tgt1562815639_
                      (let () (declare (not safe)) (__AST-e _$e15625_)))
                     (_$hd1562915642_
                      (let () (declare (not safe)) (##car _$tgt1562815639_)))
                     (_$tl1563015645_
                      (let () (declare (not safe)) (##cdr _$tgt1562815639_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1563015645_))
                    (let* ((_$tgt1563115649_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1563015645_)))
                           (_$hd1563215652_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1563115649_)))
                           (_$tl1563315655_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1563115649_))))
                      (let ((_id15659_ _$hd1563215652_))
                        (if (let ((__tmp17884
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1563315655_))))
                              (declare (not safe))
                              (equal? __tmp17884 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15659_ _stx15623_))
                            (let () (declare (not safe)) (_$E1562715636_)))))
                    (let () (declare (not safe)) (_$E1562715636_))))
              (let () (declare (not safe)) (_$E1562715636_))))))
    (define __compile-setq%
      (lambda (_stx15570_)
        (let* ((_$e15572_ _stx15570_)
               (_$E1557415586_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15572_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15572_))
              (let* ((_$tgt1557515589_
                      (let () (declare (not safe)) (__AST-e _$e15572_)))
                     (_$hd1557615592_
                      (let () (declare (not safe)) (##car _$tgt1557515589_)))
                     (_$tl1557715595_
                      (let () (declare (not safe)) (##cdr _$tgt1557515589_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1557715595_))
                    (let* ((_$tgt1557815599_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1557715595_)))
                           (_$hd1557915602_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1557815599_)))
                           (_$tl1558015605_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1557815599_))))
                      (let ((_id15609_ _$hd1557915602_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1558015605_))
                            (let* ((_$tgt1558115611_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1558015605_)))
                                   (_$hd1558215614_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1558115611_)))
                                   (_$tl1558315617_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1558115611_))))
                              (let ((_expr15621_ _$hd1558215614_))
                                (if (let ((__tmp17890
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1558315617_))))
                                      (declare (not safe))
                                      (equal? __tmp17890 '()))
                                    (let ((__tmp17885
                                           (let ((__tmp17886
                                                  (let ((__tmp17889
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15609_
                                                            _stx15570_)))
                                                        (__tmp17887
                                                         (let ((__tmp17888
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15621_))))
                   (declare (not safe))
                   (cons __tmp17888 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17889
                                                          __tmp17887))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17886))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17885 _stx15570_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1557415586_)))))
                            (let () (declare (not safe)) (_$E1557415586_)))))
                    (let () (declare (not safe)) (_$E1557415586_))))
              (let () (declare (not safe)) (_$E1557415586_))))))
    (define __compile-if%
      (lambda (_stx15502_)
        (let* ((_$e15504_ _stx15502_)
               (_$E1550615521_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15504_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15504_))
              (let* ((_$tgt1550715524_
                      (let () (declare (not safe)) (__AST-e _$e15504_)))
                     (_$hd1550815527_
                      (let () (declare (not safe)) (##car _$tgt1550715524_)))
                     (_$tl1550915530_
                      (let () (declare (not safe)) (##cdr _$tgt1550715524_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1550915530_))
                    (let* ((_$tgt1551015534_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1550915530_)))
                           (_$hd1551115537_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1551015534_)))
                           (_$tl1551215540_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1551015534_))))
                      (let ((_p15544_ _$hd1551115537_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1551215540_))
                            (let* ((_$tgt1551315546_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1551215540_)))
                                   (_$hd1551415549_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1551315546_)))
                                   (_$tl1551515552_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1551315546_))))
                              (let ((_t15556_ _$hd1551415549_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1551515552_))
                                    (let* ((_$tgt1551615558_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1551515552_)))
                                           (_$hd1551715561_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1551615558_)))
                                           (_$tl1551815564_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1551615558_))))
                                      (let ((_f15568_ _$hd1551715561_))
                                        (if (let ((__tmp17898
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1551815564_))))
                                              (declare (not safe))
                                              (equal? __tmp17898 '()))
                                            (let ((__tmp17891
                                                   (let ((__tmp17892
                                                          (let ((__tmp17897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15544_)))
                        (__tmp17893
                         (let ((__tmp17896
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15556_)))
                               (__tmp17894
                                (let ((__tmp17895
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15568_))))
                                  (declare (not safe))
                                  (cons __tmp17895 '()))))
                           (declare (not safe))
                           (cons __tmp17896 __tmp17894))))
                    (declare (not safe))
                    (cons __tmp17897 __tmp17893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17892))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17891 _stx15502_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1550615521_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1550615521_)))))
                            (let () (declare (not safe)) (_$E1550615521_)))))
                    (let () (declare (not safe)) (_$E1550615521_))))
              (let () (declare (not safe)) (_$E1550615521_))))))
    (define __compile-quote%
      (lambda (_stx15464_)
        (let* ((_$e15466_ _stx15464_)
               (_$E1546815477_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15466_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15466_))
              (let* ((_$tgt1546915480_
                      (let () (declare (not safe)) (__AST-e _$e15466_)))
                     (_$hd1547015483_
                      (let () (declare (not safe)) (##car _$tgt1546915480_)))
                     (_$tl1547115486_
                      (let () (declare (not safe)) (##cdr _$tgt1546915480_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1547115486_))
                    (let* ((_$tgt1547215490_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1547115486_)))
                           (_$hd1547315493_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1547215490_)))
                           (_$tl1547415496_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1547215490_))))
                      (let ((_e15500_ _$hd1547315493_))
                        (if (let ((__tmp17902
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1547415496_))))
                              (declare (not safe))
                              (equal? __tmp17902 '()))
                            (let ((__tmp17899
                                   (let ((__tmp17900
                                          (let ((__tmp17901
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15500_))))
                                            (declare (not safe))
                                            (cons __tmp17901 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17900))))
                              (declare (not safe))
                              (__SRC__% __tmp17899 _stx15464_))
                            (let () (declare (not safe)) (_$E1546815477_)))))
                    (let () (declare (not safe)) (_$E1546815477_))))
              (let () (declare (not safe)) (_$E1546815477_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15426_)
        (let* ((_$e15428_ _stx15426_)
               (_$E1543015439_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15428_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15428_))
              (let* ((_$tgt1543115442_
                      (let () (declare (not safe)) (__AST-e _$e15428_)))
                     (_$hd1543215445_
                      (let () (declare (not safe)) (##car _$tgt1543115442_)))
                     (_$tl1543315448_
                      (let () (declare (not safe)) (##cdr _$tgt1543115442_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1543315448_))
                    (let* ((_$tgt1543415452_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1543315448_)))
                           (_$hd1543515455_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1543415452_)))
                           (_$tl1543615458_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1543415452_))))
                      (let ((_e15462_ _$hd1543515455_))
                        (if (let ((__tmp17905
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1543615458_))))
                              (declare (not safe))
                              (equal? __tmp17905 '()))
                            (let ((__tmp17903
                                   (let ((__tmp17904
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15462_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17904))))
                              (declare (not safe))
                              (__SRC__% __tmp17903 _stx15426_))
                            (let () (declare (not safe)) (_$E1543015439_)))))
                    (let () (declare (not safe)) (_$E1543015439_))))
              (let () (declare (not safe)) (_$E1543015439_))))))
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
