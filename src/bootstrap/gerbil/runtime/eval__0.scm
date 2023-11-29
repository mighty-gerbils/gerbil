(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1701931848)
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
      (lambda _$args17401_
        (apply make-struct-instance __context::t _$args17401_)))
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
      (lambda _$args17398_
        (apply make-struct-instance __runtime::t _$args17398_)))
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
      (lambda _$args17395_
        (apply make-struct-instance __syntax::t _$args17395_)))
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
      (lambda _$args17392_
        (apply make-struct-instance __macro::t _$args17392_)))
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
      (lambda _$args17389_
        (apply make-struct-instance __special-form::t _$args17389_)))
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
      (lambda _$args17386_
        (apply make-struct-instance __core-form::t _$args17386_)))
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
      (lambda _$args17383_
        (apply make-struct-instance __core-expression::t _$args17383_)))
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
      (lambda _$args17380_
        (apply make-struct-instance __core-special-form::t _$args17380_)))
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
      (lambda _$args17377_
        (apply make-struct-instance __struct-info::t _$args17377_)))
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
      (lambda _$args17374_
        (apply make-struct-instance __feature::t _$args17374_)))
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
      (lambda _$args17371_
        (apply make-struct-instance __module::t _$args17371_)))
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
      (let ((__tmp17587
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17586 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17587 __tmp17586)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17346_ _ctx17347_)
        (if _ctx17347_
            (let ((_id17349_
                   (let () (declare (not safe)) (__AST-e _id17346_))))
              (let _lp17351_ ((_ctx17353_ _ctx17347_))
                (let ((_$e17355_
                       (table-ref
                        (##structure-ref _ctx17353_ '4 __context::t '#f)
                        _id17349_
                        '#f)))
                  (if _$e17355_
                      (values _$e17355_)
                      (let ((_$e17358_
                             (##structure-ref _ctx17353_ '3 __context::t '#f)))
                        (if _$e17358_
                            (let () (declare (not safe)) (_lp17351_ _$e17358_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17364_)
        (let ((_ctx17366_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17364_ _ctx17366_))))
    (define __core-resolve
      (lambda _g17589_
        (let ((_g17588_ (let () (declare (not safe)) (##length _g17589_))))
          (cond ((let () (declare (not safe)) (##fx= _g17588_ 1))
                 (apply (lambda (_id17364_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17364_)))
                        _g17589_))
                ((let () (declare (not safe)) (##fx= _g17588_ 2))
                 (apply (lambda (_id17368_ _ctx17369_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17368_ _ctx17369_)))
                        _g17589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17589_))))))
    (define __core-bound-id?__%
      (lambda (_id17329_ _is?17330_)
        (let ((_$e17332_
               (let () (declare (not safe)) (__core-resolve__0 _id17329_))))
          (if _$e17332_ (_is?17330_ _$e17332_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17338_)
        (let ((_is?17340_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17338_ _is?17340_))))
    (define __core-bound-id?
      (lambda _g17591_
        (let ((_g17590_ (let () (declare (not safe)) (##length _g17591_))))
          (cond ((let () (declare (not safe)) (##fx= _g17590_ 1))
                 (apply (lambda (_id17338_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17338_)))
                        _g17591_))
                ((let () (declare (not safe)) (##fx= _g17590_ 2))
                 (apply (lambda (_id17342_ _is?17343_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17342_ _is?17343_)))
                        _g17591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17591_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17312_ _eid17313_ _ctx17314_)
        (if _eid17313_
            (let ((__tmp17594 (##structure-ref _ctx17314_ '4 __context::t '#f))
                  (__tmp17593
                   (let () (declare (not safe)) (__AST-e _id17312_)))
                  (__tmp17592
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17313_))))
              (declare (not safe))
              (table-set! __tmp17594 __tmp17593 __tmp17592))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17319_ _eid17320_)
        (let ((_ctx17322_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17319_ _eid17320_ _ctx17322_))))
    (define __core-bind-runtime!
      (lambda _g17596_
        (let ((_g17595_ (let () (declare (not safe)) (##length _g17596_))))
          (cond ((let () (declare (not safe)) (##fx= _g17595_ 2))
                 (apply (lambda (_id17319_ _eid17320_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17319_ _eid17320_)))
                        _g17596_))
                ((let () (declare (not safe)) (##fx= _g17595_ 3))
                 (apply (lambda (_id17324_ _eid17325_ _ctx17326_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17324_
                             _eid17325_
                             _ctx17326_)))
                        _g17596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17596_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17295_ _e17296_ _make17297_)
        (let ((__tmp17597
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17296_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17296_
                   (_make17297_ _e17296_ _id17295_))))
          (declare (not safe))
          (table-set! __*core* _id17295_ __tmp17597))))
    (define __core-bind-syntax!__0
      (lambda (_id17302_ _e17303_)
        (let ((_make17305_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17302_ _e17303_ _make17305_))))
    (define __core-bind-syntax!
      (lambda _g17599_
        (let ((_g17598_ (let () (declare (not safe)) (##length _g17599_))))
          (cond ((let () (declare (not safe)) (##fx= _g17598_ 2))
                 (apply (lambda (_id17302_ _e17303_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17302_ _e17303_)))
                        _g17599_))
                ((let () (declare (not safe)) (##fx= _g17598_ 3))
                 (apply (lambda (_id17307_ _e17308_ _make17309_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17307_
                             _e17308_
                             _make17309_)))
                        _g17599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17599_))))))
    (define __core-bind-macro!
      (lambda (_id17291_ _e17292_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17291_ _e17292_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17288_ _e17289_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17288_ _e17289_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17272_ _e17273_ _ctx17274_)
        (let ((__tmp17603 (##structure-ref _ctx17274_ '4 __context::t '#f))
              (__tmp17602 (let () (declare (not safe)) (__AST-e _id17272_)))
              (__tmp17600
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17273_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17273_
                   (let ((__tmp17601
                          (let () (declare (not safe)) (__AST-e _id17272_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17273_ __tmp17601)))))
          (declare (not safe))
          (table-set! __tmp17603 __tmp17602 __tmp17600))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17279_ _e17280_)
        (let ((_ctx17282_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17279_ _e17280_ _ctx17282_))))
    (define __core-bind-user-syntax!
      (lambda _g17605_
        (let ((_g17604_ (let () (declare (not safe)) (##length _g17605_))))
          (cond ((let () (declare (not safe)) (##fx= _g17604_ 2))
                 (apply (lambda (_id17279_ _e17280_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17279_ _e17280_)))
                        _g17605_))
                ((let () (declare (not safe)) (##fx= _g17604_ 3))
                 (apply (lambda (_id17284_ _e17285_ _ctx17286_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17284_
                             _e17285_
                             _ctx17286_)))
                        _g17605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17605_))))))
    (define make-__runtime-id__%
      (lambda (_id17253_ _ctx17254_)
        (let ((_id17256_ (let () (declare (not safe)) (__AST-e _id17253_))))
          (if (let () (declare (not safe)) (eq? _id17256_ '_))
              '#f
              (if (uninterned-symbol? _id17256_)
                  (gensym _id17256_)
                  (if (let () (declare (not safe)) (symbol? _id17256_))
                      (let ((_$e17258_
                             (##structure-ref _ctx17254_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17258_))
                            (gensym _id17256_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17258_))
                                (let ((__tmp17606
                                       (##structure-ref
                                        _ctx17254_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp17606 '"#" _id17256_))
                                _id17256_)))
                      (error '"Illegal runtime identifier" _id17256_)))))))
    (define make-__runtime-id__0
      (lambda (_id17264_)
        (let ((_ctx17266_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17264_ _ctx17266_))))
    (define make-__runtime-id
      (lambda _g17608_
        (let ((_g17607_ (let () (declare (not safe)) (##length _g17608_))))
          (cond ((let () (declare (not safe)) (##fx= _g17607_ 1))
                 (apply (lambda (_id17264_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17264_)))
                        _g17608_))
                ((let () (declare (not safe)) (##fx= _g17607_ 2))
                 (apply (lambda (_id17268_ _ctx17269_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17268_ _ctx17269_)))
                        _g17608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17608_))))))
    (define make-__context-local__%
      (lambda (_super17242_)
        (let ((__tmp17609
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17242_ __tmp17609))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17248_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17248_))))
    (define make-__context-local
      (lambda _g17611_
        (let ((_g17610_ (let () (declare (not safe)) (##length _g17611_))))
          (cond ((let () (declare (not safe)) (##fx= _g17610_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17611_))
                ((let () (declare (not safe)) (##fx= _g17610_ 1))
                 (apply (lambda (_super17250_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17250_)))
                        _g17611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17611_))))))
    (define make-__context-module__%
      (lambda (_id17222_ _ns17223_ _path17224_ _super17225_)
        (let ((__tmp17612
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17223_
           _super17225_
           __tmp17612
           _id17222_
           _path17224_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17230_ _ns17231_ _path17232_)
        (let ((_super17234_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17230_
           _ns17231_
           _path17232_
           _super17234_))))
    (define make-__context-module
      (lambda _g17614_
        (let ((_g17613_ (let () (declare (not safe)) (##length _g17614_))))
          (cond ((let () (declare (not safe)) (##fx= _g17613_ 3))
                 (apply (lambda (_id17230_ _ns17231_ _path17232_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17230_
                             _ns17231_
                             _path17232_)))
                        _g17614_))
                ((let () (declare (not safe)) (##fx= _g17613_ 4))
                 (apply (lambda (_id17236_ _ns17237_ _path17238_ _super17239_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17236_
                             _ns17237_
                             _path17238_
                             _super17239_)))
                        _g17614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17614_))))))
    (define __SRC__%
      (lambda (_e17205_ _src-stx17206_)
        (if (or (let () (declare (not safe)) (pair? _e17205_))
                (let () (declare (not safe)) (symbol? _e17205_)))
            (let ((__tmp17618
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17206_
                          'gerbil#AST::t))
                       (let ((__tmp17619
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17206_))))
                         (declare (not safe))
                         (__locat __tmp17619))
                       '#f)))
              (declare (not safe))
              (##make-source _e17205_ __tmp17618))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17205_ 'gerbil#AST::t))
                (let ((__tmp17617
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17205_ '1 AST::t '#f)))
                      (__tmp17615
                       (let ((__tmp17616
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17205_))))
                         (declare (not safe))
                         (__locat __tmp17616))))
                  (declare (not safe))
                  (##make-source __tmp17617 __tmp17615))
                (error '"BUG! Cannot sourcify object" _e17205_)))))
    (define __SRC__0
      (lambda (_e17214_)
        (let ((_src-stx17216_ '#f))
          (declare (not safe))
          (__SRC__% _e17214_ _src-stx17216_))))
    (define __SRC
      (lambda _g17621_
        (let ((_g17620_ (let () (declare (not safe)) (##length _g17621_))))
          (cond ((let () (declare (not safe)) (##fx= _g17620_ 1))
                 (apply (lambda (_e17214_)
                          (let () (declare (not safe)) (__SRC__0 _e17214_)))
                        _g17621_))
                ((let () (declare (not safe)) (##fx= _g17620_ 2))
                 (apply (lambda (_e17218_ _src-stx17219_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17218_ _src-stx17219_)))
                        _g17621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17621_))))))
    (define __locat
      (lambda (_loc17202_)
        (if (let () (declare (not safe)) (##locat? _loc17202_))
            _loc17202_
            '#f)))
    (define __check-values
      (lambda (_obj17197_ _k17198_)
        (let ((_count17200_
               (if (let () (declare (not safe)) (##values? _obj17197_))
                   (let () (declare (not safe)) (##vector-length _obj17197_))
                   '1)))
          (if (fx= _count17200_ _k17198_)
              '#!void
              (error (if (fx< _count17200_ _k17198_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17197_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17197_))
                         _obj17197_)
                     _k17198_)))))
    (define __compile
      (lambda (_stx17167_)
        (let* ((_$e17169_ _stx17167_)
               (_$E1717117177_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17169_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17169_))
              (let* ((_$tgt1717217180_
                      (let () (declare (not safe)) (__AST-e _$e17169_)))
                     (_$hd1717317183_
                      (let () (declare (not safe)) (##car _$tgt1717217180_)))
                     (_$tl1717417186_
                      (let () (declare (not safe)) (##cdr _$tgt1717217180_))))
                (let* ((_form17190_ _$hd1717317183_)
                       (_$e17192_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17190_))))
                  (if _$e17192_
                      ((lambda (_bind17195_)
                         ((##structure-ref _bind17195_ '1 __syntax::t '#f)
                          _stx17167_))
                       _$e17192_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx17167_
                         _form17190_)))))
              (let () (declare (not safe)) (_$E1717117177_))))))
    (define __compile-error__%
      (lambda (_stx17154_ _detail17155_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17154_
           _detail17155_))))
    (define __compile-error__0
      (lambda (_stx17160_)
        (let ((_detail17162_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17160_ _detail17162_))))
    (define __compile-error
      (lambda _g17623_
        (let ((_g17622_ (let () (declare (not safe)) (##length _g17623_))))
          (cond ((let () (declare (not safe)) (##fx= _g17622_ 1))
                 (apply (lambda (_stx17160_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17160_)))
                        _g17623_))
                ((let () (declare (not safe)) (##fx= _g17622_ 2))
                 (apply (lambda (_stx17164_ _detail17165_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17164_ _detail17165_)))
                        _g17623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17623_))))))
    (define __compile-ignore%
      (lambda (_stx17151_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17151_))))
    (define __compile-begin%
      (lambda (_stx17126_)
        (let* ((_$e17128_ _stx17126_)
               (_$E1713017136_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17128_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17128_))
              (let* ((_$tgt1713117139_
                      (let () (declare (not safe)) (__AST-e _$e17128_)))
                     (_$hd1713217142_
                      (let () (declare (not safe)) (##car _$tgt1713117139_)))
                     (_$tl1713317145_
                      (let () (declare (not safe)) (##cdr _$tgt1713117139_))))
                (let* ((_body17149_ _$tl1713317145_)
                       (__tmp17624
                        (let ((__tmp17625 (map __compile _body17149_)))
                          (declare (not safe))
                          (cons 'begin __tmp17625))))
                  (declare (not safe))
                  (__SRC__% __tmp17624 _stx17126_)))
              (let () (declare (not safe)) (_$E1713017136_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17101_)
        (let* ((_$e17103_ _stx17101_)
               (_$E1710517111_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17103_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17103_))
              (let* ((_$tgt1710617114_
                      (let () (declare (not safe)) (__AST-e _$e17103_)))
                     (_$hd1710717117_
                      (let () (declare (not safe)) (##car _$tgt1710617114_)))
                     (_$tl1710817120_
                      (let () (declare (not safe)) (##cdr _$tgt1710617114_))))
                (let* ((_body17124_ _$tl1710817120_)
                       (__tmp17626
                        (let ((__tmp17627
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17124_))))
                          (declare (not safe))
                          (cons 'begin __tmp17627))))
                  (declare (not safe))
                  (__SRC__% __tmp17626 _stx17101_)))
              (let () (declare (not safe)) (_$E1710517111_))))))
    (define __compile-import%
      (lambda (_stx17076_)
        (let* ((_$e17078_ _stx17076_)
               (_$E1708017086_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17078_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17078_))
              (let* ((_$tgt1708117089_
                      (let () (declare (not safe)) (__AST-e _$e17078_)))
                     (_$hd1708217092_
                      (let () (declare (not safe)) (##car _$tgt1708117089_)))
                     (_$tl1708317095_
                      (let () (declare (not safe)) (##cdr _$tgt1708117089_))))
                (let* ((_body17099_ _$tl1708317095_)
                       (__tmp17628
                        (let ((__tmp17629
                               (let ((__tmp17630
                                      (let ((__tmp17631
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17099_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17631))))
                                 (declare (not safe))
                                 (cons __tmp17630 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17629))))
                  (declare (not safe))
                  (__SRC__% __tmp17628 _stx17076_)))
              (let () (declare (not safe)) (_$E1708017086_))))))
    (define __compile-begin-annotation%
      (lambda (_stx17023_)
        (let* ((_$e17025_ _stx17023_)
               (_$E1702717039_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e17025_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17025_))
              (let* ((_$tgt1702817042_
                      (let () (declare (not safe)) (__AST-e _$e17025_)))
                     (_$hd1702917045_
                      (let () (declare (not safe)) (##car _$tgt1702817042_)))
                     (_$tl1703017048_
                      (let () (declare (not safe)) (##cdr _$tgt1702817042_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1703017048_))
                    (let* ((_$tgt1703117052_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1703017048_)))
                           (_$hd1703217055_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1703117052_)))
                           (_$tl1703317058_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1703117052_))))
                      (let ((_ann17062_ _$hd1703217055_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1703317058_))
                            (let* ((_$tgt1703417064_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1703317058_)))
                                   (_$hd1703517067_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1703417064_)))
                                   (_$tl1703617070_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1703417064_))))
                              (let ((_expr17074_ _$hd1703517067_))
                                (if (let ((__tmp17632
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1703617070_))))
                                      (declare (not safe))
                                      (equal? __tmp17632 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17074_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1702717039_)))))
                            (let () (declare (not safe)) (_$E1702717039_)))))
                    (let () (declare (not safe)) (_$E1702717039_))))
              (let () (declare (not safe)) (_$E1702717039_))))))
    (define __compile-define-values%
      (lambda (_stx16914_)
        (let* ((_$e16916_ _stx16914_)
               (_$E1691816930_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16916_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16916_))
              (let* ((_$tgt1691916933_
                      (let () (declare (not safe)) (__AST-e _$e16916_)))
                     (_$hd1692016936_
                      (let () (declare (not safe)) (##car _$tgt1691916933_)))
                     (_$tl1692116939_
                      (let () (declare (not safe)) (##cdr _$tgt1691916933_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1692116939_))
                    (let* ((_$tgt1692216943_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1692116939_)))
                           (_$hd1692316946_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1692216943_)))
                           (_$tl1692416949_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1692216943_))))
                      (let ((_hd16953_ _$hd1692316946_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1692416949_))
                            (let* ((_$tgt1692516955_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1692416949_)))
                                   (_$hd1692616958_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1692516955_)))
                                   (_$tl1692716961_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1692516955_))))
                              (let ((_expr16965_ _$hd1692616958_))
                                (if (let ((__tmp17665
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1692716961_))))
                                      (declare (not safe))
                                      (equal? __tmp17665 '()))
                                    (let* ((_$e16967_ _hd16953_)
                                           (_$E1696917010_
                                            (lambda ()
                                              (let ((_$E1697016995_
                                                     (lambda ()
                                                       (let* ((_$E1697116982_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e16967_))))
                      (_ids16985_ _hd16953_)
                      (_len16987_ (length _ids16985_))
                      (_tmp16989_
                       (let ((__tmp17633 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17633))))
                 (let ((__tmp17634
                        (let ((__tmp17635
                               (let ((__tmp17652
                                      (let ((__tmp17653
                                             (let ((__tmp17654
                                                    (let ((__tmp17655
                                                           (let ((__tmp17656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr16965_))))
                     (declare (not safe))
                     (cons __tmp17656 '()))))
              (declare (not safe))
              (cons _tmp16989_ __tmp17655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17654))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17653 _stx16914_)))
                                     (__tmp17636
                                      (let ((__tmp17648
                                             (let ((__tmp17649
                                                    (let ((__tmp17650
                                                           (let ((__tmp17651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len16987_ '()))))
                     (declare (not safe))
                     (cons _tmp16989_ __tmp17651))))
              (declare (not safe))
              (cons '__check-values __tmp17650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17649
                                                _stx16914_)))
                                            (__tmp17637
                                             (let ((__tmp17638
                                                    (let ((__tmp17640
                                                           (lambda (_id16992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k16993_)
                     (if (let () (declare (not safe)) (__AST-e _id16992_))
                         (let ((__tmp17641
                                (let ((__tmp17642
                                       (let ((__tmp17647
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id16992_)))
                                             (__tmp17643
                                              (let ((__tmp17644
                                                     (let ((__tmp17645
                                                            (let ((__tmp17646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k16993_ '()))))
                      (declare (not safe))
                      (cons _tmp16989_ __tmp17646))))
               (declare (not safe))
               (cons '##vector-ref __tmp17645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17644 '()))))
                                         (declare (not safe))
                                         (cons __tmp17647 __tmp17643))))
                                  (declare (not safe))
                                  (cons 'define __tmp17642))))
                           (declare (not safe))
                           (__SRC__% __tmp17641 _stx16914_))
                         '#f)))
                  (__tmp17639 (let () (declare (not safe)) (iota _len16987_))))
              (declare (not safe))
              (filter-map2 __tmp17640 _ids16985_ __tmp17639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17638))))
                                        (declare (not safe))
                                        (cons __tmp17648 __tmp17637))))
                                 (declare (not safe))
                                 (cons __tmp17652 __tmp17636))))
                          (declare (not safe))
                          (cons 'begin __tmp17635))))
                   (declare (not safe))
                   (__SRC__% __tmp17634 _stx16914_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e16967_))
                                                    (let* ((_$tgt1697216998_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e16967_)))
                                                           (_$hd1697317001_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1697216998_)))
                                                           (_$tl1697417004_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1697216998_))))
                                                      (let ((_id17008_
                                                             _$hd1697317001_))
                                                        (if (let ((__tmp17662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1697417004_))))
                      (declare (not safe))
                      (equal? __tmp17662 '()))
                    (let ((__tmp17657
                           (let ((__tmp17658
                                  (let ((__tmp17661
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id17008_)))
                                        (__tmp17659
                                         (let ((__tmp17660
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr16965_))))
                                           (declare (not safe))
                                           (cons __tmp17660 '()))))
                                    (declare (not safe))
                                    (cons __tmp17661 __tmp17659))))
                             (declare (not safe))
                             (cons 'define __tmp17658))))
                      (declare (not safe))
                      (__SRC__% __tmp17657 _stx16914_))
                    (let () (declare (not safe)) (_$E1697016995_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1697016995_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e16967_))
                                          (let* ((_$tgt1697517013_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e16967_)))
                                                 (_$hd1697617016_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1697517013_)))
                                                 (_$tl1697717019_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1697517013_))))
                                            (if (let ((__tmp17664
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1697617016_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17664 '#f))
                                                (if (let ((__tmp17663
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1697717019_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17663 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr16965_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1696917010_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1696917010_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1696917010_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1691816930_)))))
                            (let () (declare (not safe)) (_$E1691816930_)))))
                    (let () (declare (not safe)) (_$E1691816930_))))
              (let () (declare (not safe)) (_$E1691816930_))))))
    (define __compile-head-id
      (lambda (_e16912_)
        (let ((__tmp17666
               (if (let () (declare (not safe)) (__AST-e _e16912_))
                   _e16912_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17666))))
    (define __compile-lambda-head
      (lambda (_hd16869_)
        (let _recur16871_ ((_rest16873_ _hd16869_))
          (let* ((_$e16875_ _rest16873_)
                 (_$E1687716895_
                  (lambda ()
                    (let ((_$E1687816892_
                           (lambda ()
                             (let* ((_$E1687916887_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e16875_))))
                                    (_tail16890_ _$e16875_))
                               (declare (not safe))
                               (__compile-head-id _tail16890_)))))
                      (if (let ((__tmp17667
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16875_))))
                            (declare (not safe))
                            (equal? __tmp17667 '()))
                          '()
                          (let () (declare (not safe)) (_$E1687816892_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16875_))
                (let* ((_$tgt1688016898_
                        (let () (declare (not safe)) (__AST-e _$e16875_)))
                       (_$hd1688116901_
                        (let () (declare (not safe)) (##car _$tgt1688016898_)))
                       (_$tl1688216904_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1688016898_))))
                  (let* ((_hd16908_ _$hd1688116901_)
                         (_rest16910_ _$tl1688216904_))
                    (let ((__tmp17669
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16908_)))
                          (__tmp17668
                           (let ()
                             (declare (not safe))
                             (_recur16871_ _rest16910_))))
                      (declare (not safe))
                      (cons __tmp17669 __tmp17668))))
                (let () (declare (not safe)) (_$E1687716895_)))))))
    (define __compile-lambda%
      (lambda (_stx16816_)
        (let* ((_$e16818_ _stx16816_)
               (_$E1682016832_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e16818_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16818_))
              (let* ((_$tgt1682116835_
                      (let () (declare (not safe)) (__AST-e _$e16818_)))
                     (_$hd1682216838_
                      (let () (declare (not safe)) (##car _$tgt1682116835_)))
                     (_$tl1682316841_
                      (let () (declare (not safe)) (##cdr _$tgt1682116835_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1682316841_))
                    (let* ((_$tgt1682416845_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1682316841_)))
                           (_$hd1682516848_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1682416845_)))
                           (_$tl1682616851_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1682416845_))))
                      (let ((_hd16855_ _$hd1682516848_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1682616851_))
                            (let* ((_$tgt1682716857_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1682616851_)))
                                   (_$hd1682816860_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1682716857_)))
                                   (_$tl1682916863_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1682716857_))))
                              (let ((_body16867_ _$hd1682816860_))
                                (if (let ((__tmp17675
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1682916863_))))
                                      (declare (not safe))
                                      (equal? __tmp17675 '()))
                                    (let ((__tmp17670
                                           (let ((__tmp17671
                                                  (let ((__tmp17674
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16855_)))
                                                        (__tmp17672
                                                         (let ((__tmp17673
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16867_))))
                   (declare (not safe))
                   (cons __tmp17673 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17674
                                                          __tmp17672))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17671))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17670 _stx16816_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1682016832_)))))
                            (let () (declare (not safe)) (_$E1682016832_)))))
                    (let () (declare (not safe)) (_$E1682016832_))))
              (let () (declare (not safe)) (_$E1682016832_))))))
    (define __compile-case-lambda%
      (lambda (_stx16608_)
        (letrec ((_variadic?16610_
                  (lambda (_hd16781_)
                    (let* ((_$e16783_ _hd16781_)
                           (_$E1678516801_
                            (lambda ()
                              (let ((_$E1678616798_
                                     (lambda ()
                                       (let ((_$E1678716795_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e16783_)))))
                                         '#t))))
                                (if (let ((__tmp17676
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16783_))))
                                      (declare (not safe))
                                      (equal? __tmp17676 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1678616798_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16783_))
                          (let* ((_$tgt1678816804_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16783_)))
                                 (_$hd1678916807_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1678816804_)))
                                 (_$tl1679016810_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1678816804_))))
                            (let ((_rest16814_ _$tl1679016810_))
                              (declare (not safe))
                              (_variadic?16610_ _rest16814_)))
                          (let () (declare (not safe)) (_$E1678516801_))))))
                 (_arity16611_
                  (lambda (_hd16746_)
                    (let _lp16748_ ((_rest16750_ _hd16746_) (_k16751_ '0))
                      (let* ((_$e16753_ _rest16750_)
                             (_$E1675516766_
                              (lambda ()
                                (let ((_$E1675616763_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e16753_)))))
                                  _k16751_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16753_))
                            (let* ((_$tgt1675716769_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16753_)))
                                   (_$hd1675816772_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1675716769_)))
                                   (_$tl1675916775_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1675716769_))))
                              (let* ((_rest16779_ _$tl1675916775_)
                                     (__tmp17677
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16751_ '1))))
                                (declare (not safe))
                                (_lp16748_ _rest16779_ __tmp17677)))
                            (let () (declare (not safe)) (_$E1675516766_)))))))
                 (_generate16612_
                  (lambda (_rest16673_ _args16674_ _len16675_)
                    (let* ((_$e16677_ _rest16673_)
                           (_$E1667916690_
                            (lambda ()
                              (let* ((_$E1668016687_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e16677_))))
                                     (__tmp17678
                                      (let ((__tmp17679
                                             (let ((__tmp17680
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16674_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17680))))
                                        (declare (not safe))
                                        (cons 'error __tmp17679))))
                                (declare (not safe))
                                (__SRC__% __tmp17678 _stx16608_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16677_))
                          (let* ((_$tgt1668116693_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16677_)))
                                 (_$hd1668216696_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1668116693_)))
                                 (_$tl1668316699_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1668116693_))))
                            (let* ((_clause16703_ _$hd1668216696_)
                                   (_rest16705_ _$tl1668316699_)
                                   (_$e16707_ _clause16703_)
                                   (_$E1670916718_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e16707_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16707_))
                                  (let* ((_$tgt1671016721_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16707_)))
                                         (_$hd1671116724_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1671016721_)))
                                         (_$tl1671216727_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1671016721_))))
                                    (let ((_hd16731_ _$hd1671116724_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1671216727_))
                                          (let* ((_$tgt1671316733_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1671216727_)))
                                                 (_$hd1671416736_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1671316733_)))
                                                 (_$tl1671516739_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1671316733_))))
                                            (if (let ((__tmp17695
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1671516739_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17695 '()))
                                                (let ((_clen16743_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16611_
                                                          _hd16731_)))
                                                      (_cmp16744_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16610_
                                                              _hd16731_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17681
                                                         (let ((__tmp17682
                                                                (let ((__tmp17692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17693
                                      (let ((__tmp17694
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16743_ '()))))
                                        (declare (not safe))
                                        (cons _len16675_ __tmp17694))))
                                 (declare (not safe))
                                 (cons _cmp16744_ __tmp17693)))
                              (__tmp17683
                               (let ((__tmp17686
                                      (let ((__tmp17687
                                             (let ((__tmp17688
                                                    (let ((__tmp17690
                                                           (let ((__tmp17691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16703_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17691)))
                  (__tmp17689
                   (let () (declare (not safe)) (cons _args16674_ '()))))
              (declare (not safe))
              (cons __tmp17690 __tmp17689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17688))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17687 _stx16608_)))
                                     (__tmp17684
                                      (let ((__tmp17685
                                             (let ()
                                               (declare (not safe))
                                               (_generate16612_
                                                _rest16705_
                                                _args16674_
                                                _len16675_))))
                                        (declare (not safe))
                                        (cons __tmp17685 '()))))
                                 (declare (not safe))
                                 (cons __tmp17686 __tmp17684))))
                          (declare (not safe))
                          (cons __tmp17692 __tmp17683))))
                   (declare (not safe))
                   (cons 'if __tmp17682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17681
                                                     _stx16608_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1670916718_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1670916718_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1670916718_)))))
                          (let () (declare (not safe)) (_$E1667916690_)))))))
          (let* ((_$e16614_ _stx16608_)
                 (_$E1661616648_
                  (lambda ()
                    (let ((_$E1661716630_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e16614_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16614_))
                          (let* ((_$tgt1661816633_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16614_)))
                                 (_$hd1661916636_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1661816633_)))
                                 (_$tl1662016639_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1661816633_))))
                            (let ((_clauses16643_ _$tl1662016639_))
                              (let ((_args16645_
                                     (let ((__tmp17696 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17696 _stx16608_)))
                                    (_len16646_
                                     (let ((__tmp17697 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17697 _stx16608_))))
                                (let ((__tmp17698
                                       (let ((__tmp17699
                                              (let ((__tmp17700
                                                     (let ((__tmp17701
                                                            (let ((__tmp17702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17703
                                  (let ((__tmp17706
                                         (let ((__tmp17707
                                                (let ((__tmp17708
                                                       (let ((__tmp17709
                                                              (let ((__tmp17710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17711
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16645_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17711))))
                        (declare (not safe))
                        (__SRC__% __tmp17710 _stx16608_))))
                 (declare (not safe))
                 (cons __tmp17709 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16646_
                                                        __tmp17708))))
                                           (declare (not safe))
                                           (cons __tmp17707 '())))
                                        (__tmp17704
                                         (let ((__tmp17705
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16612_
                                                   _clauses16643_
                                                   _args16645_
                                                   _len16646_))))
                                           (declare (not safe))
                                           (cons __tmp17705 '()))))
                                    (declare (not safe))
                                    (cons __tmp17706 __tmp17704))))
                             (declare (not safe))
                             (cons 'let __tmp17703))))
                      (declare (not safe))
                      (__SRC__% __tmp17702 _stx16608_))))
               (declare (not safe))
               (cons __tmp17701 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16645_
                                                      __tmp17700))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17699))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17698 _stx16608_)))))
                          (let () (declare (not safe)) (_$E1661716630_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16614_))
                (let* ((_$tgt1662116651_
                        (let () (declare (not safe)) (__AST-e _$e16614_)))
                       (_$hd1662216654_
                        (let () (declare (not safe)) (##car _$tgt1662116651_)))
                       (_$tl1662316657_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1662116651_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1662316657_))
                      (let* ((_$tgt1662416661_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1662316657_)))
                             (_$hd1662516664_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1662416661_)))
                             (_$tl1662616667_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1662416661_))))
                        (let ((_clause16671_ _$hd1662516664_))
                          (if (let ((__tmp17713
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1662616667_))))
                                (declare (not safe))
                                (equal? __tmp17713 '()))
                              (let ((__tmp17712
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16671_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17712))
                              (let () (declare (not safe)) (_$E1661616648_)))))
                      (let () (declare (not safe)) (_$E1661616648_))))
                (let () (declare (not safe)) (_$E1661616648_)))))))
    (define __compile-let-form
      (lambda (_stx16377_ _compile-simple16378_ _compile-values16379_)
        (letrec ((_simple-bind?16381_
                  (lambda (_hd16566_)
                    (let* ((_hd1656716577_ _hd16566_)
                           (_else1657016585_ (lambda () '#f)))
                      (let ((_K1657316598_ (lambda (_id16596_) '#t))
                            (_K1657216590_ (lambda () '#t)))
                        (let ((_try-match1656916593_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1656716577_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1657216590_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1657016585_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1656716577_))
                              (let ((_tl1657516603_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1656716577_)))
                                    (_hd1657416601_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1656716577_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1657516603_))
                                    (let ((_id16606_ _hd1657416601_))
                                      (declare (not safe))
                                      (_K1657316598_ _id16606_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1656916593_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1656916593_))))))))
                 (_car-e16382_
                  (lambda (_hd16564_)
                    (if (let () (declare (not safe)) (pair? _hd16564_))
                        (car _hd16564_)
                        _hd16564_))))
          (let* ((_$e16384_ _stx16377_)
                 (_$E1638616529_
                  (lambda ()
                    (let ((_$E1638716409_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e16384_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16384_))
                          (let* ((_$tgt1638816412_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16384_)))
                                 (_$hd1638916415_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1638816412_)))
                                 (_$tl1639016418_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1638816412_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1639016418_))
                                (let* ((_$tgt1639116422_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1639016418_)))
                                       (_$hd1639216425_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1639116422_)))
                                       (_$tl1639316428_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1639116422_))))
                                  (let ((_hd16432_ _$hd1639216425_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1639316428_))
                                        (let* ((_$tgt1639416434_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1639316428_)))
                                               (_$hd1639516437_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1639416434_)))
                                               (_$tl1639616440_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1639416434_))))
                                          (let ((_body16444_ _$hd1639516437_))
                                            (if (let ((__tmp17716
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1639616440_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17716 '()))
                                                (let* ((_hd-ids16484_
                                                        (map (lambda (_bind16446_)
                                                               (let* ((_$e16448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16446_)
                              (_$E1645016459_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e16448_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16448_))
                             (let* ((_$tgt1645116462_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16448_)))
                                    (_$hd1645216465_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1645116462_)))
                                    (_$tl1645316468_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1645116462_))))
                               (let ((_ids16472_ _$hd1645216465_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1645316468_))
                                     (let* ((_$tgt1645416474_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1645316468_)))
                                            (_$hd1645516477_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1645416474_)))
                                            (_$tl1645616480_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1645416474_))))
                                       (if (let ((__tmp17714
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1645616480_))))
                                             (declare (not safe))
                                             (equal? __tmp17714 '()))
                                           _ids16472_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1645016459_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1645016459_)))))
                             (let () (declare (not safe)) (_$E1645016459_)))))
                     _hd16432_))
               (_exprs16524_
                (map (lambda (_bind16486_)
                       (let* ((_$e16488_ _bind16486_)
                              (_$E1649016499_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e16488_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16488_))
                             (let* ((_$tgt1649116502_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16488_)))
                                    (_$hd1649216505_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1649116502_)))
                                    (_$tl1649316508_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1649116502_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1649316508_))
                                   (let* ((_$tgt1649416512_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1649316508_)))
                                          (_$hd1649516515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1649416512_)))
                                          (_$tl1649616518_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1649416512_))))
                                     (let ((_expr16522_ _$hd1649516515_))
                                       (if (let ((__tmp17715
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1649616518_))))
                                             (declare (not safe))
                                             (equal? __tmp17715 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16522_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1649016499_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1649016499_))))
                             (let () (declare (not safe)) (_$E1649016499_)))))
                     _hd16432_))
               (_body16526_
                (let () (declare (not safe)) (__compile _body16444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16484_))
              (_compile-simple16378_
               (map _car-e16382_ _hd-ids16484_)
               _exprs16524_
               _body16526_)
              (_compile-values16379_ _hd-ids16484_ _exprs16524_ _body16526_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1638716409_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1638716409_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1638716409_))))
                          (let () (declare (not safe)) (_$E1638716409_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16384_))
                (let* ((_$tgt1639716532_
                        (let () (declare (not safe)) (__AST-e _$e16384_)))
                       (_$hd1639816535_
                        (let () (declare (not safe)) (##car _$tgt1639716532_)))
                       (_$tl1639916538_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1639716532_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1639916538_))
                      (let* ((_$tgt1640016542_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1639916538_)))
                             (_$hd1640116545_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1640016542_)))
                             (_$tl1640216548_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1640016542_))))
                        (if (let ((__tmp17718
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1640116545_))))
                              (declare (not safe))
                              (equal? __tmp17718 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1640216548_))
                                (let* ((_$tgt1640316552_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1640216548_)))
                                       (_$hd1640416555_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1640316552_)))
                                       (_$tl1640516558_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1640316552_))))
                                  (let ((_body16562_ _$hd1640416555_))
                                    (if (let ((__tmp17717
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1640516558_))))
                                          (declare (not safe))
                                          (equal? __tmp17717 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16562_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1638616529_)))))
                                (let () (declare (not safe)) (_$E1638616529_)))
                            (let () (declare (not safe)) (_$E1638616529_))))
                      (let () (declare (not safe)) (_$E1638616529_))))
                (let () (declare (not safe)) (_$E1638616529_)))))))
    (define __compile-let-values%
      (lambda (_stx16192_)
        (letrec ((_compile-simple16194_
                  (lambda (_hd-ids16373_ _exprs16374_ _body16375_)
                    (let ((__tmp17719
                           (let ((__tmp17720
                                  (let ((__tmp17722
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16373_)
                                              _exprs16374_))
                                        (__tmp17721
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16375_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17722 __tmp17721))))
                             (declare (not safe))
                             (cons 'let __tmp17720))))
                      (declare (not safe))
                      (__SRC__% __tmp17719 _stx16192_))))
                 (_compile-values16195_
                  (lambda (_hd-ids16291_ _exprs16292_ _body16293_)
                    (let _lp16295_ ((_rest16297_ _hd-ids16291_)
                                    (_exprs16298_ _exprs16292_)
                                    (_bind16299_ '())
                                    (_post16300_ '()))
                      (let* ((_rest1630116315_ _rest16297_)
                             (_else1630416323_
                              (lambda ()
                                (let ((__tmp17723
                                       (let ((__tmp17724
                                              (let ((__tmp17727
                                                     (reverse _bind16299_))
                                                    (__tmp17725
                                                     (let ((__tmp17726
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16196_
                                                               _post16300_
                                                               _body16293_))))
                                                       (declare (not safe))
                                                       (cons __tmp17726 '()))))
                                                (declare (not safe))
                                                (cons __tmp17727 __tmp17725))))
                                         (declare (not safe))
                                         (cons 'let __tmp17724))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17723 _stx16192_)))))
                        (let ((_K1630916356_
                               (lambda (_rest16353_ _id16354_)
                                 (let ((__tmp17733 (cdr _exprs16298_))
                                       (__tmp17728
                                        (let ((__tmp17729
                                               (let ((__tmp17732
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16354_)))
                                                     (__tmp17730
                                                      (let ((__tmp17731
                                                             (car _exprs16298_)))
                                                        (declare (not safe))
                                                        (cons __tmp17731
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17732
                                                       __tmp17730))))
                                          (declare (not safe))
                                          (cons __tmp17729 _bind16299_))))
                                   (declare (not safe))
                                   (_lp16295_
                                    _rest16353_
                                    __tmp17733
                                    __tmp17728
                                    _post16300_))))
                              (_K1630616338_
                               (lambda (_rest16327_ _hd16328_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16328_))
                                     (let ((__tmp17754 (cdr _exprs16298_))
                                           (__tmp17747
                                            (let ((__tmp17748
                                                   (let ((__tmp17753
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16328_)))
                                                         (__tmp17749
                                                          (let ((__tmp17750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17751
                                (let ((__tmp17752 (car _exprs16298_)))
                                  (declare (not safe))
                                  (cons __tmp17752 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17751))))
                    (declare (not safe))
                    (cons __tmp17750 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17753
                                                           __tmp17749))))
                                              (declare (not safe))
                                              (cons __tmp17748 _bind16299_))))
                                       (declare (not safe))
                                       (_lp16295_
                                        _rest16327_
                                        __tmp17754
                                        __tmp17747
                                        _post16300_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16328_))
                                         (let* ((_len16330_ (length _hd16328_))
                                                (_tmp16332_
                                                 (let ((__tmp17734 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17734))))
                                           (let ((__tmp17746
                                                  (cdr _exprs16298_))
                                                 (__tmp17742
                                                  (let ((__tmp17743
                                                         (let ((__tmp17744
                                                                (let ((__tmp17745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16298_)))
                          (declare (not safe))
                          (cons __tmp17745 '()))))
                   (declare (not safe))
                   (cons _tmp16332_ __tmp17744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17743
                                                          _bind16299_)))
                                                 (__tmp17735
                                                  (let ((__tmp17736
                                                         (let ((__tmp17737
                                                                (let ((__tmp17738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17740
                                      (lambda (_id16335_ _k16336_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16335_))
                                            (let ((__tmp17741
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16335_))))
                                              (declare (not safe))
                                              (cons __tmp17741 _k16336_))
                                            '#f)))
                                     (__tmp17739
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16330_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17740
                                  _hd16328_
                                  __tmp17739))))
                          (declare (not safe))
                          (cons _len16330_ __tmp17738))))
                   (declare (not safe))
                   (cons _tmp16332_ __tmp17737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17736
                                                          _post16300_))))
                                             (declare (not safe))
                                             (_lp16295_
                                              _rest16327_
                                              __tmp17746
                                              __tmp17742
                                              __tmp17735)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16192_
                                            _hd16328_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1630116315_))
                              (let ((_tl1631116361_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1630116315_)))
                                    (_hd1631016359_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1630116315_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1631016359_))
                                    (let ((_tl1631316366_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1631016359_)))
                                          (_hd1631216364_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1631016359_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1631316366_))
                                          (let ((_id16369_ _hd1631216364_)
                                                (_rest16371_ _tl1631116361_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1630916356_
                                               _rest16371_
                                               _id16369_)))
                                          (let ((_hd16346_ _hd1631016359_)
                                                (_rest16348_ _tl1631116361_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1630616338_
                                               _rest16348_
                                               _hd16346_)))))
                                    (let ((_hd16346_ _hd1631016359_)
                                          (_rest16348_ _tl1631116361_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1630616338_
                                         _rest16348_
                                         _hd16346_)))))
                              (let ()
                                (declare (not safe))
                                (_else1630416323_))))))))
                 (_compile-post16196_
                  (lambda (_post16198_ _body16199_)
                    (let _lp16201_ ((_rest16203_ _post16198_)
                                    (_check16204_ '())
                                    (_bind16205_ '()))
                      (let* ((_rest1620616218_ _rest16203_)
                             (_else1620816226_
                              (lambda ()
                                (let ((__tmp17755
                                       (let ((__tmp17756
                                              (let ((__tmp17757
                                                     (let ((__tmp17758
                                                            (let ((__tmp17759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17760
                                  (let ((__tmp17761
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16199_ '()))))
                                    (declare (not safe))
                                    (cons _bind16205_ __tmp17761))))
                             (declare (not safe))
                             (cons 'let __tmp17760))))
                      (declare (not safe))
                      (__SRC__% __tmp17759 _stx16192_))))
               (declare (not safe))
               (cons __tmp17758 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17757
                                                        _check16204_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17756))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17755 _stx16192_))))
                             (_K1621016265_
                              (lambda (_rest16229_
                                       _init16230_
                                       _len16231_
                                       _tmp16232_)
                                (let ((__tmp17769
                                       (let ((__tmp17770
                                              (let ((__tmp17771
                                                     (let ((__tmp17772
                                                            (let ((__tmp17773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16231_ '()))))
                      (declare (not safe))
                      (cons _tmp16232_ __tmp17773))))
               (declare (not safe))
               (cons '__check-values __tmp17772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17771
                                                 _stx16192_))))
                                         (declare (not safe))
                                         (cons __tmp17770 _check16204_)))
                                      (__tmp17762
                                       (let ((__tmp17763
                                              (lambda (_hd16234_ _r16235_)
                                                (let* ((_hd1623616243_
                                                        _hd16234_)
                                                       (_E1623816247_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1623616243_)))
               (_K1623916253_
                (lambda (_k16250_ _id16251_)
                  (let ((__tmp17764
                         (let ((__tmp17765
                                (let ((__tmp17766
                                       (let ((__tmp17767
                                              (let ((__tmp17768
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16250_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16232_ __tmp17768))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17767))))
                                  (declare (not safe))
                                  (cons __tmp17766 '()))))
                           (declare (not safe))
                           (cons _id16251_ __tmp17765))))
                    (declare (not safe))
                    (cons __tmp17764 _r16235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1623616243_))
                                                      (let ((_hd1624016256_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1623616243_)))
                    (_tl1624116258_
                     (let () (declare (not safe)) (##cdr _hd1623616243_))))
                (let* ((_id16261_ _hd1624016256_) (_k16263_ _tl1624116258_))
                  (declare (not safe))
                  (_K1623916253_ _k16263_ _id16261_)))
              (let () (declare (not safe)) (_E1623816247_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17763
                                                 _bind16205_
                                                 _init16230_))))
                                  (declare (not safe))
                                  (_lp16201_
                                   _rest16229_
                                   __tmp17769
                                   __tmp17762)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1620616218_))
                            (let ((_hd1621116268_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1620616218_)))
                                  (_tl1621216270_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1620616218_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1621116268_))
                                  (let ((_hd1621316273_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1621116268_)))
                                        (_tl1621416275_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1621116268_))))
                                    (let ((_tmp16278_ _hd1621316273_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1621416275_))
                                          (let ((_hd1621516280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1621416275_)))
                                                (_tl1621616282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1621416275_))))
                                            (let* ((_len16285_ _hd1621516280_)
                                                   (_init16287_ _tl1621616282_)
                                                   (_rest16289_
                                                    _tl1621216270_))
                                              (declare (not safe))
                                              (_K1621016265_
                                               _rest16289_
                                               _init16287_
                                               _len16285_
                                               _tmp16278_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1620816226_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1620816226_))))
                            (let ()
                              (declare (not safe))
                              (_else1620816226_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16192_
             _compile-simple16194_
             _compile-values16195_)))))
    (define __compile-letrec-values%
      (lambda (_stx15992_)
        (letrec ((_compile-simple15994_
                  (lambda (_hd-ids16188_ _exprs16189_ _body16190_)
                    (let ((__tmp17774
                           (let ((__tmp17775
                                  (let ((__tmp17777
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16188_)
                                              _exprs16189_))
                                        (__tmp17776
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16190_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17777 __tmp17776))))
                             (declare (not safe))
                             (cons 'letrec __tmp17775))))
                      (declare (not safe))
                      (__SRC__% __tmp17774 _stx15992_))))
                 (_compile-values15995_
                  (lambda (_hd-ids16102_ _exprs16103_ _body16104_)
                    (let _lp16106_ ((_rest16108_ _hd-ids16102_)
                                    (_exprs16109_ _exprs16103_)
                                    (_pre16110_ '())
                                    (_bind16111_ '())
                                    (_post16112_ '()))
                      (let* ((_rest1611316127_ _rest16108_)
                             (_else1611616135_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner15996_
                                   _pre16110_
                                   _bind16111_
                                   _post16112_
                                   _body16104_)))))
                        (let ((_K1612116171_
                               (lambda (_rest16168_ _id16169_)
                                 (let ((__tmp17783 (cdr _exprs16109_))
                                       (__tmp17778
                                        (let ((__tmp17779
                                               (let ((__tmp17782
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16169_)))
                                                     (__tmp17780
                                                      (let ((__tmp17781
                                                             (car _exprs16109_)))
                                                        (declare (not safe))
                                                        (cons __tmp17781
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17782
                                                       __tmp17780))))
                                          (declare (not safe))
                                          (cons __tmp17779 _bind16111_))))
                                   (declare (not safe))
                                   (_lp16106_
                                    _rest16168_
                                    __tmp17783
                                    _pre16110_
                                    __tmp17778
                                    _post16112_))))
                              (_K1611816153_
                               (lambda (_rest16139_ _hd16140_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16140_))
                                     (let ((__tmp17811 (cdr _exprs16109_))
                                           (__tmp17804
                                            (let ((__tmp17805
                                                   (let ((__tmp17810
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16140_)))
                                                         (__tmp17806
                                                          (let ((__tmp17807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17808
                                (let ((__tmp17809 (car _exprs16109_)))
                                  (declare (not safe))
                                  (cons __tmp17809 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17808))))
                    (declare (not safe))
                    (cons __tmp17807 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17810
                                                           __tmp17806))))
                                              (declare (not safe))
                                              (cons __tmp17805 _bind16111_))))
                                       (declare (not safe))
                                       (_lp16106_
                                        _rest16139_
                                        __tmp17811
                                        _pre16110_
                                        __tmp17804
                                        _post16112_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16140_))
                                         (let* ((_len16142_ (length _hd16140_))
                                                (_tmp16144_
                                                 (let ((__tmp17784 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17784))))
                                           (let ((__tmp17803
                                                  (cdr _exprs16109_))
                                                 (__tmp17796
                                                  (let ((__tmp17797
                                                         (lambda (_id16147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16148_)
                   (if (let () (declare (not safe)) (__AST-e _id16147_))
                       (let ((__tmp17798
                              (let ((__tmp17802
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16147_)))
                                    (__tmp17799
                                     (let ((__tmp17800
                                            (let ((__tmp17801
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17801))))
                                       (declare (not safe))
                                       (cons __tmp17800 '()))))
                                (declare (not safe))
                                (cons __tmp17802 __tmp17799))))
                         (declare (not safe))
                         (cons __tmp17798 _r16148_))
                       _r16148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17797
                                                            _pre16110_
                                                            _hd16140_)))
                                                 (__tmp17792
                                                  (let ((__tmp17793
                                                         (let ((__tmp17794
                                                                (let ((__tmp17795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16109_)))
                          (declare (not safe))
                          (cons __tmp17795 '()))))
                   (declare (not safe))
                   (cons _tmp16144_ __tmp17794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17793
                                                          _bind16111_)))
                                                 (__tmp17785
                                                  (let ((__tmp17786
                                                         (let ((__tmp17787
                                                                (let ((__tmp17788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17790
                                      (lambda (_id16150_ _k16151_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16150_))
                                            (let ((__tmp17791
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16150_))))
                                              (declare (not safe))
                                              (cons __tmp17791 _k16151_))
                                            '#f)))
                                     (__tmp17789
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16142_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17790
                                  _hd16140_
                                  __tmp17789))))
                          (declare (not safe))
                          (cons _len16142_ __tmp17788))))
                   (declare (not safe))
                   (cons _tmp16144_ __tmp17787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17786
                                                          _post16112_))))
                                             (declare (not safe))
                                             (_lp16106_
                                              _rest16139_
                                              __tmp17803
                                              __tmp17796
                                              __tmp17792
                                              __tmp17785)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15992_
                                            _hd16140_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1611316127_))
                              (let ((_tl1612316176_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1611316127_)))
                                    (_hd1612216174_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1611316127_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1612216174_))
                                    (let ((_tl1612516181_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1612216174_)))
                                          (_hd1612416179_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1612216174_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1612516181_))
                                          (let ((_id16184_ _hd1612416179_)
                                                (_rest16186_ _tl1612316176_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1612116171_
                                               _rest16186_
                                               _id16184_)))
                                          (let ((_hd16161_ _hd1612216174_)
                                                (_rest16163_ _tl1612316176_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1611816153_
                                               _rest16163_
                                               _hd16161_)))))
                                    (let ((_hd16161_ _hd1612216174_)
                                          (_rest16163_ _tl1612316176_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1611816153_
                                         _rest16163_
                                         _hd16161_)))))
                              (let ()
                                (declare (not safe))
                                (_else1611616135_))))))))
                 (_compile-inner15996_
                  (lambda (_pre16097_ _bind16098_ _post16099_ _body16100_)
                    (if (let () (declare (not safe)) (null? _pre16097_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind15997_
                           _bind16098_
                           _post16099_
                           _body16100_))
                        (let ((__tmp17812
                               (let ((__tmp17813
                                      (let ((__tmp17816 (reverse _pre16097_))
                                            (__tmp17814
                                             (let ((__tmp17815
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind15997_
                                                       _bind16098_
                                                       _post16099_
                                                       _body16100_))))
                                               (declare (not safe))
                                               (cons __tmp17815 '()))))
                                        (declare (not safe))
                                        (cons __tmp17816 __tmp17814))))
                                 (declare (not safe))
                                 (cons 'let __tmp17813))))
                          (declare (not safe))
                          (__SRC__% __tmp17812 _stx15992_)))))
                 (_compile-bind15997_
                  (lambda (_bind16093_ _post16094_ _body16095_)
                    (let ((__tmp17817
                           (let ((__tmp17818
                                  (let ((__tmp17821 (reverse _bind16093_))
                                        (__tmp17819
                                         (let ((__tmp17820
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15998_
                                                   _post16094_
                                                   _body16095_))))
                                           (declare (not safe))
                                           (cons __tmp17820 '()))))
                                    (declare (not safe))
                                    (cons __tmp17821 __tmp17819))))
                             (declare (not safe))
                             (cons 'letrec __tmp17818))))
                      (declare (not safe))
                      (__SRC__% __tmp17817 _stx15992_))))
                 (_compile-post15998_
                  (lambda (_post16000_ _body16001_)
                    (let _lp16003_ ((_rest16005_ _post16000_)
                                    (_check16006_ '())
                                    (_bind16007_ '()))
                      (let* ((_rest1600816020_ _rest16005_)
                             (_else1601016028_
                              (lambda ()
                                (let ((__tmp17822
                                       (let ((__tmp17823
                                              (let ((__tmp17824
                                                     (let ((__tmp17825
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body16001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17825 _bind16007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17824
                                                        _check16006_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17823))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17822 _stx15992_))))
                             (_K1601216067_
                              (lambda (_rest16031_
                                       _init16032_
                                       _len16033_
                                       _tmp16034_)
                                (let ((__tmp17834
                                       (let ((__tmp17835
                                              (let ((__tmp17836
                                                     (let ((__tmp17837
                                                            (let ((__tmp17838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16033_ '()))))
                      (declare (not safe))
                      (cons _tmp16034_ __tmp17838))))
               (declare (not safe))
               (cons '__check-values __tmp17837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17836
                                                 _stx15992_))))
                                         (declare (not safe))
                                         (cons __tmp17835 _check16006_)))
                                      (__tmp17826
                                       (let ((__tmp17827
                                              (lambda (_hd16036_ _r16037_)
                                                (let* ((_hd1603816045_
                                                        _hd16036_)
                                                       (_E1604016049_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1603816045_)))
               (_K1604116055_
                (lambda (_k16052_ _id16053_)
                  (let ((__tmp17828
                         (let ((__tmp17829
                                (let ((__tmp17830
                                       (let ((__tmp17831
                                              (let ((__tmp17832
                                                     (let ((__tmp17833
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k16052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp16034_ __tmp17833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17832))))
                                         (declare (not safe))
                                         (cons __tmp17831 '()))))
                                  (declare (not safe))
                                  (cons _id16053_ __tmp17830))))
                           (declare (not safe))
                           (cons 'set! __tmp17829))))
                    (declare (not safe))
                    (cons __tmp17828 _r16037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1603816045_))
                                                      (let ((_hd1604216058_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1603816045_)))
                    (_tl1604316060_
                     (let () (declare (not safe)) (##cdr _hd1603816045_))))
                (let* ((_id16063_ _hd1604216058_) (_k16065_ _tl1604316060_))
                  (declare (not safe))
                  (_K1604116055_ _k16065_ _id16063_)))
              (let () (declare (not safe)) (_E1604016049_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17827
                                                 _bind16007_
                                                 _init16032_))))
                                  (declare (not safe))
                                  (_lp16003_
                                   _rest16031_
                                   __tmp17834
                                   __tmp17826)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1600816020_))
                            (let ((_hd1601316070_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1600816020_)))
                                  (_tl1601416072_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1600816020_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1601316070_))
                                  (let ((_hd1601516075_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1601316070_)))
                                        (_tl1601616077_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1601316070_))))
                                    (let ((_tmp16080_ _hd1601516075_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1601616077_))
                                          (let ((_hd1601716082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1601616077_)))
                                                (_tl1601816084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1601616077_))))
                                            (let* ((_len16087_ _hd1601716082_)
                                                   (_init16089_ _tl1601816084_)
                                                   (_rest16091_
                                                    _tl1601416072_))
                                              (declare (not safe))
                                              (_K1601216067_
                                               _rest16091_
                                               _init16089_
                                               _len16087_
                                               _tmp16080_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1601016028_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1601016028_))))
                            (let ()
                              (declare (not safe))
                              (_else1601016028_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15992_
             _compile-simple15994_
             _compile-values15995_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15747_)
        (letrec ((_compile-simple15749_
                  (lambda (_hd-ids15988_ _exprs15989_ _body15990_)
                    (let ((__tmp17839
                           (let ((__tmp17840
                                  (let ((__tmp17842
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids15988_)
                                              _exprs15989_))
                                        (__tmp17841
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15990_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17842 __tmp17841))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17840))))
                      (declare (not safe))
                      (__SRC__% __tmp17839 _stx15747_))))
                 (_compile-values15750_
                  (lambda (_hd-ids15899_ _exprs15900_ _body15901_)
                    (let _lp15903_ ((_rest15905_ _hd-ids15899_)
                                    (_exprs15906_ _exprs15900_)
                                    (_bind15907_ '())
                                    (_post15908_ '()))
                      (let* ((_rest1590915923_ _rest15905_)
                             (_else1591215931_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15751_
                                   _bind15907_
                                   _post15908_
                                   _body15901_)))))
                        (let ((_K1591715971_
                               (lambda (_rest15966_ _hd15967_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15967_))
                                     (let ((_id15969_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15967_))))
                                       (let ((__tmp17857 (cdr _exprs15906_))
                                             (__tmp17852
                                              (let ((__tmp17853
                                                     (let ((__tmp17854
                                                            (let ((__tmp17855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17856
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17856))))
                      (declare (not safe))
                      (cons __tmp17855 '()))))
               (declare (not safe))
               (cons _id15969_ __tmp17854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17853 _bind15907_)))
                                             (__tmp17848
                                              (let ((__tmp17849
                                                     (let ((__tmp17850
                                                            (let ((__tmp17851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs15906_)))
                      (declare (not safe))
                      (cons __tmp17851 '()))))
               (declare (not safe))
               (cons _id15969_ __tmp17850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17849
                                                      _post15908_))))
                                         (declare (not safe))
                                         (_lp15903_
                                          _rest15966_
                                          __tmp17857
                                          __tmp17852
                                          __tmp17848)))
                                     (let ((__tmp17847 (cdr _exprs15906_))
                                           (__tmp17843
                                            (let ((__tmp17844
                                                   (let ((__tmp17845
                                                          (let ((__tmp17846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs15906_)))
                    (declare (not safe))
                    (cons __tmp17846 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17845))))
                                              (declare (not safe))
                                              (cons __tmp17844 _post15908_))))
                                       (declare (not safe))
                                       (_lp15903_
                                        _rest15966_
                                        __tmp17847
                                        _bind15907_
                                        __tmp17843)))))
                              (_K1591415951_
                               (lambda (_rest15935_ _hd15936_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15936_))
                                     (let ((_id15938_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15936_))))
                                       (let ((__tmp17893 (cdr _exprs15906_))
                                             (__tmp17888
                                              (let ((__tmp17889
                                                     (let ((__tmp17890
                                                            (let ((__tmp17891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17892
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17892))))
                      (declare (not safe))
                      (cons __tmp17891 '()))))
               (declare (not safe))
               (cons _id15938_ __tmp17890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17889 _bind15907_)))
                                             (__tmp17882
                                              (let ((__tmp17883
                                                     (let ((__tmp17884
                                                            (let ((__tmp17885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17886
                                  (let ((__tmp17887 (car _exprs15906_)))
                                    (declare (not safe))
                                    (cons __tmp17887 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17886))))
                      (declare (not safe))
                      (cons __tmp17885 '()))))
               (declare (not safe))
               (cons _id15938_ __tmp17884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17883
                                                      _post15908_))))
                                         (declare (not safe))
                                         (_lp15903_
                                          _rest15935_
                                          __tmp17893
                                          __tmp17888
                                          __tmp17882)))
                                     (if (let ((__tmp17881
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15936_))))
                                           (declare (not safe))
                                           (not __tmp17881))
                                         (let ((__tmp17880 (cdr _exprs15906_))
                                               (__tmp17876
                                                (let ((__tmp17877
                                                       (let ((__tmp17878
                                                              (let ((__tmp17879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs15906_)))
                        (declare (not safe))
                        (cons __tmp17879 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17877
                                                        _post15908_))))
                                           (declare (not safe))
                                           (_lp15903_
                                            _rest15935_
                                            __tmp17880
                                            _bind15907_
                                            __tmp17876))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15936_))
                                             (let* ((_len15940_
                                                     (length _hd15936_))
                                                    (_tmp15942_
                                                     (let ((__tmp17858
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17858))))
                                               (let ((__tmp17875
                                                      (cdr _exprs15906_))
                                                     (__tmp17868
                                                      (let ((__tmp17869
                                                             (lambda (_id15945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15946_)
                       (if (let () (declare (not safe)) (__AST-e _id15945_))
                           (let ((__tmp17870
                                  (let ((__tmp17874
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15945_)))
                                        (__tmp17871
                                         (let ((__tmp17872
                                                (let ((__tmp17873
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17873))))
                                           (declare (not safe))
                                           (cons __tmp17872 '()))))
                                    (declare (not safe))
                                    (cons __tmp17874 __tmp17871))))
                             (declare (not safe))
                             (cons __tmp17870 _r15946_))
                           _r15946_))))
                (declare (not safe))
                (foldl1 __tmp17869 _bind15907_ _hd15936_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17859
                                                      (let ((__tmp17860
                                                             (let ((__tmp17861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17867 (car _exprs15906_))
                                  (__tmp17862
                                   (let ((__tmp17863
                                          (let ((__tmp17865
                                                 (lambda (_id15948_ _k15949_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15948_))
                                                       (let ((__tmp17866
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15948_))))
                 (declare (not safe))
                 (cons __tmp17866 _k15949_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17864
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15940_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17865
                                             _hd15936_
                                             __tmp17864))))
                                     (declare (not safe))
                                     (cons _len15940_ __tmp17863))))
                              (declare (not safe))
                              (cons __tmp17867 __tmp17862))))
                       (declare (not safe))
                       (cons _tmp15942_ __tmp17861))))
                (declare (not safe))
                (cons __tmp17860 _post15908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15903_
                                                  _rest15935_
                                                  __tmp17875
                                                  __tmp17868
                                                  __tmp17859)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15747_
                                                _hd15936_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1590915923_))
                              (let ((_tl1591915976_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1590915923_)))
                                    (_hd1591815974_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1590915923_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1591815974_))
                                    (let ((_tl1592115981_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1591815974_)))
                                          (_hd1592015979_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1591815974_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1592115981_))
                                          (let ((_hd15984_ _hd1592015979_)
                                                (_rest15986_ _tl1591915976_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1591715971_
                                               _rest15986_
                                               _hd15984_)))
                                          (let ((_hd15959_ _hd1591815974_)
                                                (_rest15961_ _tl1591915976_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1591415951_
                                               _rest15961_
                                               _hd15959_)))))
                                    (let ((_hd15959_ _hd1591815974_)
                                          (_rest15961_ _tl1591915976_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1591415951_
                                         _rest15961_
                                         _hd15959_)))))
                              (let ()
                                (declare (not safe))
                                (_else1591215931_))))))))
                 (_compile-bind15751_
                  (lambda (_bind15895_ _post15896_ _body15897_)
                    (let ((__tmp17894
                           (let ((__tmp17895
                                  (let ((__tmp17898 (reverse _bind15895_))
                                        (__tmp17896
                                         (let ((__tmp17897
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15752_
                                                   _post15896_
                                                   _body15897_))))
                                           (declare (not safe))
                                           (cons __tmp17897 '()))))
                                    (declare (not safe))
                                    (cons __tmp17898 __tmp17896))))
                             (declare (not safe))
                             (cons 'let __tmp17895))))
                      (declare (not safe))
                      (__SRC__% __tmp17894 _stx15747_))))
                 (_compile-post15752_
                  (lambda (_post15754_ _body15755_)
                    (let ((__tmp17899
                           (let ((__tmp17900
                                  (let ((__tmp17901
                                         (let ((__tmp17903
                                                (lambda (_hd15757_ _r15758_)
                                                  (let* ((_hd1575915782_
                                                          _hd15757_)
                                                         (_E1576315786_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1575915782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1577615880_
                                                           (lambda (_expr15878_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15878_ _r15758_))))
                  (_K1577115858_
                   (lambda (_expr15855_ _id15856_)
                     (let ((__tmp17904
                            (let ((__tmp17905
                                   (let ((__tmp17906
                                          (let ((__tmp17907
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15855_ '()))))
                                            (declare (not safe))
                                            (cons _id15856_ __tmp17907))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17906))))
                              (declare (not safe))
                              (__SRC__% __tmp17905 _stx15747_))))
                       (declare (not safe))
                       (cons __tmp17904 _r15758_))))
                  (_K1576415825_
                   (lambda (_init15790_ _len15791_ _expr15792_ _tmp15793_)
                     (let ((__tmp17908
                            (let ((__tmp17909
                                   (let ((__tmp17910
                                          (let ((__tmp17924
                                                 (let ((__tmp17925
                                                        (let ((__tmp17926
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15792_ '()))))
                  (declare (not safe))
                  (cons _tmp15793_ __tmp17926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17925 '())))
                                                (__tmp17911
                                                 (let ((__tmp17920
                                                        (let ((__tmp17921
                                                               (let ((__tmp17922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17923
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15791_ '()))))
                                (declare (not safe))
                                (cons _tmp15793_ __tmp17923))))
                         (declare (not safe))
                         (cons '__check-values __tmp17922))))
                  (declare (not safe))
                  (__SRC__% __tmp17921 _stx15747_)))
               (__tmp17912
                (let ((__tmp17913
                       (map (lambda (_hd15795_)
                              (let* ((_hd1579615803_ _hd15795_)
                                     (_E1579815807_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1579615803_)))
                                     (_K1579915813_
                                      (lambda (_k15810_ _id15811_)
                                        (let ((__tmp17914
                                               (let ((__tmp17915
                                                      (let ((__tmp17916
                                                             (let ((__tmp17917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17918
                                   (let ((__tmp17919
                                          (let ()
                                            (declare (not safe))
                                            (cons _k15810_ '()))))
                                     (declare (not safe))
                                     (cons _tmp15793_ __tmp17919))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp17918))))
                       (declare (not safe))
                       (cons __tmp17917 '()))))
                (declare (not safe))
                (cons _id15811_ __tmp17916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp17915))))
                                          (declare (not safe))
                                          (__SRC__% __tmp17914 _stx15747_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1579615803_))
                                    (let ((_hd1580015816_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1579615803_)))
                                          (_tl1580115818_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1579615803_))))
                                      (let* ((_id15821_ _hd1580015816_)
                                             (_k15823_ _tl1580115818_))
                                        (declare (not safe))
                                        (_K1579915813_ _k15823_ _id15821_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1579815807_)))))
                            _init15790_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17920
                                                         __tmp17912))))
                                            (declare (not safe))
                                            (cons __tmp17924 __tmp17911))))
                                     (declare (not safe))
                                     (cons 'let __tmp17910))))
                              (declare (not safe))
                              (__SRC__% __tmp17909 _stx15747_))))
                       (declare (not safe))
                       (cons __tmp17908 _r15758_)))))
              (if (let () (declare (not safe)) (##pair? _hd1575915782_))
                  (let ((_tl1577815885_
                         (let () (declare (not safe)) (##cdr _hd1575915782_)))
                        (_hd1577715883_
                         (let () (declare (not safe)) (##car _hd1575915782_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1577715883_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1577815885_))
                            (let ((_tl1578015890_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1577815885_)))
                                  (_hd1577915888_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1577815885_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1578015890_))
                                  (let ((_expr15893_ _hd1577915888_))
                                    (declare (not safe))
                                    (_K1577615880_ _expr15893_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1578015890_))
                                      (let ((_tl1577015844_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1578015890_)))
                                            (_hd1576915842_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1578015890_))))
                                        (let ((_tmp15833_ _hd1577715883_)
                                              (_expr15840_ _hd1577915888_)
                                              (_len15847_ _hd1576915842_)
                                              (_init15849_ _tl1577015844_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1576415825_
                                             _init15849_
                                             _len15847_
                                             _expr15840_
                                             _tmp15833_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1576315786_)))))
                            (let () (declare (not safe)) (_E1576315786_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1577815885_))
                            (let ((_tl1577515870_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1577815885_)))
                                  (_hd1577415868_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1577815885_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1577515870_))
                                  (let ((_id15866_ _hd1577715883_)
                                        (_expr15873_ _hd1577415868_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1577115858_ _expr15873_ _id15866_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1577515870_))
                                      (let ((_tl1577015844_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1577515870_)))
                                            (_hd1576915842_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1577515870_))))
                                        (let ((_tmp15833_ _hd1577715883_)
                                              (_expr15840_ _hd1577415868_)
                                              (_len15847_ _hd1576915842_)
                                              (_init15849_ _tl1577015844_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1576415825_
                                             _init15849_
                                             _len15847_
                                             _expr15840_
                                             _tmp15833_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1576315786_)))))
                            (let () (declare (not safe)) (_E1576315786_)))))
                  (let () (declare (not safe)) (_E1576315786_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17902 (list _body15755_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17903
                                                   __tmp17902
                                                   _post15754_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17901))))
                             (declare (not safe))
                             (cons 'begin __tmp17900))))
                      (declare (not safe))
                      (__SRC__% __tmp17899 _stx15747_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15747_
             _compile-simple15749_
             _compile-values15750_)))))
    (define __compile-call%
      (lambda (_stx15707_)
        (let* ((_$e15709_ _stx15707_)
               (_$E1571115720_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15709_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15709_))
              (let* ((_$tgt1571215723_
                      (let () (declare (not safe)) (__AST-e _$e15709_)))
                     (_$hd1571315726_
                      (let () (declare (not safe)) (##car _$tgt1571215723_)))
                     (_$tl1571415729_
                      (let () (declare (not safe)) (##cdr _$tgt1571215723_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1571415729_))
                    (let* ((_$tgt1571515733_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1571415729_)))
                           (_$hd1571615736_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1571515733_)))
                           (_$tl1571715739_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1571515733_))))
                      (let* ((_rator15743_ _$hd1571615736_)
                             (_rands15745_ _$tl1571715739_)
                             (__tmp17927
                              (let ((__tmp17929
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15743_)))
                                    (__tmp17928 (map __compile _rands15745_)))
                                (declare (not safe))
                                (cons __tmp17929 __tmp17928))))
                        (declare (not safe))
                        (__SRC__% __tmp17927 _stx15707_)))
                    (let () (declare (not safe)) (_$E1571115720_))))
              (let () (declare (not safe)) (_$E1571115720_))))))
    (define __compile-ref%
      (lambda (_stx15669_)
        (let* ((_$e15671_ _stx15669_)
               (_$E1567315682_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15671_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15671_))
              (let* ((_$tgt1567415685_
                      (let () (declare (not safe)) (__AST-e _$e15671_)))
                     (_$hd1567515688_
                      (let () (declare (not safe)) (##car _$tgt1567415685_)))
                     (_$tl1567615691_
                      (let () (declare (not safe)) (##cdr _$tgt1567415685_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1567615691_))
                    (let* ((_$tgt1567715695_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1567615691_)))
                           (_$hd1567815698_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1567715695_)))
                           (_$tl1567915701_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1567715695_))))
                      (let ((_id15705_ _$hd1567815698_))
                        (if (let ((__tmp17930
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1567915701_))))
                              (declare (not safe))
                              (equal? __tmp17930 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15705_ _stx15669_))
                            (let () (declare (not safe)) (_$E1567315682_)))))
                    (let () (declare (not safe)) (_$E1567315682_))))
              (let () (declare (not safe)) (_$E1567315682_))))))
    (define __compile-setq%
      (lambda (_stx15616_)
        (let* ((_$e15618_ _stx15616_)
               (_$E1562015632_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15618_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15618_))
              (let* ((_$tgt1562115635_
                      (let () (declare (not safe)) (__AST-e _$e15618_)))
                     (_$hd1562215638_
                      (let () (declare (not safe)) (##car _$tgt1562115635_)))
                     (_$tl1562315641_
                      (let () (declare (not safe)) (##cdr _$tgt1562115635_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1562315641_))
                    (let* ((_$tgt1562415645_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1562315641_)))
                           (_$hd1562515648_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1562415645_)))
                           (_$tl1562615651_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1562415645_))))
                      (let ((_id15655_ _$hd1562515648_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1562615651_))
                            (let* ((_$tgt1562715657_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1562615651_)))
                                   (_$hd1562815660_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1562715657_)))
                                   (_$tl1562915663_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1562715657_))))
                              (let ((_expr15667_ _$hd1562815660_))
                                (if (let ((__tmp17936
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1562915663_))))
                                      (declare (not safe))
                                      (equal? __tmp17936 '()))
                                    (let ((__tmp17931
                                           (let ((__tmp17932
                                                  (let ((__tmp17935
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15655_
                                                            _stx15616_)))
                                                        (__tmp17933
                                                         (let ((__tmp17934
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15667_))))
                   (declare (not safe))
                   (cons __tmp17934 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17935
                                                          __tmp17933))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17932))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17931 _stx15616_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1562015632_)))))
                            (let () (declare (not safe)) (_$E1562015632_)))))
                    (let () (declare (not safe)) (_$E1562015632_))))
              (let () (declare (not safe)) (_$E1562015632_))))))
    (define __compile-if%
      (lambda (_stx15548_)
        (let* ((_$e15550_ _stx15548_)
               (_$E1555215567_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15550_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15550_))
              (let* ((_$tgt1555315570_
                      (let () (declare (not safe)) (__AST-e _$e15550_)))
                     (_$hd1555415573_
                      (let () (declare (not safe)) (##car _$tgt1555315570_)))
                     (_$tl1555515576_
                      (let () (declare (not safe)) (##cdr _$tgt1555315570_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1555515576_))
                    (let* ((_$tgt1555615580_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1555515576_)))
                           (_$hd1555715583_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1555615580_)))
                           (_$tl1555815586_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1555615580_))))
                      (let ((_p15590_ _$hd1555715583_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1555815586_))
                            (let* ((_$tgt1555915592_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1555815586_)))
                                   (_$hd1556015595_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1555915592_)))
                                   (_$tl1556115598_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1555915592_))))
                              (let ((_t15602_ _$hd1556015595_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1556115598_))
                                    (let* ((_$tgt1556215604_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1556115598_)))
                                           (_$hd1556315607_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1556215604_)))
                                           (_$tl1556415610_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1556215604_))))
                                      (let ((_f15614_ _$hd1556315607_))
                                        (if (let ((__tmp17944
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1556415610_))))
                                              (declare (not safe))
                                              (equal? __tmp17944 '()))
                                            (let ((__tmp17937
                                                   (let ((__tmp17938
                                                          (let ((__tmp17943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15590_)))
                        (__tmp17939
                         (let ((__tmp17942
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15602_)))
                               (__tmp17940
                                (let ((__tmp17941
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15614_))))
                                  (declare (not safe))
                                  (cons __tmp17941 '()))))
                           (declare (not safe))
                           (cons __tmp17942 __tmp17940))))
                    (declare (not safe))
                    (cons __tmp17943 __tmp17939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17938))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17937 _stx15548_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1555215567_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1555215567_)))))
                            (let () (declare (not safe)) (_$E1555215567_)))))
                    (let () (declare (not safe)) (_$E1555215567_))))
              (let () (declare (not safe)) (_$E1555215567_))))))
    (define __compile-quote%
      (lambda (_stx15510_)
        (let* ((_$e15512_ _stx15510_)
               (_$E1551415523_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15512_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15512_))
              (let* ((_$tgt1551515526_
                      (let () (declare (not safe)) (__AST-e _$e15512_)))
                     (_$hd1551615529_
                      (let () (declare (not safe)) (##car _$tgt1551515526_)))
                     (_$tl1551715532_
                      (let () (declare (not safe)) (##cdr _$tgt1551515526_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1551715532_))
                    (let* ((_$tgt1551815536_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1551715532_)))
                           (_$hd1551915539_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1551815536_)))
                           (_$tl1552015542_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1551815536_))))
                      (let ((_e15546_ _$hd1551915539_))
                        (if (let ((__tmp17948
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1552015542_))))
                              (declare (not safe))
                              (equal? __tmp17948 '()))
                            (let ((__tmp17945
                                   (let ((__tmp17946
                                          (let ((__tmp17947
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15546_))))
                                            (declare (not safe))
                                            (cons __tmp17947 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17946))))
                              (declare (not safe))
                              (__SRC__% __tmp17945 _stx15510_))
                            (let () (declare (not safe)) (_$E1551415523_)))))
                    (let () (declare (not safe)) (_$E1551415523_))))
              (let () (declare (not safe)) (_$E1551415523_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15472_)
        (let* ((_$e15474_ _stx15472_)
               (_$E1547615485_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15474_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15474_))
              (let* ((_$tgt1547715488_
                      (let () (declare (not safe)) (__AST-e _$e15474_)))
                     (_$hd1547815491_
                      (let () (declare (not safe)) (##car _$tgt1547715488_)))
                     (_$tl1547915494_
                      (let () (declare (not safe)) (##cdr _$tgt1547715488_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1547915494_))
                    (let* ((_$tgt1548015498_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1547915494_)))
                           (_$hd1548115501_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1548015498_)))
                           (_$tl1548215504_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1548015498_))))
                      (let ((_e15508_ _$hd1548115501_))
                        (if (let ((__tmp17951
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1548215504_))))
                              (declare (not safe))
                              (equal? __tmp17951 '()))
                            (let ((__tmp17949
                                   (let ((__tmp17950
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15508_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17950))))
                              (declare (not safe))
                              (__SRC__% __tmp17949 _stx15472_))
                            (let () (declare (not safe)) (_$E1547615485_)))))
                    (let () (declare (not safe)) (_$E1547615485_))))
              (let () (declare (not safe)) (_$E1547615485_))))))
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
