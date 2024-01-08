(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1704735467)
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
      (lambda _$args17357_
        (apply make-struct-instance __context::t _$args17357_)))
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
      (lambda _$args17354_
        (apply make-struct-instance __runtime::t _$args17354_)))
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
      (lambda _$args17351_
        (apply make-struct-instance __syntax::t _$args17351_)))
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
      (lambda _$args17348_
        (apply make-struct-instance __macro::t _$args17348_)))
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
      (lambda _$args17345_
        (apply make-struct-instance __special-form::t _$args17345_)))
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
      (lambda _$args17342_
        (apply make-struct-instance __core-form::t _$args17342_)))
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
      (lambda _$args17339_
        (apply make-struct-instance __core-expression::t _$args17339_)))
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
      (lambda _$args17336_
        (apply make-struct-instance __core-special-form::t _$args17336_)))
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
      (lambda _$args17333_
        (apply make-struct-instance __struct-info::t _$args17333_)))
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
      (lambda _$args17330_
        (apply make-struct-instance __feature::t _$args17330_)))
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
      (lambda _$args17327_
        (apply make-struct-instance __module::t _$args17327_)))
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
      (let ((__tmp17543
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17542 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17543 __tmp17542)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17302_ _ctx17303_)
        (if _ctx17303_
            (let ((_id17305_
                   (let () (declare (not safe)) (__AST-e _id17302_))))
              (let _lp17307_ ((_ctx17309_ _ctx17303_))
                (let ((_$e17311_
                       (table-ref
                        (##structure-ref _ctx17309_ '4 __context::t '#f)
                        _id17305_
                        '#f)))
                  (if _$e17311_
                      (values _$e17311_)
                      (let ((_$e17314_
                             (##structure-ref _ctx17309_ '3 __context::t '#f)))
                        (if _$e17314_
                            (let () (declare (not safe)) (_lp17307_ _$e17314_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17320_)
        (let ((_ctx17322_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17320_ _ctx17322_))))
    (define __core-resolve
      (lambda _g17545_
        (let ((_g17544_ (let () (declare (not safe)) (##length _g17545_))))
          (cond ((let () (declare (not safe)) (##fx= _g17544_ 1))
                 (apply (lambda (_id17320_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17320_)))
                        _g17545_))
                ((let () (declare (not safe)) (##fx= _g17544_ 2))
                 (apply (lambda (_id17324_ _ctx17325_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17324_ _ctx17325_)))
                        _g17545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17545_))))))
    (define __core-bound-id?__%
      (lambda (_id17285_ _is?17286_)
        (let ((_$e17288_
               (let () (declare (not safe)) (__core-resolve__0 _id17285_))))
          (if _$e17288_ (_is?17286_ _$e17288_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17294_)
        (let ((_is?17296_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17294_ _is?17296_))))
    (define __core-bound-id?
      (lambda _g17547_
        (let ((_g17546_ (let () (declare (not safe)) (##length _g17547_))))
          (cond ((let () (declare (not safe)) (##fx= _g17546_ 1))
                 (apply (lambda (_id17294_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17294_)))
                        _g17547_))
                ((let () (declare (not safe)) (##fx= _g17546_ 2))
                 (apply (lambda (_id17298_ _is?17299_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17298_ _is?17299_)))
                        _g17547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17547_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17268_ _eid17269_ _ctx17270_)
        (if _eid17269_
            (let ((__tmp17550 (##structure-ref _ctx17270_ '4 __context::t '#f))
                  (__tmp17549
                   (let () (declare (not safe)) (__AST-e _id17268_)))
                  (__tmp17548
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17269_))))
              (declare (not safe))
              (table-set! __tmp17550 __tmp17549 __tmp17548))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17275_ _eid17276_)
        (let ((_ctx17278_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17275_ _eid17276_ _ctx17278_))))
    (define __core-bind-runtime!
      (lambda _g17552_
        (let ((_g17551_ (let () (declare (not safe)) (##length _g17552_))))
          (cond ((let () (declare (not safe)) (##fx= _g17551_ 2))
                 (apply (lambda (_id17275_ _eid17276_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17275_ _eid17276_)))
                        _g17552_))
                ((let () (declare (not safe)) (##fx= _g17551_ 3))
                 (apply (lambda (_id17280_ _eid17281_ _ctx17282_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17280_
                             _eid17281_
                             _ctx17282_)))
                        _g17552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17552_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17251_ _e17252_ _make17253_)
        (let ((__tmp17553
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17252_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17252_
                   (_make17253_ _e17252_ _id17251_))))
          (declare (not safe))
          (table-set! __*core* _id17251_ __tmp17553))))
    (define __core-bind-syntax!__0
      (lambda (_id17258_ _e17259_)
        (let ((_make17261_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17258_ _e17259_ _make17261_))))
    (define __core-bind-syntax!
      (lambda _g17555_
        (let ((_g17554_ (let () (declare (not safe)) (##length _g17555_))))
          (cond ((let () (declare (not safe)) (##fx= _g17554_ 2))
                 (apply (lambda (_id17258_ _e17259_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17258_ _e17259_)))
                        _g17555_))
                ((let () (declare (not safe)) (##fx= _g17554_ 3))
                 (apply (lambda (_id17263_ _e17264_ _make17265_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17263_
                             _e17264_
                             _make17265_)))
                        _g17555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17555_))))))
    (define __core-bind-macro!
      (lambda (_id17247_ _e17248_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17247_ _e17248_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17244_ _e17245_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17244_ _e17245_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17228_ _e17229_ _ctx17230_)
        (let ((__tmp17559 (##structure-ref _ctx17230_ '4 __context::t '#f))
              (__tmp17558 (let () (declare (not safe)) (__AST-e _id17228_)))
              (__tmp17556
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17229_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17229_
                   (let ((__tmp17557
                          (let () (declare (not safe)) (__AST-e _id17228_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17229_ __tmp17557)))))
          (declare (not safe))
          (table-set! __tmp17559 __tmp17558 __tmp17556))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17235_ _e17236_)
        (let ((_ctx17238_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17235_ _e17236_ _ctx17238_))))
    (define __core-bind-user-syntax!
      (lambda _g17561_
        (let ((_g17560_ (let () (declare (not safe)) (##length _g17561_))))
          (cond ((let () (declare (not safe)) (##fx= _g17560_ 2))
                 (apply (lambda (_id17235_ _e17236_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17235_ _e17236_)))
                        _g17561_))
                ((let () (declare (not safe)) (##fx= _g17560_ 3))
                 (apply (lambda (_id17240_ _e17241_ _ctx17242_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17240_
                             _e17241_
                             _ctx17242_)))
                        _g17561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17561_))))))
    (define make-__runtime-id__%
      (lambda (_id17209_ _ctx17210_)
        (let ((_id17212_ (let () (declare (not safe)) (__AST-e _id17209_))))
          (if (let () (declare (not safe)) (eq? _id17212_ '_))
              '#f
              (if (uninterned-symbol? _id17212_)
                  (gensym _id17212_)
                  (if (let () (declare (not safe)) (symbol? _id17212_))
                      (let ((_$e17214_
                             (##structure-ref _ctx17210_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17214_))
                            (gensym _id17212_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17214_))
                                (let ((__tmp17562
                                       (##structure-ref
                                        _ctx17210_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp17562 '"#" _id17212_))
                                _id17212_)))
                      (error '"Illegal runtime identifier" _id17212_)))))))
    (define make-__runtime-id__0
      (lambda (_id17220_)
        (let ((_ctx17222_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17220_ _ctx17222_))))
    (define make-__runtime-id
      (lambda _g17564_
        (let ((_g17563_ (let () (declare (not safe)) (##length _g17564_))))
          (cond ((let () (declare (not safe)) (##fx= _g17563_ 1))
                 (apply (lambda (_id17220_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17220_)))
                        _g17564_))
                ((let () (declare (not safe)) (##fx= _g17563_ 2))
                 (apply (lambda (_id17224_ _ctx17225_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17224_ _ctx17225_)))
                        _g17564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17564_))))))
    (define make-__context-local__%
      (lambda (_super17198_)
        (let ((__tmp17565
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17198_ __tmp17565))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17204_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17204_))))
    (define make-__context-local
      (lambda _g17567_
        (let ((_g17566_ (let () (declare (not safe)) (##length _g17567_))))
          (cond ((let () (declare (not safe)) (##fx= _g17566_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17567_))
                ((let () (declare (not safe)) (##fx= _g17566_ 1))
                 (apply (lambda (_super17206_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17206_)))
                        _g17567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17567_))))))
    (define make-__context-module__%
      (lambda (_id17178_ _ns17179_ _path17180_ _super17181_)
        (let ((__tmp17568
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17179_
           _super17181_
           __tmp17568
           _id17178_
           _path17180_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17186_ _ns17187_ _path17188_)
        (let ((_super17190_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17186_
           _ns17187_
           _path17188_
           _super17190_))))
    (define make-__context-module
      (lambda _g17570_
        (let ((_g17569_ (let () (declare (not safe)) (##length _g17570_))))
          (cond ((let () (declare (not safe)) (##fx= _g17569_ 3))
                 (apply (lambda (_id17186_ _ns17187_ _path17188_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17186_
                             _ns17187_
                             _path17188_)))
                        _g17570_))
                ((let () (declare (not safe)) (##fx= _g17569_ 4))
                 (apply (lambda (_id17192_ _ns17193_ _path17194_ _super17195_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17192_
                             _ns17193_
                             _path17194_
                             _super17195_)))
                        _g17570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17570_))))))
    (define __SRC__%
      (lambda (_e17161_ _src-stx17162_)
        (if (or (let () (declare (not safe)) (pair? _e17161_))
                (let () (declare (not safe)) (symbol? _e17161_)))
            (let ((__tmp17574
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17162_
                          'gerbil#AST::t))
                       (let ((__tmp17575
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17162_))))
                         (declare (not safe))
                         (__locat __tmp17575))
                       '#f)))
              (declare (not safe))
              (##make-source _e17161_ __tmp17574))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17161_ 'gerbil#AST::t))
                (let ((__tmp17573
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17161_ '1 AST::t '#f)))
                      (__tmp17571
                       (let ((__tmp17572
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17161_))))
                         (declare (not safe))
                         (__locat __tmp17572))))
                  (declare (not safe))
                  (##make-source __tmp17573 __tmp17571))
                (error '"BUG! Cannot sourcify object" _e17161_)))))
    (define __SRC__0
      (lambda (_e17170_)
        (let ((_src-stx17172_ '#f))
          (declare (not safe))
          (__SRC__% _e17170_ _src-stx17172_))))
    (define __SRC
      (lambda _g17577_
        (let ((_g17576_ (let () (declare (not safe)) (##length _g17577_))))
          (cond ((let () (declare (not safe)) (##fx= _g17576_ 1))
                 (apply (lambda (_e17170_)
                          (let () (declare (not safe)) (__SRC__0 _e17170_)))
                        _g17577_))
                ((let () (declare (not safe)) (##fx= _g17576_ 2))
                 (apply (lambda (_e17174_ _src-stx17175_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17174_ _src-stx17175_)))
                        _g17577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17577_))))))
    (define __locat
      (lambda (_loc17158_)
        (if (let () (declare (not safe)) (##locat? _loc17158_))
            _loc17158_
            '#f)))
    (define __check-values
      (lambda (_obj17153_ _k17154_)
        (let ((_count17156_
               (if (let () (declare (not safe)) (##values? _obj17153_))
                   (let () (declare (not safe)) (##vector-length _obj17153_))
                   '1)))
          (if (fx= _count17156_ _k17154_)
              '#!void
              (error (if (fx< _count17156_ _k17154_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17153_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17153_))
                         _obj17153_)
                     _k17154_)))))
    (define __compile
      (lambda (_stx17123_)
        (let* ((_$e17125_ _stx17123_)
               (_$E1712717133_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17125_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17125_))
              (let* ((_$tgt1712817136_
                      (let () (declare (not safe)) (__AST-e _$e17125_)))
                     (_$hd1712917139_
                      (let () (declare (not safe)) (##car _$tgt1712817136_)))
                     (_$tl1713017142_
                      (let () (declare (not safe)) (##cdr _$tgt1712817136_))))
                (let* ((_form17146_ _$hd1712917139_)
                       (_$e17148_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17146_))))
                  (if _$e17148_
                      ((lambda (_bind17151_)
                         ((##structure-ref _bind17151_ '1 __syntax::t '#f)
                          _stx17123_))
                       _$e17148_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx17123_
                         _form17146_)))))
              (let () (declare (not safe)) (_$E1712717133_))))))
    (define __compile-error__%
      (lambda (_stx17110_ _detail17111_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17110_
           _detail17111_))))
    (define __compile-error__0
      (lambda (_stx17116_)
        (let ((_detail17118_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17116_ _detail17118_))))
    (define __compile-error
      (lambda _g17579_
        (let ((_g17578_ (let () (declare (not safe)) (##length _g17579_))))
          (cond ((let () (declare (not safe)) (##fx= _g17578_ 1))
                 (apply (lambda (_stx17116_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17116_)))
                        _g17579_))
                ((let () (declare (not safe)) (##fx= _g17578_ 2))
                 (apply (lambda (_stx17120_ _detail17121_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17120_ _detail17121_)))
                        _g17579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17579_))))))
    (define __compile-ignore%
      (lambda (_stx17107_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17107_))))
    (define __compile-begin%
      (lambda (_stx17082_)
        (let* ((_$e17084_ _stx17082_)
               (_$E1708617092_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17084_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17084_))
              (let* ((_$tgt1708717095_
                      (let () (declare (not safe)) (__AST-e _$e17084_)))
                     (_$hd1708817098_
                      (let () (declare (not safe)) (##car _$tgt1708717095_)))
                     (_$tl1708917101_
                      (let () (declare (not safe)) (##cdr _$tgt1708717095_))))
                (let* ((_body17105_ _$tl1708917101_)
                       (__tmp17580
                        (let ((__tmp17581 (map __compile _body17105_)))
                          (declare (not safe))
                          (cons 'begin __tmp17581))))
                  (declare (not safe))
                  (__SRC__% __tmp17580 _stx17082_)))
              (let () (declare (not safe)) (_$E1708617092_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17057_)
        (let* ((_$e17059_ _stx17057_)
               (_$E1706117067_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17059_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17059_))
              (let* ((_$tgt1706217070_
                      (let () (declare (not safe)) (__AST-e _$e17059_)))
                     (_$hd1706317073_
                      (let () (declare (not safe)) (##car _$tgt1706217070_)))
                     (_$tl1706417076_
                      (let () (declare (not safe)) (##cdr _$tgt1706217070_))))
                (let* ((_body17080_ _$tl1706417076_)
                       (__tmp17582
                        (let ((__tmp17583
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17080_))))
                          (declare (not safe))
                          (cons 'begin __tmp17583))))
                  (declare (not safe))
                  (__SRC__% __tmp17582 _stx17057_)))
              (let () (declare (not safe)) (_$E1706117067_))))))
    (define __compile-import%
      (lambda (_stx17032_)
        (let* ((_$e17034_ _stx17032_)
               (_$E1703617042_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17034_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17034_))
              (let* ((_$tgt1703717045_
                      (let () (declare (not safe)) (__AST-e _$e17034_)))
                     (_$hd1703817048_
                      (let () (declare (not safe)) (##car _$tgt1703717045_)))
                     (_$tl1703917051_
                      (let () (declare (not safe)) (##cdr _$tgt1703717045_))))
                (let* ((_body17055_ _$tl1703917051_)
                       (__tmp17584
                        (let ((__tmp17585
                               (let ((__tmp17586
                                      (let ((__tmp17587
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17055_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17587))))
                                 (declare (not safe))
                                 (cons __tmp17586 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17585))))
                  (declare (not safe))
                  (__SRC__% __tmp17584 _stx17032_)))
              (let () (declare (not safe)) (_$E1703617042_))))))
    (define __compile-begin-annotation%
      (lambda (_stx16979_)
        (let* ((_$e16981_ _stx16979_)
               (_$E1698316995_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16981_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16981_))
              (let* ((_$tgt1698416998_
                      (let () (declare (not safe)) (__AST-e _$e16981_)))
                     (_$hd1698517001_
                      (let () (declare (not safe)) (##car _$tgt1698416998_)))
                     (_$tl1698617004_
                      (let () (declare (not safe)) (##cdr _$tgt1698416998_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1698617004_))
                    (let* ((_$tgt1698717008_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1698617004_)))
                           (_$hd1698817011_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1698717008_)))
                           (_$tl1698917014_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1698717008_))))
                      (let ((_ann17018_ _$hd1698817011_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1698917014_))
                            (let* ((_$tgt1699017020_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1698917014_)))
                                   (_$hd1699117023_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1699017020_)))
                                   (_$tl1699217026_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1699017020_))))
                              (let ((_expr17030_ _$hd1699117023_))
                                (if (let ((__tmp17588
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1699217026_))))
                                      (declare (not safe))
                                      (equal? __tmp17588 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17030_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1698316995_)))))
                            (let () (declare (not safe)) (_$E1698316995_)))))
                    (let () (declare (not safe)) (_$E1698316995_))))
              (let () (declare (not safe)) (_$E1698316995_))))))
    (define __compile-define-values%
      (lambda (_stx16870_)
        (let* ((_$e16872_ _stx16870_)
               (_$E1687416886_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16872_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16872_))
              (let* ((_$tgt1687516889_
                      (let () (declare (not safe)) (__AST-e _$e16872_)))
                     (_$hd1687616892_
                      (let () (declare (not safe)) (##car _$tgt1687516889_)))
                     (_$tl1687716895_
                      (let () (declare (not safe)) (##cdr _$tgt1687516889_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1687716895_))
                    (let* ((_$tgt1687816899_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1687716895_)))
                           (_$hd1687916902_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1687816899_)))
                           (_$tl1688016905_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1687816899_))))
                      (let ((_hd16909_ _$hd1687916902_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1688016905_))
                            (let* ((_$tgt1688116911_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1688016905_)))
                                   (_$hd1688216914_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1688116911_)))
                                   (_$tl1688316917_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1688116911_))))
                              (let ((_expr16921_ _$hd1688216914_))
                                (if (let ((__tmp17621
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1688316917_))))
                                      (declare (not safe))
                                      (equal? __tmp17621 '()))
                                    (let* ((_$e16923_ _hd16909_)
                                           (_$E1692516966_
                                            (lambda ()
                                              (let ((_$E1692616951_
                                                     (lambda ()
                                                       (let* ((_$E1692716938_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e16923_))))
                      (_ids16941_ _hd16909_)
                      (_len16943_ (length _ids16941_))
                      (_tmp16945_
                       (let ((__tmp17589 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17589))))
                 (let ((__tmp17590
                        (let ((__tmp17591
                               (let ((__tmp17608
                                      (let ((__tmp17609
                                             (let ((__tmp17610
                                                    (let ((__tmp17611
                                                           (let ((__tmp17612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr16921_))))
                     (declare (not safe))
                     (cons __tmp17612 '()))))
              (declare (not safe))
              (cons _tmp16945_ __tmp17611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17610))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17609 _stx16870_)))
                                     (__tmp17592
                                      (let ((__tmp17604
                                             (let ((__tmp17605
                                                    (let ((__tmp17606
                                                           (let ((__tmp17607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len16943_ '()))))
                     (declare (not safe))
                     (cons _tmp16945_ __tmp17607))))
              (declare (not safe))
              (cons '__check-values __tmp17606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17605
                                                _stx16870_)))
                                            (__tmp17593
                                             (let ((__tmp17594
                                                    (let ((__tmp17596
                                                           (lambda (_id16948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k16949_)
                     (if (let () (declare (not safe)) (__AST-e _id16948_))
                         (let ((__tmp17597
                                (let ((__tmp17598
                                       (let ((__tmp17603
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id16948_)))
                                             (__tmp17599
                                              (let ((__tmp17600
                                                     (let ((__tmp17601
                                                            (let ((__tmp17602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k16949_ '()))))
                      (declare (not safe))
                      (cons _tmp16945_ __tmp17602))))
               (declare (not safe))
               (cons '##vector-ref __tmp17601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17600 '()))))
                                         (declare (not safe))
                                         (cons __tmp17603 __tmp17599))))
                                  (declare (not safe))
                                  (cons 'define __tmp17598))))
                           (declare (not safe))
                           (__SRC__% __tmp17597 _stx16870_))
                         '#f)))
                  (__tmp17595 (let () (declare (not safe)) (iota _len16943_))))
              (declare (not safe))
              (filter-map2 __tmp17596 _ids16941_ __tmp17595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17594))))
                                        (declare (not safe))
                                        (cons __tmp17604 __tmp17593))))
                                 (declare (not safe))
                                 (cons __tmp17608 __tmp17592))))
                          (declare (not safe))
                          (cons 'begin __tmp17591))))
                   (declare (not safe))
                   (__SRC__% __tmp17590 _stx16870_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e16923_))
                                                    (let* ((_$tgt1692816954_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e16923_)))
                                                           (_$hd1692916957_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1692816954_)))
                                                           (_$tl1693016960_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1692816954_))))
                                                      (let ((_id16964_
                                                             _$hd1692916957_))
                                                        (if (let ((__tmp17618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1693016960_))))
                      (declare (not safe))
                      (equal? __tmp17618 '()))
                    (let ((__tmp17613
                           (let ((__tmp17614
                                  (let ((__tmp17617
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id16964_)))
                                        (__tmp17615
                                         (let ((__tmp17616
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr16921_))))
                                           (declare (not safe))
                                           (cons __tmp17616 '()))))
                                    (declare (not safe))
                                    (cons __tmp17617 __tmp17615))))
                             (declare (not safe))
                             (cons 'define __tmp17614))))
                      (declare (not safe))
                      (__SRC__% __tmp17613 _stx16870_))
                    (let () (declare (not safe)) (_$E1692616951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1692616951_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e16923_))
                                          (let* ((_$tgt1693116969_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e16923_)))
                                                 (_$hd1693216972_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1693116969_)))
                                                 (_$tl1693316975_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1693116969_))))
                                            (if (let ((__tmp17620
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1693216972_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17620 '#f))
                                                (if (let ((__tmp17619
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1693316975_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17619 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr16921_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1692516966_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1692516966_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1692516966_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1687416886_)))))
                            (let () (declare (not safe)) (_$E1687416886_)))))
                    (let () (declare (not safe)) (_$E1687416886_))))
              (let () (declare (not safe)) (_$E1687416886_))))))
    (define __compile-head-id
      (lambda (_e16868_)
        (let ((__tmp17622
               (if (let () (declare (not safe)) (__AST-e _e16868_))
                   _e16868_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17622))))
    (define __compile-lambda-head
      (lambda (_hd16825_)
        (let _recur16827_ ((_rest16829_ _hd16825_))
          (let* ((_$e16831_ _rest16829_)
                 (_$E1683316851_
                  (lambda ()
                    (let ((_$E1683416848_
                           (lambda ()
                             (let* ((_$E1683516843_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e16831_))))
                                    (_tail16846_ _$e16831_))
                               (declare (not safe))
                               (__compile-head-id _tail16846_)))))
                      (if (let ((__tmp17623
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16831_))))
                            (declare (not safe))
                            (equal? __tmp17623 '()))
                          '()
                          (let () (declare (not safe)) (_$E1683416848_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16831_))
                (let* ((_$tgt1683616854_
                        (let () (declare (not safe)) (__AST-e _$e16831_)))
                       (_$hd1683716857_
                        (let () (declare (not safe)) (##car _$tgt1683616854_)))
                       (_$tl1683816860_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1683616854_))))
                  (let* ((_hd16864_ _$hd1683716857_)
                         (_rest16866_ _$tl1683816860_))
                    (let ((__tmp17625
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16864_)))
                          (__tmp17624
                           (let ()
                             (declare (not safe))
                             (_recur16827_ _rest16866_))))
                      (declare (not safe))
                      (cons __tmp17625 __tmp17624))))
                (let () (declare (not safe)) (_$E1683316851_)))))))
    (define __compile-lambda%
      (lambda (_stx16772_)
        (let* ((_$e16774_ _stx16772_)
               (_$E1677616788_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16774_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16774_))
              (let* ((_$tgt1677716791_
                      (let () (declare (not safe)) (__AST-e _$e16774_)))
                     (_$hd1677816794_
                      (let () (declare (not safe)) (##car _$tgt1677716791_)))
                     (_$tl1677916797_
                      (let () (declare (not safe)) (##cdr _$tgt1677716791_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1677916797_))
                    (let* ((_$tgt1678016801_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1677916797_)))
                           (_$hd1678116804_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1678016801_)))
                           (_$tl1678216807_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1678016801_))))
                      (let ((_hd16811_ _$hd1678116804_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1678216807_))
                            (let* ((_$tgt1678316813_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1678216807_)))
                                   (_$hd1678416816_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1678316813_)))
                                   (_$tl1678516819_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1678316813_))))
                              (let ((_body16823_ _$hd1678416816_))
                                (if (let ((__tmp17631
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1678516819_))))
                                      (declare (not safe))
                                      (equal? __tmp17631 '()))
                                    (let ((__tmp17626
                                           (let ((__tmp17627
                                                  (let ((__tmp17630
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16811_)))
                                                        (__tmp17628
                                                         (let ((__tmp17629
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16823_))))
                   (declare (not safe))
                   (cons __tmp17629 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17630
                                                          __tmp17628))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17627))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17626 _stx16772_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1677616788_)))))
                            (let () (declare (not safe)) (_$E1677616788_)))))
                    (let () (declare (not safe)) (_$E1677616788_))))
              (let () (declare (not safe)) (_$E1677616788_))))))
    (define __compile-case-lambda%
      (lambda (_stx16564_)
        (letrec ((_variadic?16566_
                  (lambda (_hd16737_)
                    (let* ((_$e16739_ _hd16737_)
                           (_$E1674116757_
                            (lambda ()
                              (let ((_$E1674216754_
                                     (lambda ()
                                       (let ((_$E1674316751_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e16739_)))))
                                         '#t))))
                                (if (let ((__tmp17632
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16739_))))
                                      (declare (not safe))
                                      (equal? __tmp17632 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1674216754_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16739_))
                          (let* ((_$tgt1674416760_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16739_)))
                                 (_$hd1674516763_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1674416760_)))
                                 (_$tl1674616766_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1674416760_))))
                            (let ((_rest16770_ _$tl1674616766_))
                              (declare (not safe))
                              (_variadic?16566_ _rest16770_)))
                          (let () (declare (not safe)) (_$E1674116757_))))))
                 (_arity16567_
                  (lambda (_hd16702_)
                    (let _lp16704_ ((_rest16706_ _hd16702_) (_k16707_ '0))
                      (let* ((_$e16709_ _rest16706_)
                             (_$E1671116722_
                              (lambda ()
                                (let ((_$E1671216719_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e16709_)))))
                                  _k16707_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16709_))
                            (let* ((_$tgt1671316725_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16709_)))
                                   (_$hd1671416728_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1671316725_)))
                                   (_$tl1671516731_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1671316725_))))
                              (let* ((_rest16735_ _$tl1671516731_)
                                     (__tmp17633
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16707_ '1))))
                                (declare (not safe))
                                (_lp16704_ _rest16735_ __tmp17633)))
                            (let () (declare (not safe)) (_$E1671116722_)))))))
                 (_generate16568_
                  (lambda (_rest16629_ _args16630_ _len16631_)
                    (let* ((_$e16633_ _rest16629_)
                           (_$E1663516646_
                            (lambda ()
                              (let* ((_$E1663616643_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e16633_))))
                                     (__tmp17634
                                      (let ((__tmp17635
                                             (let ((__tmp17636
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16630_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17636))))
                                        (declare (not safe))
                                        (cons 'error __tmp17635))))
                                (declare (not safe))
                                (__SRC__% __tmp17634 _stx16564_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16633_))
                          (let* ((_$tgt1663716649_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16633_)))
                                 (_$hd1663816652_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1663716649_)))
                                 (_$tl1663916655_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1663716649_))))
                            (let* ((_clause16659_ _$hd1663816652_)
                                   (_rest16661_ _$tl1663916655_)
                                   (_$e16663_ _clause16659_)
                                   (_$E1666516674_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e16663_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16663_))
                                  (let* ((_$tgt1666616677_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16663_)))
                                         (_$hd1666716680_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1666616677_)))
                                         (_$tl1666816683_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1666616677_))))
                                    (let ((_hd16687_ _$hd1666716680_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1666816683_))
                                          (let* ((_$tgt1666916689_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1666816683_)))
                                                 (_$hd1667016692_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1666916689_)))
                                                 (_$tl1667116695_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1666916689_))))
                                            (if (let ((__tmp17651
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1667116695_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17651 '()))
                                                (let ((_clen16699_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16567_
                                                          _hd16687_)))
                                                      (_cmp16700_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16566_
                                                              _hd16687_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17637
                                                         (let ((__tmp17638
                                                                (let ((__tmp17648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17649
                                      (let ((__tmp17650
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16699_ '()))))
                                        (declare (not safe))
                                        (cons _len16631_ __tmp17650))))
                                 (declare (not safe))
                                 (cons _cmp16700_ __tmp17649)))
                              (__tmp17639
                               (let ((__tmp17642
                                      (let ((__tmp17643
                                             (let ((__tmp17644
                                                    (let ((__tmp17646
                                                           (let ((__tmp17647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16659_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17647)))
                  (__tmp17645
                   (let () (declare (not safe)) (cons _args16630_ '()))))
              (declare (not safe))
              (cons __tmp17646 __tmp17645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17644))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17643 _stx16564_)))
                                     (__tmp17640
                                      (let ((__tmp17641
                                             (let ()
                                               (declare (not safe))
                                               (_generate16568_
                                                _rest16661_
                                                _args16630_
                                                _len16631_))))
                                        (declare (not safe))
                                        (cons __tmp17641 '()))))
                                 (declare (not safe))
                                 (cons __tmp17642 __tmp17640))))
                          (declare (not safe))
                          (cons __tmp17648 __tmp17639))))
                   (declare (not safe))
                   (cons 'if __tmp17638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17637
                                                     _stx16564_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1666516674_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1666516674_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1666516674_)))))
                          (let () (declare (not safe)) (_$E1663516646_)))))))
          (let* ((_$e16570_ _stx16564_)
                 (_$E1657216604_
                  (lambda ()
                    (let ((_$E1657316586_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e16570_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16570_))
                          (let* ((_$tgt1657416589_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16570_)))
                                 (_$hd1657516592_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1657416589_)))
                                 (_$tl1657616595_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1657416589_))))
                            (let ((_clauses16599_ _$tl1657616595_))
                              (let ((_args16601_
                                     (let ((__tmp17652 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17652 _stx16564_)))
                                    (_len16602_
                                     (let ((__tmp17653 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17653 _stx16564_))))
                                (let ((__tmp17654
                                       (let ((__tmp17655
                                              (let ((__tmp17656
                                                     (let ((__tmp17657
                                                            (let ((__tmp17658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17659
                                  (let ((__tmp17662
                                         (let ((__tmp17663
                                                (let ((__tmp17664
                                                       (let ((__tmp17665
                                                              (let ((__tmp17666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17667
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16601_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17667))))
                        (declare (not safe))
                        (__SRC__% __tmp17666 _stx16564_))))
                 (declare (not safe))
                 (cons __tmp17665 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16602_
                                                        __tmp17664))))
                                           (declare (not safe))
                                           (cons __tmp17663 '())))
                                        (__tmp17660
                                         (let ((__tmp17661
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16568_
                                                   _clauses16599_
                                                   _args16601_
                                                   _len16602_))))
                                           (declare (not safe))
                                           (cons __tmp17661 '()))))
                                    (declare (not safe))
                                    (cons __tmp17662 __tmp17660))))
                             (declare (not safe))
                             (cons 'let __tmp17659))))
                      (declare (not safe))
                      (__SRC__% __tmp17658 _stx16564_))))
               (declare (not safe))
               (cons __tmp17657 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16601_
                                                      __tmp17656))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17655))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17654 _stx16564_)))))
                          (let () (declare (not safe)) (_$E1657316586_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16570_))
                (let* ((_$tgt1657716607_
                        (let () (declare (not safe)) (__AST-e _$e16570_)))
                       (_$hd1657816610_
                        (let () (declare (not safe)) (##car _$tgt1657716607_)))
                       (_$tl1657916613_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1657716607_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1657916613_))
                      (let* ((_$tgt1658016617_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1657916613_)))
                             (_$hd1658116620_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1658016617_)))
                             (_$tl1658216623_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1658016617_))))
                        (let ((_clause16627_ _$hd1658116620_))
                          (if (let ((__tmp17669
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1658216623_))))
                                (declare (not safe))
                                (equal? __tmp17669 '()))
                              (let ((__tmp17668
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16627_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17668))
                              (let () (declare (not safe)) (_$E1657216604_)))))
                      (let () (declare (not safe)) (_$E1657216604_))))
                (let () (declare (not safe)) (_$E1657216604_)))))))
    (define __compile-let-form
      (lambda (_stx16333_ _compile-simple16334_ _compile-values16335_)
        (letrec ((_simple-bind?16337_
                  (lambda (_hd16522_)
                    (let* ((_hd1652316533_ _hd16522_)
                           (_else1652616541_ (lambda () '#f)))
                      (let ((_K1652916554_ (lambda (_id16552_) '#t))
                            (_K1652816546_ (lambda () '#t)))
                        (let ((_try-match1652516549_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1652316533_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1652816546_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1652616541_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1652316533_))
                              (let ((_tl1653116559_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1652316533_)))
                                    (_hd1653016557_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1652316533_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1653116559_))
                                    (let ((_id16562_ _hd1653016557_))
                                      (declare (not safe))
                                      (_K1652916554_ _id16562_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1652516549_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1652516549_))))))))
                 (_car-e16338_
                  (lambda (_hd16520_)
                    (if (let () (declare (not safe)) (pair? _hd16520_))
                        (car _hd16520_)
                        _hd16520_))))
          (let* ((_$e16340_ _stx16333_)
                 (_$E1634216485_
                  (lambda ()
                    (let ((_$E1634316365_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e16340_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16340_))
                          (let* ((_$tgt1634416368_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16340_)))
                                 (_$hd1634516371_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1634416368_)))
                                 (_$tl1634616374_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1634416368_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1634616374_))
                                (let* ((_$tgt1634716378_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1634616374_)))
                                       (_$hd1634816381_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1634716378_)))
                                       (_$tl1634916384_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1634716378_))))
                                  (let ((_hd16388_ _$hd1634816381_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1634916384_))
                                        (let* ((_$tgt1635016390_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1634916384_)))
                                               (_$hd1635116393_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1635016390_)))
                                               (_$tl1635216396_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1635016390_))))
                                          (let ((_body16400_ _$hd1635116393_))
                                            (if (let ((__tmp17672
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1635216396_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17672 '()))
                                                (let* ((_hd-ids16440_
                                                        (map (lambda (_bind16402_)
                                                               (let* ((_$e16404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16402_)
                              (_$E1640616415_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e16404_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16404_))
                             (let* ((_$tgt1640716418_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16404_)))
                                    (_$hd1640816421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1640716418_)))
                                    (_$tl1640916424_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1640716418_))))
                               (let ((_ids16428_ _$hd1640816421_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1640916424_))
                                     (let* ((_$tgt1641016430_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1640916424_)))
                                            (_$hd1641116433_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1641016430_)))
                                            (_$tl1641216436_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1641016430_))))
                                       (if (let ((__tmp17670
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1641216436_))))
                                             (declare (not safe))
                                             (equal? __tmp17670 '()))
                                           _ids16428_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1640616415_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1640616415_)))))
                             (let () (declare (not safe)) (_$E1640616415_)))))
                     _hd16388_))
               (_exprs16480_
                (map (lambda (_bind16442_)
                       (let* ((_$e16444_ _bind16442_)
                              (_$E1644616455_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e16444_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16444_))
                             (let* ((_$tgt1644716458_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16444_)))
                                    (_$hd1644816461_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1644716458_)))
                                    (_$tl1644916464_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1644716458_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1644916464_))
                                   (let* ((_$tgt1645016468_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1644916464_)))
                                          (_$hd1645116471_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1645016468_)))
                                          (_$tl1645216474_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1645016468_))))
                                     (let ((_expr16478_ _$hd1645116471_))
                                       (if (let ((__tmp17671
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1645216474_))))
                                             (declare (not safe))
                                             (equal? __tmp17671 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16478_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1644616455_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1644616455_))))
                             (let () (declare (not safe)) (_$E1644616455_)))))
                     _hd16388_))
               (_body16482_
                (let () (declare (not safe)) (__compile _body16400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16440_))
              (_compile-simple16334_
               (map _car-e16338_ _hd-ids16440_)
               _exprs16480_
               _body16482_)
              (_compile-values16335_ _hd-ids16440_ _exprs16480_ _body16482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1634316365_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1634316365_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1634316365_))))
                          (let () (declare (not safe)) (_$E1634316365_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16340_))
                (let* ((_$tgt1635316488_
                        (let () (declare (not safe)) (__AST-e _$e16340_)))
                       (_$hd1635416491_
                        (let () (declare (not safe)) (##car _$tgt1635316488_)))
                       (_$tl1635516494_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1635316488_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1635516494_))
                      (let* ((_$tgt1635616498_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1635516494_)))
                             (_$hd1635716501_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1635616498_)))
                             (_$tl1635816504_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1635616498_))))
                        (if (let ((__tmp17674
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1635716501_))))
                              (declare (not safe))
                              (equal? __tmp17674 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1635816504_))
                                (let* ((_$tgt1635916508_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1635816504_)))
                                       (_$hd1636016511_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1635916508_)))
                                       (_$tl1636116514_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1635916508_))))
                                  (let ((_body16518_ _$hd1636016511_))
                                    (if (let ((__tmp17673
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1636116514_))))
                                          (declare (not safe))
                                          (equal? __tmp17673 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16518_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1634216485_)))))
                                (let () (declare (not safe)) (_$E1634216485_)))
                            (let () (declare (not safe)) (_$E1634216485_))))
                      (let () (declare (not safe)) (_$E1634216485_))))
                (let () (declare (not safe)) (_$E1634216485_)))))))
    (define __compile-let-values%
      (lambda (_stx16148_)
        (letrec ((_compile-simple16150_
                  (lambda (_hd-ids16329_ _exprs16330_ _body16331_)
                    (let ((__tmp17675
                           (let ((__tmp17676
                                  (let ((__tmp17678
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16329_)
                                              _exprs16330_))
                                        (__tmp17677
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16331_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17678 __tmp17677))))
                             (declare (not safe))
                             (cons 'let __tmp17676))))
                      (declare (not safe))
                      (__SRC__% __tmp17675 _stx16148_))))
                 (_compile-values16151_
                  (lambda (_hd-ids16247_ _exprs16248_ _body16249_)
                    (let _lp16251_ ((_rest16253_ _hd-ids16247_)
                                    (_exprs16254_ _exprs16248_)
                                    (_bind16255_ '())
                                    (_post16256_ '()))
                      (let* ((_rest1625716271_ _rest16253_)
                             (_else1626016279_
                              (lambda ()
                                (let ((__tmp17679
                                       (let ((__tmp17680
                                              (let ((__tmp17683
                                                     (reverse _bind16255_))
                                                    (__tmp17681
                                                     (let ((__tmp17682
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16152_
                                                               _post16256_
                                                               _body16249_))))
                                                       (declare (not safe))
                                                       (cons __tmp17682 '()))))
                                                (declare (not safe))
                                                (cons __tmp17683 __tmp17681))))
                                         (declare (not safe))
                                         (cons 'let __tmp17680))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17679 _stx16148_)))))
                        (let ((_K1626516312_
                               (lambda (_rest16309_ _id16310_)
                                 (let ((__tmp17689 (cdr _exprs16254_))
                                       (__tmp17684
                                        (let ((__tmp17685
                                               (let ((__tmp17688
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16310_)))
                                                     (__tmp17686
                                                      (let ((__tmp17687
                                                             (car _exprs16254_)))
                                                        (declare (not safe))
                                                        (cons __tmp17687
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17688
                                                       __tmp17686))))
                                          (declare (not safe))
                                          (cons __tmp17685 _bind16255_))))
                                   (declare (not safe))
                                   (_lp16251_
                                    _rest16309_
                                    __tmp17689
                                    __tmp17684
                                    _post16256_))))
                              (_K1626216294_
                               (lambda (_rest16283_ _hd16284_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16284_))
                                     (let ((__tmp17710 (cdr _exprs16254_))
                                           (__tmp17703
                                            (let ((__tmp17704
                                                   (let ((__tmp17709
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16284_)))
                                                         (__tmp17705
                                                          (let ((__tmp17706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17707
                                (let ((__tmp17708 (car _exprs16254_)))
                                  (declare (not safe))
                                  (cons __tmp17708 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17707))))
                    (declare (not safe))
                    (cons __tmp17706 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17709
                                                           __tmp17705))))
                                              (declare (not safe))
                                              (cons __tmp17704 _bind16255_))))
                                       (declare (not safe))
                                       (_lp16251_
                                        _rest16283_
                                        __tmp17710
                                        __tmp17703
                                        _post16256_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16284_))
                                         (let* ((_len16286_ (length _hd16284_))
                                                (_tmp16288_
                                                 (let ((__tmp17690 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17690))))
                                           (let ((__tmp17702
                                                  (cdr _exprs16254_))
                                                 (__tmp17698
                                                  (let ((__tmp17699
                                                         (let ((__tmp17700
                                                                (let ((__tmp17701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16254_)))
                          (declare (not safe))
                          (cons __tmp17701 '()))))
                   (declare (not safe))
                   (cons _tmp16288_ __tmp17700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17699
                                                          _bind16255_)))
                                                 (__tmp17691
                                                  (let ((__tmp17692
                                                         (let ((__tmp17693
                                                                (let ((__tmp17694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17696
                                      (lambda (_id16291_ _k16292_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16291_))
                                            (let ((__tmp17697
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16291_))))
                                              (declare (not safe))
                                              (cons __tmp17697 _k16292_))
                                            '#f)))
                                     (__tmp17695
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16286_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17696
                                  _hd16284_
                                  __tmp17695))))
                          (declare (not safe))
                          (cons _len16286_ __tmp17694))))
                   (declare (not safe))
                   (cons _tmp16288_ __tmp17693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17692
                                                          _post16256_))))
                                             (declare (not safe))
                                             (_lp16251_
                                              _rest16283_
                                              __tmp17702
                                              __tmp17698
                                              __tmp17691)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16148_
                                            _hd16284_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1625716271_))
                              (let ((_tl1626716317_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1625716271_)))
                                    (_hd1626616315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1625716271_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1626616315_))
                                    (let ((_tl1626916322_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1626616315_)))
                                          (_hd1626816320_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1626616315_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1626916322_))
                                          (let ((_id16325_ _hd1626816320_)
                                                (_rest16327_ _tl1626716317_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1626516312_
                                               _rest16327_
                                               _id16325_)))
                                          (let ((_hd16302_ _hd1626616315_)
                                                (_rest16304_ _tl1626716317_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1626216294_
                                               _rest16304_
                                               _hd16302_)))))
                                    (let ((_hd16302_ _hd1626616315_)
                                          (_rest16304_ _tl1626716317_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1626216294_
                                         _rest16304_
                                         _hd16302_)))))
                              (let ()
                                (declare (not safe))
                                (_else1626016279_))))))))
                 (_compile-post16152_
                  (lambda (_post16154_ _body16155_)
                    (let _lp16157_ ((_rest16159_ _post16154_)
                                    (_check16160_ '())
                                    (_bind16161_ '()))
                      (let* ((_rest1616216174_ _rest16159_)
                             (_else1616416182_
                              (lambda ()
                                (let ((__tmp17711
                                       (let ((__tmp17712
                                              (let ((__tmp17713
                                                     (let ((__tmp17714
                                                            (let ((__tmp17715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17716
                                  (let ((__tmp17717
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16155_ '()))))
                                    (declare (not safe))
                                    (cons _bind16161_ __tmp17717))))
                             (declare (not safe))
                             (cons 'let __tmp17716))))
                      (declare (not safe))
                      (__SRC__% __tmp17715 _stx16148_))))
               (declare (not safe))
               (cons __tmp17714 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17713
                                                        _check16160_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17712))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17711 _stx16148_))))
                             (_K1616616221_
                              (lambda (_rest16185_
                                       _init16186_
                                       _len16187_
                                       _tmp16188_)
                                (let ((__tmp17725
                                       (let ((__tmp17726
                                              (let ((__tmp17727
                                                     (let ((__tmp17728
                                                            (let ((__tmp17729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16187_ '()))))
                      (declare (not safe))
                      (cons _tmp16188_ __tmp17729))))
               (declare (not safe))
               (cons '__check-values __tmp17728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17727
                                                 _stx16148_))))
                                         (declare (not safe))
                                         (cons __tmp17726 _check16160_)))
                                      (__tmp17718
                                       (let ((__tmp17719
                                              (lambda (_hd16190_ _r16191_)
                                                (let* ((_hd1619216199_
                                                        _hd16190_)
                                                       (_E1619416203_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1619216199_)))
               (_K1619516209_
                (lambda (_k16206_ _id16207_)
                  (let ((__tmp17720
                         (let ((__tmp17721
                                (let ((__tmp17722
                                       (let ((__tmp17723
                                              (let ((__tmp17724
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16206_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16188_ __tmp17724))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17723))))
                                  (declare (not safe))
                                  (cons __tmp17722 '()))))
                           (declare (not safe))
                           (cons _id16207_ __tmp17721))))
                    (declare (not safe))
                    (cons __tmp17720 _r16191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1619216199_))
                                                      (let ((_hd1619616212_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1619216199_)))
                    (_tl1619716214_
                     (let () (declare (not safe)) (##cdr _hd1619216199_))))
                (let* ((_id16217_ _hd1619616212_) (_k16219_ _tl1619716214_))
                  (declare (not safe))
                  (_K1619516209_ _k16219_ _id16217_)))
              (let () (declare (not safe)) (_E1619416203_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17719
                                                 _bind16161_
                                                 _init16186_))))
                                  (declare (not safe))
                                  (_lp16157_
                                   _rest16185_
                                   __tmp17725
                                   __tmp17718)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1616216174_))
                            (let ((_hd1616716224_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1616216174_)))
                                  (_tl1616816226_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1616216174_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1616716224_))
                                  (let ((_hd1616916229_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1616716224_)))
                                        (_tl1617016231_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1616716224_))))
                                    (let ((_tmp16234_ _hd1616916229_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1617016231_))
                                          (let ((_hd1617116236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1617016231_)))
                                                (_tl1617216238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1617016231_))))
                                            (let* ((_len16241_ _hd1617116236_)
                                                   (_init16243_ _tl1617216238_)
                                                   (_rest16245_
                                                    _tl1616816226_))
                                              (declare (not safe))
                                              (_K1616616221_
                                               _rest16245_
                                               _init16243_
                                               _len16241_
                                               _tmp16234_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1616416182_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1616416182_))))
                            (let ()
                              (declare (not safe))
                              (_else1616416182_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16148_
             _compile-simple16150_
             _compile-values16151_)))))
    (define __compile-letrec-values%
      (lambda (_stx15948_)
        (letrec ((_compile-simple15950_
                  (lambda (_hd-ids16144_ _exprs16145_ _body16146_)
                    (let ((__tmp17730
                           (let ((__tmp17731
                                  (let ((__tmp17733
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16144_)
                                              _exprs16145_))
                                        (__tmp17732
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16146_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17733 __tmp17732))))
                             (declare (not safe))
                             (cons 'letrec __tmp17731))))
                      (declare (not safe))
                      (__SRC__% __tmp17730 _stx15948_))))
                 (_compile-values15951_
                  (lambda (_hd-ids16058_ _exprs16059_ _body16060_)
                    (let _lp16062_ ((_rest16064_ _hd-ids16058_)
                                    (_exprs16065_ _exprs16059_)
                                    (_pre16066_ '())
                                    (_bind16067_ '())
                                    (_post16068_ '()))
                      (let* ((_rest1606916083_ _rest16064_)
                             (_else1607216091_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner15952_
                                   _pre16066_
                                   _bind16067_
                                   _post16068_
                                   _body16060_)))))
                        (let ((_K1607716127_
                               (lambda (_rest16124_ _id16125_)
                                 (let ((__tmp17739 (cdr _exprs16065_))
                                       (__tmp17734
                                        (let ((__tmp17735
                                               (let ((__tmp17738
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16125_)))
                                                     (__tmp17736
                                                      (let ((__tmp17737
                                                             (car _exprs16065_)))
                                                        (declare (not safe))
                                                        (cons __tmp17737
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17738
                                                       __tmp17736))))
                                          (declare (not safe))
                                          (cons __tmp17735 _bind16067_))))
                                   (declare (not safe))
                                   (_lp16062_
                                    _rest16124_
                                    __tmp17739
                                    _pre16066_
                                    __tmp17734
                                    _post16068_))))
                              (_K1607416109_
                               (lambda (_rest16095_ _hd16096_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16096_))
                                     (let ((__tmp17767 (cdr _exprs16065_))
                                           (__tmp17760
                                            (let ((__tmp17761
                                                   (let ((__tmp17766
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16096_)))
                                                         (__tmp17762
                                                          (let ((__tmp17763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17764
                                (let ((__tmp17765 (car _exprs16065_)))
                                  (declare (not safe))
                                  (cons __tmp17765 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17764))))
                    (declare (not safe))
                    (cons __tmp17763 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17766
                                                           __tmp17762))))
                                              (declare (not safe))
                                              (cons __tmp17761 _bind16067_))))
                                       (declare (not safe))
                                       (_lp16062_
                                        _rest16095_
                                        __tmp17767
                                        _pre16066_
                                        __tmp17760
                                        _post16068_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16096_))
                                         (let* ((_len16098_ (length _hd16096_))
                                                (_tmp16100_
                                                 (let ((__tmp17740 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17740))))
                                           (let ((__tmp17759
                                                  (cdr _exprs16065_))
                                                 (__tmp17752
                                                  (let ((__tmp17753
                                                         (lambda (_id16103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16104_)
                   (if (let () (declare (not safe)) (__AST-e _id16103_))
                       (let ((__tmp17754
                              (let ((__tmp17758
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16103_)))
                                    (__tmp17755
                                     (let ((__tmp17756
                                            (let ((__tmp17757
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17757))))
                                       (declare (not safe))
                                       (cons __tmp17756 '()))))
                                (declare (not safe))
                                (cons __tmp17758 __tmp17755))))
                         (declare (not safe))
                         (cons __tmp17754 _r16104_))
                       _r16104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17753
                                                            _pre16066_
                                                            _hd16096_)))
                                                 (__tmp17748
                                                  (let ((__tmp17749
                                                         (let ((__tmp17750
                                                                (let ((__tmp17751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16065_)))
                          (declare (not safe))
                          (cons __tmp17751 '()))))
                   (declare (not safe))
                   (cons _tmp16100_ __tmp17750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17749
                                                          _bind16067_)))
                                                 (__tmp17741
                                                  (let ((__tmp17742
                                                         (let ((__tmp17743
                                                                (let ((__tmp17744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17746
                                      (lambda (_id16106_ _k16107_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16106_))
                                            (let ((__tmp17747
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16106_))))
                                              (declare (not safe))
                                              (cons __tmp17747 _k16107_))
                                            '#f)))
                                     (__tmp17745
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16098_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17746
                                  _hd16096_
                                  __tmp17745))))
                          (declare (not safe))
                          (cons _len16098_ __tmp17744))))
                   (declare (not safe))
                   (cons _tmp16100_ __tmp17743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17742
                                                          _post16068_))))
                                             (declare (not safe))
                                             (_lp16062_
                                              _rest16095_
                                              __tmp17759
                                              __tmp17752
                                              __tmp17748
                                              __tmp17741)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15948_
                                            _hd16096_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1606916083_))
                              (let ((_tl1607916132_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1606916083_)))
                                    (_hd1607816130_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1606916083_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1607816130_))
                                    (let ((_tl1608116137_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1607816130_)))
                                          (_hd1608016135_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1607816130_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1608116137_))
                                          (let ((_id16140_ _hd1608016135_)
                                                (_rest16142_ _tl1607916132_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1607716127_
                                               _rest16142_
                                               _id16140_)))
                                          (let ((_hd16117_ _hd1607816130_)
                                                (_rest16119_ _tl1607916132_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1607416109_
                                               _rest16119_
                                               _hd16117_)))))
                                    (let ((_hd16117_ _hd1607816130_)
                                          (_rest16119_ _tl1607916132_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1607416109_
                                         _rest16119_
                                         _hd16117_)))))
                              (let ()
                                (declare (not safe))
                                (_else1607216091_))))))))
                 (_compile-inner15952_
                  (lambda (_pre16053_ _bind16054_ _post16055_ _body16056_)
                    (if (let () (declare (not safe)) (null? _pre16053_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind15953_
                           _bind16054_
                           _post16055_
                           _body16056_))
                        (let ((__tmp17768
                               (let ((__tmp17769
                                      (let ((__tmp17772 (reverse _pre16053_))
                                            (__tmp17770
                                             (let ((__tmp17771
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind15953_
                                                       _bind16054_
                                                       _post16055_
                                                       _body16056_))))
                                               (declare (not safe))
                                               (cons __tmp17771 '()))))
                                        (declare (not safe))
                                        (cons __tmp17772 __tmp17770))))
                                 (declare (not safe))
                                 (cons 'let __tmp17769))))
                          (declare (not safe))
                          (__SRC__% __tmp17768 _stx15948_)))))
                 (_compile-bind15953_
                  (lambda (_bind16049_ _post16050_ _body16051_)
                    (let ((__tmp17773
                           (let ((__tmp17774
                                  (let ((__tmp17777 (reverse _bind16049_))
                                        (__tmp17775
                                         (let ((__tmp17776
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15954_
                                                   _post16050_
                                                   _body16051_))))
                                           (declare (not safe))
                                           (cons __tmp17776 '()))))
                                    (declare (not safe))
                                    (cons __tmp17777 __tmp17775))))
                             (declare (not safe))
                             (cons 'letrec __tmp17774))))
                      (declare (not safe))
                      (__SRC__% __tmp17773 _stx15948_))))
                 (_compile-post15954_
                  (lambda (_post15956_ _body15957_)
                    (let _lp15959_ ((_rest15961_ _post15956_)
                                    (_check15962_ '())
                                    (_bind15963_ '()))
                      (let* ((_rest1596415976_ _rest15961_)
                             (_else1596615984_
                              (lambda ()
                                (let ((__tmp17778
                                       (let ((__tmp17779
                                              (let ((__tmp17780
                                                     (let ((__tmp17781
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body15957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17781 _bind15963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17780
                                                        _check15962_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17779))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17778 _stx15948_))))
                             (_K1596816023_
                              (lambda (_rest15987_
                                       _init15988_
                                       _len15989_
                                       _tmp15990_)
                                (let ((__tmp17790
                                       (let ((__tmp17791
                                              (let ((__tmp17792
                                                     (let ((__tmp17793
                                                            (let ((__tmp17794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len15989_ '()))))
                      (declare (not safe))
                      (cons _tmp15990_ __tmp17794))))
               (declare (not safe))
               (cons '__check-values __tmp17793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17792
                                                 _stx15948_))))
                                         (declare (not safe))
                                         (cons __tmp17791 _check15962_)))
                                      (__tmp17782
                                       (let ((__tmp17783
                                              (lambda (_hd15992_ _r15993_)
                                                (let* ((_hd1599416001_
                                                        _hd15992_)
                                                       (_E1599616005_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1599416001_)))
               (_K1599716011_
                (lambda (_k16008_ _id16009_)
                  (let ((__tmp17784
                         (let ((__tmp17785
                                (let ((__tmp17786
                                       (let ((__tmp17787
                                              (let ((__tmp17788
                                                     (let ((__tmp17789
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k16008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp15990_ __tmp17789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17788))))
                                         (declare (not safe))
                                         (cons __tmp17787 '()))))
                                  (declare (not safe))
                                  (cons _id16009_ __tmp17786))))
                           (declare (not safe))
                           (cons 'set! __tmp17785))))
                    (declare (not safe))
                    (cons __tmp17784 _r15993_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1599416001_))
                                                      (let ((_hd1599816014_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1599416001_)))
                    (_tl1599916016_
                     (let () (declare (not safe)) (##cdr _hd1599416001_))))
                (let* ((_id16019_ _hd1599816014_) (_k16021_ _tl1599916016_))
                  (declare (not safe))
                  (_K1599716011_ _k16021_ _id16019_)))
              (let () (declare (not safe)) (_E1599616005_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17783
                                                 _bind15963_
                                                 _init15988_))))
                                  (declare (not safe))
                                  (_lp15959_
                                   _rest15987_
                                   __tmp17790
                                   __tmp17782)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1596415976_))
                            (let ((_hd1596916026_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1596415976_)))
                                  (_tl1597016028_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1596415976_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1596916026_))
                                  (let ((_hd1597116031_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1596916026_)))
                                        (_tl1597216033_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1596916026_))))
                                    (let ((_tmp16036_ _hd1597116031_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1597216033_))
                                          (let ((_hd1597316038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1597216033_)))
                                                (_tl1597416040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1597216033_))))
                                            (let* ((_len16043_ _hd1597316038_)
                                                   (_init16045_ _tl1597416040_)
                                                   (_rest16047_
                                                    _tl1597016028_))
                                              (declare (not safe))
                                              (_K1596816023_
                                               _rest16047_
                                               _init16045_
                                               _len16043_
                                               _tmp16036_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1596615984_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1596615984_))))
                            (let ()
                              (declare (not safe))
                              (_else1596615984_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15948_
             _compile-simple15950_
             _compile-values15951_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15703_)
        (letrec ((_compile-simple15705_
                  (lambda (_hd-ids15944_ _exprs15945_ _body15946_)
                    (let ((__tmp17795
                           (let ((__tmp17796
                                  (let ((__tmp17798
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids15944_)
                                              _exprs15945_))
                                        (__tmp17797
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15946_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17798 __tmp17797))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17796))))
                      (declare (not safe))
                      (__SRC__% __tmp17795 _stx15703_))))
                 (_compile-values15706_
                  (lambda (_hd-ids15855_ _exprs15856_ _body15857_)
                    (let _lp15859_ ((_rest15861_ _hd-ids15855_)
                                    (_exprs15862_ _exprs15856_)
                                    (_bind15863_ '())
                                    (_post15864_ '()))
                      (let* ((_rest1586515879_ _rest15861_)
                             (_else1586815887_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15707_
                                   _bind15863_
                                   _post15864_
                                   _body15857_)))))
                        (let ((_K1587315927_
                               (lambda (_rest15922_ _hd15923_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15923_))
                                     (let ((_id15925_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15923_))))
                                       (let ((__tmp17813 (cdr _exprs15862_))
                                             (__tmp17808
                                              (let ((__tmp17809
                                                     (let ((__tmp17810
                                                            (let ((__tmp17811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17812
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17812))))
                      (declare (not safe))
                      (cons __tmp17811 '()))))
               (declare (not safe))
               (cons _id15925_ __tmp17810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17809 _bind15863_)))
                                             (__tmp17804
                                              (let ((__tmp17805
                                                     (let ((__tmp17806
                                                            (let ((__tmp17807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs15862_)))
                      (declare (not safe))
                      (cons __tmp17807 '()))))
               (declare (not safe))
               (cons _id15925_ __tmp17806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17805
                                                      _post15864_))))
                                         (declare (not safe))
                                         (_lp15859_
                                          _rest15922_
                                          __tmp17813
                                          __tmp17808
                                          __tmp17804)))
                                     (let ((__tmp17803 (cdr _exprs15862_))
                                           (__tmp17799
                                            (let ((__tmp17800
                                                   (let ((__tmp17801
                                                          (let ((__tmp17802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs15862_)))
                    (declare (not safe))
                    (cons __tmp17802 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17801))))
                                              (declare (not safe))
                                              (cons __tmp17800 _post15864_))))
                                       (declare (not safe))
                                       (_lp15859_
                                        _rest15922_
                                        __tmp17803
                                        _bind15863_
                                        __tmp17799)))))
                              (_K1587015907_
                               (lambda (_rest15891_ _hd15892_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15892_))
                                     (let ((_id15894_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15892_))))
                                       (let ((__tmp17849 (cdr _exprs15862_))
                                             (__tmp17844
                                              (let ((__tmp17845
                                                     (let ((__tmp17846
                                                            (let ((__tmp17847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17848
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17848))))
                      (declare (not safe))
                      (cons __tmp17847 '()))))
               (declare (not safe))
               (cons _id15894_ __tmp17846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17845 _bind15863_)))
                                             (__tmp17838
                                              (let ((__tmp17839
                                                     (let ((__tmp17840
                                                            (let ((__tmp17841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17842
                                  (let ((__tmp17843 (car _exprs15862_)))
                                    (declare (not safe))
                                    (cons __tmp17843 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17842))))
                      (declare (not safe))
                      (cons __tmp17841 '()))))
               (declare (not safe))
               (cons _id15894_ __tmp17840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17839
                                                      _post15864_))))
                                         (declare (not safe))
                                         (_lp15859_
                                          _rest15891_
                                          __tmp17849
                                          __tmp17844
                                          __tmp17838)))
                                     (if (let ((__tmp17837
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15892_))))
                                           (declare (not safe))
                                           (not __tmp17837))
                                         (let ((__tmp17836 (cdr _exprs15862_))
                                               (__tmp17832
                                                (let ((__tmp17833
                                                       (let ((__tmp17834
                                                              (let ((__tmp17835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs15862_)))
                        (declare (not safe))
                        (cons __tmp17835 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17833
                                                        _post15864_))))
                                           (declare (not safe))
                                           (_lp15859_
                                            _rest15891_
                                            __tmp17836
                                            _bind15863_
                                            __tmp17832))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15892_))
                                             (let* ((_len15896_
                                                     (length _hd15892_))
                                                    (_tmp15898_
                                                     (let ((__tmp17814
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17814))))
                                               (let ((__tmp17831
                                                      (cdr _exprs15862_))
                                                     (__tmp17824
                                                      (let ((__tmp17825
                                                             (lambda (_id15901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15902_)
                       (if (let () (declare (not safe)) (__AST-e _id15901_))
                           (let ((__tmp17826
                                  (let ((__tmp17830
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15901_)))
                                        (__tmp17827
                                         (let ((__tmp17828
                                                (let ((__tmp17829
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17829))))
                                           (declare (not safe))
                                           (cons __tmp17828 '()))))
                                    (declare (not safe))
                                    (cons __tmp17830 __tmp17827))))
                             (declare (not safe))
                             (cons __tmp17826 _r15902_))
                           _r15902_))))
                (declare (not safe))
                (foldl1 __tmp17825 _bind15863_ _hd15892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17815
                                                      (let ((__tmp17816
                                                             (let ((__tmp17817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17823 (car _exprs15862_))
                                  (__tmp17818
                                   (let ((__tmp17819
                                          (let ((__tmp17821
                                                 (lambda (_id15904_ _k15905_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15904_))
                                                       (let ((__tmp17822
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15904_))))
                 (declare (not safe))
                 (cons __tmp17822 _k15905_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17820
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15896_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17821
                                             _hd15892_
                                             __tmp17820))))
                                     (declare (not safe))
                                     (cons _len15896_ __tmp17819))))
                              (declare (not safe))
                              (cons __tmp17823 __tmp17818))))
                       (declare (not safe))
                       (cons _tmp15898_ __tmp17817))))
                (declare (not safe))
                (cons __tmp17816 _post15864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15859_
                                                  _rest15891_
                                                  __tmp17831
                                                  __tmp17824
                                                  __tmp17815)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15703_
                                                _hd15892_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1586515879_))
                              (let ((_tl1587515932_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1586515879_)))
                                    (_hd1587415930_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1586515879_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1587415930_))
                                    (let ((_tl1587715937_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1587415930_)))
                                          (_hd1587615935_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1587415930_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1587715937_))
                                          (let ((_hd15940_ _hd1587615935_)
                                                (_rest15942_ _tl1587515932_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1587315927_
                                               _rest15942_
                                               _hd15940_)))
                                          (let ((_hd15915_ _hd1587415930_)
                                                (_rest15917_ _tl1587515932_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1587015907_
                                               _rest15917_
                                               _hd15915_)))))
                                    (let ((_hd15915_ _hd1587415930_)
                                          (_rest15917_ _tl1587515932_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1587015907_
                                         _rest15917_
                                         _hd15915_)))))
                              (let ()
                                (declare (not safe))
                                (_else1586815887_))))))))
                 (_compile-bind15707_
                  (lambda (_bind15851_ _post15852_ _body15853_)
                    (let ((__tmp17850
                           (let ((__tmp17851
                                  (let ((__tmp17854 (reverse _bind15851_))
                                        (__tmp17852
                                         (let ((__tmp17853
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15708_
                                                   _post15852_
                                                   _body15853_))))
                                           (declare (not safe))
                                           (cons __tmp17853 '()))))
                                    (declare (not safe))
                                    (cons __tmp17854 __tmp17852))))
                             (declare (not safe))
                             (cons 'let __tmp17851))))
                      (declare (not safe))
                      (__SRC__% __tmp17850 _stx15703_))))
                 (_compile-post15708_
                  (lambda (_post15710_ _body15711_)
                    (let ((__tmp17855
                           (let ((__tmp17856
                                  (let ((__tmp17857
                                         (let ((__tmp17859
                                                (lambda (_hd15713_ _r15714_)
                                                  (let* ((_hd1571515738_
                                                          _hd15713_)
                                                         (_E1571915742_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1571515738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1573215836_
                                                           (lambda (_expr15834_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15834_ _r15714_))))
                  (_K1572715814_
                   (lambda (_expr15811_ _id15812_)
                     (let ((__tmp17860
                            (let ((__tmp17861
                                   (let ((__tmp17862
                                          (let ((__tmp17863
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15811_ '()))))
                                            (declare (not safe))
                                            (cons _id15812_ __tmp17863))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17862))))
                              (declare (not safe))
                              (__SRC__% __tmp17861 _stx15703_))))
                       (declare (not safe))
                       (cons __tmp17860 _r15714_))))
                  (_K1572015781_
                   (lambda (_init15746_ _len15747_ _expr15748_ _tmp15749_)
                     (let ((__tmp17864
                            (let ((__tmp17865
                                   (let ((__tmp17866
                                          (let ((__tmp17880
                                                 (let ((__tmp17881
                                                        (let ((__tmp17882
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15748_ '()))))
                  (declare (not safe))
                  (cons _tmp15749_ __tmp17882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17881 '())))
                                                (__tmp17867
                                                 (let ((__tmp17876
                                                        (let ((__tmp17877
                                                               (let ((__tmp17878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17879
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15747_ '()))))
                                (declare (not safe))
                                (cons _tmp15749_ __tmp17879))))
                         (declare (not safe))
                         (cons '__check-values __tmp17878))))
                  (declare (not safe))
                  (__SRC__% __tmp17877 _stx15703_)))
               (__tmp17868
                (let ((__tmp17869
                       (map (lambda (_hd15751_)
                              (let* ((_hd1575215759_ _hd15751_)
                                     (_E1575415763_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1575215759_)))
                                     (_K1575515769_
                                      (lambda (_k15766_ _id15767_)
                                        (let ((__tmp17870
                                               (let ((__tmp17871
                                                      (let ((__tmp17872
                                                             (let ((__tmp17873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17874
                                   (let ((__tmp17875
                                          (let ()
                                            (declare (not safe))
                                            (cons _k15766_ '()))))
                                     (declare (not safe))
                                     (cons _tmp15749_ __tmp17875))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp17874))))
                       (declare (not safe))
                       (cons __tmp17873 '()))))
                (declare (not safe))
                (cons _id15767_ __tmp17872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp17871))))
                                          (declare (not safe))
                                          (__SRC__% __tmp17870 _stx15703_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1575215759_))
                                    (let ((_hd1575615772_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1575215759_)))
                                          (_tl1575715774_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1575215759_))))
                                      (let* ((_id15777_ _hd1575615772_)
                                             (_k15779_ _tl1575715774_))
                                        (declare (not safe))
                                        (_K1575515769_ _k15779_ _id15777_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1575415763_)))))
                            _init15746_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17876
                                                         __tmp17868))))
                                            (declare (not safe))
                                            (cons __tmp17880 __tmp17867))))
                                     (declare (not safe))
                                     (cons 'let __tmp17866))))
                              (declare (not safe))
                              (__SRC__% __tmp17865 _stx15703_))))
                       (declare (not safe))
                       (cons __tmp17864 _r15714_)))))
              (if (let () (declare (not safe)) (##pair? _hd1571515738_))
                  (let ((_tl1573415841_
                         (let () (declare (not safe)) (##cdr _hd1571515738_)))
                        (_hd1573315839_
                         (let () (declare (not safe)) (##car _hd1571515738_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1573315839_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1573415841_))
                            (let ((_tl1573615846_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1573415841_)))
                                  (_hd1573515844_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1573415841_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1573615846_))
                                  (let ((_expr15849_ _hd1573515844_))
                                    (declare (not safe))
                                    (_K1573215836_ _expr15849_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1573615846_))
                                      (let ((_tl1572615800_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1573615846_)))
                                            (_hd1572515798_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1573615846_))))
                                        (let ((_tmp15789_ _hd1573315839_)
                                              (_expr15796_ _hd1573515844_)
                                              (_len15803_ _hd1572515798_)
                                              (_init15805_ _tl1572615800_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1572015781_
                                             _init15805_
                                             _len15803_
                                             _expr15796_
                                             _tmp15789_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1571915742_)))))
                            (let () (declare (not safe)) (_E1571915742_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1573415841_))
                            (let ((_tl1573115826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1573415841_)))
                                  (_hd1573015824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1573415841_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1573115826_))
                                  (let ((_id15822_ _hd1573315839_)
                                        (_expr15829_ _hd1573015824_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1572715814_ _expr15829_ _id15822_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1573115826_))
                                      (let ((_tl1572615800_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1573115826_)))
                                            (_hd1572515798_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1573115826_))))
                                        (let ((_tmp15789_ _hd1573315839_)
                                              (_expr15796_ _hd1573015824_)
                                              (_len15803_ _hd1572515798_)
                                              (_init15805_ _tl1572615800_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1572015781_
                                             _init15805_
                                             _len15803_
                                             _expr15796_
                                             _tmp15789_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1571915742_)))))
                            (let () (declare (not safe)) (_E1571915742_)))))
                  (let () (declare (not safe)) (_E1571915742_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17858 (list _body15711_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17859
                                                   __tmp17858
                                                   _post15710_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17857))))
                             (declare (not safe))
                             (cons 'begin __tmp17856))))
                      (declare (not safe))
                      (__SRC__% __tmp17855 _stx15703_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15703_
             _compile-simple15705_
             _compile-values15706_)))))
    (define __compile-call%
      (lambda (_stx15663_)
        (let* ((_$e15665_ _stx15663_)
               (_$E1566715676_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15665_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15665_))
              (let* ((_$tgt1566815679_
                      (let () (declare (not safe)) (__AST-e _$e15665_)))
                     (_$hd1566915682_
                      (let () (declare (not safe)) (##car _$tgt1566815679_)))
                     (_$tl1567015685_
                      (let () (declare (not safe)) (##cdr _$tgt1566815679_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1567015685_))
                    (let* ((_$tgt1567115689_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1567015685_)))
                           (_$hd1567215692_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1567115689_)))
                           (_$tl1567315695_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1567115689_))))
                      (let* ((_rator15699_ _$hd1567215692_)
                             (_rands15701_ _$tl1567315695_)
                             (__tmp17883
                              (let ((__tmp17885
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15699_)))
                                    (__tmp17884 (map __compile _rands15701_)))
                                (declare (not safe))
                                (cons __tmp17885 __tmp17884))))
                        (declare (not safe))
                        (__SRC__% __tmp17883 _stx15663_)))
                    (let () (declare (not safe)) (_$E1566715676_))))
              (let () (declare (not safe)) (_$E1566715676_))))))
    (define __compile-ref%
      (lambda (_stx15625_)
        (let* ((_$e15627_ _stx15625_)
               (_$E1562915638_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15627_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15627_))
              (let* ((_$tgt1563015641_
                      (let () (declare (not safe)) (__AST-e _$e15627_)))
                     (_$hd1563115644_
                      (let () (declare (not safe)) (##car _$tgt1563015641_)))
                     (_$tl1563215647_
                      (let () (declare (not safe)) (##cdr _$tgt1563015641_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1563215647_))
                    (let* ((_$tgt1563315651_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1563215647_)))
                           (_$hd1563415654_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1563315651_)))
                           (_$tl1563515657_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1563315651_))))
                      (let ((_id15661_ _$hd1563415654_))
                        (if (let ((__tmp17886
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1563515657_))))
                              (declare (not safe))
                              (equal? __tmp17886 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15661_ _stx15625_))
                            (let () (declare (not safe)) (_$E1562915638_)))))
                    (let () (declare (not safe)) (_$E1562915638_))))
              (let () (declare (not safe)) (_$E1562915638_))))))
    (define __compile-setq%
      (lambda (_stx15572_)
        (let* ((_$e15574_ _stx15572_)
               (_$E1557615588_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15574_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15574_))
              (let* ((_$tgt1557715591_
                      (let () (declare (not safe)) (__AST-e _$e15574_)))
                     (_$hd1557815594_
                      (let () (declare (not safe)) (##car _$tgt1557715591_)))
                     (_$tl1557915597_
                      (let () (declare (not safe)) (##cdr _$tgt1557715591_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1557915597_))
                    (let* ((_$tgt1558015601_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1557915597_)))
                           (_$hd1558115604_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1558015601_)))
                           (_$tl1558215607_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1558015601_))))
                      (let ((_id15611_ _$hd1558115604_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1558215607_))
                            (let* ((_$tgt1558315613_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1558215607_)))
                                   (_$hd1558415616_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1558315613_)))
                                   (_$tl1558515619_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1558315613_))))
                              (let ((_expr15623_ _$hd1558415616_))
                                (if (let ((__tmp17892
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1558515619_))))
                                      (declare (not safe))
                                      (equal? __tmp17892 '()))
                                    (let ((__tmp17887
                                           (let ((__tmp17888
                                                  (let ((__tmp17891
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15611_
                                                            _stx15572_)))
                                                        (__tmp17889
                                                         (let ((__tmp17890
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15623_))))
                   (declare (not safe))
                   (cons __tmp17890 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17891
                                                          __tmp17889))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17888))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17887 _stx15572_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1557615588_)))))
                            (let () (declare (not safe)) (_$E1557615588_)))))
                    (let () (declare (not safe)) (_$E1557615588_))))
              (let () (declare (not safe)) (_$E1557615588_))))))
    (define __compile-if%
      (lambda (_stx15504_)
        (let* ((_$e15506_ _stx15504_)
               (_$E1550815523_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15506_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15506_))
              (let* ((_$tgt1550915526_
                      (let () (declare (not safe)) (__AST-e _$e15506_)))
                     (_$hd1551015529_
                      (let () (declare (not safe)) (##car _$tgt1550915526_)))
                     (_$tl1551115532_
                      (let () (declare (not safe)) (##cdr _$tgt1550915526_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1551115532_))
                    (let* ((_$tgt1551215536_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1551115532_)))
                           (_$hd1551315539_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1551215536_)))
                           (_$tl1551415542_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1551215536_))))
                      (let ((_p15546_ _$hd1551315539_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1551415542_))
                            (let* ((_$tgt1551515548_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1551415542_)))
                                   (_$hd1551615551_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1551515548_)))
                                   (_$tl1551715554_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1551515548_))))
                              (let ((_t15558_ _$hd1551615551_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1551715554_))
                                    (let* ((_$tgt1551815560_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1551715554_)))
                                           (_$hd1551915563_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1551815560_)))
                                           (_$tl1552015566_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1551815560_))))
                                      (let ((_f15570_ _$hd1551915563_))
                                        (if (let ((__tmp17900
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1552015566_))))
                                              (declare (not safe))
                                              (equal? __tmp17900 '()))
                                            (let ((__tmp17893
                                                   (let ((__tmp17894
                                                          (let ((__tmp17899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15546_)))
                        (__tmp17895
                         (let ((__tmp17898
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15558_)))
                               (__tmp17896
                                (let ((__tmp17897
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15570_))))
                                  (declare (not safe))
                                  (cons __tmp17897 '()))))
                           (declare (not safe))
                           (cons __tmp17898 __tmp17896))))
                    (declare (not safe))
                    (cons __tmp17899 __tmp17895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17894))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17893 _stx15504_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1550815523_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1550815523_)))))
                            (let () (declare (not safe)) (_$E1550815523_)))))
                    (let () (declare (not safe)) (_$E1550815523_))))
              (let () (declare (not safe)) (_$E1550815523_))))))
    (define __compile-quote%
      (lambda (_stx15466_)
        (let* ((_$e15468_ _stx15466_)
               (_$E1547015479_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15468_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15468_))
              (let* ((_$tgt1547115482_
                      (let () (declare (not safe)) (__AST-e _$e15468_)))
                     (_$hd1547215485_
                      (let () (declare (not safe)) (##car _$tgt1547115482_)))
                     (_$tl1547315488_
                      (let () (declare (not safe)) (##cdr _$tgt1547115482_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1547315488_))
                    (let* ((_$tgt1547415492_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1547315488_)))
                           (_$hd1547515495_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1547415492_)))
                           (_$tl1547615498_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1547415492_))))
                      (let ((_e15502_ _$hd1547515495_))
                        (if (let ((__tmp17904
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1547615498_))))
                              (declare (not safe))
                              (equal? __tmp17904 '()))
                            (let ((__tmp17901
                                   (let ((__tmp17902
                                          (let ((__tmp17903
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15502_))))
                                            (declare (not safe))
                                            (cons __tmp17903 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17902))))
                              (declare (not safe))
                              (__SRC__% __tmp17901 _stx15466_))
                            (let () (declare (not safe)) (_$E1547015479_)))))
                    (let () (declare (not safe)) (_$E1547015479_))))
              (let () (declare (not safe)) (_$E1547015479_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15428_)
        (let* ((_$e15430_ _stx15428_)
               (_$E1543215441_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15430_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15430_))
              (let* ((_$tgt1543315444_
                      (let () (declare (not safe)) (__AST-e _$e15430_)))
                     (_$hd1543415447_
                      (let () (declare (not safe)) (##car _$tgt1543315444_)))
                     (_$tl1543515450_
                      (let () (declare (not safe)) (##cdr _$tgt1543315444_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1543515450_))
                    (let* ((_$tgt1543615454_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1543515450_)))
                           (_$hd1543715457_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1543615454_)))
                           (_$tl1543815460_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1543615454_))))
                      (let ((_e15464_ _$hd1543715457_))
                        (if (let ((__tmp17907
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1543815460_))))
                              (declare (not safe))
                              (equal? __tmp17907 '()))
                            (let ((__tmp17905
                                   (let ((__tmp17906
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15464_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17906))))
                              (declare (not safe))
                              (__SRC__% __tmp17905 _stx15428_))
                            (let () (declare (not safe)) (_$E1543215441_)))))
                    (let () (declare (not safe)) (_$E1543215441_))))
              (let () (declare (not safe)) (_$E1543215441_))))))
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
