(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1696372335)
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
      (lambda _$args17400_
        (apply make-struct-instance __context::t _$args17400_)))
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
      (lambda _$args17397_
        (apply make-struct-instance __runtime::t _$args17397_)))
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
      (lambda _$args17394_
        (apply make-struct-instance __syntax::t _$args17394_)))
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
      (lambda _$args17391_
        (apply make-struct-instance __macro::t _$args17391_)))
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
      (lambda _$args17388_
        (apply make-struct-instance __special-form::t _$args17388_)))
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
      (lambda _$args17385_
        (apply make-struct-instance __core-form::t _$args17385_)))
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
      (lambda _$args17382_
        (apply make-struct-instance __core-expression::t _$args17382_)))
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
      (lambda _$args17379_
        (apply make-struct-instance __core-special-form::t _$args17379_)))
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
      (lambda _$args17376_
        (apply make-struct-instance __struct-info::t _$args17376_)))
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
      (lambda _$args17373_
        (apply make-struct-instance __feature::t _$args17373_)))
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
      (lambda _$args17370_
        (apply make-struct-instance __module::t _$args17370_)))
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
      (let ((__tmp17586
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17585 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17586 __tmp17585)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17345_ _ctx17346_)
        (if _ctx17346_
            (let ((_id17348_
                   (let () (declare (not safe)) (__AST-e _id17345_))))
              (let _lp17350_ ((_ctx17352_ _ctx17346_))
                (let ((_$e17354_
                       (table-ref
                        (##structure-ref _ctx17352_ '4 __context::t '#f)
                        _id17348_
                        '#f)))
                  (if _$e17354_
                      (values _$e17354_)
                      (let ((_$e17357_
                             (##structure-ref _ctx17352_ '3 __context::t '#f)))
                        (if _$e17357_
                            (let () (declare (not safe)) (_lp17350_ _$e17357_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17363_)
        (let ((_ctx17365_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17363_ _ctx17365_))))
    (define __core-resolve
      (lambda _g17588_
        (let ((_g17587_ (let () (declare (not safe)) (##length _g17588_))))
          (cond ((let () (declare (not safe)) (##fx= _g17587_ 1))
                 (apply (lambda (_id17363_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17363_)))
                        _g17588_))
                ((let () (declare (not safe)) (##fx= _g17587_ 2))
                 (apply (lambda (_id17367_ _ctx17368_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17367_ _ctx17368_)))
                        _g17588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17588_))))))
    (define __core-bound-id?__%
      (lambda (_id17328_ _is?17329_)
        (let ((_$e17331_
               (let () (declare (not safe)) (__core-resolve__0 _id17328_))))
          (if _$e17331_ (_is?17329_ _$e17331_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17337_)
        (let ((_is?17339_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17337_ _is?17339_))))
    (define __core-bound-id?
      (lambda _g17590_
        (let ((_g17589_ (let () (declare (not safe)) (##length _g17590_))))
          (cond ((let () (declare (not safe)) (##fx= _g17589_ 1))
                 (apply (lambda (_id17337_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17337_)))
                        _g17590_))
                ((let () (declare (not safe)) (##fx= _g17589_ 2))
                 (apply (lambda (_id17341_ _is?17342_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17341_ _is?17342_)))
                        _g17590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17590_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17311_ _eid17312_ _ctx17313_)
        (if _eid17312_
            (let ((__tmp17593 (##structure-ref _ctx17313_ '4 __context::t '#f))
                  (__tmp17592
                   (let () (declare (not safe)) (__AST-e _id17311_)))
                  (__tmp17591
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17312_))))
              (declare (not safe))
              (table-set! __tmp17593 __tmp17592 __tmp17591))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17318_ _eid17319_)
        (let ((_ctx17321_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17318_ _eid17319_ _ctx17321_))))
    (define __core-bind-runtime!
      (lambda _g17595_
        (let ((_g17594_ (let () (declare (not safe)) (##length _g17595_))))
          (cond ((let () (declare (not safe)) (##fx= _g17594_ 2))
                 (apply (lambda (_id17318_ _eid17319_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17318_ _eid17319_)))
                        _g17595_))
                ((let () (declare (not safe)) (##fx= _g17594_ 3))
                 (apply (lambda (_id17323_ _eid17324_ _ctx17325_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17323_
                             _eid17324_
                             _ctx17325_)))
                        _g17595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17595_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17294_ _e17295_ _make17296_)
        (let ((__tmp17596
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17295_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17295_
                   (_make17296_ _e17295_ _id17294_))))
          (declare (not safe))
          (table-set! __*core* _id17294_ __tmp17596))))
    (define __core-bind-syntax!__0
      (lambda (_id17301_ _e17302_)
        (let ((_make17304_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17301_ _e17302_ _make17304_))))
    (define __core-bind-syntax!
      (lambda _g17598_
        (let ((_g17597_ (let () (declare (not safe)) (##length _g17598_))))
          (cond ((let () (declare (not safe)) (##fx= _g17597_ 2))
                 (apply (lambda (_id17301_ _e17302_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17301_ _e17302_)))
                        _g17598_))
                ((let () (declare (not safe)) (##fx= _g17597_ 3))
                 (apply (lambda (_id17306_ _e17307_ _make17308_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17306_
                             _e17307_
                             _make17308_)))
                        _g17598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17598_))))))
    (define __core-bind-macro!
      (lambda (_id17290_ _e17291_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17290_ _e17291_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17287_ _e17288_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17287_ _e17288_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17271_ _e17272_ _ctx17273_)
        (let ((__tmp17602 (##structure-ref _ctx17273_ '4 __context::t '#f))
              (__tmp17601 (let () (declare (not safe)) (__AST-e _id17271_)))
              (__tmp17599
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17272_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17272_
                   (let ((__tmp17600
                          (let () (declare (not safe)) (__AST-e _id17271_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17272_ __tmp17600)))))
          (declare (not safe))
          (table-set! __tmp17602 __tmp17601 __tmp17599))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17278_ _e17279_)
        (let ((_ctx17281_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17278_ _e17279_ _ctx17281_))))
    (define __core-bind-user-syntax!
      (lambda _g17604_
        (let ((_g17603_ (let () (declare (not safe)) (##length _g17604_))))
          (cond ((let () (declare (not safe)) (##fx= _g17603_ 2))
                 (apply (lambda (_id17278_ _e17279_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17278_ _e17279_)))
                        _g17604_))
                ((let () (declare (not safe)) (##fx= _g17603_ 3))
                 (apply (lambda (_id17283_ _e17284_ _ctx17285_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17283_
                             _e17284_
                             _ctx17285_)))
                        _g17604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17604_))))))
    (define make-__runtime-id__%
      (lambda (_id17252_ _ctx17253_)
        (let ((_id17255_ (let () (declare (not safe)) (__AST-e _id17252_))))
          (if (let () (declare (not safe)) (eq? _id17255_ '_))
              '#f
              (if (uninterned-symbol? _id17255_)
                  (gensym _id17255_)
                  (if (let () (declare (not safe)) (symbol? _id17255_))
                      (let ((_$e17257_
                             (##structure-ref _ctx17253_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17257_))
                            (gensym _id17255_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17257_))
                                (let ((__tmp17605
                                       (##structure-ref
                                        _ctx17253_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol __tmp17605 '"#" _id17255_))
                                _id17255_)))
                      (error '"Illegal runtime identifier" _id17255_)))))))
    (define make-__runtime-id__0
      (lambda (_id17263_)
        (let ((_ctx17265_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17263_ _ctx17265_))))
    (define make-__runtime-id
      (lambda _g17607_
        (let ((_g17606_ (let () (declare (not safe)) (##length _g17607_))))
          (cond ((let () (declare (not safe)) (##fx= _g17606_ 1))
                 (apply (lambda (_id17263_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17263_)))
                        _g17607_))
                ((let () (declare (not safe)) (##fx= _g17606_ 2))
                 (apply (lambda (_id17267_ _ctx17268_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17267_ _ctx17268_)))
                        _g17607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17607_))))))
    (define make-__context-local__%
      (lambda (_super17241_)
        (let ((__tmp17608
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17241_ __tmp17608))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17247_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17247_))))
    (define make-__context-local
      (lambda _g17610_
        (let ((_g17609_ (let () (declare (not safe)) (##length _g17610_))))
          (cond ((let () (declare (not safe)) (##fx= _g17609_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17610_))
                ((let () (declare (not safe)) (##fx= _g17609_ 1))
                 (apply (lambda (_super17249_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17249_)))
                        _g17610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17610_))))))
    (define make-__context-module__%
      (lambda (_id17221_ _ns17222_ _path17223_ _super17224_)
        (let ((__tmp17611
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17222_
           _super17224_
           __tmp17611
           _id17221_
           _path17223_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17229_ _ns17230_ _path17231_)
        (let ((_super17233_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17229_
           _ns17230_
           _path17231_
           _super17233_))))
    (define make-__context-module
      (lambda _g17613_
        (let ((_g17612_ (let () (declare (not safe)) (##length _g17613_))))
          (cond ((let () (declare (not safe)) (##fx= _g17612_ 3))
                 (apply (lambda (_id17229_ _ns17230_ _path17231_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17229_
                             _ns17230_
                             _path17231_)))
                        _g17613_))
                ((let () (declare (not safe)) (##fx= _g17612_ 4))
                 (apply (lambda (_id17235_ _ns17236_ _path17237_ _super17238_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17235_
                             _ns17236_
                             _path17237_
                             _super17238_)))
                        _g17613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17613_))))))
    (define __SRC__%
      (lambda (_e17204_ _src-stx17205_)
        (if (or (let () (declare (not safe)) (pair? _e17204_))
                (let () (declare (not safe)) (symbol? _e17204_)))
            (let ((__tmp17617
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17205_
                          'gerbil#AST::t))
                       (let ((__tmp17618
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17205_))))
                         (declare (not safe))
                         (__locat __tmp17618))
                       '#f)))
              (declare (not safe))
              (##make-source _e17204_ __tmp17617))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17204_ 'gerbil#AST::t))
                (let ((__tmp17616
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17204_ '1 AST::t '#f)))
                      (__tmp17614
                       (let ((__tmp17615
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17204_))))
                         (declare (not safe))
                         (__locat __tmp17615))))
                  (declare (not safe))
                  (##make-source __tmp17616 __tmp17614))
                (error '"BUG! Cannot sourcify object" _e17204_)))))
    (define __SRC__0
      (lambda (_e17213_)
        (let ((_src-stx17215_ '#f))
          (declare (not safe))
          (__SRC__% _e17213_ _src-stx17215_))))
    (define __SRC
      (lambda _g17620_
        (let ((_g17619_ (let () (declare (not safe)) (##length _g17620_))))
          (cond ((let () (declare (not safe)) (##fx= _g17619_ 1))
                 (apply (lambda (_e17213_)
                          (let () (declare (not safe)) (__SRC__0 _e17213_)))
                        _g17620_))
                ((let () (declare (not safe)) (##fx= _g17619_ 2))
                 (apply (lambda (_e17217_ _src-stx17218_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17217_ _src-stx17218_)))
                        _g17620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17620_))))))
    (define __locat
      (lambda (_loc17201_)
        (if (let () (declare (not safe)) (##locat? _loc17201_))
            _loc17201_
            '#f)))
    (define __check-values
      (lambda (_obj17196_ _k17197_)
        (let ((_count17199_
               (if (let () (declare (not safe)) (##values? _obj17196_))
                   (let () (declare (not safe)) (##vector-length _obj17196_))
                   '1)))
          (if (fx= _count17199_ _k17197_)
              '#!void
              (error (if (fx< _count17199_ _k17197_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17196_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17196_))
                         _obj17196_)
                     _k17197_)))))
    (define __compile
      (lambda (_stx17166_)
        (let* ((_$e17168_ _stx17166_)
               (_$E1717017176_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17168_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17168_))
              (let* ((_$tgt1717117179_
                      (let () (declare (not safe)) (__AST-e _$e17168_)))
                     (_$hd1717217182_
                      (let () (declare (not safe)) (##car _$tgt1717117179_)))
                     (_$tl1717317185_
                      (let () (declare (not safe)) (##cdr _$tgt1717117179_))))
                (let* ((_form17189_ _$hd1717217182_)
                       (_$e17191_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17189_))))
                  (if _$e17191_
                      ((lambda (_bind17194_)
                         ((##structure-ref _bind17194_ '1 __syntax::t '#f)
                          _stx17166_))
                       _$e17191_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx17166_
                         _form17189_)))))
              (let () (declare (not safe)) (_$E1717017176_))))))
    (define __compile-error__%
      (lambda (_stx17153_ _detail17154_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17153_
           _detail17154_))))
    (define __compile-error__0
      (lambda (_stx17159_)
        (let ((_detail17161_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17159_ _detail17161_))))
    (define __compile-error
      (lambda _g17622_
        (let ((_g17621_ (let () (declare (not safe)) (##length _g17622_))))
          (cond ((let () (declare (not safe)) (##fx= _g17621_ 1))
                 (apply (lambda (_stx17159_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17159_)))
                        _g17622_))
                ((let () (declare (not safe)) (##fx= _g17621_ 2))
                 (apply (lambda (_stx17163_ _detail17164_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17163_ _detail17164_)))
                        _g17622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17622_))))))
    (define __compile-ignore%
      (lambda (_stx17150_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17150_))))
    (define __compile-begin%
      (lambda (_stx17125_)
        (let* ((_$e17127_ _stx17125_)
               (_$E1712917135_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17127_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17127_))
              (let* ((_$tgt1713017138_
                      (let () (declare (not safe)) (__AST-e _$e17127_)))
                     (_$hd1713117141_
                      (let () (declare (not safe)) (##car _$tgt1713017138_)))
                     (_$tl1713217144_
                      (let () (declare (not safe)) (##cdr _$tgt1713017138_))))
                (let* ((_body17148_ _$tl1713217144_)
                       (__tmp17623
                        (let ((__tmp17624 (map __compile _body17148_)))
                          (declare (not safe))
                          (cons 'begin __tmp17624))))
                  (declare (not safe))
                  (__SRC__% __tmp17623 _stx17125_)))
              (let () (declare (not safe)) (_$E1712917135_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17100_)
        (let* ((_$e17102_ _stx17100_)
               (_$E1710417110_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17102_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17102_))
              (let* ((_$tgt1710517113_
                      (let () (declare (not safe)) (__AST-e _$e17102_)))
                     (_$hd1710617116_
                      (let () (declare (not safe)) (##car _$tgt1710517113_)))
                     (_$tl1710717119_
                      (let () (declare (not safe)) (##cdr _$tgt1710517113_))))
                (let* ((_body17123_ _$tl1710717119_)
                       (__tmp17625
                        (let ((__tmp17626
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17123_))))
                          (declare (not safe))
                          (cons 'begin __tmp17626))))
                  (declare (not safe))
                  (__SRC__% __tmp17625 _stx17100_)))
              (let () (declare (not safe)) (_$E1710417110_))))))
    (define __compile-import%
      (lambda (_stx17075_)
        (let* ((_$e17077_ _stx17075_)
               (_$E1707917085_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17077_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17077_))
              (let* ((_$tgt1708017088_
                      (let () (declare (not safe)) (__AST-e _$e17077_)))
                     (_$hd1708117091_
                      (let () (declare (not safe)) (##car _$tgt1708017088_)))
                     (_$tl1708217094_
                      (let () (declare (not safe)) (##cdr _$tgt1708017088_))))
                (let* ((_body17098_ _$tl1708217094_)
                       (__tmp17627
                        (let ((__tmp17628
                               (let ((__tmp17629
                                      (let ((__tmp17630
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17098_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17630))))
                                 (declare (not safe))
                                 (cons __tmp17629 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17628))))
                  (declare (not safe))
                  (__SRC__% __tmp17627 _stx17075_)))
              (let () (declare (not safe)) (_$E1707917085_))))))
    (define __compile-begin-annotation%
      (lambda (_stx17022_)
        (let* ((_$e17024_ _stx17022_)
               (_$E1702617038_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17024_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17024_))
              (let* ((_$tgt1702717041_
                      (let () (declare (not safe)) (__AST-e _$e17024_)))
                     (_$hd1702817044_
                      (let () (declare (not safe)) (##car _$tgt1702717041_)))
                     (_$tl1702917047_
                      (let () (declare (not safe)) (##cdr _$tgt1702717041_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1702917047_))
                    (let* ((_$tgt1703017051_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1702917047_)))
                           (_$hd1703117054_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1703017051_)))
                           (_$tl1703217057_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1703017051_))))
                      (let ((_ann17061_ _$hd1703117054_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1703217057_))
                            (let* ((_$tgt1703317063_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1703217057_)))
                                   (_$hd1703417066_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1703317063_)))
                                   (_$tl1703517069_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1703317063_))))
                              (let ((_expr17073_ _$hd1703417066_))
                                (if (let ((__tmp17631
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1703517069_))))
                                      (declare (not safe))
                                      (equal? __tmp17631 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17073_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1702617038_)))))
                            (let () (declare (not safe)) (_$E1702617038_)))))
                    (let () (declare (not safe)) (_$E1702617038_))))
              (let () (declare (not safe)) (_$E1702617038_))))))
    (define __compile-define-values%
      (lambda (_stx16913_)
        (let* ((_$e16915_ _stx16913_)
               (_$E1691716929_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16915_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16915_))
              (let* ((_$tgt1691816932_
                      (let () (declare (not safe)) (__AST-e _$e16915_)))
                     (_$hd1691916935_
                      (let () (declare (not safe)) (##car _$tgt1691816932_)))
                     (_$tl1692016938_
                      (let () (declare (not safe)) (##cdr _$tgt1691816932_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1692016938_))
                    (let* ((_$tgt1692116942_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1692016938_)))
                           (_$hd1692216945_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1692116942_)))
                           (_$tl1692316948_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1692116942_))))
                      (let ((_hd16952_ _$hd1692216945_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1692316948_))
                            (let* ((_$tgt1692416954_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1692316948_)))
                                   (_$hd1692516957_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1692416954_)))
                                   (_$tl1692616960_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1692416954_))))
                              (let ((_expr16964_ _$hd1692516957_))
                                (if (let ((__tmp17664
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1692616960_))))
                                      (declare (not safe))
                                      (equal? __tmp17664 '()))
                                    (let* ((_$e16966_ _hd16952_)
                                           (_$E1696817009_
                                            (lambda ()
                                              (let ((_$E1696916994_
                                                     (lambda ()
                                                       (let* ((_$E1697016981_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _$e16966_))))
                      (_ids16984_ _hd16952_)
                      (_len16986_ (length _ids16984_))
                      (_tmp16988_
                       (let ((__tmp17632 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17632))))
                 (let ((__tmp17633
                        (let ((__tmp17634
                               (let ((__tmp17651
                                      (let ((__tmp17652
                                             (let ((__tmp17653
                                                    (let ((__tmp17654
                                                           (let ((__tmp17655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr16964_))))
                     (declare (not safe))
                     (cons __tmp17655 '()))))
              (declare (not safe))
              (cons _tmp16988_ __tmp17654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17653))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17652 _stx16913_)))
                                     (__tmp17635
                                      (let ((__tmp17647
                                             (let ((__tmp17648
                                                    (let ((__tmp17649
                                                           (let ((__tmp17650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len16986_ '()))))
                     (declare (not safe))
                     (cons _tmp16988_ __tmp17650))))
              (declare (not safe))
              (cons '__check-values __tmp17649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17648
                                                _stx16913_)))
                                            (__tmp17636
                                             (let ((__tmp17637
                                                    (let ((__tmp17639
                                                           (lambda (_id16991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k16992_)
                     (if (let () (declare (not safe)) (__AST-e _id16991_))
                         (let ((__tmp17640
                                (let ((__tmp17641
                                       (let ((__tmp17646
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id16991_)))
                                             (__tmp17642
                                              (let ((__tmp17643
                                                     (let ((__tmp17644
                                                            (let ((__tmp17645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k16992_ '()))))
                      (declare (not safe))
                      (cons _tmp16988_ __tmp17645))))
               (declare (not safe))
               (cons '##vector-ref __tmp17644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17643 '()))))
                                         (declare (not safe))
                                         (cons __tmp17646 __tmp17642))))
                                  (declare (not safe))
                                  (cons 'define __tmp17641))))
                           (declare (not safe))
                           (__SRC__% __tmp17640 _stx16913_))
                         '#f)))
                  (__tmp17638 (let () (declare (not safe)) (iota _len16986_))))
              (declare (not safe))
              (filter-map2 __tmp17639 _ids16984_ __tmp17638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17637))))
                                        (declare (not safe))
                                        (cons __tmp17647 __tmp17636))))
                                 (declare (not safe))
                                 (cons __tmp17651 __tmp17635))))
                          (declare (not safe))
                          (cons 'begin __tmp17634))))
                   (declare (not safe))
                   (__SRC__% __tmp17633 _stx16913_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e16966_))
                                                    (let* ((_$tgt1697116997_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e16966_)))
                                                           (_$hd1697217000_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1697116997_)))
                                                           (_$tl1697317003_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1697116997_))))
                                                      (let ((_id17007_
                                                             _$hd1697217000_))
                                                        (if (let ((__tmp17661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1697317003_))))
                      (declare (not safe))
                      (equal? __tmp17661 '()))
                    (let ((__tmp17656
                           (let ((__tmp17657
                                  (let ((__tmp17660
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id17007_)))
                                        (__tmp17658
                                         (let ((__tmp17659
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr16964_))))
                                           (declare (not safe))
                                           (cons __tmp17659 '()))))
                                    (declare (not safe))
                                    (cons __tmp17660 __tmp17658))))
                             (declare (not safe))
                             (cons 'define __tmp17657))))
                      (declare (not safe))
                      (__SRC__% __tmp17656 _stx16913_))
                    (let () (declare (not safe)) (_$E1696916994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1696916994_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e16966_))
                                          (let* ((_$tgt1697417012_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e16966_)))
                                                 (_$hd1697517015_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1697417012_)))
                                                 (_$tl1697617018_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1697417012_))))
                                            (if (let ((__tmp17663
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1697517015_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17663 '#f))
                                                (if (let ((__tmp17662
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1697617018_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17662 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr16964_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1696817009_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1696817009_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1696817009_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1691716929_)))))
                            (let () (declare (not safe)) (_$E1691716929_)))))
                    (let () (declare (not safe)) (_$E1691716929_))))
              (let () (declare (not safe)) (_$E1691716929_))))))
    (define __compile-head-id
      (lambda (_e16911_)
        (let ((__tmp17665
               (if (let () (declare (not safe)) (__AST-e _e16911_))
                   _e16911_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17665))))
    (define __compile-lambda-head
      (lambda (_hd16868_)
        (let _recur16870_ ((_rest16872_ _hd16868_))
          (let* ((_$e16874_ _rest16872_)
                 (_$E1687616894_
                  (lambda ()
                    (let ((_$E1687716891_
                           (lambda ()
                             (let* ((_$E1687816886_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _$e16874_))))
                                    (_tail16889_ _$e16874_))
                               (declare (not safe))
                               (__compile-head-id _tail16889_)))))
                      (if (let ((__tmp17666
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16874_))))
                            (declare (not safe))
                            (equal? __tmp17666 '()))
                          '()
                          (let () (declare (not safe)) (_$E1687716891_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16874_))
                (let* ((_$tgt1687916897_
                        (let () (declare (not safe)) (__AST-e _$e16874_)))
                       (_$hd1688016900_
                        (let () (declare (not safe)) (##car _$tgt1687916897_)))
                       (_$tl1688116903_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1687916897_))))
                  (let* ((_hd16907_ _$hd1688016900_)
                         (_rest16909_ _$tl1688116903_))
                    (let ((__tmp17668
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16907_)))
                          (__tmp17667
                           (let ()
                             (declare (not safe))
                             (_recur16870_ _rest16909_))))
                      (declare (not safe))
                      (cons __tmp17668 __tmp17667))))
                (let () (declare (not safe)) (_$E1687616894_)))))))
    (define __compile-lambda%
      (lambda (_stx16815_)
        (let* ((_$e16817_ _stx16815_)
               (_$E1681916831_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16817_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16817_))
              (let* ((_$tgt1682016834_
                      (let () (declare (not safe)) (__AST-e _$e16817_)))
                     (_$hd1682116837_
                      (let () (declare (not safe)) (##car _$tgt1682016834_)))
                     (_$tl1682216840_
                      (let () (declare (not safe)) (##cdr _$tgt1682016834_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1682216840_))
                    (let* ((_$tgt1682316844_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1682216840_)))
                           (_$hd1682416847_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1682316844_)))
                           (_$tl1682516850_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1682316844_))))
                      (let ((_hd16854_ _$hd1682416847_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1682516850_))
                            (let* ((_$tgt1682616856_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1682516850_)))
                                   (_$hd1682716859_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1682616856_)))
                                   (_$tl1682816862_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1682616856_))))
                              (let ((_body16866_ _$hd1682716859_))
                                (if (let ((__tmp17674
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1682816862_))))
                                      (declare (not safe))
                                      (equal? __tmp17674 '()))
                                    (let ((__tmp17669
                                           (let ((__tmp17670
                                                  (let ((__tmp17673
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16854_)))
                                                        (__tmp17671
                                                         (let ((__tmp17672
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16866_))))
                   (declare (not safe))
                   (cons __tmp17672 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17673
                                                          __tmp17671))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17670))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17669 _stx16815_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1681916831_)))))
                            (let () (declare (not safe)) (_$E1681916831_)))))
                    (let () (declare (not safe)) (_$E1681916831_))))
              (let () (declare (not safe)) (_$E1681916831_))))))
    (define __compile-case-lambda%
      (lambda (_stx16607_)
        (letrec ((_variadic?16609_
                  (lambda (_hd16780_)
                    (let* ((_$e16782_ _hd16780_)
                           (_$E1678416800_
                            (lambda ()
                              (let ((_$E1678516797_
                                     (lambda ()
                                       (let ((_$E1678616794_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _$e16782_)))))
                                         '#t))))
                                (if (let ((__tmp17675
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16782_))))
                                      (declare (not safe))
                                      (equal? __tmp17675 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1678516797_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16782_))
                          (let* ((_$tgt1678716803_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16782_)))
                                 (_$hd1678816806_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1678716803_)))
                                 (_$tl1678916809_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1678716803_))))
                            (let ((_rest16813_ _$tl1678916809_))
                              (declare (not safe))
                              (_variadic?16609_ _rest16813_)))
                          (let () (declare (not safe)) (_$E1678416800_))))))
                 (_arity16610_
                  (lambda (_hd16745_)
                    (let _lp16747_ ((_rest16749_ _hd16745_) (_k16750_ '0))
                      (let* ((_$e16752_ _rest16749_)
                             (_$E1675416765_
                              (lambda ()
                                (let ((_$E1675516762_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _$e16752_)))))
                                  _k16750_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16752_))
                            (let* ((_$tgt1675616768_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16752_)))
                                   (_$hd1675716771_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1675616768_)))
                                   (_$tl1675816774_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1675616768_))))
                              (let* ((_rest16778_ _$tl1675816774_)
                                     (__tmp17676
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16750_ '1))))
                                (declare (not safe))
                                (_lp16747_ _rest16778_ __tmp17676)))
                            (let () (declare (not safe)) (_$E1675416765_)))))))
                 (_generate16611_
                  (lambda (_rest16672_ _args16673_ _len16674_)
                    (let* ((_$e16676_ _rest16672_)
                           (_$E1667816689_
                            (lambda ()
                              (let* ((_$E1667916686_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _$e16676_))))
                                     (__tmp17677
                                      (let ((__tmp17678
                                             (let ((__tmp17679
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16673_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17679))))
                                        (declare (not safe))
                                        (cons 'error __tmp17678))))
                                (declare (not safe))
                                (__SRC__% __tmp17677 _stx16607_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16676_))
                          (let* ((_$tgt1668016692_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16676_)))
                                 (_$hd1668116695_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1668016692_)))
                                 (_$tl1668216698_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1668016692_))))
                            (let* ((_clause16702_ _$hd1668116695_)
                                   (_rest16704_ _$tl1668216698_)
                                   (_$e16706_ _clause16702_)
                                   (_$E1670816717_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _$e16706_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16706_))
                                  (let* ((_$tgt1670916720_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16706_)))
                                         (_$hd1671016723_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1670916720_)))
                                         (_$tl1671116726_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1670916720_))))
                                    (let ((_hd16730_ _$hd1671016723_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1671116726_))
                                          (let* ((_$tgt1671216732_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1671116726_)))
                                                 (_$hd1671316735_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1671216732_)))
                                                 (_$tl1671416738_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1671216732_))))
                                            (if (let ((__tmp17694
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1671416738_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17694 '()))
                                                (let ((_clen16742_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16610_
                                                          _hd16730_)))
                                                      (_cmp16743_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16609_
                                                              _hd16730_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17680
                                                         (let ((__tmp17681
                                                                (let ((__tmp17691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17692
                                      (let ((__tmp17693
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16742_ '()))))
                                        (declare (not safe))
                                        (cons _len16674_ __tmp17693))))
                                 (declare (not safe))
                                 (cons _cmp16743_ __tmp17692)))
                              (__tmp17682
                               (let ((__tmp17685
                                      (let ((__tmp17686
                                             (let ((__tmp17687
                                                    (let ((__tmp17689
                                                           (let ((__tmp17690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16702_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17690)))
                  (__tmp17688
                   (let () (declare (not safe)) (cons _args16673_ '()))))
              (declare (not safe))
              (cons __tmp17689 __tmp17688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17687))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17686 _stx16607_)))
                                     (__tmp17683
                                      (let ((__tmp17684
                                             (let ()
                                               (declare (not safe))
                                               (_generate16611_
                                                _rest16704_
                                                _args16673_
                                                _len16674_))))
                                        (declare (not safe))
                                        (cons __tmp17684 '()))))
                                 (declare (not safe))
                                 (cons __tmp17685 __tmp17683))))
                          (declare (not safe))
                          (cons __tmp17691 __tmp17682))))
                   (declare (not safe))
                   (cons 'if __tmp17681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17680
                                                     _stx16607_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1670816717_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1670816717_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1670816717_)))))
                          (let () (declare (not safe)) (_$E1667816689_)))))))
          (let* ((_$e16613_ _stx16607_)
                 (_$E1661516647_
                  (lambda ()
                    (let ((_$E1661616629_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16613_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16613_))
                          (let* ((_$tgt1661716632_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16613_)))
                                 (_$hd1661816635_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1661716632_)))
                                 (_$tl1661916638_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1661716632_))))
                            (let ((_clauses16642_ _$tl1661916638_))
                              (let ((_args16644_
                                     (let ((__tmp17695 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17695 _stx16607_)))
                                    (_len16645_
                                     (let ((__tmp17696 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17696 _stx16607_))))
                                (let ((__tmp17697
                                       (let ((__tmp17698
                                              (let ((__tmp17699
                                                     (let ((__tmp17700
                                                            (let ((__tmp17701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17702
                                  (let ((__tmp17705
                                         (let ((__tmp17706
                                                (let ((__tmp17707
                                                       (let ((__tmp17708
                                                              (let ((__tmp17709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17710
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16644_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17710))))
                        (declare (not safe))
                        (__SRC__% __tmp17709 _stx16607_))))
                 (declare (not safe))
                 (cons __tmp17708 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16645_
                                                        __tmp17707))))
                                           (declare (not safe))
                                           (cons __tmp17706 '())))
                                        (__tmp17703
                                         (let ((__tmp17704
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16611_
                                                   _clauses16642_
                                                   _args16644_
                                                   _len16645_))))
                                           (declare (not safe))
                                           (cons __tmp17704 '()))))
                                    (declare (not safe))
                                    (cons __tmp17705 __tmp17703))))
                             (declare (not safe))
                             (cons 'let __tmp17702))))
                      (declare (not safe))
                      (__SRC__% __tmp17701 _stx16607_))))
               (declare (not safe))
               (cons __tmp17700 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16644_
                                                      __tmp17699))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17698))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17697 _stx16607_)))))
                          (let () (declare (not safe)) (_$E1661616629_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16613_))
                (let* ((_$tgt1662016650_
                        (let () (declare (not safe)) (__AST-e _$e16613_)))
                       (_$hd1662116653_
                        (let () (declare (not safe)) (##car _$tgt1662016650_)))
                       (_$tl1662216656_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1662016650_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1662216656_))
                      (let* ((_$tgt1662316660_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1662216656_)))
                             (_$hd1662416663_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1662316660_)))
                             (_$tl1662516666_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1662316660_))))
                        (let ((_clause16670_ _$hd1662416663_))
                          (if (let ((__tmp17712
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1662516666_))))
                                (declare (not safe))
                                (equal? __tmp17712 '()))
                              (let ((__tmp17711
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16670_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17711))
                              (let () (declare (not safe)) (_$E1661516647_)))))
                      (let () (declare (not safe)) (_$E1661516647_))))
                (let () (declare (not safe)) (_$E1661516647_)))))))
    (define __compile-let-form
      (lambda (_stx16376_ _compile-simple16377_ _compile-values16378_)
        (letrec ((_simple-bind?16380_
                  (lambda (_hd16565_)
                    (let* ((_hd1656616576_ _hd16565_)
                           (_else1656916584_ (lambda () '#f)))
                      (let ((_K1657216597_ (lambda (_id16595_) '#t))
                            (_K1657116589_ (lambda () '#t)))
                        (let ((_try-match1656816592_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1656616576_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1657116589_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1656916584_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1656616576_))
                              (let ((_tl1657416602_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1656616576_)))
                                    (_hd1657316600_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1656616576_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1657416602_))
                                    (let ((_id16605_ _hd1657316600_))
                                      (declare (not safe))
                                      (_K1657216597_ _id16605_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1656816592_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1656816592_))))))))
                 (_car-e16381_
                  (lambda (_hd16563_)
                    (if (let () (declare (not safe)) (pair? _hd16563_))
                        (car _hd16563_)
                        _hd16563_))))
          (let* ((_$e16383_ _stx16376_)
                 (_$E1638516528_
                  (lambda ()
                    (let ((_$E1638616408_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16383_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16383_))
                          (let* ((_$tgt1638716411_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16383_)))
                                 (_$hd1638816414_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1638716411_)))
                                 (_$tl1638916417_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1638716411_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1638916417_))
                                (let* ((_$tgt1639016421_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1638916417_)))
                                       (_$hd1639116424_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1639016421_)))
                                       (_$tl1639216427_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1639016421_))))
                                  (let ((_hd16431_ _$hd1639116424_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1639216427_))
                                        (let* ((_$tgt1639316433_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1639216427_)))
                                               (_$hd1639416436_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1639316433_)))
                                               (_$tl1639516439_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1639316433_))))
                                          (let ((_body16443_ _$hd1639416436_))
                                            (if (let ((__tmp17715
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1639516439_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17715 '()))
                                                (let* ((_hd-ids16483_
                                                        (map (lambda (_bind16445_)
                                                               (let* ((_$e16447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16445_)
                              (_$E1644916458_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16447_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16447_))
                             (let* ((_$tgt1645016461_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16447_)))
                                    (_$hd1645116464_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1645016461_)))
                                    (_$tl1645216467_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1645016461_))))
                               (let ((_ids16471_ _$hd1645116464_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1645216467_))
                                     (let* ((_$tgt1645316473_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1645216467_)))
                                            (_$hd1645416476_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1645316473_)))
                                            (_$tl1645516479_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1645316473_))))
                                       (if (let ((__tmp17713
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1645516479_))))
                                             (declare (not safe))
                                             (equal? __tmp17713 '()))
                                           _ids16471_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1644916458_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1644916458_)))))
                             (let () (declare (not safe)) (_$E1644916458_)))))
                     _hd16431_))
               (_exprs16523_
                (map (lambda (_bind16485_)
                       (let* ((_$e16487_ _bind16485_)
                              (_$E1648916498_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16487_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16487_))
                             (let* ((_$tgt1649016501_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16487_)))
                                    (_$hd1649116504_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1649016501_)))
                                    (_$tl1649216507_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1649016501_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1649216507_))
                                   (let* ((_$tgt1649316511_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1649216507_)))
                                          (_$hd1649416514_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1649316511_)))
                                          (_$tl1649516517_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1649316511_))))
                                     (let ((_expr16521_ _$hd1649416514_))
                                       (if (let ((__tmp17714
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1649516517_))))
                                             (declare (not safe))
                                             (equal? __tmp17714 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16521_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1648916498_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1648916498_))))
                             (let () (declare (not safe)) (_$E1648916498_)))))
                     _hd16431_))
               (_body16525_
                (let () (declare (not safe)) (__compile _body16443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16483_))
              (_compile-simple16377_
               (map _car-e16381_ _hd-ids16483_)
               _exprs16523_
               _body16525_)
              (_compile-values16378_ _hd-ids16483_ _exprs16523_ _body16525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1638616408_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1638616408_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1638616408_))))
                          (let () (declare (not safe)) (_$E1638616408_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16383_))
                (let* ((_$tgt1639616531_
                        (let () (declare (not safe)) (__AST-e _$e16383_)))
                       (_$hd1639716534_
                        (let () (declare (not safe)) (##car _$tgt1639616531_)))
                       (_$tl1639816537_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1639616531_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1639816537_))
                      (let* ((_$tgt1639916541_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1639816537_)))
                             (_$hd1640016544_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1639916541_)))
                             (_$tl1640116547_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1639916541_))))
                        (if (let ((__tmp17717
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1640016544_))))
                              (declare (not safe))
                              (equal? __tmp17717 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1640116547_))
                                (let* ((_$tgt1640216551_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1640116547_)))
                                       (_$hd1640316554_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1640216551_)))
                                       (_$tl1640416557_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1640216551_))))
                                  (let ((_body16561_ _$hd1640316554_))
                                    (if (let ((__tmp17716
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1640416557_))))
                                          (declare (not safe))
                                          (equal? __tmp17716 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16561_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1638516528_)))))
                                (let () (declare (not safe)) (_$E1638516528_)))
                            (let () (declare (not safe)) (_$E1638516528_))))
                      (let () (declare (not safe)) (_$E1638516528_))))
                (let () (declare (not safe)) (_$E1638516528_)))))))
    (define __compile-let-values%
      (lambda (_stx16191_)
        (letrec ((_compile-simple16193_
                  (lambda (_hd-ids16372_ _exprs16373_ _body16374_)
                    (let ((__tmp17718
                           (let ((__tmp17719
                                  (let ((__tmp17721
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16372_)
                                              _exprs16373_))
                                        (__tmp17720
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16374_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17721 __tmp17720))))
                             (declare (not safe))
                             (cons 'let __tmp17719))))
                      (declare (not safe))
                      (__SRC__% __tmp17718 _stx16191_))))
                 (_compile-values16194_
                  (lambda (_hd-ids16290_ _exprs16291_ _body16292_)
                    (let _lp16294_ ((_rest16296_ _hd-ids16290_)
                                    (_exprs16297_ _exprs16291_)
                                    (_bind16298_ '())
                                    (_post16299_ '()))
                      (let* ((_rest1630016314_ _rest16296_)
                             (_else1630316322_
                              (lambda ()
                                (let ((__tmp17722
                                       (let ((__tmp17723
                                              (let ((__tmp17726
                                                     (reverse _bind16298_))
                                                    (__tmp17724
                                                     (let ((__tmp17725
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16195_
                                                               _post16299_
                                                               _body16292_))))
                                                       (declare (not safe))
                                                       (cons __tmp17725 '()))))
                                                (declare (not safe))
                                                (cons __tmp17726 __tmp17724))))
                                         (declare (not safe))
                                         (cons 'let __tmp17723))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17722 _stx16191_)))))
                        (let ((_K1630816355_
                               (lambda (_rest16352_ _id16353_)
                                 (let ((__tmp17732 (cdr _exprs16297_))
                                       (__tmp17727
                                        (let ((__tmp17728
                                               (let ((__tmp17731
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16353_)))
                                                     (__tmp17729
                                                      (let ((__tmp17730
                                                             (car _exprs16297_)))
                                                        (declare (not safe))
                                                        (cons __tmp17730
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17731
                                                       __tmp17729))))
                                          (declare (not safe))
                                          (cons __tmp17728 _bind16298_))))
                                   (declare (not safe))
                                   (_lp16294_
                                    _rest16352_
                                    __tmp17732
                                    __tmp17727
                                    _post16299_))))
                              (_K1630516337_
                               (lambda (_rest16326_ _hd16327_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16327_))
                                     (let ((__tmp17753 (cdr _exprs16297_))
                                           (__tmp17746
                                            (let ((__tmp17747
                                                   (let ((__tmp17752
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16327_)))
                                                         (__tmp17748
                                                          (let ((__tmp17749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17750
                                (let ((__tmp17751 (car _exprs16297_)))
                                  (declare (not safe))
                                  (cons __tmp17751 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17750))))
                    (declare (not safe))
                    (cons __tmp17749 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17752
                                                           __tmp17748))))
                                              (declare (not safe))
                                              (cons __tmp17747 _bind16298_))))
                                       (declare (not safe))
                                       (_lp16294_
                                        _rest16326_
                                        __tmp17753
                                        __tmp17746
                                        _post16299_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16327_))
                                         (let* ((_len16329_ (length _hd16327_))
                                                (_tmp16331_
                                                 (let ((__tmp17733 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17733))))
                                           (let ((__tmp17745
                                                  (cdr _exprs16297_))
                                                 (__tmp17741
                                                  (let ((__tmp17742
                                                         (let ((__tmp17743
                                                                (let ((__tmp17744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16297_)))
                          (declare (not safe))
                          (cons __tmp17744 '()))))
                   (declare (not safe))
                   (cons _tmp16331_ __tmp17743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17742
                                                          _bind16298_)))
                                                 (__tmp17734
                                                  (let ((__tmp17735
                                                         (let ((__tmp17736
                                                                (let ((__tmp17737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17739
                                      (lambda (_id16334_ _k16335_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16334_))
                                            (let ((__tmp17740
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16334_))))
                                              (declare (not safe))
                                              (cons __tmp17740 _k16335_))
                                            '#f)))
                                     (__tmp17738
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16329_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17739
                                  _hd16327_
                                  __tmp17738))))
                          (declare (not safe))
                          (cons _len16329_ __tmp17737))))
                   (declare (not safe))
                   (cons _tmp16331_ __tmp17736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17735
                                                          _post16299_))))
                                             (declare (not safe))
                                             (_lp16294_
                                              _rest16326_
                                              __tmp17745
                                              __tmp17741
                                              __tmp17734)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16191_
                                            _hd16327_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1630016314_))
                              (let ((_tl1631016360_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1630016314_)))
                                    (_hd1630916358_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1630016314_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1630916358_))
                                    (let ((_tl1631216365_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1630916358_)))
                                          (_hd1631116363_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1630916358_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1631216365_))
                                          (let ((_id16368_ _hd1631116363_)
                                                (_rest16370_ _tl1631016360_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1630816355_
                                               _rest16370_
                                               _id16368_)))
                                          (let ((_hd16345_ _hd1630916358_)
                                                (_rest16347_ _tl1631016360_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1630516337_
                                               _rest16347_
                                               _hd16345_)))))
                                    (let ((_hd16345_ _hd1630916358_)
                                          (_rest16347_ _tl1631016360_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1630516337_
                                         _rest16347_
                                         _hd16345_)))))
                              (let ()
                                (declare (not safe))
                                (_else1630316322_))))))))
                 (_compile-post16195_
                  (lambda (_post16197_ _body16198_)
                    (let _lp16200_ ((_rest16202_ _post16197_)
                                    (_check16203_ '())
                                    (_bind16204_ '()))
                      (let* ((_rest1620516217_ _rest16202_)
                             (_else1620716225_
                              (lambda ()
                                (let ((__tmp17754
                                       (let ((__tmp17755
                                              (let ((__tmp17756
                                                     (let ((__tmp17757
                                                            (let ((__tmp17758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17759
                                  (let ((__tmp17760
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16198_ '()))))
                                    (declare (not safe))
                                    (cons _bind16204_ __tmp17760))))
                             (declare (not safe))
                             (cons 'let __tmp17759))))
                      (declare (not safe))
                      (__SRC__% __tmp17758 _stx16191_))))
               (declare (not safe))
               (cons __tmp17757 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17756
                                                        _check16203_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17755))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17754 _stx16191_))))
                             (_K1620916264_
                              (lambda (_rest16228_
                                       _init16229_
                                       _len16230_
                                       _tmp16231_)
                                (let ((__tmp17768
                                       (let ((__tmp17769
                                              (let ((__tmp17770
                                                     (let ((__tmp17771
                                                            (let ((__tmp17772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16230_ '()))))
                      (declare (not safe))
                      (cons _tmp16231_ __tmp17772))))
               (declare (not safe))
               (cons '__check-values __tmp17771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17770
                                                 _stx16191_))))
                                         (declare (not safe))
                                         (cons __tmp17769 _check16203_)))
                                      (__tmp17761
                                       (let ((__tmp17762
                                              (lambda (_hd16233_ _r16234_)
                                                (let* ((_hd1623516242_
                                                        _hd16233_)
                                                       (_E1623716246_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1623516242_)))
               (_K1623816252_
                (lambda (_k16249_ _id16250_)
                  (let ((__tmp17763
                         (let ((__tmp17764
                                (let ((__tmp17765
                                       (let ((__tmp17766
                                              (let ((__tmp17767
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16249_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16231_ __tmp17767))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17766))))
                                  (declare (not safe))
                                  (cons __tmp17765 '()))))
                           (declare (not safe))
                           (cons _id16250_ __tmp17764))))
                    (declare (not safe))
                    (cons __tmp17763 _r16234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1623516242_))
                                                      (let ((_hd1623916255_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1623516242_)))
                    (_tl1624016257_
                     (let () (declare (not safe)) (##cdr _hd1623516242_))))
                (let* ((_id16260_ _hd1623916255_) (_k16262_ _tl1624016257_))
                  (declare (not safe))
                  (_K1623816252_ _k16262_ _id16260_)))
              (let () (declare (not safe)) (_E1623716246_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17762
                                                 _bind16204_
                                                 _init16229_))))
                                  (declare (not safe))
                                  (_lp16200_
                                   _rest16228_
                                   __tmp17768
                                   __tmp17761)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1620516217_))
                            (let ((_hd1621016267_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1620516217_)))
                                  (_tl1621116269_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1620516217_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1621016267_))
                                  (let ((_hd1621216272_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1621016267_)))
                                        (_tl1621316274_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1621016267_))))
                                    (let ((_tmp16277_ _hd1621216272_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1621316274_))
                                          (let ((_hd1621416279_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1621316274_)))
                                                (_tl1621516281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1621316274_))))
                                            (let* ((_len16284_ _hd1621416279_)
                                                   (_init16286_ _tl1621516281_)
                                                   (_rest16288_
                                                    _tl1621116269_))
                                              (declare (not safe))
                                              (_K1620916264_
                                               _rest16288_
                                               _init16286_
                                               _len16284_
                                               _tmp16277_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1620716225_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1620716225_))))
                            (let ()
                              (declare (not safe))
                              (_else1620716225_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16191_
             _compile-simple16193_
             _compile-values16194_)))))
    (define __compile-letrec-values%
      (lambda (_stx15991_)
        (letrec ((_compile-simple15993_
                  (lambda (_hd-ids16187_ _exprs16188_ _body16189_)
                    (let ((__tmp17773
                           (let ((__tmp17774
                                  (let ((__tmp17776
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16187_)
                                              _exprs16188_))
                                        (__tmp17775
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16189_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17776 __tmp17775))))
                             (declare (not safe))
                             (cons 'letrec __tmp17774))))
                      (declare (not safe))
                      (__SRC__% __tmp17773 _stx15991_))))
                 (_compile-values15994_
                  (lambda (_hd-ids16101_ _exprs16102_ _body16103_)
                    (let _lp16105_ ((_rest16107_ _hd-ids16101_)
                                    (_exprs16108_ _exprs16102_)
                                    (_pre16109_ '())
                                    (_bind16110_ '())
                                    (_post16111_ '()))
                      (let* ((_rest1611216126_ _rest16107_)
                             (_else1611516134_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner15995_
                                   _pre16109_
                                   _bind16110_
                                   _post16111_
                                   _body16103_)))))
                        (let ((_K1612016170_
                               (lambda (_rest16167_ _id16168_)
                                 (let ((__tmp17782 (cdr _exprs16108_))
                                       (__tmp17777
                                        (let ((__tmp17778
                                               (let ((__tmp17781
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16168_)))
                                                     (__tmp17779
                                                      (let ((__tmp17780
                                                             (car _exprs16108_)))
                                                        (declare (not safe))
                                                        (cons __tmp17780
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17781
                                                       __tmp17779))))
                                          (declare (not safe))
                                          (cons __tmp17778 _bind16110_))))
                                   (declare (not safe))
                                   (_lp16105_
                                    _rest16167_
                                    __tmp17782
                                    _pre16109_
                                    __tmp17777
                                    _post16111_))))
                              (_K1611716152_
                               (lambda (_rest16138_ _hd16139_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16139_))
                                     (let ((__tmp17810 (cdr _exprs16108_))
                                           (__tmp17803
                                            (let ((__tmp17804
                                                   (let ((__tmp17809
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16139_)))
                                                         (__tmp17805
                                                          (let ((__tmp17806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17807
                                (let ((__tmp17808 (car _exprs16108_)))
                                  (declare (not safe))
                                  (cons __tmp17808 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17807))))
                    (declare (not safe))
                    (cons __tmp17806 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17809
                                                           __tmp17805))))
                                              (declare (not safe))
                                              (cons __tmp17804 _bind16110_))))
                                       (declare (not safe))
                                       (_lp16105_
                                        _rest16138_
                                        __tmp17810
                                        _pre16109_
                                        __tmp17803
                                        _post16111_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16139_))
                                         (let* ((_len16141_ (length _hd16139_))
                                                (_tmp16143_
                                                 (let ((__tmp17783 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17783))))
                                           (let ((__tmp17802
                                                  (cdr _exprs16108_))
                                                 (__tmp17795
                                                  (let ((__tmp17796
                                                         (lambda (_id16146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16147_)
                   (if (let () (declare (not safe)) (__AST-e _id16146_))
                       (let ((__tmp17797
                              (let ((__tmp17801
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16146_)))
                                    (__tmp17798
                                     (let ((__tmp17799
                                            (let ((__tmp17800
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17800))))
                                       (declare (not safe))
                                       (cons __tmp17799 '()))))
                                (declare (not safe))
                                (cons __tmp17801 __tmp17798))))
                         (declare (not safe))
                         (cons __tmp17797 _r16147_))
                       _r16147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17796
                                                            _pre16109_
                                                            _hd16139_)))
                                                 (__tmp17791
                                                  (let ((__tmp17792
                                                         (let ((__tmp17793
                                                                (let ((__tmp17794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16108_)))
                          (declare (not safe))
                          (cons __tmp17794 '()))))
                   (declare (not safe))
                   (cons _tmp16143_ __tmp17793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17792
                                                          _bind16110_)))
                                                 (__tmp17784
                                                  (let ((__tmp17785
                                                         (let ((__tmp17786
                                                                (let ((__tmp17787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17789
                                      (lambda (_id16149_ _k16150_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16149_))
                                            (let ((__tmp17790
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16149_))))
                                              (declare (not safe))
                                              (cons __tmp17790 _k16150_))
                                            '#f)))
                                     (__tmp17788
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16141_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17789
                                  _hd16139_
                                  __tmp17788))))
                          (declare (not safe))
                          (cons _len16141_ __tmp17787))))
                   (declare (not safe))
                   (cons _tmp16143_ __tmp17786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17785
                                                          _post16111_))))
                                             (declare (not safe))
                                             (_lp16105_
                                              _rest16138_
                                              __tmp17802
                                              __tmp17795
                                              __tmp17791
                                              __tmp17784)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15991_
                                            _hd16139_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1611216126_))
                              (let ((_tl1612216175_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1611216126_)))
                                    (_hd1612116173_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1611216126_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1612116173_))
                                    (let ((_tl1612416180_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1612116173_)))
                                          (_hd1612316178_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1612116173_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1612416180_))
                                          (let ((_id16183_ _hd1612316178_)
                                                (_rest16185_ _tl1612216175_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1612016170_
                                               _rest16185_
                                               _id16183_)))
                                          (let ((_hd16160_ _hd1612116173_)
                                                (_rest16162_ _tl1612216175_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1611716152_
                                               _rest16162_
                                               _hd16160_)))))
                                    (let ((_hd16160_ _hd1612116173_)
                                          (_rest16162_ _tl1612216175_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1611716152_
                                         _rest16162_
                                         _hd16160_)))))
                              (let ()
                                (declare (not safe))
                                (_else1611516134_))))))))
                 (_compile-inner15995_
                  (lambda (_pre16096_ _bind16097_ _post16098_ _body16099_)
                    (if (let () (declare (not safe)) (null? _pre16096_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind15996_
                           _bind16097_
                           _post16098_
                           _body16099_))
                        (let ((__tmp17811
                               (let ((__tmp17812
                                      (let ((__tmp17815 (reverse _pre16096_))
                                            (__tmp17813
                                             (let ((__tmp17814
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind15996_
                                                       _bind16097_
                                                       _post16098_
                                                       _body16099_))))
                                               (declare (not safe))
                                               (cons __tmp17814 '()))))
                                        (declare (not safe))
                                        (cons __tmp17815 __tmp17813))))
                                 (declare (not safe))
                                 (cons 'let __tmp17812))))
                          (declare (not safe))
                          (__SRC__% __tmp17811 _stx15991_)))))
                 (_compile-bind15996_
                  (lambda (_bind16092_ _post16093_ _body16094_)
                    (let ((__tmp17816
                           (let ((__tmp17817
                                  (let ((__tmp17820 (reverse _bind16092_))
                                        (__tmp17818
                                         (let ((__tmp17819
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15997_
                                                   _post16093_
                                                   _body16094_))))
                                           (declare (not safe))
                                           (cons __tmp17819 '()))))
                                    (declare (not safe))
                                    (cons __tmp17820 __tmp17818))))
                             (declare (not safe))
                             (cons 'letrec __tmp17817))))
                      (declare (not safe))
                      (__SRC__% __tmp17816 _stx15991_))))
                 (_compile-post15997_
                  (lambda (_post15999_ _body16000_)
                    (let _lp16002_ ((_rest16004_ _post15999_)
                                    (_check16005_ '())
                                    (_bind16006_ '()))
                      (let* ((_rest1600716019_ _rest16004_)
                             (_else1600916027_
                              (lambda ()
                                (let ((__tmp17821
                                       (let ((__tmp17822
                                              (let ((__tmp17823
                                                     (let ((__tmp17824
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body16000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17824 _bind16006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17823
                                                        _check16005_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17822))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17821 _stx15991_))))
                             (_K1601116066_
                              (lambda (_rest16030_
                                       _init16031_
                                       _len16032_
                                       _tmp16033_)
                                (let ((__tmp17833
                                       (let ((__tmp17834
                                              (let ((__tmp17835
                                                     (let ((__tmp17836
                                                            (let ((__tmp17837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16032_ '()))))
                      (declare (not safe))
                      (cons _tmp16033_ __tmp17837))))
               (declare (not safe))
               (cons '__check-values __tmp17836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17835
                                                 _stx15991_))))
                                         (declare (not safe))
                                         (cons __tmp17834 _check16005_)))
                                      (__tmp17825
                                       (let ((__tmp17826
                                              (lambda (_hd16035_ _r16036_)
                                                (let* ((_hd1603716044_
                                                        _hd16035_)
                                                       (_E1603916048_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1603716044_)))
               (_K1604016054_
                (lambda (_k16051_ _id16052_)
                  (let ((__tmp17827
                         (let ((__tmp17828
                                (let ((__tmp17829
                                       (let ((__tmp17830
                                              (let ((__tmp17831
                                                     (let ((__tmp17832
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k16051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp16033_ __tmp17832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17831))))
                                         (declare (not safe))
                                         (cons __tmp17830 '()))))
                                  (declare (not safe))
                                  (cons _id16052_ __tmp17829))))
                           (declare (not safe))
                           (cons 'set! __tmp17828))))
                    (declare (not safe))
                    (cons __tmp17827 _r16036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1603716044_))
                                                      (let ((_hd1604116057_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1603716044_)))
                    (_tl1604216059_
                     (let () (declare (not safe)) (##cdr _hd1603716044_))))
                (let* ((_id16062_ _hd1604116057_) (_k16064_ _tl1604216059_))
                  (declare (not safe))
                  (_K1604016054_ _k16064_ _id16062_)))
              (let () (declare (not safe)) (_E1603916048_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17826
                                                 _bind16006_
                                                 _init16031_))))
                                  (declare (not safe))
                                  (_lp16002_
                                   _rest16030_
                                   __tmp17833
                                   __tmp17825)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1600716019_))
                            (let ((_hd1601216069_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1600716019_)))
                                  (_tl1601316071_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1600716019_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1601216069_))
                                  (let ((_hd1601416074_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1601216069_)))
                                        (_tl1601516076_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1601216069_))))
                                    (let ((_tmp16079_ _hd1601416074_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1601516076_))
                                          (let ((_hd1601616081_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1601516076_)))
                                                (_tl1601716083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1601516076_))))
                                            (let* ((_len16086_ _hd1601616081_)
                                                   (_init16088_ _tl1601716083_)
                                                   (_rest16090_
                                                    _tl1601316071_))
                                              (declare (not safe))
                                              (_K1601116066_
                                               _rest16090_
                                               _init16088_
                                               _len16086_
                                               _tmp16079_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1600916027_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1600916027_))))
                            (let ()
                              (declare (not safe))
                              (_else1600916027_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15991_
             _compile-simple15993_
             _compile-values15994_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15746_)
        (letrec ((_compile-simple15748_
                  (lambda (_hd-ids15987_ _exprs15988_ _body15989_)
                    (let ((__tmp17838
                           (let ((__tmp17839
                                  (let ((__tmp17841
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids15987_)
                                              _exprs15988_))
                                        (__tmp17840
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15989_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17841 __tmp17840))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17839))))
                      (declare (not safe))
                      (__SRC__% __tmp17838 _stx15746_))))
                 (_compile-values15749_
                  (lambda (_hd-ids15898_ _exprs15899_ _body15900_)
                    (let _lp15902_ ((_rest15904_ _hd-ids15898_)
                                    (_exprs15905_ _exprs15899_)
                                    (_bind15906_ '())
                                    (_post15907_ '()))
                      (let* ((_rest1590815922_ _rest15904_)
                             (_else1591115930_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15750_
                                   _bind15906_
                                   _post15907_
                                   _body15900_)))))
                        (let ((_K1591615970_
                               (lambda (_rest15965_ _hd15966_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15966_))
                                     (let ((_id15968_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15966_))))
                                       (let ((__tmp17856 (cdr _exprs15905_))
                                             (__tmp17851
                                              (let ((__tmp17852
                                                     (let ((__tmp17853
                                                            (let ((__tmp17854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17855
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17855))))
                      (declare (not safe))
                      (cons __tmp17854 '()))))
               (declare (not safe))
               (cons _id15968_ __tmp17853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17852 _bind15906_)))
                                             (__tmp17847
                                              (let ((__tmp17848
                                                     (let ((__tmp17849
                                                            (let ((__tmp17850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs15905_)))
                      (declare (not safe))
                      (cons __tmp17850 '()))))
               (declare (not safe))
               (cons _id15968_ __tmp17849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17848
                                                      _post15907_))))
                                         (declare (not safe))
                                         (_lp15902_
                                          _rest15965_
                                          __tmp17856
                                          __tmp17851
                                          __tmp17847)))
                                     (let ((__tmp17846 (cdr _exprs15905_))
                                           (__tmp17842
                                            (let ((__tmp17843
                                                   (let ((__tmp17844
                                                          (let ((__tmp17845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs15905_)))
                    (declare (not safe))
                    (cons __tmp17845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17844))))
                                              (declare (not safe))
                                              (cons __tmp17843 _post15907_))))
                                       (declare (not safe))
                                       (_lp15902_
                                        _rest15965_
                                        __tmp17846
                                        _bind15906_
                                        __tmp17842)))))
                              (_K1591315950_
                               (lambda (_rest15934_ _hd15935_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15935_))
                                     (let ((_id15937_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15935_))))
                                       (let ((__tmp17892 (cdr _exprs15905_))
                                             (__tmp17887
                                              (let ((__tmp17888
                                                     (let ((__tmp17889
                                                            (let ((__tmp17890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17891
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17891))))
                      (declare (not safe))
                      (cons __tmp17890 '()))))
               (declare (not safe))
               (cons _id15937_ __tmp17889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17888 _bind15906_)))
                                             (__tmp17881
                                              (let ((__tmp17882
                                                     (let ((__tmp17883
                                                            (let ((__tmp17884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17885
                                  (let ((__tmp17886 (car _exprs15905_)))
                                    (declare (not safe))
                                    (cons __tmp17886 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17885))))
                      (declare (not safe))
                      (cons __tmp17884 '()))))
               (declare (not safe))
               (cons _id15937_ __tmp17883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17882
                                                      _post15907_))))
                                         (declare (not safe))
                                         (_lp15902_
                                          _rest15934_
                                          __tmp17892
                                          __tmp17887
                                          __tmp17881)))
                                     (if (let ((__tmp17880
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15935_))))
                                           (declare (not safe))
                                           (not __tmp17880))
                                         (let ((__tmp17879 (cdr _exprs15905_))
                                               (__tmp17875
                                                (let ((__tmp17876
                                                       (let ((__tmp17877
                                                              (let ((__tmp17878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs15905_)))
                        (declare (not safe))
                        (cons __tmp17878 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17876
                                                        _post15907_))))
                                           (declare (not safe))
                                           (_lp15902_
                                            _rest15934_
                                            __tmp17879
                                            _bind15906_
                                            __tmp17875))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15935_))
                                             (let* ((_len15939_
                                                     (length _hd15935_))
                                                    (_tmp15941_
                                                     (let ((__tmp17857
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17857))))
                                               (let ((__tmp17874
                                                      (cdr _exprs15905_))
                                                     (__tmp17867
                                                      (let ((__tmp17868
                                                             (lambda (_id15944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15945_)
                       (if (let () (declare (not safe)) (__AST-e _id15944_))
                           (let ((__tmp17869
                                  (let ((__tmp17873
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15944_)))
                                        (__tmp17870
                                         (let ((__tmp17871
                                                (let ((__tmp17872
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17872))))
                                           (declare (not safe))
                                           (cons __tmp17871 '()))))
                                    (declare (not safe))
                                    (cons __tmp17873 __tmp17870))))
                             (declare (not safe))
                             (cons __tmp17869 _r15945_))
                           _r15945_))))
                (declare (not safe))
                (foldl1 __tmp17868 _bind15906_ _hd15935_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17858
                                                      (let ((__tmp17859
                                                             (let ((__tmp17860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17866 (car _exprs15905_))
                                  (__tmp17861
                                   (let ((__tmp17862
                                          (let ((__tmp17864
                                                 (lambda (_id15947_ _k15948_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15947_))
                                                       (let ((__tmp17865
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15947_))))
                 (declare (not safe))
                 (cons __tmp17865 _k15948_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17863
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15939_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17864
                                             _hd15935_
                                             __tmp17863))))
                                     (declare (not safe))
                                     (cons _len15939_ __tmp17862))))
                              (declare (not safe))
                              (cons __tmp17866 __tmp17861))))
                       (declare (not safe))
                       (cons _tmp15941_ __tmp17860))))
                (declare (not safe))
                (cons __tmp17859 _post15907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15902_
                                                  _rest15934_
                                                  __tmp17874
                                                  __tmp17867
                                                  __tmp17858)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15746_
                                                _hd15935_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1590815922_))
                              (let ((_tl1591815975_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1590815922_)))
                                    (_hd1591715973_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1590815922_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1591715973_))
                                    (let ((_tl1592015980_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1591715973_)))
                                          (_hd1591915978_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1591715973_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1592015980_))
                                          (let ((_hd15983_ _hd1591915978_)
                                                (_rest15985_ _tl1591815975_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1591615970_
                                               _rest15985_
                                               _hd15983_)))
                                          (let ((_hd15958_ _hd1591715973_)
                                                (_rest15960_ _tl1591815975_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1591315950_
                                               _rest15960_
                                               _hd15958_)))))
                                    (let ((_hd15958_ _hd1591715973_)
                                          (_rest15960_ _tl1591815975_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1591315950_
                                         _rest15960_
                                         _hd15958_)))))
                              (let ()
                                (declare (not safe))
                                (_else1591115930_))))))))
                 (_compile-bind15750_
                  (lambda (_bind15894_ _post15895_ _body15896_)
                    (let ((__tmp17893
                           (let ((__tmp17894
                                  (let ((__tmp17897 (reverse _bind15894_))
                                        (__tmp17895
                                         (let ((__tmp17896
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15751_
                                                   _post15895_
                                                   _body15896_))))
                                           (declare (not safe))
                                           (cons __tmp17896 '()))))
                                    (declare (not safe))
                                    (cons __tmp17897 __tmp17895))))
                             (declare (not safe))
                             (cons 'let __tmp17894))))
                      (declare (not safe))
                      (__SRC__% __tmp17893 _stx15746_))))
                 (_compile-post15751_
                  (lambda (_post15753_ _body15754_)
                    (let ((__tmp17898
                           (let ((__tmp17899
                                  (let ((__tmp17900
                                         (let ((__tmp17902
                                                (lambda (_hd15756_ _r15757_)
                                                  (let* ((_hd1575815781_
                                                          _hd15756_)
                                                         (_E1576215785_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1575815781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1577515879_
                                                           (lambda (_expr15877_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15877_ _r15757_))))
                  (_K1577015857_
                   (lambda (_expr15854_ _id15855_)
                     (let ((__tmp17903
                            (let ((__tmp17904
                                   (let ((__tmp17905
                                          (let ((__tmp17906
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15854_ '()))))
                                            (declare (not safe))
                                            (cons _id15855_ __tmp17906))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17905))))
                              (declare (not safe))
                              (__SRC__% __tmp17904 _stx15746_))))
                       (declare (not safe))
                       (cons __tmp17903 _r15757_))))
                  (_K1576315824_
                   (lambda (_init15789_ _len15790_ _expr15791_ _tmp15792_)
                     (let ((__tmp17907
                            (let ((__tmp17908
                                   (let ((__tmp17909
                                          (let ((__tmp17923
                                                 (let ((__tmp17924
                                                        (let ((__tmp17925
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15791_ '()))))
                  (declare (not safe))
                  (cons _tmp15792_ __tmp17925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17924 '())))
                                                (__tmp17910
                                                 (let ((__tmp17919
                                                        (let ((__tmp17920
                                                               (let ((__tmp17921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17922
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15790_ '()))))
                                (declare (not safe))
                                (cons _tmp15792_ __tmp17922))))
                         (declare (not safe))
                         (cons '__check-values __tmp17921))))
                  (declare (not safe))
                  (__SRC__% __tmp17920 _stx15746_)))
               (__tmp17911
                (let ((__tmp17912
                       (map (lambda (_hd15794_)
                              (let* ((_hd1579515802_ _hd15794_)
                                     (_E1579715806_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1579515802_)))
                                     (_K1579815812_
                                      (lambda (_k15809_ _id15810_)
                                        (let ((__tmp17913
                                               (let ((__tmp17914
                                                      (let ((__tmp17915
                                                             (let ((__tmp17916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17917
                                   (let ((__tmp17918
                                          (let ()
                                            (declare (not safe))
                                            (cons _k15809_ '()))))
                                     (declare (not safe))
                                     (cons _tmp15792_ __tmp17918))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp17917))))
                       (declare (not safe))
                       (cons __tmp17916 '()))))
                (declare (not safe))
                (cons _id15810_ __tmp17915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp17914))))
                                          (declare (not safe))
                                          (__SRC__% __tmp17913 _stx15746_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1579515802_))
                                    (let ((_hd1579915815_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1579515802_)))
                                          (_tl1580015817_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1579515802_))))
                                      (let* ((_id15820_ _hd1579915815_)
                                             (_k15822_ _tl1580015817_))
                                        (declare (not safe))
                                        (_K1579815812_ _k15822_ _id15820_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1579715806_)))))
                            _init15789_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17919
                                                         __tmp17911))))
                                            (declare (not safe))
                                            (cons __tmp17923 __tmp17910))))
                                     (declare (not safe))
                                     (cons 'let __tmp17909))))
                              (declare (not safe))
                              (__SRC__% __tmp17908 _stx15746_))))
                       (declare (not safe))
                       (cons __tmp17907 _r15757_)))))
              (if (let () (declare (not safe)) (##pair? _hd1575815781_))
                  (let ((_tl1577715884_
                         (let () (declare (not safe)) (##cdr _hd1575815781_)))
                        (_hd1577615882_
                         (let () (declare (not safe)) (##car _hd1575815781_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1577615882_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1577715884_))
                            (let ((_tl1577915889_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1577715884_)))
                                  (_hd1577815887_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1577715884_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1577915889_))
                                  (let ((_expr15892_ _hd1577815887_))
                                    (declare (not safe))
                                    (_K1577515879_ _expr15892_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1577915889_))
                                      (let ((_tl1576915843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1577915889_)))
                                            (_hd1576815841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1577915889_))))
                                        (let ((_tmp15832_ _hd1577615882_)
                                              (_expr15839_ _hd1577815887_)
                                              (_len15846_ _hd1576815841_)
                                              (_init15848_ _tl1576915843_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1576315824_
                                             _init15848_
                                             _len15846_
                                             _expr15839_
                                             _tmp15832_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1576215785_)))))
                            (let () (declare (not safe)) (_E1576215785_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1577715884_))
                            (let ((_tl1577415869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1577715884_)))
                                  (_hd1577315867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1577715884_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1577415869_))
                                  (let ((_id15865_ _hd1577615882_)
                                        (_expr15872_ _hd1577315867_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1577015857_ _expr15872_ _id15865_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1577415869_))
                                      (let ((_tl1576915843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1577415869_)))
                                            (_hd1576815841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1577415869_))))
                                        (let ((_tmp15832_ _hd1577615882_)
                                              (_expr15839_ _hd1577315867_)
                                              (_len15846_ _hd1576815841_)
                                              (_init15848_ _tl1576915843_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1576315824_
                                             _init15848_
                                             _len15846_
                                             _expr15839_
                                             _tmp15832_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1576215785_)))))
                            (let () (declare (not safe)) (_E1576215785_)))))
                  (let () (declare (not safe)) (_E1576215785_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17901 (list _body15754_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17902
                                                   __tmp17901
                                                   _post15753_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17900))))
                             (declare (not safe))
                             (cons 'begin __tmp17899))))
                      (declare (not safe))
                      (__SRC__% __tmp17898 _stx15746_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15746_
             _compile-simple15748_
             _compile-values15749_)))))
    (define __compile-call%
      (lambda (_stx15706_)
        (let* ((_$e15708_ _stx15706_)
               (_$E1571015719_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15708_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15708_))
              (let* ((_$tgt1571115722_
                      (let () (declare (not safe)) (__AST-e _$e15708_)))
                     (_$hd1571215725_
                      (let () (declare (not safe)) (##car _$tgt1571115722_)))
                     (_$tl1571315728_
                      (let () (declare (not safe)) (##cdr _$tgt1571115722_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1571315728_))
                    (let* ((_$tgt1571415732_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1571315728_)))
                           (_$hd1571515735_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1571415732_)))
                           (_$tl1571615738_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1571415732_))))
                      (let* ((_rator15742_ _$hd1571515735_)
                             (_rands15744_ _$tl1571615738_)
                             (__tmp17926
                              (let ((__tmp17928
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15742_)))
                                    (__tmp17927 (map __compile _rands15744_)))
                                (declare (not safe))
                                (cons __tmp17928 __tmp17927))))
                        (declare (not safe))
                        (__SRC__% __tmp17926 _stx15706_)))
                    (let () (declare (not safe)) (_$E1571015719_))))
              (let () (declare (not safe)) (_$E1571015719_))))))
    (define __compile-ref%
      (lambda (_stx15668_)
        (let* ((_$e15670_ _stx15668_)
               (_$E1567215681_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15670_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15670_))
              (let* ((_$tgt1567315684_
                      (let () (declare (not safe)) (__AST-e _$e15670_)))
                     (_$hd1567415687_
                      (let () (declare (not safe)) (##car _$tgt1567315684_)))
                     (_$tl1567515690_
                      (let () (declare (not safe)) (##cdr _$tgt1567315684_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1567515690_))
                    (let* ((_$tgt1567615694_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1567515690_)))
                           (_$hd1567715697_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1567615694_)))
                           (_$tl1567815700_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1567615694_))))
                      (let ((_id15704_ _$hd1567715697_))
                        (if (let ((__tmp17929
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1567815700_))))
                              (declare (not safe))
                              (equal? __tmp17929 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15704_ _stx15668_))
                            (let () (declare (not safe)) (_$E1567215681_)))))
                    (let () (declare (not safe)) (_$E1567215681_))))
              (let () (declare (not safe)) (_$E1567215681_))))))
    (define __compile-setq%
      (lambda (_stx15615_)
        (let* ((_$e15617_ _stx15615_)
               (_$E1561915631_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15617_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15617_))
              (let* ((_$tgt1562015634_
                      (let () (declare (not safe)) (__AST-e _$e15617_)))
                     (_$hd1562115637_
                      (let () (declare (not safe)) (##car _$tgt1562015634_)))
                     (_$tl1562215640_
                      (let () (declare (not safe)) (##cdr _$tgt1562015634_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1562215640_))
                    (let* ((_$tgt1562315644_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1562215640_)))
                           (_$hd1562415647_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1562315644_)))
                           (_$tl1562515650_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1562315644_))))
                      (let ((_id15654_ _$hd1562415647_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1562515650_))
                            (let* ((_$tgt1562615656_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1562515650_)))
                                   (_$hd1562715659_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1562615656_)))
                                   (_$tl1562815662_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1562615656_))))
                              (let ((_expr15666_ _$hd1562715659_))
                                (if (let ((__tmp17935
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1562815662_))))
                                      (declare (not safe))
                                      (equal? __tmp17935 '()))
                                    (let ((__tmp17930
                                           (let ((__tmp17931
                                                  (let ((__tmp17934
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15654_
                                                            _stx15615_)))
                                                        (__tmp17932
                                                         (let ((__tmp17933
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15666_))))
                   (declare (not safe))
                   (cons __tmp17933 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17934
                                                          __tmp17932))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17931))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17930 _stx15615_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1561915631_)))))
                            (let () (declare (not safe)) (_$E1561915631_)))))
                    (let () (declare (not safe)) (_$E1561915631_))))
              (let () (declare (not safe)) (_$E1561915631_))))))
    (define __compile-if%
      (lambda (_stx15547_)
        (let* ((_$e15549_ _stx15547_)
               (_$E1555115566_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15549_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15549_))
              (let* ((_$tgt1555215569_
                      (let () (declare (not safe)) (__AST-e _$e15549_)))
                     (_$hd1555315572_
                      (let () (declare (not safe)) (##car _$tgt1555215569_)))
                     (_$tl1555415575_
                      (let () (declare (not safe)) (##cdr _$tgt1555215569_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1555415575_))
                    (let* ((_$tgt1555515579_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1555415575_)))
                           (_$hd1555615582_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1555515579_)))
                           (_$tl1555715585_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1555515579_))))
                      (let ((_p15589_ _$hd1555615582_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1555715585_))
                            (let* ((_$tgt1555815591_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1555715585_)))
                                   (_$hd1555915594_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1555815591_)))
                                   (_$tl1556015597_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1555815591_))))
                              (let ((_t15601_ _$hd1555915594_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1556015597_))
                                    (let* ((_$tgt1556115603_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1556015597_)))
                                           (_$hd1556215606_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1556115603_)))
                                           (_$tl1556315609_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1556115603_))))
                                      (let ((_f15613_ _$hd1556215606_))
                                        (if (let ((__tmp17943
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1556315609_))))
                                              (declare (not safe))
                                              (equal? __tmp17943 '()))
                                            (let ((__tmp17936
                                                   (let ((__tmp17937
                                                          (let ((__tmp17942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15589_)))
                        (__tmp17938
                         (let ((__tmp17941
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15601_)))
                               (__tmp17939
                                (let ((__tmp17940
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15613_))))
                                  (declare (not safe))
                                  (cons __tmp17940 '()))))
                           (declare (not safe))
                           (cons __tmp17941 __tmp17939))))
                    (declare (not safe))
                    (cons __tmp17942 __tmp17938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17937))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17936 _stx15547_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1555115566_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1555115566_)))))
                            (let () (declare (not safe)) (_$E1555115566_)))))
                    (let () (declare (not safe)) (_$E1555115566_))))
              (let () (declare (not safe)) (_$E1555115566_))))))
    (define __compile-quote%
      (lambda (_stx15509_)
        (let* ((_$e15511_ _stx15509_)
               (_$E1551315522_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15511_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15511_))
              (let* ((_$tgt1551415525_
                      (let () (declare (not safe)) (__AST-e _$e15511_)))
                     (_$hd1551515528_
                      (let () (declare (not safe)) (##car _$tgt1551415525_)))
                     (_$tl1551615531_
                      (let () (declare (not safe)) (##cdr _$tgt1551415525_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1551615531_))
                    (let* ((_$tgt1551715535_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1551615531_)))
                           (_$hd1551815538_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1551715535_)))
                           (_$tl1551915541_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1551715535_))))
                      (let ((_e15545_ _$hd1551815538_))
                        (if (let ((__tmp17947
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1551915541_))))
                              (declare (not safe))
                              (equal? __tmp17947 '()))
                            (let ((__tmp17944
                                   (let ((__tmp17945
                                          (let ((__tmp17946
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15545_))))
                                            (declare (not safe))
                                            (cons __tmp17946 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17945))))
                              (declare (not safe))
                              (__SRC__% __tmp17944 _stx15509_))
                            (let () (declare (not safe)) (_$E1551315522_)))))
                    (let () (declare (not safe)) (_$E1551315522_))))
              (let () (declare (not safe)) (_$E1551315522_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15471_)
        (let* ((_$e15473_ _stx15471_)
               (_$E1547515484_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15473_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15473_))
              (let* ((_$tgt1547615487_
                      (let () (declare (not safe)) (__AST-e _$e15473_)))
                     (_$hd1547715490_
                      (let () (declare (not safe)) (##car _$tgt1547615487_)))
                     (_$tl1547815493_
                      (let () (declare (not safe)) (##cdr _$tgt1547615487_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1547815493_))
                    (let* ((_$tgt1547915497_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1547815493_)))
                           (_$hd1548015500_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1547915497_)))
                           (_$tl1548115503_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1547915497_))))
                      (let ((_e15507_ _$hd1548015500_))
                        (if (let ((__tmp17950
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1548115503_))))
                              (declare (not safe))
                              (equal? __tmp17950 '()))
                            (let ((__tmp17948
                                   (let ((__tmp17949
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15507_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17949))))
                              (declare (not safe))
                              (__SRC__% __tmp17948 _stx15471_))
                            (let () (declare (not safe)) (_$E1547515484_)))))
                    (let () (declare (not safe)) (_$E1547515484_))))
              (let () (declare (not safe)) (_$E1547515484_))))))
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
