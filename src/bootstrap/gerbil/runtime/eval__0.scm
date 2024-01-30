(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1706581965)
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
      (lambda _$args17353_
        (apply make-struct-instance __context::t _$args17353_)))
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
      (lambda _$args17350_
        (apply make-struct-instance __runtime::t _$args17350_)))
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
      (lambda _$args17347_
        (apply make-struct-instance __syntax::t _$args17347_)))
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
      (lambda _$args17344_
        (apply make-struct-instance __macro::t _$args17344_)))
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
      (lambda _$args17341_
        (apply make-struct-instance __special-form::t _$args17341_)))
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
      (lambda _$args17338_
        (apply make-struct-instance __core-form::t _$args17338_)))
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
      (lambda _$args17335_
        (apply make-struct-instance __core-expression::t _$args17335_)))
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
      (lambda _$args17332_
        (apply make-struct-instance __core-special-form::t _$args17332_)))
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
      (lambda _$args17329_
        (apply make-struct-instance __struct-info::t _$args17329_)))
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
      (lambda _$args17326_
        (apply make-struct-instance __feature::t _$args17326_)))
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
      (lambda _$args17323_
        (apply make-struct-instance __module::t _$args17323_)))
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
      (let ((__tmp17539
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17538 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17539 __tmp17538)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17298_ _ctx17299_)
        (if _ctx17299_
            (let ((_id17301_
                   (let () (declare (not safe)) (__AST-e _id17298_))))
              (let _lp17303_ ((_ctx17305_ _ctx17299_))
                (let ((_$e17307_
                       (table-ref
                        (##structure-ref _ctx17305_ '4 __context::t '#f)
                        _id17301_
                        '#f)))
                  (if _$e17307_
                      (values _$e17307_)
                      (let ((_$e17310_
                             (##structure-ref _ctx17305_ '3 __context::t '#f)))
                        (if _$e17310_
                            (let () (declare (not safe)) (_lp17303_ _$e17310_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17316_)
        (let ((_ctx17318_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17316_ _ctx17318_))))
    (define __core-resolve
      (lambda _g17541_
        (let ((_g17540_ (let () (declare (not safe)) (##length _g17541_))))
          (cond ((let () (declare (not safe)) (##fx= _g17540_ 1))
                 (apply (lambda (_id17316_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17316_)))
                        _g17541_))
                ((let () (declare (not safe)) (##fx= _g17540_ 2))
                 (apply (lambda (_id17320_ _ctx17321_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17320_ _ctx17321_)))
                        _g17541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17541_))))))
    (define __core-bound-id?__%
      (lambda (_id17281_ _is?17282_)
        (let ((_$e17284_
               (let () (declare (not safe)) (__core-resolve__0 _id17281_))))
          (if _$e17284_ (_is?17282_ _$e17284_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17290_)
        (let ((_is?17292_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17290_ _is?17292_))))
    (define __core-bound-id?
      (lambda _g17543_
        (let ((_g17542_ (let () (declare (not safe)) (##length _g17543_))))
          (cond ((let () (declare (not safe)) (##fx= _g17542_ 1))
                 (apply (lambda (_id17290_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17290_)))
                        _g17543_))
                ((let () (declare (not safe)) (##fx= _g17542_ 2))
                 (apply (lambda (_id17294_ _is?17295_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17294_ _is?17295_)))
                        _g17543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17543_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17264_ _eid17265_ _ctx17266_)
        (if _eid17265_
            (let ((__tmp17546 (##structure-ref _ctx17266_ '4 __context::t '#f))
                  (__tmp17545
                   (let () (declare (not safe)) (__AST-e _id17264_)))
                  (__tmp17544
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17265_))))
              (declare (not safe))
              (table-set! __tmp17546 __tmp17545 __tmp17544))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17271_ _eid17272_)
        (let ((_ctx17274_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17271_ _eid17272_ _ctx17274_))))
    (define __core-bind-runtime!
      (lambda _g17548_
        (let ((_g17547_ (let () (declare (not safe)) (##length _g17548_))))
          (cond ((let () (declare (not safe)) (##fx= _g17547_ 2))
                 (apply (lambda (_id17271_ _eid17272_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17271_ _eid17272_)))
                        _g17548_))
                ((let () (declare (not safe)) (##fx= _g17547_ 3))
                 (apply (lambda (_id17276_ _eid17277_ _ctx17278_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17276_
                             _eid17277_
                             _ctx17278_)))
                        _g17548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17548_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17247_ _e17248_ _make17249_)
        (let ((__tmp17549
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17248_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17248_
                   (_make17249_ _e17248_ _id17247_))))
          (declare (not safe))
          (table-set! __*core* _id17247_ __tmp17549))))
    (define __core-bind-syntax!__0
      (lambda (_id17254_ _e17255_)
        (let ((_make17257_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17254_ _e17255_ _make17257_))))
    (define __core-bind-syntax!
      (lambda _g17551_
        (let ((_g17550_ (let () (declare (not safe)) (##length _g17551_))))
          (cond ((let () (declare (not safe)) (##fx= _g17550_ 2))
                 (apply (lambda (_id17254_ _e17255_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17254_ _e17255_)))
                        _g17551_))
                ((let () (declare (not safe)) (##fx= _g17550_ 3))
                 (apply (lambda (_id17259_ _e17260_ _make17261_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17259_
                             _e17260_
                             _make17261_)))
                        _g17551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17551_))))))
    (define __core-bind-macro!
      (lambda (_id17243_ _e17244_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17243_ _e17244_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17240_ _e17241_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17240_ _e17241_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17224_ _e17225_ _ctx17226_)
        (let ((__tmp17555 (##structure-ref _ctx17226_ '4 __context::t '#f))
              (__tmp17554 (let () (declare (not safe)) (__AST-e _id17224_)))
              (__tmp17552
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17225_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17225_
                   (let ((__tmp17553
                          (let () (declare (not safe)) (__AST-e _id17224_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17225_ __tmp17553)))))
          (declare (not safe))
          (table-set! __tmp17555 __tmp17554 __tmp17552))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17231_ _e17232_)
        (let ((_ctx17234_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17231_ _e17232_ _ctx17234_))))
    (define __core-bind-user-syntax!
      (lambda _g17557_
        (let ((_g17556_ (let () (declare (not safe)) (##length _g17557_))))
          (cond ((let () (declare (not safe)) (##fx= _g17556_ 2))
                 (apply (lambda (_id17231_ _e17232_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17231_ _e17232_)))
                        _g17557_))
                ((let () (declare (not safe)) (##fx= _g17556_ 3))
                 (apply (lambda (_id17236_ _e17237_ _ctx17238_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17236_
                             _e17237_
                             _ctx17238_)))
                        _g17557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17557_))))))
    (define make-__runtime-id__%
      (lambda (_id17205_ _ctx17206_)
        (let ((_id17208_ (let () (declare (not safe)) (__AST-e _id17205_))))
          (if (let () (declare (not safe)) (eq? _id17208_ '_))
              '#f
              (if (uninterned-symbol? _id17208_)
                  (gensym _id17208_)
                  (if (let () (declare (not safe)) (symbol? _id17208_))
                      (let ((_$e17210_
                             (##structure-ref _ctx17206_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17210_))
                            (gensym _id17208_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17210_))
                                (let ((__tmp17558
                                       (##structure-ref
                                        _ctx17206_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp17558 '"#" _id17208_))
                                _id17208_)))
                      (error '"Illegal runtime identifier" _id17208_)))))))
    (define make-__runtime-id__0
      (lambda (_id17216_)
        (let ((_ctx17218_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17216_ _ctx17218_))))
    (define make-__runtime-id
      (lambda _g17560_
        (let ((_g17559_ (let () (declare (not safe)) (##length _g17560_))))
          (cond ((let () (declare (not safe)) (##fx= _g17559_ 1))
                 (apply (lambda (_id17216_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17216_)))
                        _g17560_))
                ((let () (declare (not safe)) (##fx= _g17559_ 2))
                 (apply (lambda (_id17220_ _ctx17221_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17220_ _ctx17221_)))
                        _g17560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17560_))))))
    (define make-__context-local__%
      (lambda (_super17194_)
        (let ((__tmp17561
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17194_ __tmp17561))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17200_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17200_))))
    (define make-__context-local
      (lambda _g17563_
        (let ((_g17562_ (let () (declare (not safe)) (##length _g17563_))))
          (cond ((let () (declare (not safe)) (##fx= _g17562_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17563_))
                ((let () (declare (not safe)) (##fx= _g17562_ 1))
                 (apply (lambda (_super17202_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17202_)))
                        _g17563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17563_))))))
    (define make-__context-module__%
      (lambda (_id17174_ _ns17175_ _path17176_ _super17177_)
        (let ((__tmp17564
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17175_
           _super17177_
           __tmp17564
           _id17174_
           _path17176_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17182_ _ns17183_ _path17184_)
        (let ((_super17186_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17182_
           _ns17183_
           _path17184_
           _super17186_))))
    (define make-__context-module
      (lambda _g17566_
        (let ((_g17565_ (let () (declare (not safe)) (##length _g17566_))))
          (cond ((let () (declare (not safe)) (##fx= _g17565_ 3))
                 (apply (lambda (_id17182_ _ns17183_ _path17184_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17182_
                             _ns17183_
                             _path17184_)))
                        _g17566_))
                ((let () (declare (not safe)) (##fx= _g17565_ 4))
                 (apply (lambda (_id17188_ _ns17189_ _path17190_ _super17191_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17188_
                             _ns17189_
                             _path17190_
                             _super17191_)))
                        _g17566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17566_))))))
    (define __SRC__%
      (lambda (_e17157_ _src-stx17158_)
        (if (or (let () (declare (not safe)) (pair? _e17157_))
                (let () (declare (not safe)) (symbol? _e17157_)))
            (let ((__tmp17570
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17158_
                          'gerbil#AST::t))
                       (let ((__tmp17571
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17158_))))
                         (declare (not safe))
                         (__locat __tmp17571))
                       '#f)))
              (declare (not safe))
              (##make-source _e17157_ __tmp17570))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17157_ 'gerbil#AST::t))
                (let ((__tmp17569
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17157_ '1 AST::t '#f)))
                      (__tmp17567
                       (let ((__tmp17568
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17157_))))
                         (declare (not safe))
                         (__locat __tmp17568))))
                  (declare (not safe))
                  (##make-source __tmp17569 __tmp17567))
                (error '"BUG! Cannot sourcify object" _e17157_)))))
    (define __SRC__0
      (lambda (_e17166_)
        (let ((_src-stx17168_ '#f))
          (declare (not safe))
          (__SRC__% _e17166_ _src-stx17168_))))
    (define __SRC
      (lambda _g17573_
        (let ((_g17572_ (let () (declare (not safe)) (##length _g17573_))))
          (cond ((let () (declare (not safe)) (##fx= _g17572_ 1))
                 (apply (lambda (_e17166_)
                          (let () (declare (not safe)) (__SRC__0 _e17166_)))
                        _g17573_))
                ((let () (declare (not safe)) (##fx= _g17572_ 2))
                 (apply (lambda (_e17170_ _src-stx17171_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17170_ _src-stx17171_)))
                        _g17573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17573_))))))
    (define __locat
      (lambda (_loc17154_)
        (if (let () (declare (not safe)) (##locat? _loc17154_))
            _loc17154_
            '#f)))
    (define __check-values
      (lambda (_obj17149_ _k17150_)
        (let ((_count17152_
               (if (let () (declare (not safe)) (##values? _obj17149_))
                   (let () (declare (not safe)) (##vector-length _obj17149_))
                   '1)))
          (if (fx= _count17152_ _k17150_)
              '#!void
              (error (if (fx< _count17152_ _k17150_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17149_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17149_))
                         _obj17149_)
                     _k17150_)))))
    (define __compile
      (lambda (_stx17119_)
        (let* ((_$e17121_ _stx17119_)
               (_$E1712317129_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17121_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17121_))
              (let* ((_$tgt1712417132_
                      (let () (declare (not safe)) (__AST-e _$e17121_)))
                     (_$hd1712517135_
                      (let () (declare (not safe)) (##car _$tgt1712417132_)))
                     (_$tl1712617138_
                      (let () (declare (not safe)) (##cdr _$tgt1712417132_))))
                (let* ((_form17142_ _$hd1712517135_)
                       (_$e17144_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17142_))))
                  (if _$e17144_
                      ((lambda (_bind17147_)
                         ((##structure-ref _bind17147_ '1 __syntax::t '#f)
                          _stx17119_))
                       _$e17144_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx17119_
                         _form17142_)))))
              (let () (declare (not safe)) (_$E1712317129_))))))
    (define __compile-error__%
      (lambda (_stx17106_ _detail17107_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17106_
           _detail17107_))))
    (define __compile-error__0
      (lambda (_stx17112_)
        (let ((_detail17114_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17112_ _detail17114_))))
    (define __compile-error
      (lambda _g17575_
        (let ((_g17574_ (let () (declare (not safe)) (##length _g17575_))))
          (cond ((let () (declare (not safe)) (##fx= _g17574_ 1))
                 (apply (lambda (_stx17112_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17112_)))
                        _g17575_))
                ((let () (declare (not safe)) (##fx= _g17574_ 2))
                 (apply (lambda (_stx17116_ _detail17117_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17116_ _detail17117_)))
                        _g17575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17575_))))))
    (define __compile-ignore%
      (lambda (_stx17103_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17103_))))
    (define __compile-begin%
      (lambda (_stx17078_)
        (let* ((_$e17080_ _stx17078_)
               (_$E1708217088_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17080_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17080_))
              (let* ((_$tgt1708317091_
                      (let () (declare (not safe)) (__AST-e _$e17080_)))
                     (_$hd1708417094_
                      (let () (declare (not safe)) (##car _$tgt1708317091_)))
                     (_$tl1708517097_
                      (let () (declare (not safe)) (##cdr _$tgt1708317091_))))
                (let* ((_body17101_ _$tl1708517097_)
                       (__tmp17576
                        (let ((__tmp17577 (map __compile _body17101_)))
                          (declare (not safe))
                          (cons 'begin __tmp17577))))
                  (declare (not safe))
                  (__SRC__% __tmp17576 _stx17078_)))
              (let () (declare (not safe)) (_$E1708217088_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17053_)
        (let* ((_$e17055_ _stx17053_)
               (_$E1705717063_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17055_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17055_))
              (let* ((_$tgt1705817066_
                      (let () (declare (not safe)) (__AST-e _$e17055_)))
                     (_$hd1705917069_
                      (let () (declare (not safe)) (##car _$tgt1705817066_)))
                     (_$tl1706017072_
                      (let () (declare (not safe)) (##cdr _$tgt1705817066_))))
                (let* ((_body17076_ _$tl1706017072_)
                       (__tmp17578
                        (let ((__tmp17579
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17076_))))
                          (declare (not safe))
                          (cons 'begin __tmp17579))))
                  (declare (not safe))
                  (__SRC__% __tmp17578 _stx17053_)))
              (let () (declare (not safe)) (_$E1705717063_))))))
    (define __compile-import%
      (lambda (_stx17028_)
        (let* ((_$e17030_ _stx17028_)
               (_$E1703217038_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17030_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17030_))
              (let* ((_$tgt1703317041_
                      (let () (declare (not safe)) (__AST-e _$e17030_)))
                     (_$hd1703417044_
                      (let () (declare (not safe)) (##car _$tgt1703317041_)))
                     (_$tl1703517047_
                      (let () (declare (not safe)) (##cdr _$tgt1703317041_))))
                (let* ((_body17051_ _$tl1703517047_)
                       (__tmp17580
                        (let ((__tmp17581
                               (let ((__tmp17582
                                      (let ((__tmp17583
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17051_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17583))))
                                 (declare (not safe))
                                 (cons __tmp17582 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17581))))
                  (declare (not safe))
                  (__SRC__% __tmp17580 _stx17028_)))
              (let () (declare (not safe)) (_$E1703217038_))))))
    (define __compile-begin-annotation%
      (lambda (_stx16975_)
        (let* ((_$e16977_ _stx16975_)
               (_$E1697916991_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16977_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16977_))
              (let* ((_$tgt1698016994_
                      (let () (declare (not safe)) (__AST-e _$e16977_)))
                     (_$hd1698116997_
                      (let () (declare (not safe)) (##car _$tgt1698016994_)))
                     (_$tl1698217000_
                      (let () (declare (not safe)) (##cdr _$tgt1698016994_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1698217000_))
                    (let* ((_$tgt1698317004_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1698217000_)))
                           (_$hd1698417007_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1698317004_)))
                           (_$tl1698517010_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1698317004_))))
                      (let ((_ann17014_ _$hd1698417007_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1698517010_))
                            (let* ((_$tgt1698617016_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1698517010_)))
                                   (_$hd1698717019_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1698617016_)))
                                   (_$tl1698817022_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1698617016_))))
                              (let ((_expr17026_ _$hd1698717019_))
                                (if (let ((__tmp17584
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1698817022_))))
                                      (declare (not safe))
                                      (equal? __tmp17584 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17026_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1697916991_)))))
                            (let () (declare (not safe)) (_$E1697916991_)))))
                    (let () (declare (not safe)) (_$E1697916991_))))
              (let () (declare (not safe)) (_$E1697916991_))))))
    (define __compile-define-values%
      (lambda (_stx16866_)
        (let* ((_$e16868_ _stx16866_)
               (_$E1687016882_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16868_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16868_))
              (let* ((_$tgt1687116885_
                      (let () (declare (not safe)) (__AST-e _$e16868_)))
                     (_$hd1687216888_
                      (let () (declare (not safe)) (##car _$tgt1687116885_)))
                     (_$tl1687316891_
                      (let () (declare (not safe)) (##cdr _$tgt1687116885_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1687316891_))
                    (let* ((_$tgt1687416895_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1687316891_)))
                           (_$hd1687516898_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1687416895_)))
                           (_$tl1687616901_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1687416895_))))
                      (let ((_hd16905_ _$hd1687516898_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1687616901_))
                            (let* ((_$tgt1687716907_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1687616901_)))
                                   (_$hd1687816910_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1687716907_)))
                                   (_$tl1687916913_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1687716907_))))
                              (let ((_expr16917_ _$hd1687816910_))
                                (if (let ((__tmp17617
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1687916913_))))
                                      (declare (not safe))
                                      (equal? __tmp17617 '()))
                                    (let* ((_$e16919_ _hd16905_)
                                           (_$E1692116962_
                                            (lambda ()
                                              (let ((_$E1692216947_
                                                     (lambda ()
                                                       (let* ((_$E1692316934_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e16919_))))
                      (_ids16937_ _hd16905_)
                      (_len16939_ (length _ids16937_))
                      (_tmp16941_
                       (let ((__tmp17585 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17585))))
                 (let ((__tmp17586
                        (let ((__tmp17587
                               (let ((__tmp17604
                                      (let ((__tmp17605
                                             (let ((__tmp17606
                                                    (let ((__tmp17607
                                                           (let ((__tmp17608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr16917_))))
                     (declare (not safe))
                     (cons __tmp17608 '()))))
              (declare (not safe))
              (cons _tmp16941_ __tmp17607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17606))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17605 _stx16866_)))
                                     (__tmp17588
                                      (let ((__tmp17600
                                             (let ((__tmp17601
                                                    (let ((__tmp17602
                                                           (let ((__tmp17603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len16939_ '()))))
                     (declare (not safe))
                     (cons _tmp16941_ __tmp17603))))
              (declare (not safe))
              (cons '__check-values __tmp17602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17601
                                                _stx16866_)))
                                            (__tmp17589
                                             (let ((__tmp17590
                                                    (let ((__tmp17592
                                                           (lambda (_id16944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k16945_)
                     (if (let () (declare (not safe)) (__AST-e _id16944_))
                         (let ((__tmp17593
                                (let ((__tmp17594
                                       (let ((__tmp17599
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id16944_)))
                                             (__tmp17595
                                              (let ((__tmp17596
                                                     (let ((__tmp17597
                                                            (let ((__tmp17598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k16945_ '()))))
                      (declare (not safe))
                      (cons _tmp16941_ __tmp17598))))
               (declare (not safe))
               (cons '##vector-ref __tmp17597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17596 '()))))
                                         (declare (not safe))
                                         (cons __tmp17599 __tmp17595))))
                                  (declare (not safe))
                                  (cons 'define __tmp17594))))
                           (declare (not safe))
                           (__SRC__% __tmp17593 _stx16866_))
                         '#f)))
                  (__tmp17591 (let () (declare (not safe)) (iota _len16939_))))
              (declare (not safe))
              (filter-map2 __tmp17592 _ids16937_ __tmp17591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17590))))
                                        (declare (not safe))
                                        (cons __tmp17600 __tmp17589))))
                                 (declare (not safe))
                                 (cons __tmp17604 __tmp17588))))
                          (declare (not safe))
                          (cons 'begin __tmp17587))))
                   (declare (not safe))
                   (__SRC__% __tmp17586 _stx16866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e16919_))
                                                    (let* ((_$tgt1692416950_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e16919_)))
                                                           (_$hd1692516953_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1692416950_)))
                                                           (_$tl1692616956_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1692416950_))))
                                                      (let ((_id16960_
                                                             _$hd1692516953_))
                                                        (if (let ((__tmp17614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1692616956_))))
                      (declare (not safe))
                      (equal? __tmp17614 '()))
                    (let ((__tmp17609
                           (let ((__tmp17610
                                  (let ((__tmp17613
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id16960_)))
                                        (__tmp17611
                                         (let ((__tmp17612
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr16917_))))
                                           (declare (not safe))
                                           (cons __tmp17612 '()))))
                                    (declare (not safe))
                                    (cons __tmp17613 __tmp17611))))
                             (declare (not safe))
                             (cons 'define __tmp17610))))
                      (declare (not safe))
                      (__SRC__% __tmp17609 _stx16866_))
                    (let () (declare (not safe)) (_$E1692216947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1692216947_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e16919_))
                                          (let* ((_$tgt1692716965_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e16919_)))
                                                 (_$hd1692816968_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1692716965_)))
                                                 (_$tl1692916971_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1692716965_))))
                                            (if (let ((__tmp17616
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1692816968_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17616 '#f))
                                                (if (let ((__tmp17615
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1692916971_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17615 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr16917_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1692116962_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1692116962_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1692116962_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1687016882_)))))
                            (let () (declare (not safe)) (_$E1687016882_)))))
                    (let () (declare (not safe)) (_$E1687016882_))))
              (let () (declare (not safe)) (_$E1687016882_))))))
    (define __compile-head-id
      (lambda (_e16864_)
        (let ((__tmp17618
               (if (let () (declare (not safe)) (__AST-e _e16864_))
                   _e16864_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17618))))
    (define __compile-lambda-head
      (lambda (_hd16821_)
        (let _recur16823_ ((_rest16825_ _hd16821_))
          (let* ((_$e16827_ _rest16825_)
                 (_$E1682916847_
                  (lambda ()
                    (let ((_$E1683016844_
                           (lambda ()
                             (let* ((_$E1683116839_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e16827_))))
                                    (_tail16842_ _$e16827_))
                               (declare (not safe))
                               (__compile-head-id _tail16842_)))))
                      (if (let ((__tmp17619
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16827_))))
                            (declare (not safe))
                            (equal? __tmp17619 '()))
                          '()
                          (let () (declare (not safe)) (_$E1683016844_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16827_))
                (let* ((_$tgt1683216850_
                        (let () (declare (not safe)) (__AST-e _$e16827_)))
                       (_$hd1683316853_
                        (let () (declare (not safe)) (##car _$tgt1683216850_)))
                       (_$tl1683416856_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1683216850_))))
                  (let* ((_hd16860_ _$hd1683316853_)
                         (_rest16862_ _$tl1683416856_))
                    (let ((__tmp17621
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16860_)))
                          (__tmp17620
                           (let ()
                             (declare (not safe))
                             (_recur16823_ _rest16862_))))
                      (declare (not safe))
                      (cons __tmp17621 __tmp17620))))
                (let () (declare (not safe)) (_$E1682916847_)))))))
    (define __compile-lambda%
      (lambda (_stx16768_)
        (let* ((_$e16770_ _stx16768_)
               (_$E1677216784_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16770_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16770_))
              (let* ((_$tgt1677316787_
                      (let () (declare (not safe)) (__AST-e _$e16770_)))
                     (_$hd1677416790_
                      (let () (declare (not safe)) (##car _$tgt1677316787_)))
                     (_$tl1677516793_
                      (let () (declare (not safe)) (##cdr _$tgt1677316787_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1677516793_))
                    (let* ((_$tgt1677616797_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1677516793_)))
                           (_$hd1677716800_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1677616797_)))
                           (_$tl1677816803_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1677616797_))))
                      (let ((_hd16807_ _$hd1677716800_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1677816803_))
                            (let* ((_$tgt1677916809_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1677816803_)))
                                   (_$hd1678016812_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1677916809_)))
                                   (_$tl1678116815_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1677916809_))))
                              (let ((_body16819_ _$hd1678016812_))
                                (if (let ((__tmp17627
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1678116815_))))
                                      (declare (not safe))
                                      (equal? __tmp17627 '()))
                                    (let ((__tmp17622
                                           (let ((__tmp17623
                                                  (let ((__tmp17626
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16807_)))
                                                        (__tmp17624
                                                         (let ((__tmp17625
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16819_))))
                   (declare (not safe))
                   (cons __tmp17625 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17626
                                                          __tmp17624))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17623))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17622 _stx16768_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1677216784_)))))
                            (let () (declare (not safe)) (_$E1677216784_)))))
                    (let () (declare (not safe)) (_$E1677216784_))))
              (let () (declare (not safe)) (_$E1677216784_))))))
    (define __compile-case-lambda%
      (lambda (_stx16560_)
        (letrec ((_variadic?16562_
                  (lambda (_hd16733_)
                    (let* ((_$e16735_ _hd16733_)
                           (_$E1673716753_
                            (lambda ()
                              (let ((_$E1673816750_
                                     (lambda ()
                                       (let ((_$E1673916747_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e16735_)))))
                                         '#t))))
                                (if (let ((__tmp17628
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16735_))))
                                      (declare (not safe))
                                      (equal? __tmp17628 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1673816750_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16735_))
                          (let* ((_$tgt1674016756_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16735_)))
                                 (_$hd1674116759_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1674016756_)))
                                 (_$tl1674216762_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1674016756_))))
                            (let ((_rest16766_ _$tl1674216762_))
                              (declare (not safe))
                              (_variadic?16562_ _rest16766_)))
                          (let () (declare (not safe)) (_$E1673716753_))))))
                 (_arity16563_
                  (lambda (_hd16698_)
                    (let _lp16700_ ((_rest16702_ _hd16698_) (_k16703_ '0))
                      (let* ((_$e16705_ _rest16702_)
                             (_$E1670716718_
                              (lambda ()
                                (let ((_$E1670816715_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e16705_)))))
                                  _k16703_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16705_))
                            (let* ((_$tgt1670916721_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16705_)))
                                   (_$hd1671016724_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1670916721_)))
                                   (_$tl1671116727_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1670916721_))))
                              (let* ((_rest16731_ _$tl1671116727_)
                                     (__tmp17629
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16703_ '1))))
                                (declare (not safe))
                                (_lp16700_ _rest16731_ __tmp17629)))
                            (let () (declare (not safe)) (_$E1670716718_)))))))
                 (_generate16564_
                  (lambda (_rest16625_ _args16626_ _len16627_)
                    (let* ((_$e16629_ _rest16625_)
                           (_$E1663116642_
                            (lambda ()
                              (let* ((_$E1663216639_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e16629_))))
                                     (__tmp17630
                                      (let ((__tmp17631
                                             (let ((__tmp17632
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16626_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17632))))
                                        (declare (not safe))
                                        (cons 'error __tmp17631))))
                                (declare (not safe))
                                (__SRC__% __tmp17630 _stx16560_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16629_))
                          (let* ((_$tgt1663316645_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16629_)))
                                 (_$hd1663416648_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1663316645_)))
                                 (_$tl1663516651_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1663316645_))))
                            (let* ((_clause16655_ _$hd1663416648_)
                                   (_rest16657_ _$tl1663516651_)
                                   (_$e16659_ _clause16655_)
                                   (_$E1666116670_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e16659_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16659_))
                                  (let* ((_$tgt1666216673_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16659_)))
                                         (_$hd1666316676_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1666216673_)))
                                         (_$tl1666416679_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1666216673_))))
                                    (let ((_hd16683_ _$hd1666316676_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1666416679_))
                                          (let* ((_$tgt1666516685_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1666416679_)))
                                                 (_$hd1666616688_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1666516685_)))
                                                 (_$tl1666716691_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1666516685_))))
                                            (if (let ((__tmp17647
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1666716691_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17647 '()))
                                                (let ((_clen16695_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16563_
                                                          _hd16683_)))
                                                      (_cmp16696_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16562_
                                                              _hd16683_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17633
                                                         (let ((__tmp17634
                                                                (let ((__tmp17644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17645
                                      (let ((__tmp17646
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16695_ '()))))
                                        (declare (not safe))
                                        (cons _len16627_ __tmp17646))))
                                 (declare (not safe))
                                 (cons _cmp16696_ __tmp17645)))
                              (__tmp17635
                               (let ((__tmp17638
                                      (let ((__tmp17639
                                             (let ((__tmp17640
                                                    (let ((__tmp17642
                                                           (let ((__tmp17643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16655_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17643)))
                  (__tmp17641
                   (let () (declare (not safe)) (cons _args16626_ '()))))
              (declare (not safe))
              (cons __tmp17642 __tmp17641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17640))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17639 _stx16560_)))
                                     (__tmp17636
                                      (let ((__tmp17637
                                             (let ()
                                               (declare (not safe))
                                               (_generate16564_
                                                _rest16657_
                                                _args16626_
                                                _len16627_))))
                                        (declare (not safe))
                                        (cons __tmp17637 '()))))
                                 (declare (not safe))
                                 (cons __tmp17638 __tmp17636))))
                          (declare (not safe))
                          (cons __tmp17644 __tmp17635))))
                   (declare (not safe))
                   (cons 'if __tmp17634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17633
                                                     _stx16560_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1666116670_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1666116670_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1666116670_)))))
                          (let () (declare (not safe)) (_$E1663116642_)))))))
          (let* ((_$e16566_ _stx16560_)
                 (_$E1656816600_
                  (lambda ()
                    (let ((_$E1656916582_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e16566_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16566_))
                          (let* ((_$tgt1657016585_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16566_)))
                                 (_$hd1657116588_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1657016585_)))
                                 (_$tl1657216591_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1657016585_))))
                            (let ((_clauses16595_ _$tl1657216591_))
                              (let ((_args16597_
                                     (let ((__tmp17648 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17648 _stx16560_)))
                                    (_len16598_
                                     (let ((__tmp17649 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17649 _stx16560_))))
                                (let ((__tmp17650
                                       (let ((__tmp17651
                                              (let ((__tmp17652
                                                     (let ((__tmp17653
                                                            (let ((__tmp17654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17655
                                  (let ((__tmp17658
                                         (let ((__tmp17659
                                                (let ((__tmp17660
                                                       (let ((__tmp17661
                                                              (let ((__tmp17662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17663
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16597_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17663))))
                        (declare (not safe))
                        (__SRC__% __tmp17662 _stx16560_))))
                 (declare (not safe))
                 (cons __tmp17661 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16598_
                                                        __tmp17660))))
                                           (declare (not safe))
                                           (cons __tmp17659 '())))
                                        (__tmp17656
                                         (let ((__tmp17657
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16564_
                                                   _clauses16595_
                                                   _args16597_
                                                   _len16598_))))
                                           (declare (not safe))
                                           (cons __tmp17657 '()))))
                                    (declare (not safe))
                                    (cons __tmp17658 __tmp17656))))
                             (declare (not safe))
                             (cons 'let __tmp17655))))
                      (declare (not safe))
                      (__SRC__% __tmp17654 _stx16560_))))
               (declare (not safe))
               (cons __tmp17653 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16597_
                                                      __tmp17652))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17651))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17650 _stx16560_)))))
                          (let () (declare (not safe)) (_$E1656916582_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16566_))
                (let* ((_$tgt1657316603_
                        (let () (declare (not safe)) (__AST-e _$e16566_)))
                       (_$hd1657416606_
                        (let () (declare (not safe)) (##car _$tgt1657316603_)))
                       (_$tl1657516609_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1657316603_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1657516609_))
                      (let* ((_$tgt1657616613_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1657516609_)))
                             (_$hd1657716616_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1657616613_)))
                             (_$tl1657816619_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1657616613_))))
                        (let ((_clause16623_ _$hd1657716616_))
                          (if (let ((__tmp17665
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1657816619_))))
                                (declare (not safe))
                                (equal? __tmp17665 '()))
                              (let ((__tmp17664
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16623_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17664))
                              (let () (declare (not safe)) (_$E1656816600_)))))
                      (let () (declare (not safe)) (_$E1656816600_))))
                (let () (declare (not safe)) (_$E1656816600_)))))))
    (define __compile-let-form
      (lambda (_stx16329_ _compile-simple16330_ _compile-values16331_)
        (letrec ((_simple-bind?16333_
                  (lambda (_hd16518_)
                    (let* ((_hd1651916529_ _hd16518_)
                           (_else1652216537_ (lambda () '#f)))
                      (let ((_K1652516550_ (lambda (_id16548_) '#t))
                            (_K1652416542_ (lambda () '#t)))
                        (let ((_try-match1652116545_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1651916529_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1652416542_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1652216537_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1651916529_))
                              (let ((_tl1652716555_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1651916529_)))
                                    (_hd1652616553_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1651916529_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1652716555_))
                                    (let ((_id16558_ _hd1652616553_))
                                      (declare (not safe))
                                      (_K1652516550_ _id16558_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1652116545_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1652116545_))))))))
                 (_car-e16334_
                  (lambda (_hd16516_)
                    (if (let () (declare (not safe)) (pair? _hd16516_))
                        (car _hd16516_)
                        _hd16516_))))
          (let* ((_$e16336_ _stx16329_)
                 (_$E1633816481_
                  (lambda ()
                    (let ((_$E1633916361_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e16336_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16336_))
                          (let* ((_$tgt1634016364_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16336_)))
                                 (_$hd1634116367_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1634016364_)))
                                 (_$tl1634216370_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1634016364_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1634216370_))
                                (let* ((_$tgt1634316374_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1634216370_)))
                                       (_$hd1634416377_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1634316374_)))
                                       (_$tl1634516380_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1634316374_))))
                                  (let ((_hd16384_ _$hd1634416377_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1634516380_))
                                        (let* ((_$tgt1634616386_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1634516380_)))
                                               (_$hd1634716389_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1634616386_)))
                                               (_$tl1634816392_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1634616386_))))
                                          (let ((_body16396_ _$hd1634716389_))
                                            (if (let ((__tmp17668
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1634816392_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17668 '()))
                                                (let* ((_hd-ids16436_
                                                        (map (lambda (_bind16398_)
                                                               (let* ((_$e16400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16398_)
                              (_$E1640216411_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e16400_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16400_))
                             (let* ((_$tgt1640316414_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16400_)))
                                    (_$hd1640416417_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1640316414_)))
                                    (_$tl1640516420_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1640316414_))))
                               (let ((_ids16424_ _$hd1640416417_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1640516420_))
                                     (let* ((_$tgt1640616426_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1640516420_)))
                                            (_$hd1640716429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1640616426_)))
                                            (_$tl1640816432_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1640616426_))))
                                       (if (let ((__tmp17666
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1640816432_))))
                                             (declare (not safe))
                                             (equal? __tmp17666 '()))
                                           _ids16424_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1640216411_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1640216411_)))))
                             (let () (declare (not safe)) (_$E1640216411_)))))
                     _hd16384_))
               (_exprs16476_
                (map (lambda (_bind16438_)
                       (let* ((_$e16440_ _bind16438_)
                              (_$E1644216451_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e16440_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16440_))
                             (let* ((_$tgt1644316454_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16440_)))
                                    (_$hd1644416457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1644316454_)))
                                    (_$tl1644516460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1644316454_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1644516460_))
                                   (let* ((_$tgt1644616464_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1644516460_)))
                                          (_$hd1644716467_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1644616464_)))
                                          (_$tl1644816470_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1644616464_))))
                                     (let ((_expr16474_ _$hd1644716467_))
                                       (if (let ((__tmp17667
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1644816470_))))
                                             (declare (not safe))
                                             (equal? __tmp17667 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16474_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1644216451_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1644216451_))))
                             (let () (declare (not safe)) (_$E1644216451_)))))
                     _hd16384_))
               (_body16478_
                (let () (declare (not safe)) (__compile _body16396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16436_))
              (_compile-simple16330_
               (map _car-e16334_ _hd-ids16436_)
               _exprs16476_
               _body16478_)
              (_compile-values16331_ _hd-ids16436_ _exprs16476_ _body16478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1633916361_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1633916361_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1633916361_))))
                          (let () (declare (not safe)) (_$E1633916361_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16336_))
                (let* ((_$tgt1634916484_
                        (let () (declare (not safe)) (__AST-e _$e16336_)))
                       (_$hd1635016487_
                        (let () (declare (not safe)) (##car _$tgt1634916484_)))
                       (_$tl1635116490_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1634916484_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1635116490_))
                      (let* ((_$tgt1635216494_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1635116490_)))
                             (_$hd1635316497_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1635216494_)))
                             (_$tl1635416500_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1635216494_))))
                        (if (let ((__tmp17670
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1635316497_))))
                              (declare (not safe))
                              (equal? __tmp17670 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1635416500_))
                                (let* ((_$tgt1635516504_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1635416500_)))
                                       (_$hd1635616507_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1635516504_)))
                                       (_$tl1635716510_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1635516504_))))
                                  (let ((_body16514_ _$hd1635616507_))
                                    (if (let ((__tmp17669
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1635716510_))))
                                          (declare (not safe))
                                          (equal? __tmp17669 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16514_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1633816481_)))))
                                (let () (declare (not safe)) (_$E1633816481_)))
                            (let () (declare (not safe)) (_$E1633816481_))))
                      (let () (declare (not safe)) (_$E1633816481_))))
                (let () (declare (not safe)) (_$E1633816481_)))))))
    (define __compile-let-values%
      (lambda (_stx16144_)
        (letrec ((_compile-simple16146_
                  (lambda (_hd-ids16325_ _exprs16326_ _body16327_)
                    (let ((__tmp17671
                           (let ((__tmp17672
                                  (let ((__tmp17674
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16325_)
                                              _exprs16326_))
                                        (__tmp17673
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16327_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17674 __tmp17673))))
                             (declare (not safe))
                             (cons 'let __tmp17672))))
                      (declare (not safe))
                      (__SRC__% __tmp17671 _stx16144_))))
                 (_compile-values16147_
                  (lambda (_hd-ids16243_ _exprs16244_ _body16245_)
                    (let _lp16247_ ((_rest16249_ _hd-ids16243_)
                                    (_exprs16250_ _exprs16244_)
                                    (_bind16251_ '())
                                    (_post16252_ '()))
                      (let* ((_rest1625316267_ _rest16249_)
                             (_else1625616275_
                              (lambda ()
                                (let ((__tmp17675
                                       (let ((__tmp17676
                                              (let ((__tmp17679
                                                     (reverse _bind16251_))
                                                    (__tmp17677
                                                     (let ((__tmp17678
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16148_
                                                               _post16252_
                                                               _body16245_))))
                                                       (declare (not safe))
                                                       (cons __tmp17678 '()))))
                                                (declare (not safe))
                                                (cons __tmp17679 __tmp17677))))
                                         (declare (not safe))
                                         (cons 'let __tmp17676))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17675 _stx16144_)))))
                        (let ((_K1626116308_
                               (lambda (_rest16305_ _id16306_)
                                 (let ((__tmp17685 (cdr _exprs16250_))
                                       (__tmp17680
                                        (let ((__tmp17681
                                               (let ((__tmp17684
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16306_)))
                                                     (__tmp17682
                                                      (let ((__tmp17683
                                                             (car _exprs16250_)))
                                                        (declare (not safe))
                                                        (cons __tmp17683
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17684
                                                       __tmp17682))))
                                          (declare (not safe))
                                          (cons __tmp17681 _bind16251_))))
                                   (declare (not safe))
                                   (_lp16247_
                                    _rest16305_
                                    __tmp17685
                                    __tmp17680
                                    _post16252_))))
                              (_K1625816290_
                               (lambda (_rest16279_ _hd16280_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16280_))
                                     (let ((__tmp17706 (cdr _exprs16250_))
                                           (__tmp17699
                                            (let ((__tmp17700
                                                   (let ((__tmp17705
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16280_)))
                                                         (__tmp17701
                                                          (let ((__tmp17702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17703
                                (let ((__tmp17704 (car _exprs16250_)))
                                  (declare (not safe))
                                  (cons __tmp17704 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17703))))
                    (declare (not safe))
                    (cons __tmp17702 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17705
                                                           __tmp17701))))
                                              (declare (not safe))
                                              (cons __tmp17700 _bind16251_))))
                                       (declare (not safe))
                                       (_lp16247_
                                        _rest16279_
                                        __tmp17706
                                        __tmp17699
                                        _post16252_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16280_))
                                         (let* ((_len16282_ (length _hd16280_))
                                                (_tmp16284_
                                                 (let ((__tmp17686 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17686))))
                                           (let ((__tmp17698
                                                  (cdr _exprs16250_))
                                                 (__tmp17694
                                                  (let ((__tmp17695
                                                         (let ((__tmp17696
                                                                (let ((__tmp17697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16250_)))
                          (declare (not safe))
                          (cons __tmp17697 '()))))
                   (declare (not safe))
                   (cons _tmp16284_ __tmp17696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17695
                                                          _bind16251_)))
                                                 (__tmp17687
                                                  (let ((__tmp17688
                                                         (let ((__tmp17689
                                                                (let ((__tmp17690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17692
                                      (lambda (_id16287_ _k16288_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16287_))
                                            (let ((__tmp17693
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16287_))))
                                              (declare (not safe))
                                              (cons __tmp17693 _k16288_))
                                            '#f)))
                                     (__tmp17691
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16282_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17692
                                  _hd16280_
                                  __tmp17691))))
                          (declare (not safe))
                          (cons _len16282_ __tmp17690))))
                   (declare (not safe))
                   (cons _tmp16284_ __tmp17689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17688
                                                          _post16252_))))
                                             (declare (not safe))
                                             (_lp16247_
                                              _rest16279_
                                              __tmp17698
                                              __tmp17694
                                              __tmp17687)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16144_
                                            _hd16280_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1625316267_))
                              (let ((_tl1626316313_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1625316267_)))
                                    (_hd1626216311_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1625316267_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1626216311_))
                                    (let ((_tl1626516318_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1626216311_)))
                                          (_hd1626416316_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1626216311_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1626516318_))
                                          (let ((_id16321_ _hd1626416316_)
                                                (_rest16323_ _tl1626316313_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1626116308_
                                               _rest16323_
                                               _id16321_)))
                                          (let ((_hd16298_ _hd1626216311_)
                                                (_rest16300_ _tl1626316313_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1625816290_
                                               _rest16300_
                                               _hd16298_)))))
                                    (let ((_hd16298_ _hd1626216311_)
                                          (_rest16300_ _tl1626316313_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1625816290_
                                         _rest16300_
                                         _hd16298_)))))
                              (let ()
                                (declare (not safe))
                                (_else1625616275_))))))))
                 (_compile-post16148_
                  (lambda (_post16150_ _body16151_)
                    (let _lp16153_ ((_rest16155_ _post16150_)
                                    (_check16156_ '())
                                    (_bind16157_ '()))
                      (let* ((_rest1615816170_ _rest16155_)
                             (_else1616016178_
                              (lambda ()
                                (let ((__tmp17707
                                       (let ((__tmp17708
                                              (let ((__tmp17709
                                                     (let ((__tmp17710
                                                            (let ((__tmp17711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17712
                                  (let ((__tmp17713
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16151_ '()))))
                                    (declare (not safe))
                                    (cons _bind16157_ __tmp17713))))
                             (declare (not safe))
                             (cons 'let __tmp17712))))
                      (declare (not safe))
                      (__SRC__% __tmp17711 _stx16144_))))
               (declare (not safe))
               (cons __tmp17710 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17709
                                                        _check16156_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17708))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17707 _stx16144_))))
                             (_K1616216217_
                              (lambda (_rest16181_
                                       _init16182_
                                       _len16183_
                                       _tmp16184_)
                                (let ((__tmp17721
                                       (let ((__tmp17722
                                              (let ((__tmp17723
                                                     (let ((__tmp17724
                                                            (let ((__tmp17725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16183_ '()))))
                      (declare (not safe))
                      (cons _tmp16184_ __tmp17725))))
               (declare (not safe))
               (cons '__check-values __tmp17724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17723
                                                 _stx16144_))))
                                         (declare (not safe))
                                         (cons __tmp17722 _check16156_)))
                                      (__tmp17714
                                       (let ((__tmp17715
                                              (lambda (_hd16186_ _r16187_)
                                                (let* ((_hd1618816195_
                                                        _hd16186_)
                                                       (_E1619016199_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1618816195_)))
               (_K1619116205_
                (lambda (_k16202_ _id16203_)
                  (let ((__tmp17716
                         (let ((__tmp17717
                                (let ((__tmp17718
                                       (let ((__tmp17719
                                              (let ((__tmp17720
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16202_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16184_ __tmp17720))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17719))))
                                  (declare (not safe))
                                  (cons __tmp17718 '()))))
                           (declare (not safe))
                           (cons _id16203_ __tmp17717))))
                    (declare (not safe))
                    (cons __tmp17716 _r16187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1618816195_))
                                                      (let ((_hd1619216208_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1618816195_)))
                    (_tl1619316210_
                     (let () (declare (not safe)) (##cdr _hd1618816195_))))
                (let* ((_id16213_ _hd1619216208_) (_k16215_ _tl1619316210_))
                  (declare (not safe))
                  (_K1619116205_ _k16215_ _id16213_)))
              (let () (declare (not safe)) (_E1619016199_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17715
                                                 _bind16157_
                                                 _init16182_))))
                                  (declare (not safe))
                                  (_lp16153_
                                   _rest16181_
                                   __tmp17721
                                   __tmp17714)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1615816170_))
                            (let ((_hd1616316220_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1615816170_)))
                                  (_tl1616416222_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1615816170_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1616316220_))
                                  (let ((_hd1616516225_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1616316220_)))
                                        (_tl1616616227_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1616316220_))))
                                    (let ((_tmp16230_ _hd1616516225_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1616616227_))
                                          (let ((_hd1616716232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1616616227_)))
                                                (_tl1616816234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1616616227_))))
                                            (let* ((_len16237_ _hd1616716232_)
                                                   (_init16239_ _tl1616816234_)
                                                   (_rest16241_
                                                    _tl1616416222_))
                                              (declare (not safe))
                                              (_K1616216217_
                                               _rest16241_
                                               _init16239_
                                               _len16237_
                                               _tmp16230_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1616016178_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1616016178_))))
                            (let ()
                              (declare (not safe))
                              (_else1616016178_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16144_
             _compile-simple16146_
             _compile-values16147_)))))
    (define __compile-letrec-values%
      (lambda (_stx15944_)
        (letrec ((_compile-simple15946_
                  (lambda (_hd-ids16140_ _exprs16141_ _body16142_)
                    (let ((__tmp17726
                           (let ((__tmp17727
                                  (let ((__tmp17729
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16140_)
                                              _exprs16141_))
                                        (__tmp17728
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16142_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17729 __tmp17728))))
                             (declare (not safe))
                             (cons 'letrec __tmp17727))))
                      (declare (not safe))
                      (__SRC__% __tmp17726 _stx15944_))))
                 (_compile-values15947_
                  (lambda (_hd-ids16054_ _exprs16055_ _body16056_)
                    (let _lp16058_ ((_rest16060_ _hd-ids16054_)
                                    (_exprs16061_ _exprs16055_)
                                    (_pre16062_ '())
                                    (_bind16063_ '())
                                    (_post16064_ '()))
                      (let* ((_rest1606516079_ _rest16060_)
                             (_else1606816087_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner15948_
                                   _pre16062_
                                   _bind16063_
                                   _post16064_
                                   _body16056_)))))
                        (let ((_K1607316123_
                               (lambda (_rest16120_ _id16121_)
                                 (let ((__tmp17735 (cdr _exprs16061_))
                                       (__tmp17730
                                        (let ((__tmp17731
                                               (let ((__tmp17734
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16121_)))
                                                     (__tmp17732
                                                      (let ((__tmp17733
                                                             (car _exprs16061_)))
                                                        (declare (not safe))
                                                        (cons __tmp17733
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17734
                                                       __tmp17732))))
                                          (declare (not safe))
                                          (cons __tmp17731 _bind16063_))))
                                   (declare (not safe))
                                   (_lp16058_
                                    _rest16120_
                                    __tmp17735
                                    _pre16062_
                                    __tmp17730
                                    _post16064_))))
                              (_K1607016105_
                               (lambda (_rest16091_ _hd16092_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16092_))
                                     (let ((__tmp17763 (cdr _exprs16061_))
                                           (__tmp17756
                                            (let ((__tmp17757
                                                   (let ((__tmp17762
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16092_)))
                                                         (__tmp17758
                                                          (let ((__tmp17759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17760
                                (let ((__tmp17761 (car _exprs16061_)))
                                  (declare (not safe))
                                  (cons __tmp17761 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17760))))
                    (declare (not safe))
                    (cons __tmp17759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17762
                                                           __tmp17758))))
                                              (declare (not safe))
                                              (cons __tmp17757 _bind16063_))))
                                       (declare (not safe))
                                       (_lp16058_
                                        _rest16091_
                                        __tmp17763
                                        _pre16062_
                                        __tmp17756
                                        _post16064_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16092_))
                                         (let* ((_len16094_ (length _hd16092_))
                                                (_tmp16096_
                                                 (let ((__tmp17736 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17736))))
                                           (let ((__tmp17755
                                                  (cdr _exprs16061_))
                                                 (__tmp17748
                                                  (let ((__tmp17749
                                                         (lambda (_id16099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16100_)
                   (if (let () (declare (not safe)) (__AST-e _id16099_))
                       (let ((__tmp17750
                              (let ((__tmp17754
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16099_)))
                                    (__tmp17751
                                     (let ((__tmp17752
                                            (let ((__tmp17753
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17753))))
                                       (declare (not safe))
                                       (cons __tmp17752 '()))))
                                (declare (not safe))
                                (cons __tmp17754 __tmp17751))))
                         (declare (not safe))
                         (cons __tmp17750 _r16100_))
                       _r16100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17749
                                                            _pre16062_
                                                            _hd16092_)))
                                                 (__tmp17744
                                                  (let ((__tmp17745
                                                         (let ((__tmp17746
                                                                (let ((__tmp17747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16061_)))
                          (declare (not safe))
                          (cons __tmp17747 '()))))
                   (declare (not safe))
                   (cons _tmp16096_ __tmp17746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17745
                                                          _bind16063_)))
                                                 (__tmp17737
                                                  (let ((__tmp17738
                                                         (let ((__tmp17739
                                                                (let ((__tmp17740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17742
                                      (lambda (_id16102_ _k16103_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16102_))
                                            (let ((__tmp17743
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16102_))))
                                              (declare (not safe))
                                              (cons __tmp17743 _k16103_))
                                            '#f)))
                                     (__tmp17741
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16094_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17742
                                  _hd16092_
                                  __tmp17741))))
                          (declare (not safe))
                          (cons _len16094_ __tmp17740))))
                   (declare (not safe))
                   (cons _tmp16096_ __tmp17739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17738
                                                          _post16064_))))
                                             (declare (not safe))
                                             (_lp16058_
                                              _rest16091_
                                              __tmp17755
                                              __tmp17748
                                              __tmp17744
                                              __tmp17737)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15944_
                                            _hd16092_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1606516079_))
                              (let ((_tl1607516128_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1606516079_)))
                                    (_hd1607416126_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1606516079_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1607416126_))
                                    (let ((_tl1607716133_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1607416126_)))
                                          (_hd1607616131_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1607416126_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1607716133_))
                                          (let ((_id16136_ _hd1607616131_)
                                                (_rest16138_ _tl1607516128_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1607316123_
                                               _rest16138_
                                               _id16136_)))
                                          (let ((_hd16113_ _hd1607416126_)
                                                (_rest16115_ _tl1607516128_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1607016105_
                                               _rest16115_
                                               _hd16113_)))))
                                    (let ((_hd16113_ _hd1607416126_)
                                          (_rest16115_ _tl1607516128_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1607016105_
                                         _rest16115_
                                         _hd16113_)))))
                              (let ()
                                (declare (not safe))
                                (_else1606816087_))))))))
                 (_compile-inner15948_
                  (lambda (_pre16049_ _bind16050_ _post16051_ _body16052_)
                    (if (let () (declare (not safe)) (null? _pre16049_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind15949_
                           _bind16050_
                           _post16051_
                           _body16052_))
                        (let ((__tmp17764
                               (let ((__tmp17765
                                      (let ((__tmp17768 (reverse _pre16049_))
                                            (__tmp17766
                                             (let ((__tmp17767
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind15949_
                                                       _bind16050_
                                                       _post16051_
                                                       _body16052_))))
                                               (declare (not safe))
                                               (cons __tmp17767 '()))))
                                        (declare (not safe))
                                        (cons __tmp17768 __tmp17766))))
                                 (declare (not safe))
                                 (cons 'let __tmp17765))))
                          (declare (not safe))
                          (__SRC__% __tmp17764 _stx15944_)))))
                 (_compile-bind15949_
                  (lambda (_bind16045_ _post16046_ _body16047_)
                    (let ((__tmp17769
                           (let ((__tmp17770
                                  (let ((__tmp17773 (reverse _bind16045_))
                                        (__tmp17771
                                         (let ((__tmp17772
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15950_
                                                   _post16046_
                                                   _body16047_))))
                                           (declare (not safe))
                                           (cons __tmp17772 '()))))
                                    (declare (not safe))
                                    (cons __tmp17773 __tmp17771))))
                             (declare (not safe))
                             (cons 'letrec __tmp17770))))
                      (declare (not safe))
                      (__SRC__% __tmp17769 _stx15944_))))
                 (_compile-post15950_
                  (lambda (_post15952_ _body15953_)
                    (let _lp15955_ ((_rest15957_ _post15952_)
                                    (_check15958_ '())
                                    (_bind15959_ '()))
                      (let* ((_rest1596015972_ _rest15957_)
                             (_else1596215980_
                              (lambda ()
                                (let ((__tmp17774
                                       (let ((__tmp17775
                                              (let ((__tmp17776
                                                     (let ((__tmp17777
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body15953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17777 _bind15959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17776
                                                        _check15958_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17775))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17774 _stx15944_))))
                             (_K1596416019_
                              (lambda (_rest15983_
                                       _init15984_
                                       _len15985_
                                       _tmp15986_)
                                (let ((__tmp17786
                                       (let ((__tmp17787
                                              (let ((__tmp17788
                                                     (let ((__tmp17789
                                                            (let ((__tmp17790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len15985_ '()))))
                      (declare (not safe))
                      (cons _tmp15986_ __tmp17790))))
               (declare (not safe))
               (cons '__check-values __tmp17789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17788
                                                 _stx15944_))))
                                         (declare (not safe))
                                         (cons __tmp17787 _check15958_)))
                                      (__tmp17778
                                       (let ((__tmp17779
                                              (lambda (_hd15988_ _r15989_)
                                                (let* ((_hd1599015997_
                                                        _hd15988_)
                                                       (_E1599216001_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1599015997_)))
               (_K1599316007_
                (lambda (_k16004_ _id16005_)
                  (let ((__tmp17780
                         (let ((__tmp17781
                                (let ((__tmp17782
                                       (let ((__tmp17783
                                              (let ((__tmp17784
                                                     (let ((__tmp17785
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k16004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp15986_ __tmp17785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17784))))
                                         (declare (not safe))
                                         (cons __tmp17783 '()))))
                                  (declare (not safe))
                                  (cons _id16005_ __tmp17782))))
                           (declare (not safe))
                           (cons 'set! __tmp17781))))
                    (declare (not safe))
                    (cons __tmp17780 _r15989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1599015997_))
                                                      (let ((_hd1599416010_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1599015997_)))
                    (_tl1599516012_
                     (let () (declare (not safe)) (##cdr _hd1599015997_))))
                (let* ((_id16015_ _hd1599416010_) (_k16017_ _tl1599516012_))
                  (declare (not safe))
                  (_K1599316007_ _k16017_ _id16015_)))
              (let () (declare (not safe)) (_E1599216001_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17779
                                                 _bind15959_
                                                 _init15984_))))
                                  (declare (not safe))
                                  (_lp15955_
                                   _rest15983_
                                   __tmp17786
                                   __tmp17778)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1596015972_))
                            (let ((_hd1596516022_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1596015972_)))
                                  (_tl1596616024_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1596015972_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1596516022_))
                                  (let ((_hd1596716027_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1596516022_)))
                                        (_tl1596816029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1596516022_))))
                                    (let ((_tmp16032_ _hd1596716027_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1596816029_))
                                          (let ((_hd1596916034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1596816029_)))
                                                (_tl1597016036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1596816029_))))
                                            (let* ((_len16039_ _hd1596916034_)
                                                   (_init16041_ _tl1597016036_)
                                                   (_rest16043_
                                                    _tl1596616024_))
                                              (declare (not safe))
                                              (_K1596416019_
                                               _rest16043_
                                               _init16041_
                                               _len16039_
                                               _tmp16032_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1596215980_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1596215980_))))
                            (let ()
                              (declare (not safe))
                              (_else1596215980_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15944_
             _compile-simple15946_
             _compile-values15947_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15699_)
        (letrec ((_compile-simple15701_
                  (lambda (_hd-ids15940_ _exprs15941_ _body15942_)
                    (let ((__tmp17791
                           (let ((__tmp17792
                                  (let ((__tmp17794
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids15940_)
                                              _exprs15941_))
                                        (__tmp17793
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15942_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17794 __tmp17793))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17792))))
                      (declare (not safe))
                      (__SRC__% __tmp17791 _stx15699_))))
                 (_compile-values15702_
                  (lambda (_hd-ids15851_ _exprs15852_ _body15853_)
                    (let _lp15855_ ((_rest15857_ _hd-ids15851_)
                                    (_exprs15858_ _exprs15852_)
                                    (_bind15859_ '())
                                    (_post15860_ '()))
                      (let* ((_rest1586115875_ _rest15857_)
                             (_else1586415883_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15703_
                                   _bind15859_
                                   _post15860_
                                   _body15853_)))))
                        (let ((_K1586915923_
                               (lambda (_rest15918_ _hd15919_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15919_))
                                     (let ((_id15921_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15919_))))
                                       (let ((__tmp17809 (cdr _exprs15858_))
                                             (__tmp17804
                                              (let ((__tmp17805
                                                     (let ((__tmp17806
                                                            (let ((__tmp17807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17808
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17808))))
                      (declare (not safe))
                      (cons __tmp17807 '()))))
               (declare (not safe))
               (cons _id15921_ __tmp17806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17805 _bind15859_)))
                                             (__tmp17800
                                              (let ((__tmp17801
                                                     (let ((__tmp17802
                                                            (let ((__tmp17803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs15858_)))
                      (declare (not safe))
                      (cons __tmp17803 '()))))
               (declare (not safe))
               (cons _id15921_ __tmp17802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17801
                                                      _post15860_))))
                                         (declare (not safe))
                                         (_lp15855_
                                          _rest15918_
                                          __tmp17809
                                          __tmp17804
                                          __tmp17800)))
                                     (let ((__tmp17799 (cdr _exprs15858_))
                                           (__tmp17795
                                            (let ((__tmp17796
                                                   (let ((__tmp17797
                                                          (let ((__tmp17798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs15858_)))
                    (declare (not safe))
                    (cons __tmp17798 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17797))))
                                              (declare (not safe))
                                              (cons __tmp17796 _post15860_))))
                                       (declare (not safe))
                                       (_lp15855_
                                        _rest15918_
                                        __tmp17799
                                        _bind15859_
                                        __tmp17795)))))
                              (_K1586615903_
                               (lambda (_rest15887_ _hd15888_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15888_))
                                     (let ((_id15890_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15888_))))
                                       (let ((__tmp17845 (cdr _exprs15858_))
                                             (__tmp17840
                                              (let ((__tmp17841
                                                     (let ((__tmp17842
                                                            (let ((__tmp17843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17844
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17844))))
                      (declare (not safe))
                      (cons __tmp17843 '()))))
               (declare (not safe))
               (cons _id15890_ __tmp17842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17841 _bind15859_)))
                                             (__tmp17834
                                              (let ((__tmp17835
                                                     (let ((__tmp17836
                                                            (let ((__tmp17837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17838
                                  (let ((__tmp17839 (car _exprs15858_)))
                                    (declare (not safe))
                                    (cons __tmp17839 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17838))))
                      (declare (not safe))
                      (cons __tmp17837 '()))))
               (declare (not safe))
               (cons _id15890_ __tmp17836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17835
                                                      _post15860_))))
                                         (declare (not safe))
                                         (_lp15855_
                                          _rest15887_
                                          __tmp17845
                                          __tmp17840
                                          __tmp17834)))
                                     (if (let ((__tmp17833
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15888_))))
                                           (declare (not safe))
                                           (not __tmp17833))
                                         (let ((__tmp17832 (cdr _exprs15858_))
                                               (__tmp17828
                                                (let ((__tmp17829
                                                       (let ((__tmp17830
                                                              (let ((__tmp17831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs15858_)))
                        (declare (not safe))
                        (cons __tmp17831 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17829
                                                        _post15860_))))
                                           (declare (not safe))
                                           (_lp15855_
                                            _rest15887_
                                            __tmp17832
                                            _bind15859_
                                            __tmp17828))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15888_))
                                             (let* ((_len15892_
                                                     (length _hd15888_))
                                                    (_tmp15894_
                                                     (let ((__tmp17810
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17810))))
                                               (let ((__tmp17827
                                                      (cdr _exprs15858_))
                                                     (__tmp17820
                                                      (let ((__tmp17821
                                                             (lambda (_id15897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15898_)
                       (if (let () (declare (not safe)) (__AST-e _id15897_))
                           (let ((__tmp17822
                                  (let ((__tmp17826
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15897_)))
                                        (__tmp17823
                                         (let ((__tmp17824
                                                (let ((__tmp17825
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17825))))
                                           (declare (not safe))
                                           (cons __tmp17824 '()))))
                                    (declare (not safe))
                                    (cons __tmp17826 __tmp17823))))
                             (declare (not safe))
                             (cons __tmp17822 _r15898_))
                           _r15898_))))
                (declare (not safe))
                (foldl1 __tmp17821 _bind15859_ _hd15888_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17811
                                                      (let ((__tmp17812
                                                             (let ((__tmp17813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17819 (car _exprs15858_))
                                  (__tmp17814
                                   (let ((__tmp17815
                                          (let ((__tmp17817
                                                 (lambda (_id15900_ _k15901_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15900_))
                                                       (let ((__tmp17818
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15900_))))
                 (declare (not safe))
                 (cons __tmp17818 _k15901_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17816
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15892_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17817
                                             _hd15888_
                                             __tmp17816))))
                                     (declare (not safe))
                                     (cons _len15892_ __tmp17815))))
                              (declare (not safe))
                              (cons __tmp17819 __tmp17814))))
                       (declare (not safe))
                       (cons _tmp15894_ __tmp17813))))
                (declare (not safe))
                (cons __tmp17812 _post15860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15855_
                                                  _rest15887_
                                                  __tmp17827
                                                  __tmp17820
                                                  __tmp17811)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15699_
                                                _hd15888_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1586115875_))
                              (let ((_tl1587115928_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1586115875_)))
                                    (_hd1587015926_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1586115875_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1587015926_))
                                    (let ((_tl1587315933_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1587015926_)))
                                          (_hd1587215931_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1587015926_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1587315933_))
                                          (let ((_hd15936_ _hd1587215931_)
                                                (_rest15938_ _tl1587115928_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1586915923_
                                               _rest15938_
                                               _hd15936_)))
                                          (let ((_hd15911_ _hd1587015926_)
                                                (_rest15913_ _tl1587115928_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1586615903_
                                               _rest15913_
                                               _hd15911_)))))
                                    (let ((_hd15911_ _hd1587015926_)
                                          (_rest15913_ _tl1587115928_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1586615903_
                                         _rest15913_
                                         _hd15911_)))))
                              (let ()
                                (declare (not safe))
                                (_else1586415883_))))))))
                 (_compile-bind15703_
                  (lambda (_bind15847_ _post15848_ _body15849_)
                    (let ((__tmp17846
                           (let ((__tmp17847
                                  (let ((__tmp17850 (reverse _bind15847_))
                                        (__tmp17848
                                         (let ((__tmp17849
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15704_
                                                   _post15848_
                                                   _body15849_))))
                                           (declare (not safe))
                                           (cons __tmp17849 '()))))
                                    (declare (not safe))
                                    (cons __tmp17850 __tmp17848))))
                             (declare (not safe))
                             (cons 'let __tmp17847))))
                      (declare (not safe))
                      (__SRC__% __tmp17846 _stx15699_))))
                 (_compile-post15704_
                  (lambda (_post15706_ _body15707_)
                    (let ((__tmp17851
                           (let ((__tmp17852
                                  (let ((__tmp17853
                                         (let ((__tmp17855
                                                (lambda (_hd15709_ _r15710_)
                                                  (let* ((_hd1571115734_
                                                          _hd15709_)
                                                         (_E1571515738_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1571115734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1572815832_
                                                           (lambda (_expr15830_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15830_ _r15710_))))
                  (_K1572315810_
                   (lambda (_expr15807_ _id15808_)
                     (let ((__tmp17856
                            (let ((__tmp17857
                                   (let ((__tmp17858
                                          (let ((__tmp17859
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15807_ '()))))
                                            (declare (not safe))
                                            (cons _id15808_ __tmp17859))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17858))))
                              (declare (not safe))
                              (__SRC__% __tmp17857 _stx15699_))))
                       (declare (not safe))
                       (cons __tmp17856 _r15710_))))
                  (_K1571615777_
                   (lambda (_init15742_ _len15743_ _expr15744_ _tmp15745_)
                     (let ((__tmp17860
                            (let ((__tmp17861
                                   (let ((__tmp17862
                                          (let ((__tmp17876
                                                 (let ((__tmp17877
                                                        (let ((__tmp17878
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15744_ '()))))
                  (declare (not safe))
                  (cons _tmp15745_ __tmp17878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17877 '())))
                                                (__tmp17863
                                                 (let ((__tmp17872
                                                        (let ((__tmp17873
                                                               (let ((__tmp17874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17875
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15743_ '()))))
                                (declare (not safe))
                                (cons _tmp15745_ __tmp17875))))
                         (declare (not safe))
                         (cons '__check-values __tmp17874))))
                  (declare (not safe))
                  (__SRC__% __tmp17873 _stx15699_)))
               (__tmp17864
                (let ((__tmp17865
                       (map (lambda (_hd15747_)
                              (let* ((_hd1574815755_ _hd15747_)
                                     (_E1575015759_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1574815755_)))
                                     (_K1575115765_
                                      (lambda (_k15762_ _id15763_)
                                        (let ((__tmp17866
                                               (let ((__tmp17867
                                                      (let ((__tmp17868
                                                             (let ((__tmp17869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17870
                                   (let ((__tmp17871
                                          (let ()
                                            (declare (not safe))
                                            (cons _k15762_ '()))))
                                     (declare (not safe))
                                     (cons _tmp15745_ __tmp17871))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp17870))))
                       (declare (not safe))
                       (cons __tmp17869 '()))))
                (declare (not safe))
                (cons _id15763_ __tmp17868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp17867))))
                                          (declare (not safe))
                                          (__SRC__% __tmp17866 _stx15699_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1574815755_))
                                    (let ((_hd1575215768_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1574815755_)))
                                          (_tl1575315770_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1574815755_))))
                                      (let* ((_id15773_ _hd1575215768_)
                                             (_k15775_ _tl1575315770_))
                                        (declare (not safe))
                                        (_K1575115765_ _k15775_ _id15773_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1575015759_)))))
                            _init15742_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17872
                                                         __tmp17864))))
                                            (declare (not safe))
                                            (cons __tmp17876 __tmp17863))))
                                     (declare (not safe))
                                     (cons 'let __tmp17862))))
                              (declare (not safe))
                              (__SRC__% __tmp17861 _stx15699_))))
                       (declare (not safe))
                       (cons __tmp17860 _r15710_)))))
              (if (let () (declare (not safe)) (##pair? _hd1571115734_))
                  (let ((_tl1573015837_
                         (let () (declare (not safe)) (##cdr _hd1571115734_)))
                        (_hd1572915835_
                         (let () (declare (not safe)) (##car _hd1571115734_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1572915835_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1573015837_))
                            (let ((_tl1573215842_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1573015837_)))
                                  (_hd1573115840_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1573015837_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1573215842_))
                                  (let ((_expr15845_ _hd1573115840_))
                                    (declare (not safe))
                                    (_K1572815832_ _expr15845_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1573215842_))
                                      (let ((_tl1572215796_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1573215842_)))
                                            (_hd1572115794_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1573215842_))))
                                        (let ((_tmp15785_ _hd1572915835_)
                                              (_expr15792_ _hd1573115840_)
                                              (_len15799_ _hd1572115794_)
                                              (_init15801_ _tl1572215796_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1571615777_
                                             _init15801_
                                             _len15799_
                                             _expr15792_
                                             _tmp15785_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1571515738_)))))
                            (let () (declare (not safe)) (_E1571515738_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1573015837_))
                            (let ((_tl1572715822_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1573015837_)))
                                  (_hd1572615820_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1573015837_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1572715822_))
                                  (let ((_id15818_ _hd1572915835_)
                                        (_expr15825_ _hd1572615820_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1572315810_ _expr15825_ _id15818_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1572715822_))
                                      (let ((_tl1572215796_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1572715822_)))
                                            (_hd1572115794_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1572715822_))))
                                        (let ((_tmp15785_ _hd1572915835_)
                                              (_expr15792_ _hd1572615820_)
                                              (_len15799_ _hd1572115794_)
                                              (_init15801_ _tl1572215796_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1571615777_
                                             _init15801_
                                             _len15799_
                                             _expr15792_
                                             _tmp15785_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1571515738_)))))
                            (let () (declare (not safe)) (_E1571515738_)))))
                  (let () (declare (not safe)) (_E1571515738_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17854 (list _body15707_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17855
                                                   __tmp17854
                                                   _post15706_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17853))))
                             (declare (not safe))
                             (cons 'begin __tmp17852))))
                      (declare (not safe))
                      (__SRC__% __tmp17851 _stx15699_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15699_
             _compile-simple15701_
             _compile-values15702_)))))
    (define __compile-call%
      (lambda (_stx15659_)
        (let* ((_$e15661_ _stx15659_)
               (_$E1566315672_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15661_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15661_))
              (let* ((_$tgt1566415675_
                      (let () (declare (not safe)) (__AST-e _$e15661_)))
                     (_$hd1566515678_
                      (let () (declare (not safe)) (##car _$tgt1566415675_)))
                     (_$tl1566615681_
                      (let () (declare (not safe)) (##cdr _$tgt1566415675_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1566615681_))
                    (let* ((_$tgt1566715685_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1566615681_)))
                           (_$hd1566815688_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1566715685_)))
                           (_$tl1566915691_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1566715685_))))
                      (let* ((_rator15695_ _$hd1566815688_)
                             (_rands15697_ _$tl1566915691_)
                             (__tmp17879
                              (let ((__tmp17881
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15695_)))
                                    (__tmp17880 (map __compile _rands15697_)))
                                (declare (not safe))
                                (cons __tmp17881 __tmp17880))))
                        (declare (not safe))
                        (__SRC__% __tmp17879 _stx15659_)))
                    (let () (declare (not safe)) (_$E1566315672_))))
              (let () (declare (not safe)) (_$E1566315672_))))))
    (define __compile-ref%
      (lambda (_stx15621_)
        (let* ((_$e15623_ _stx15621_)
               (_$E1562515634_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15623_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15623_))
              (let* ((_$tgt1562615637_
                      (let () (declare (not safe)) (__AST-e _$e15623_)))
                     (_$hd1562715640_
                      (let () (declare (not safe)) (##car _$tgt1562615637_)))
                     (_$tl1562815643_
                      (let () (declare (not safe)) (##cdr _$tgt1562615637_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1562815643_))
                    (let* ((_$tgt1562915647_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1562815643_)))
                           (_$hd1563015650_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1562915647_)))
                           (_$tl1563115653_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1562915647_))))
                      (let ((_id15657_ _$hd1563015650_))
                        (if (let ((__tmp17882
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1563115653_))))
                              (declare (not safe))
                              (equal? __tmp17882 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15657_ _stx15621_))
                            (let () (declare (not safe)) (_$E1562515634_)))))
                    (let () (declare (not safe)) (_$E1562515634_))))
              (let () (declare (not safe)) (_$E1562515634_))))))
    (define __compile-setq%
      (lambda (_stx15568_)
        (let* ((_$e15570_ _stx15568_)
               (_$E1557215584_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15570_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15570_))
              (let* ((_$tgt1557315587_
                      (let () (declare (not safe)) (__AST-e _$e15570_)))
                     (_$hd1557415590_
                      (let () (declare (not safe)) (##car _$tgt1557315587_)))
                     (_$tl1557515593_
                      (let () (declare (not safe)) (##cdr _$tgt1557315587_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1557515593_))
                    (let* ((_$tgt1557615597_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1557515593_)))
                           (_$hd1557715600_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1557615597_)))
                           (_$tl1557815603_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1557615597_))))
                      (let ((_id15607_ _$hd1557715600_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1557815603_))
                            (let* ((_$tgt1557915609_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1557815603_)))
                                   (_$hd1558015612_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1557915609_)))
                                   (_$tl1558115615_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1557915609_))))
                              (let ((_expr15619_ _$hd1558015612_))
                                (if (let ((__tmp17888
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1558115615_))))
                                      (declare (not safe))
                                      (equal? __tmp17888 '()))
                                    (let ((__tmp17883
                                           (let ((__tmp17884
                                                  (let ((__tmp17887
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15607_
                                                            _stx15568_)))
                                                        (__tmp17885
                                                         (let ((__tmp17886
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15619_))))
                   (declare (not safe))
                   (cons __tmp17886 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17887
                                                          __tmp17885))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17884))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17883 _stx15568_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1557215584_)))))
                            (let () (declare (not safe)) (_$E1557215584_)))))
                    (let () (declare (not safe)) (_$E1557215584_))))
              (let () (declare (not safe)) (_$E1557215584_))))))
    (define __compile-if%
      (lambda (_stx15500_)
        (let* ((_$e15502_ _stx15500_)
               (_$E1550415519_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15502_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15502_))
              (let* ((_$tgt1550515522_
                      (let () (declare (not safe)) (__AST-e _$e15502_)))
                     (_$hd1550615525_
                      (let () (declare (not safe)) (##car _$tgt1550515522_)))
                     (_$tl1550715528_
                      (let () (declare (not safe)) (##cdr _$tgt1550515522_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1550715528_))
                    (let* ((_$tgt1550815532_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1550715528_)))
                           (_$hd1550915535_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1550815532_)))
                           (_$tl1551015538_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1550815532_))))
                      (let ((_p15542_ _$hd1550915535_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1551015538_))
                            (let* ((_$tgt1551115544_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1551015538_)))
                                   (_$hd1551215547_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1551115544_)))
                                   (_$tl1551315550_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1551115544_))))
                              (let ((_t15554_ _$hd1551215547_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1551315550_))
                                    (let* ((_$tgt1551415556_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1551315550_)))
                                           (_$hd1551515559_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1551415556_)))
                                           (_$tl1551615562_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1551415556_))))
                                      (let ((_f15566_ _$hd1551515559_))
                                        (if (let ((__tmp17896
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1551615562_))))
                                              (declare (not safe))
                                              (equal? __tmp17896 '()))
                                            (let ((__tmp17889
                                                   (let ((__tmp17890
                                                          (let ((__tmp17895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15542_)))
                        (__tmp17891
                         (let ((__tmp17894
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15554_)))
                               (__tmp17892
                                (let ((__tmp17893
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15566_))))
                                  (declare (not safe))
                                  (cons __tmp17893 '()))))
                           (declare (not safe))
                           (cons __tmp17894 __tmp17892))))
                    (declare (not safe))
                    (cons __tmp17895 __tmp17891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17890))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17889 _stx15500_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1550415519_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1550415519_)))))
                            (let () (declare (not safe)) (_$E1550415519_)))))
                    (let () (declare (not safe)) (_$E1550415519_))))
              (let () (declare (not safe)) (_$E1550415519_))))))
    (define __compile-quote%
      (lambda (_stx15462_)
        (let* ((_$e15464_ _stx15462_)
               (_$E1546615475_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15464_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15464_))
              (let* ((_$tgt1546715478_
                      (let () (declare (not safe)) (__AST-e _$e15464_)))
                     (_$hd1546815481_
                      (let () (declare (not safe)) (##car _$tgt1546715478_)))
                     (_$tl1546915484_
                      (let () (declare (not safe)) (##cdr _$tgt1546715478_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1546915484_))
                    (let* ((_$tgt1547015488_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1546915484_)))
                           (_$hd1547115491_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1547015488_)))
                           (_$tl1547215494_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1547015488_))))
                      (let ((_e15498_ _$hd1547115491_))
                        (if (let ((__tmp17900
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1547215494_))))
                              (declare (not safe))
                              (equal? __tmp17900 '()))
                            (let ((__tmp17897
                                   (let ((__tmp17898
                                          (let ((__tmp17899
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15498_))))
                                            (declare (not safe))
                                            (cons __tmp17899 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17898))))
                              (declare (not safe))
                              (__SRC__% __tmp17897 _stx15462_))
                            (let () (declare (not safe)) (_$E1546615475_)))))
                    (let () (declare (not safe)) (_$E1546615475_))))
              (let () (declare (not safe)) (_$E1546615475_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15424_)
        (let* ((_$e15426_ _stx15424_)
               (_$E1542815437_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15426_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15426_))
              (let* ((_$tgt1542915440_
                      (let () (declare (not safe)) (__AST-e _$e15426_)))
                     (_$hd1543015443_
                      (let () (declare (not safe)) (##car _$tgt1542915440_)))
                     (_$tl1543115446_
                      (let () (declare (not safe)) (##cdr _$tgt1542915440_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1543115446_))
                    (let* ((_$tgt1543215450_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1543115446_)))
                           (_$hd1543315453_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1543215450_)))
                           (_$tl1543415456_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1543215450_))))
                      (let ((_e15460_ _$hd1543315453_))
                        (if (let ((__tmp17903
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1543415456_))))
                              (declare (not safe))
                              (equal? __tmp17903 '()))
                            (let ((__tmp17901
                                   (let ((__tmp17902
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15460_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17902))))
                              (declare (not safe))
                              (__SRC__% __tmp17901 _stx15424_))
                            (let () (declare (not safe)) (_$E1542815437_)))))
                    (let () (declare (not safe)) (_$E1542815437_))))
              (let () (declare (not safe)) (_$E1542815437_))))))
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
