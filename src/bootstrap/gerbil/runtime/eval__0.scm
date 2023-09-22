(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1695381360)
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
      (lambda _$args17339_
        (apply make-struct-instance __context::t _$args17339_)))
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
      (lambda _$args17336_
        (apply make-struct-instance __runtime::t _$args17336_)))
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
      (lambda _$args17333_
        (apply make-struct-instance __syntax::t _$args17333_)))
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
      (lambda _$args17330_
        (apply make-struct-instance __macro::t _$args17330_)))
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
      (lambda _$args17327_
        (apply make-struct-instance __special-form::t _$args17327_)))
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
      (lambda _$args17324_
        (apply make-struct-instance __core-form::t _$args17324_)))
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
      (lambda _$args17321_
        (apply make-struct-instance __core-expression::t _$args17321_)))
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
      (lambda _$args17318_
        (apply make-struct-instance __core-special-form::t _$args17318_)))
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
      (lambda _$args17315_
        (apply make-struct-instance __struct-info::t _$args17315_)))
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
      (lambda _$args17312_
        (apply make-struct-instance __feature::t _$args17312_)))
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
      (lambda _$args17309_
        (apply make-struct-instance __module::t _$args17309_)))
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
      (let ((__tmp17525
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17524 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17525 __tmp17524)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17284_ _ctx17285_)
        (if _ctx17285_
            (let ((_id17287_
                   (let () (declare (not safe)) (__AST-e _id17284_))))
              (let _lp17289_ ((_ctx17291_ _ctx17285_))
                (let ((_$e17293_
                       (table-ref
                        (##structure-ref _ctx17291_ '4 __context::t '#f)
                        _id17287_
                        '#f)))
                  (if _$e17293_
                      (values _$e17293_)
                      (let ((_$e17296_
                             (##structure-ref _ctx17291_ '3 __context::t '#f)))
                        (if _$e17296_
                            (let () (declare (not safe)) (_lp17289_ _$e17296_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17302_)
        (let ((_ctx17304_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17302_ _ctx17304_))))
    (define __core-resolve
      (lambda _g17527_
        (let ((_g17526_ (let () (declare (not safe)) (##length _g17527_))))
          (cond ((let () (declare (not safe)) (##fx= _g17526_ 1))
                 (apply (lambda (_id17302_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17302_)))
                        _g17527_))
                ((let () (declare (not safe)) (##fx= _g17526_ 2))
                 (apply (lambda (_id17306_ _ctx17307_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17306_ _ctx17307_)))
                        _g17527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17527_))))))
    (define __core-bound-id?__%
      (lambda (_id17267_ _is?17268_)
        (let ((_$e17270_
               (let () (declare (not safe)) (__core-resolve__0 _id17267_))))
          (if _$e17270_ (_is?17268_ _$e17270_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17276_)
        (let ((_is?17278_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17276_ _is?17278_))))
    (define __core-bound-id?
      (lambda _g17529_
        (let ((_g17528_ (let () (declare (not safe)) (##length _g17529_))))
          (cond ((let () (declare (not safe)) (##fx= _g17528_ 1))
                 (apply (lambda (_id17276_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17276_)))
                        _g17529_))
                ((let () (declare (not safe)) (##fx= _g17528_ 2))
                 (apply (lambda (_id17280_ _is?17281_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17280_ _is?17281_)))
                        _g17529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17529_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17250_ _eid17251_ _ctx17252_)
        (if _eid17251_
            (let ((__tmp17532 (##structure-ref _ctx17252_ '4 __context::t '#f))
                  (__tmp17531
                   (let () (declare (not safe)) (__AST-e _id17250_)))
                  (__tmp17530
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17251_))))
              (declare (not safe))
              (table-set! __tmp17532 __tmp17531 __tmp17530))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17257_ _eid17258_)
        (let ((_ctx17260_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17257_ _eid17258_ _ctx17260_))))
    (define __core-bind-runtime!
      (lambda _g17534_
        (let ((_g17533_ (let () (declare (not safe)) (##length _g17534_))))
          (cond ((let () (declare (not safe)) (##fx= _g17533_ 2))
                 (apply (lambda (_id17257_ _eid17258_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17257_ _eid17258_)))
                        _g17534_))
                ((let () (declare (not safe)) (##fx= _g17533_ 3))
                 (apply (lambda (_id17262_ _eid17263_ _ctx17264_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17262_
                             _eid17263_
                             _ctx17264_)))
                        _g17534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17534_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17233_ _e17234_ _make17235_)
        (let ((__tmp17535
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17234_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17234_
                   (_make17235_ _e17234_ _id17233_))))
          (declare (not safe))
          (table-set! __*core* _id17233_ __tmp17535))))
    (define __core-bind-syntax!__0
      (lambda (_id17240_ _e17241_)
        (let ((_make17243_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17240_ _e17241_ _make17243_))))
    (define __core-bind-syntax!
      (lambda _g17537_
        (let ((_g17536_ (let () (declare (not safe)) (##length _g17537_))))
          (cond ((let () (declare (not safe)) (##fx= _g17536_ 2))
                 (apply (lambda (_id17240_ _e17241_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17240_ _e17241_)))
                        _g17537_))
                ((let () (declare (not safe)) (##fx= _g17536_ 3))
                 (apply (lambda (_id17245_ _e17246_ _make17247_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17245_
                             _e17246_
                             _make17247_)))
                        _g17537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17537_))))))
    (define __core-bind-macro!
      (lambda (_id17229_ _e17230_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17229_ _e17230_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17226_ _e17227_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17226_ _e17227_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17210_ _e17211_ _ctx17212_)
        (let ((__tmp17541 (##structure-ref _ctx17212_ '4 __context::t '#f))
              (__tmp17540 (let () (declare (not safe)) (__AST-e _id17210_)))
              (__tmp17538
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17211_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17211_
                   (let ((__tmp17539
                          (let () (declare (not safe)) (__AST-e _id17210_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17211_ __tmp17539)))))
          (declare (not safe))
          (table-set! __tmp17541 __tmp17540 __tmp17538))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17217_ _e17218_)
        (let ((_ctx17220_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17217_ _e17218_ _ctx17220_))))
    (define __core-bind-user-syntax!
      (lambda _g17543_
        (let ((_g17542_ (let () (declare (not safe)) (##length _g17543_))))
          (cond ((let () (declare (not safe)) (##fx= _g17542_ 2))
                 (apply (lambda (_id17217_ _e17218_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17217_ _e17218_)))
                        _g17543_))
                ((let () (declare (not safe)) (##fx= _g17542_ 3))
                 (apply (lambda (_id17222_ _e17223_ _ctx17224_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17222_
                             _e17223_
                             _ctx17224_)))
                        _g17543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17543_))))))
    (define make-__runtime-id__%
      (lambda (_id17191_ _ctx17192_)
        (let ((_id17194_ (let () (declare (not safe)) (__AST-e _id17191_))))
          (if (let () (declare (not safe)) (eq? _id17194_ '_))
              '#f
              (if (uninterned-symbol? _id17194_)
                  (gensym _id17194_)
                  (if (let () (declare (not safe)) (symbol? _id17194_))
                      (let ((_$e17196_
                             (##structure-ref _ctx17192_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17196_))
                            (gensym _id17194_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17196_))
                                (let ((__tmp17544
                                       (##structure-ref
                                        _ctx17192_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol __tmp17544 '"#" _id17194_))
                                _id17194_)))
                      (error '"Illegal runtime identifier" _id17194_)))))))
    (define make-__runtime-id__0
      (lambda (_id17202_)
        (let ((_ctx17204_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17202_ _ctx17204_))))
    (define make-__runtime-id
      (lambda _g17546_
        (let ((_g17545_ (let () (declare (not safe)) (##length _g17546_))))
          (cond ((let () (declare (not safe)) (##fx= _g17545_ 1))
                 (apply (lambda (_id17202_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17202_)))
                        _g17546_))
                ((let () (declare (not safe)) (##fx= _g17545_ 2))
                 (apply (lambda (_id17206_ _ctx17207_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17206_ _ctx17207_)))
                        _g17546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17546_))))))
    (define make-__context-local__%
      (lambda (_super17180_)
        (let ((__tmp17547
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17180_ __tmp17547))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17186_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17186_))))
    (define make-__context-local
      (lambda _g17549_
        (let ((_g17548_ (let () (declare (not safe)) (##length _g17549_))))
          (cond ((let () (declare (not safe)) (##fx= _g17548_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17549_))
                ((let () (declare (not safe)) (##fx= _g17548_ 1))
                 (apply (lambda (_super17188_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17188_)))
                        _g17549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17549_))))))
    (define make-__context-module__%
      (lambda (_id17160_ _ns17161_ _path17162_ _super17163_)
        (let ((__tmp17550
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17161_
           _super17163_
           __tmp17550
           _id17160_
           _path17162_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17168_ _ns17169_ _path17170_)
        (let ((_super17172_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17168_
           _ns17169_
           _path17170_
           _super17172_))))
    (define make-__context-module
      (lambda _g17552_
        (let ((_g17551_ (let () (declare (not safe)) (##length _g17552_))))
          (cond ((let () (declare (not safe)) (##fx= _g17551_ 3))
                 (apply (lambda (_id17168_ _ns17169_ _path17170_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17168_
                             _ns17169_
                             _path17170_)))
                        _g17552_))
                ((let () (declare (not safe)) (##fx= _g17551_ 4))
                 (apply (lambda (_id17174_ _ns17175_ _path17176_ _super17177_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17174_
                             _ns17175_
                             _path17176_
                             _super17177_)))
                        _g17552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17552_))))))
    (define __SRC__%
      (lambda (_e17143_ _src-stx17144_)
        (if (or (let () (declare (not safe)) (pair? _e17143_))
                (let () (declare (not safe)) (symbol? _e17143_)))
            (let ((__tmp17556
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17144_
                          'gerbil#AST::t))
                       (let ((__tmp17557
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17144_))))
                         (declare (not safe))
                         (__locat __tmp17557))
                       '#f)))
              (declare (not safe))
              (##make-source _e17143_ __tmp17556))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17143_ 'gerbil#AST::t))
                (let ((__tmp17555
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17143_ '1 AST::t '#f)))
                      (__tmp17553
                       (let ((__tmp17554
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17143_))))
                         (declare (not safe))
                         (__locat __tmp17554))))
                  (declare (not safe))
                  (##make-source __tmp17555 __tmp17553))
                (error '"BUG! Cannot sourcify object" _e17143_)))))
    (define __SRC__0
      (lambda (_e17152_)
        (let ((_src-stx17154_ '#f))
          (declare (not safe))
          (__SRC__% _e17152_ _src-stx17154_))))
    (define __SRC
      (lambda _g17559_
        (let ((_g17558_ (let () (declare (not safe)) (##length _g17559_))))
          (cond ((let () (declare (not safe)) (##fx= _g17558_ 1))
                 (apply (lambda (_e17152_)
                          (let () (declare (not safe)) (__SRC__0 _e17152_)))
                        _g17559_))
                ((let () (declare (not safe)) (##fx= _g17558_ 2))
                 (apply (lambda (_e17156_ _src-stx17157_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17156_ _src-stx17157_)))
                        _g17559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17559_))))))
    (define __locat
      (lambda (_loc17140_)
        (if (let () (declare (not safe)) (##locat? _loc17140_))
            _loc17140_
            '#f)))
    (define __check-values
      (lambda (_obj17135_ _k17136_)
        (let ((_count17138_
               (if (let () (declare (not safe)) (##values? _obj17135_))
                   (let () (declare (not safe)) (##vector-length _obj17135_))
                   '1)))
          (if (fx= _count17138_ _k17136_)
              '#!void
              (error (if (fx< _count17138_ _k17136_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17135_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17135_))
                         _obj17135_)
                     _k17136_)))))
    (define __compile
      (lambda (_stx17105_)
        (let* ((_$e17107_ _stx17105_)
               (_$E1710917115_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17107_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17107_))
              (let* ((_$tgt1711017118_
                      (let () (declare (not safe)) (__AST-e _$e17107_)))
                     (_$hd1711117121_
                      (let () (declare (not safe)) (##car _$tgt1711017118_)))
                     (_$tl1711217124_
                      (let () (declare (not safe)) (##cdr _$tgt1711017118_))))
                (let* ((_form17128_ _$hd1711117121_)
                       (_$e17130_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17128_))))
                  (if _$e17130_
                      ((lambda (_bind17133_)
                         ((##structure-ref _bind17133_ '1 __syntax::t '#f)
                          _stx17105_))
                       _$e17130_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx17105_
                         _form17128_)))))
              (let () (declare (not safe)) (_$E1710917115_))))))
    (define __compile-error__%
      (lambda (_stx17092_ _detail17093_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17092_
           _detail17093_))))
    (define __compile-error__0
      (lambda (_stx17098_)
        (let ((_detail17100_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17098_ _detail17100_))))
    (define __compile-error
      (lambda _g17561_
        (let ((_g17560_ (let () (declare (not safe)) (##length _g17561_))))
          (cond ((let () (declare (not safe)) (##fx= _g17560_ 1))
                 (apply (lambda (_stx17098_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17098_)))
                        _g17561_))
                ((let () (declare (not safe)) (##fx= _g17560_ 2))
                 (apply (lambda (_stx17102_ _detail17103_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17102_ _detail17103_)))
                        _g17561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17561_))))))
    (define __compile-ignore%
      (lambda (_stx17089_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17089_))))
    (define __compile-begin%
      (lambda (_stx17064_)
        (let* ((_$e17066_ _stx17064_)
               (_$E1706817074_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17066_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17066_))
              (let* ((_$tgt1706917077_
                      (let () (declare (not safe)) (__AST-e _$e17066_)))
                     (_$hd1707017080_
                      (let () (declare (not safe)) (##car _$tgt1706917077_)))
                     (_$tl1707117083_
                      (let () (declare (not safe)) (##cdr _$tgt1706917077_))))
                (let* ((_body17087_ _$tl1707117083_)
                       (__tmp17562
                        (let ((__tmp17563 (map __compile _body17087_)))
                          (declare (not safe))
                          (cons 'begin __tmp17563))))
                  (declare (not safe))
                  (__SRC__% __tmp17562 _stx17064_)))
              (let () (declare (not safe)) (_$E1706817074_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17039_)
        (let* ((_$e17041_ _stx17039_)
               (_$E1704317049_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17041_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17041_))
              (let* ((_$tgt1704417052_
                      (let () (declare (not safe)) (__AST-e _$e17041_)))
                     (_$hd1704517055_
                      (let () (declare (not safe)) (##car _$tgt1704417052_)))
                     (_$tl1704617058_
                      (let () (declare (not safe)) (##cdr _$tgt1704417052_))))
                (let* ((_body17062_ _$tl1704617058_)
                       (__tmp17564
                        (let ((__tmp17565
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17062_))))
                          (declare (not safe))
                          (cons 'begin __tmp17565))))
                  (declare (not safe))
                  (__SRC__% __tmp17564 _stx17039_)))
              (let () (declare (not safe)) (_$E1704317049_))))))
    (define __compile-import%
      (lambda (_stx17014_)
        (let* ((_$e17016_ _stx17014_)
               (_$E1701817024_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17016_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17016_))
              (let* ((_$tgt1701917027_
                      (let () (declare (not safe)) (__AST-e _$e17016_)))
                     (_$hd1702017030_
                      (let () (declare (not safe)) (##car _$tgt1701917027_)))
                     (_$tl1702117033_
                      (let () (declare (not safe)) (##cdr _$tgt1701917027_))))
                (let* ((_body17037_ _$tl1702117033_)
                       (__tmp17566
                        (let ((__tmp17567
                               (let ((__tmp17568
                                      (let ((__tmp17569
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17037_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17569))))
                                 (declare (not safe))
                                 (cons __tmp17568 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17567))))
                  (declare (not safe))
                  (__SRC__% __tmp17566 _stx17014_)))
              (let () (declare (not safe)) (_$E1701817024_))))))
    (define __compile-begin-annotation%
      (lambda (_stx16961_)
        (let* ((_$e16963_ _stx16961_)
               (_$E1696516977_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16963_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16963_))
              (let* ((_$tgt1696616980_
                      (let () (declare (not safe)) (__AST-e _$e16963_)))
                     (_$hd1696716983_
                      (let () (declare (not safe)) (##car _$tgt1696616980_)))
                     (_$tl1696816986_
                      (let () (declare (not safe)) (##cdr _$tgt1696616980_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1696816986_))
                    (let* ((_$tgt1696916990_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1696816986_)))
                           (_$hd1697016993_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1696916990_)))
                           (_$tl1697116996_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1696916990_))))
                      (let ((_ann17000_ _$hd1697016993_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1697116996_))
                            (let* ((_$tgt1697217002_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1697116996_)))
                                   (_$hd1697317005_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1697217002_)))
                                   (_$tl1697417008_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1697217002_))))
                              (let ((_expr17012_ _$hd1697317005_))
                                (if (let ((__tmp17570
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1697417008_))))
                                      (declare (not safe))
                                      (equal? __tmp17570 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17012_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1696516977_)))))
                            (let () (declare (not safe)) (_$E1696516977_)))))
                    (let () (declare (not safe)) (_$E1696516977_))))
              (let () (declare (not safe)) (_$E1696516977_))))))
    (define __compile-define-values%
      (lambda (_stx16852_)
        (let* ((_$e16854_ _stx16852_)
               (_$E1685616868_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16854_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16854_))
              (let* ((_$tgt1685716871_
                      (let () (declare (not safe)) (__AST-e _$e16854_)))
                     (_$hd1685816874_
                      (let () (declare (not safe)) (##car _$tgt1685716871_)))
                     (_$tl1685916877_
                      (let () (declare (not safe)) (##cdr _$tgt1685716871_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1685916877_))
                    (let* ((_$tgt1686016881_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1685916877_)))
                           (_$hd1686116884_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1686016881_)))
                           (_$tl1686216887_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1686016881_))))
                      (let ((_hd16891_ _$hd1686116884_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1686216887_))
                            (let* ((_$tgt1686316893_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1686216887_)))
                                   (_$hd1686416896_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1686316893_)))
                                   (_$tl1686516899_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1686316893_))))
                              (let ((_expr16903_ _$hd1686416896_))
                                (if (let ((__tmp17603
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1686516899_))))
                                      (declare (not safe))
                                      (equal? __tmp17603 '()))
                                    (let* ((_$e16905_ _hd16891_)
                                           (_$E1690716948_
                                            (lambda ()
                                              (let ((_$E1690816933_
                                                     (lambda ()
                                                       (let* ((_$E1690916920_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _$e16905_))))
                      (_ids16923_ _hd16891_)
                      (_len16925_ (length _ids16923_))
                      (_tmp16927_
                       (let ((__tmp17571 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17571))))
                 (let ((__tmp17572
                        (let ((__tmp17573
                               (let ((__tmp17590
                                      (let ((__tmp17591
                                             (let ((__tmp17592
                                                    (let ((__tmp17593
                                                           (let ((__tmp17594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr16903_))))
                     (declare (not safe))
                     (cons __tmp17594 '()))))
              (declare (not safe))
              (cons _tmp16927_ __tmp17593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17592))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17591 _stx16852_)))
                                     (__tmp17574
                                      (let ((__tmp17586
                                             (let ((__tmp17587
                                                    (let ((__tmp17588
                                                           (let ((__tmp17589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len16925_ '()))))
                     (declare (not safe))
                     (cons _tmp16927_ __tmp17589))))
              (declare (not safe))
              (cons '__check-values __tmp17588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17587
                                                _stx16852_)))
                                            (__tmp17575
                                             (let ((__tmp17576
                                                    (let ((__tmp17578
                                                           (lambda (_id16930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k16931_)
                     (if (let () (declare (not safe)) (__AST-e _id16930_))
                         (let ((__tmp17579
                                (let ((__tmp17580
                                       (let ((__tmp17585
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id16930_)))
                                             (__tmp17581
                                              (let ((__tmp17582
                                                     (let ((__tmp17583
                                                            (let ((__tmp17584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k16931_ '()))))
                      (declare (not safe))
                      (cons _tmp16927_ __tmp17584))))
               (declare (not safe))
               (cons '##vector-ref __tmp17583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17582 '()))))
                                         (declare (not safe))
                                         (cons __tmp17585 __tmp17581))))
                                  (declare (not safe))
                                  (cons 'define __tmp17580))))
                           (declare (not safe))
                           (__SRC__% __tmp17579 _stx16852_))
                         '#f)))
                  (__tmp17577 (let () (declare (not safe)) (iota _len16925_))))
              (declare (not safe))
              (filter-map2 __tmp17578 _ids16923_ __tmp17577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17576))))
                                        (declare (not safe))
                                        (cons __tmp17586 __tmp17575))))
                                 (declare (not safe))
                                 (cons __tmp17590 __tmp17574))))
                          (declare (not safe))
                          (cons 'begin __tmp17573))))
                   (declare (not safe))
                   (__SRC__% __tmp17572 _stx16852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e16905_))
                                                    (let* ((_$tgt1691016936_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e16905_)))
                                                           (_$hd1691116939_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1691016936_)))
                                                           (_$tl1691216942_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1691016936_))))
                                                      (let ((_id16946_
                                                             _$hd1691116939_))
                                                        (if (let ((__tmp17600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1691216942_))))
                      (declare (not safe))
                      (equal? __tmp17600 '()))
                    (let ((__tmp17595
                           (let ((__tmp17596
                                  (let ((__tmp17599
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id16946_)))
                                        (__tmp17597
                                         (let ((__tmp17598
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr16903_))))
                                           (declare (not safe))
                                           (cons __tmp17598 '()))))
                                    (declare (not safe))
                                    (cons __tmp17599 __tmp17597))))
                             (declare (not safe))
                             (cons 'define __tmp17596))))
                      (declare (not safe))
                      (__SRC__% __tmp17595 _stx16852_))
                    (let () (declare (not safe)) (_$E1690816933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1690816933_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e16905_))
                                          (let* ((_$tgt1691316951_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e16905_)))
                                                 (_$hd1691416954_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1691316951_)))
                                                 (_$tl1691516957_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1691316951_))))
                                            (if (let ((__tmp17602
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1691416954_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17602 '#f))
                                                (if (let ((__tmp17601
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1691516957_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17601 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr16903_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1690716948_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1690716948_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1690716948_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1685616868_)))))
                            (let () (declare (not safe)) (_$E1685616868_)))))
                    (let () (declare (not safe)) (_$E1685616868_))))
              (let () (declare (not safe)) (_$E1685616868_))))))
    (define __compile-head-id
      (lambda (_e16850_)
        (let ((__tmp17604
               (if (let () (declare (not safe)) (__AST-e _e16850_))
                   _e16850_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17604))))
    (define __compile-lambda-head
      (lambda (_hd16807_)
        (let _recur16809_ ((_rest16811_ _hd16807_))
          (let* ((_$e16813_ _rest16811_)
                 (_$E1681516833_
                  (lambda ()
                    (let ((_$E1681616830_
                           (lambda ()
                             (let* ((_$E1681716825_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _$e16813_))))
                                    (_tail16828_ _$e16813_))
                               (declare (not safe))
                               (__compile-head-id _tail16828_)))))
                      (if (let ((__tmp17605
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16813_))))
                            (declare (not safe))
                            (equal? __tmp17605 '()))
                          '()
                          (let () (declare (not safe)) (_$E1681616830_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16813_))
                (let* ((_$tgt1681816836_
                        (let () (declare (not safe)) (__AST-e _$e16813_)))
                       (_$hd1681916839_
                        (let () (declare (not safe)) (##car _$tgt1681816836_)))
                       (_$tl1682016842_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1681816836_))))
                  (let* ((_hd16846_ _$hd1681916839_)
                         (_rest16848_ _$tl1682016842_))
                    (let ((__tmp17607
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16846_)))
                          (__tmp17606
                           (let ()
                             (declare (not safe))
                             (_recur16809_ _rest16848_))))
                      (declare (not safe))
                      (cons __tmp17607 __tmp17606))))
                (let () (declare (not safe)) (_$E1681516833_)))))))
    (define __compile-lambda%
      (lambda (_stx16754_)
        (let* ((_$e16756_ _stx16754_)
               (_$E1675816770_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16756_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16756_))
              (let* ((_$tgt1675916773_
                      (let () (declare (not safe)) (__AST-e _$e16756_)))
                     (_$hd1676016776_
                      (let () (declare (not safe)) (##car _$tgt1675916773_)))
                     (_$tl1676116779_
                      (let () (declare (not safe)) (##cdr _$tgt1675916773_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1676116779_))
                    (let* ((_$tgt1676216783_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1676116779_)))
                           (_$hd1676316786_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1676216783_)))
                           (_$tl1676416789_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1676216783_))))
                      (let ((_hd16793_ _$hd1676316786_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1676416789_))
                            (let* ((_$tgt1676516795_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1676416789_)))
                                   (_$hd1676616798_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1676516795_)))
                                   (_$tl1676716801_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1676516795_))))
                              (let ((_body16805_ _$hd1676616798_))
                                (if (let ((__tmp17613
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1676716801_))))
                                      (declare (not safe))
                                      (equal? __tmp17613 '()))
                                    (let ((__tmp17608
                                           (let ((__tmp17609
                                                  (let ((__tmp17612
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16793_)))
                                                        (__tmp17610
                                                         (let ((__tmp17611
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16805_))))
                   (declare (not safe))
                   (cons __tmp17611 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17612
                                                          __tmp17610))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17609))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17608 _stx16754_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1675816770_)))))
                            (let () (declare (not safe)) (_$E1675816770_)))))
                    (let () (declare (not safe)) (_$E1675816770_))))
              (let () (declare (not safe)) (_$E1675816770_))))))
    (define __compile-case-lambda%
      (lambda (_stx16546_)
        (letrec ((_variadic?16548_
                  (lambda (_hd16719_)
                    (let* ((_$e16721_ _hd16719_)
                           (_$E1672316739_
                            (lambda ()
                              (let ((_$E1672416736_
                                     (lambda ()
                                       (let ((_$E1672516733_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _$e16721_)))))
                                         '#t))))
                                (if (let ((__tmp17614
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16721_))))
                                      (declare (not safe))
                                      (equal? __tmp17614 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1672416736_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16721_))
                          (let* ((_$tgt1672616742_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16721_)))
                                 (_$hd1672716745_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1672616742_)))
                                 (_$tl1672816748_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1672616742_))))
                            (let ((_rest16752_ _$tl1672816748_))
                              (declare (not safe))
                              (_variadic?16548_ _rest16752_)))
                          (let () (declare (not safe)) (_$E1672316739_))))))
                 (_arity16549_
                  (lambda (_hd16684_)
                    (let _lp16686_ ((_rest16688_ _hd16684_) (_k16689_ '0))
                      (let* ((_$e16691_ _rest16688_)
                             (_$E1669316704_
                              (lambda ()
                                (let ((_$E1669416701_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _$e16691_)))))
                                  _k16689_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16691_))
                            (let* ((_$tgt1669516707_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16691_)))
                                   (_$hd1669616710_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1669516707_)))
                                   (_$tl1669716713_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1669516707_))))
                              (let* ((_rest16717_ _$tl1669716713_)
                                     (__tmp17615
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16689_ '1))))
                                (declare (not safe))
                                (_lp16686_ _rest16717_ __tmp17615)))
                            (let () (declare (not safe)) (_$E1669316704_)))))))
                 (_generate16550_
                  (lambda (_rest16611_ _args16612_ _len16613_)
                    (let* ((_$e16615_ _rest16611_)
                           (_$E1661716628_
                            (lambda ()
                              (let* ((_$E1661816625_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _$e16615_))))
                                     (__tmp17616
                                      (let ((__tmp17617
                                             (let ((__tmp17618
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16612_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17618))))
                                        (declare (not safe))
                                        (cons 'error __tmp17617))))
                                (declare (not safe))
                                (__SRC__% __tmp17616 _stx16546_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16615_))
                          (let* ((_$tgt1661916631_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16615_)))
                                 (_$hd1662016634_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1661916631_)))
                                 (_$tl1662116637_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1661916631_))))
                            (let* ((_clause16641_ _$hd1662016634_)
                                   (_rest16643_ _$tl1662116637_)
                                   (_$e16645_ _clause16641_)
                                   (_$E1664716656_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _$e16645_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16645_))
                                  (let* ((_$tgt1664816659_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16645_)))
                                         (_$hd1664916662_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1664816659_)))
                                         (_$tl1665016665_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1664816659_))))
                                    (let ((_hd16669_ _$hd1664916662_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1665016665_))
                                          (let* ((_$tgt1665116671_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1665016665_)))
                                                 (_$hd1665216674_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1665116671_)))
                                                 (_$tl1665316677_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1665116671_))))
                                            (if (let ((__tmp17633
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1665316677_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17633 '()))
                                                (let ((_clen16681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16549_
                                                          _hd16669_)))
                                                      (_cmp16682_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16548_
                                                              _hd16669_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17619
                                                         (let ((__tmp17620
                                                                (let ((__tmp17630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17631
                                      (let ((__tmp17632
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16681_ '()))))
                                        (declare (not safe))
                                        (cons _len16613_ __tmp17632))))
                                 (declare (not safe))
                                 (cons _cmp16682_ __tmp17631)))
                              (__tmp17621
                               (let ((__tmp17624
                                      (let ((__tmp17625
                                             (let ((__tmp17626
                                                    (let ((__tmp17628
                                                           (let ((__tmp17629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16641_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17629)))
                  (__tmp17627
                   (let () (declare (not safe)) (cons _args16612_ '()))))
              (declare (not safe))
              (cons __tmp17628 __tmp17627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17626))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17625 _stx16546_)))
                                     (__tmp17622
                                      (let ((__tmp17623
                                             (let ()
                                               (declare (not safe))
                                               (_generate16550_
                                                _rest16643_
                                                _args16612_
                                                _len16613_))))
                                        (declare (not safe))
                                        (cons __tmp17623 '()))))
                                 (declare (not safe))
                                 (cons __tmp17624 __tmp17622))))
                          (declare (not safe))
                          (cons __tmp17630 __tmp17621))))
                   (declare (not safe))
                   (cons 'if __tmp17620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17619
                                                     _stx16546_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1664716656_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1664716656_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1664716656_)))))
                          (let () (declare (not safe)) (_$E1661716628_)))))))
          (let* ((_$e16552_ _stx16546_)
                 (_$E1655416586_
                  (lambda ()
                    (let ((_$E1655516568_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16552_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16552_))
                          (let* ((_$tgt1655616571_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16552_)))
                                 (_$hd1655716574_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1655616571_)))
                                 (_$tl1655816577_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1655616571_))))
                            (let ((_clauses16581_ _$tl1655816577_))
                              (let ((_args16583_
                                     (let ((__tmp17634 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17634 _stx16546_)))
                                    (_len16584_
                                     (let ((__tmp17635 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17635 _stx16546_))))
                                (let ((__tmp17636
                                       (let ((__tmp17637
                                              (let ((__tmp17638
                                                     (let ((__tmp17639
                                                            (let ((__tmp17640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17641
                                  (let ((__tmp17644
                                         (let ((__tmp17645
                                                (let ((__tmp17646
                                                       (let ((__tmp17647
                                                              (let ((__tmp17648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17649
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16583_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17649))))
                        (declare (not safe))
                        (__SRC__% __tmp17648 _stx16546_))))
                 (declare (not safe))
                 (cons __tmp17647 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16584_
                                                        __tmp17646))))
                                           (declare (not safe))
                                           (cons __tmp17645 '())))
                                        (__tmp17642
                                         (let ((__tmp17643
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16550_
                                                   _clauses16581_
                                                   _args16583_
                                                   _len16584_))))
                                           (declare (not safe))
                                           (cons __tmp17643 '()))))
                                    (declare (not safe))
                                    (cons __tmp17644 __tmp17642))))
                             (declare (not safe))
                             (cons 'let __tmp17641))))
                      (declare (not safe))
                      (__SRC__% __tmp17640 _stx16546_))))
               (declare (not safe))
               (cons __tmp17639 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16583_
                                                      __tmp17638))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17637))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17636 _stx16546_)))))
                          (let () (declare (not safe)) (_$E1655516568_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16552_))
                (let* ((_$tgt1655916589_
                        (let () (declare (not safe)) (__AST-e _$e16552_)))
                       (_$hd1656016592_
                        (let () (declare (not safe)) (##car _$tgt1655916589_)))
                       (_$tl1656116595_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1655916589_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1656116595_))
                      (let* ((_$tgt1656216599_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1656116595_)))
                             (_$hd1656316602_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1656216599_)))
                             (_$tl1656416605_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1656216599_))))
                        (let ((_clause16609_ _$hd1656316602_))
                          (if (let ((__tmp17651
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1656416605_))))
                                (declare (not safe))
                                (equal? __tmp17651 '()))
                              (let ((__tmp17650
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16609_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17650))
                              (let () (declare (not safe)) (_$E1655416586_)))))
                      (let () (declare (not safe)) (_$E1655416586_))))
                (let () (declare (not safe)) (_$E1655416586_)))))))
    (define __compile-let-form
      (lambda (_stx16315_ _compile-simple16316_ _compile-values16317_)
        (letrec ((_simple-bind?16319_
                  (lambda (_hd16504_)
                    (let* ((_hd1650516515_ _hd16504_)
                           (_else1650816523_ (lambda () '#f)))
                      (let ((_K1651116536_ (lambda (_id16534_) '#t))
                            (_K1651016528_ (lambda () '#t)))
                        (let ((_try-match1650716531_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1650516515_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1651016528_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1650816523_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1650516515_))
                              (let ((_tl1651316541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1650516515_)))
                                    (_hd1651216539_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1650516515_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1651316541_))
                                    (let ((_id16544_ _hd1651216539_))
                                      (declare (not safe))
                                      (_K1651116536_ _id16544_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1650716531_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1650716531_))))))))
                 (_car-e16320_
                  (lambda (_hd16502_)
                    (if (let () (declare (not safe)) (pair? _hd16502_))
                        (car _hd16502_)
                        _hd16502_))))
          (let* ((_$e16322_ _stx16315_)
                 (_$E1632416467_
                  (lambda ()
                    (let ((_$E1632516347_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16322_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16322_))
                          (let* ((_$tgt1632616350_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16322_)))
                                 (_$hd1632716353_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1632616350_)))
                                 (_$tl1632816356_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1632616350_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1632816356_))
                                (let* ((_$tgt1632916360_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1632816356_)))
                                       (_$hd1633016363_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1632916360_)))
                                       (_$tl1633116366_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1632916360_))))
                                  (let ((_hd16370_ _$hd1633016363_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1633116366_))
                                        (let* ((_$tgt1633216372_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1633116366_)))
                                               (_$hd1633316375_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1633216372_)))
                                               (_$tl1633416378_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1633216372_))))
                                          (let ((_body16382_ _$hd1633316375_))
                                            (if (let ((__tmp17654
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1633416378_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17654 '()))
                                                (let* ((_hd-ids16422_
                                                        (map (lambda (_bind16384_)
                                                               (let* ((_$e16386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16384_)
                              (_$E1638816397_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16386_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16386_))
                             (let* ((_$tgt1638916400_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16386_)))
                                    (_$hd1639016403_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1638916400_)))
                                    (_$tl1639116406_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1638916400_))))
                               (let ((_ids16410_ _$hd1639016403_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1639116406_))
                                     (let* ((_$tgt1639216412_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1639116406_)))
                                            (_$hd1639316415_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1639216412_)))
                                            (_$tl1639416418_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1639216412_))))
                                       (if (let ((__tmp17652
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1639416418_))))
                                             (declare (not safe))
                                             (equal? __tmp17652 '()))
                                           _ids16410_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1638816397_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1638816397_)))))
                             (let () (declare (not safe)) (_$E1638816397_)))))
                     _hd16370_))
               (_exprs16462_
                (map (lambda (_bind16424_)
                       (let* ((_$e16426_ _bind16424_)
                              (_$E1642816437_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16426_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16426_))
                             (let* ((_$tgt1642916440_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16426_)))
                                    (_$hd1643016443_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1642916440_)))
                                    (_$tl1643116446_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1642916440_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1643116446_))
                                   (let* ((_$tgt1643216450_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1643116446_)))
                                          (_$hd1643316453_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1643216450_)))
                                          (_$tl1643416456_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1643216450_))))
                                     (let ((_expr16460_ _$hd1643316453_))
                                       (if (let ((__tmp17653
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1643416456_))))
                                             (declare (not safe))
                                             (equal? __tmp17653 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16460_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1642816437_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1642816437_))))
                             (let () (declare (not safe)) (_$E1642816437_)))))
                     _hd16370_))
               (_body16464_
                (let () (declare (not safe)) (__compile _body16382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16422_))
              (_compile-simple16316_
               (map _car-e16320_ _hd-ids16422_)
               _exprs16462_
               _body16464_)
              (_compile-values16317_ _hd-ids16422_ _exprs16462_ _body16464_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1632516347_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1632516347_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1632516347_))))
                          (let () (declare (not safe)) (_$E1632516347_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16322_))
                (let* ((_$tgt1633516470_
                        (let () (declare (not safe)) (__AST-e _$e16322_)))
                       (_$hd1633616473_
                        (let () (declare (not safe)) (##car _$tgt1633516470_)))
                       (_$tl1633716476_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1633516470_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1633716476_))
                      (let* ((_$tgt1633816480_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1633716476_)))
                             (_$hd1633916483_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1633816480_)))
                             (_$tl1634016486_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1633816480_))))
                        (if (let ((__tmp17656
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1633916483_))))
                              (declare (not safe))
                              (equal? __tmp17656 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1634016486_))
                                (let* ((_$tgt1634116490_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1634016486_)))
                                       (_$hd1634216493_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1634116490_)))
                                       (_$tl1634316496_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1634116490_))))
                                  (let ((_body16500_ _$hd1634216493_))
                                    (if (let ((__tmp17655
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1634316496_))))
                                          (declare (not safe))
                                          (equal? __tmp17655 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16500_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1632416467_)))))
                                (let () (declare (not safe)) (_$E1632416467_)))
                            (let () (declare (not safe)) (_$E1632416467_))))
                      (let () (declare (not safe)) (_$E1632416467_))))
                (let () (declare (not safe)) (_$E1632416467_)))))))
    (define __compile-let-values%
      (lambda (_stx16130_)
        (letrec ((_compile-simple16132_
                  (lambda (_hd-ids16311_ _exprs16312_ _body16313_)
                    (let ((__tmp17657
                           (let ((__tmp17658
                                  (let ((__tmp17660
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16311_)
                                              _exprs16312_))
                                        (__tmp17659
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16313_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17660 __tmp17659))))
                             (declare (not safe))
                             (cons 'let __tmp17658))))
                      (declare (not safe))
                      (__SRC__% __tmp17657 _stx16130_))))
                 (_compile-values16133_
                  (lambda (_hd-ids16229_ _exprs16230_ _body16231_)
                    (let _lp16233_ ((_rest16235_ _hd-ids16229_)
                                    (_exprs16236_ _exprs16230_)
                                    (_bind16237_ '())
                                    (_post16238_ '()))
                      (let* ((_rest1623916253_ _rest16235_)
                             (_else1624216261_
                              (lambda ()
                                (let ((__tmp17661
                                       (let ((__tmp17662
                                              (let ((__tmp17665
                                                     (reverse _bind16237_))
                                                    (__tmp17663
                                                     (let ((__tmp17664
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16134_
                                                               _post16238_
                                                               _body16231_))))
                                                       (declare (not safe))
                                                       (cons __tmp17664 '()))))
                                                (declare (not safe))
                                                (cons __tmp17665 __tmp17663))))
                                         (declare (not safe))
                                         (cons 'let __tmp17662))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17661 _stx16130_)))))
                        (let ((_K1624716294_
                               (lambda (_rest16291_ _id16292_)
                                 (let ((__tmp17671 (cdr _exprs16236_))
                                       (__tmp17666
                                        (let ((__tmp17667
                                               (let ((__tmp17670
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16292_)))
                                                     (__tmp17668
                                                      (let ((__tmp17669
                                                             (car _exprs16236_)))
                                                        (declare (not safe))
                                                        (cons __tmp17669
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17670
                                                       __tmp17668))))
                                          (declare (not safe))
                                          (cons __tmp17667 _bind16237_))))
                                   (declare (not safe))
                                   (_lp16233_
                                    _rest16291_
                                    __tmp17671
                                    __tmp17666
                                    _post16238_))))
                              (_K1624416276_
                               (lambda (_rest16265_ _hd16266_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16266_))
                                     (let ((__tmp17692 (cdr _exprs16236_))
                                           (__tmp17685
                                            (let ((__tmp17686
                                                   (let ((__tmp17691
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16266_)))
                                                         (__tmp17687
                                                          (let ((__tmp17688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17689
                                (let ((__tmp17690 (car _exprs16236_)))
                                  (declare (not safe))
                                  (cons __tmp17690 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17689))))
                    (declare (not safe))
                    (cons __tmp17688 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17691
                                                           __tmp17687))))
                                              (declare (not safe))
                                              (cons __tmp17686 _bind16237_))))
                                       (declare (not safe))
                                       (_lp16233_
                                        _rest16265_
                                        __tmp17692
                                        __tmp17685
                                        _post16238_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16266_))
                                         (let* ((_len16268_ (length _hd16266_))
                                                (_tmp16270_
                                                 (let ((__tmp17672 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17672))))
                                           (let ((__tmp17684
                                                  (cdr _exprs16236_))
                                                 (__tmp17680
                                                  (let ((__tmp17681
                                                         (let ((__tmp17682
                                                                (let ((__tmp17683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16236_)))
                          (declare (not safe))
                          (cons __tmp17683 '()))))
                   (declare (not safe))
                   (cons _tmp16270_ __tmp17682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17681
                                                          _bind16237_)))
                                                 (__tmp17673
                                                  (let ((__tmp17674
                                                         (let ((__tmp17675
                                                                (let ((__tmp17676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17678
                                      (lambda (_id16273_ _k16274_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16273_))
                                            (let ((__tmp17679
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16273_))))
                                              (declare (not safe))
                                              (cons __tmp17679 _k16274_))
                                            '#f)))
                                     (__tmp17677
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16268_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17678
                                  _hd16266_
                                  __tmp17677))))
                          (declare (not safe))
                          (cons _len16268_ __tmp17676))))
                   (declare (not safe))
                   (cons _tmp16270_ __tmp17675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17674
                                                          _post16238_))))
                                             (declare (not safe))
                                             (_lp16233_
                                              _rest16265_
                                              __tmp17684
                                              __tmp17680
                                              __tmp17673)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16130_
                                            _hd16266_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1623916253_))
                              (let ((_tl1624916299_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1623916253_)))
                                    (_hd1624816297_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1623916253_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1624816297_))
                                    (let ((_tl1625116304_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1624816297_)))
                                          (_hd1625016302_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1624816297_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1625116304_))
                                          (let ((_id16307_ _hd1625016302_)
                                                (_rest16309_ _tl1624916299_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1624716294_
                                               _rest16309_
                                               _id16307_)))
                                          (let ((_hd16284_ _hd1624816297_)
                                                (_rest16286_ _tl1624916299_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1624416276_
                                               _rest16286_
                                               _hd16284_)))))
                                    (let ((_hd16284_ _hd1624816297_)
                                          (_rest16286_ _tl1624916299_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1624416276_
                                         _rest16286_
                                         _hd16284_)))))
                              (let ()
                                (declare (not safe))
                                (_else1624216261_))))))))
                 (_compile-post16134_
                  (lambda (_post16136_ _body16137_)
                    (let _lp16139_ ((_rest16141_ _post16136_)
                                    (_check16142_ '())
                                    (_bind16143_ '()))
                      (let* ((_rest1614416156_ _rest16141_)
                             (_else1614616164_
                              (lambda ()
                                (let ((__tmp17693
                                       (let ((__tmp17694
                                              (let ((__tmp17695
                                                     (let ((__tmp17696
                                                            (let ((__tmp17697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17698
                                  (let ((__tmp17699
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16137_ '()))))
                                    (declare (not safe))
                                    (cons _bind16143_ __tmp17699))))
                             (declare (not safe))
                             (cons 'let __tmp17698))))
                      (declare (not safe))
                      (__SRC__% __tmp17697 _stx16130_))))
               (declare (not safe))
               (cons __tmp17696 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17695
                                                        _check16142_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17694))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17693 _stx16130_))))
                             (_K1614816203_
                              (lambda (_rest16167_
                                       _init16168_
                                       _len16169_
                                       _tmp16170_)
                                (let ((__tmp17707
                                       (let ((__tmp17708
                                              (let ((__tmp17709
                                                     (let ((__tmp17710
                                                            (let ((__tmp17711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16169_ '()))))
                      (declare (not safe))
                      (cons _tmp16170_ __tmp17711))))
               (declare (not safe))
               (cons '__check-values __tmp17710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17709
                                                 _stx16130_))))
                                         (declare (not safe))
                                         (cons __tmp17708 _check16142_)))
                                      (__tmp17700
                                       (let ((__tmp17701
                                              (lambda (_hd16172_ _r16173_)
                                                (let* ((_hd1617416181_
                                                        _hd16172_)
                                                       (_E1617616185_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1617416181_)))
               (_K1617716191_
                (lambda (_k16188_ _id16189_)
                  (let ((__tmp17702
                         (let ((__tmp17703
                                (let ((__tmp17704
                                       (let ((__tmp17705
                                              (let ((__tmp17706
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16188_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16170_ __tmp17706))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17705))))
                                  (declare (not safe))
                                  (cons __tmp17704 '()))))
                           (declare (not safe))
                           (cons _id16189_ __tmp17703))))
                    (declare (not safe))
                    (cons __tmp17702 _r16173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1617416181_))
                                                      (let ((_hd1617816194_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1617416181_)))
                    (_tl1617916196_
                     (let () (declare (not safe)) (##cdr _hd1617416181_))))
                (let* ((_id16199_ _hd1617816194_) (_k16201_ _tl1617916196_))
                  (declare (not safe))
                  (_K1617716191_ _k16201_ _id16199_)))
              (let () (declare (not safe)) (_E1617616185_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17701
                                                 _bind16143_
                                                 _init16168_))))
                                  (declare (not safe))
                                  (_lp16139_
                                   _rest16167_
                                   __tmp17707
                                   __tmp17700)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1614416156_))
                            (let ((_hd1614916206_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1614416156_)))
                                  (_tl1615016208_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1614416156_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1614916206_))
                                  (let ((_hd1615116211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1614916206_)))
                                        (_tl1615216213_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1614916206_))))
                                    (let ((_tmp16216_ _hd1615116211_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1615216213_))
                                          (let ((_hd1615316218_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1615216213_)))
                                                (_tl1615416220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1615216213_))))
                                            (let* ((_len16223_ _hd1615316218_)
                                                   (_init16225_ _tl1615416220_)
                                                   (_rest16227_
                                                    _tl1615016208_))
                                              (declare (not safe))
                                              (_K1614816203_
                                               _rest16227_
                                               _init16225_
                                               _len16223_
                                               _tmp16216_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1614616164_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1614616164_))))
                            (let ()
                              (declare (not safe))
                              (_else1614616164_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16130_
             _compile-simple16132_
             _compile-values16133_)))))
    (define __compile-letrec-values%
      (lambda (_stx15930_)
        (letrec ((_compile-simple15932_
                  (lambda (_hd-ids16126_ _exprs16127_ _body16128_)
                    (let ((__tmp17712
                           (let ((__tmp17713
                                  (let ((__tmp17715
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16126_)
                                              _exprs16127_))
                                        (__tmp17714
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16128_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17715 __tmp17714))))
                             (declare (not safe))
                             (cons 'letrec __tmp17713))))
                      (declare (not safe))
                      (__SRC__% __tmp17712 _stx15930_))))
                 (_compile-values15933_
                  (lambda (_hd-ids16040_ _exprs16041_ _body16042_)
                    (let _lp16044_ ((_rest16046_ _hd-ids16040_)
                                    (_exprs16047_ _exprs16041_)
                                    (_pre16048_ '())
                                    (_bind16049_ '())
                                    (_post16050_ '()))
                      (let* ((_rest1605116065_ _rest16046_)
                             (_else1605416073_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner15934_
                                   _pre16048_
                                   _bind16049_
                                   _post16050_
                                   _body16042_)))))
                        (let ((_K1605916109_
                               (lambda (_rest16106_ _id16107_)
                                 (let ((__tmp17721 (cdr _exprs16047_))
                                       (__tmp17716
                                        (let ((__tmp17717
                                               (let ((__tmp17720
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16107_)))
                                                     (__tmp17718
                                                      (let ((__tmp17719
                                                             (car _exprs16047_)))
                                                        (declare (not safe))
                                                        (cons __tmp17719
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17720
                                                       __tmp17718))))
                                          (declare (not safe))
                                          (cons __tmp17717 _bind16049_))))
                                   (declare (not safe))
                                   (_lp16044_
                                    _rest16106_
                                    __tmp17721
                                    _pre16048_
                                    __tmp17716
                                    _post16050_))))
                              (_K1605616091_
                               (lambda (_rest16077_ _hd16078_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16078_))
                                     (let ((__tmp17749 (cdr _exprs16047_))
                                           (__tmp17742
                                            (let ((__tmp17743
                                                   (let ((__tmp17748
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16078_)))
                                                         (__tmp17744
                                                          (let ((__tmp17745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17746
                                (let ((__tmp17747 (car _exprs16047_)))
                                  (declare (not safe))
                                  (cons __tmp17747 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17746))))
                    (declare (not safe))
                    (cons __tmp17745 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17748
                                                           __tmp17744))))
                                              (declare (not safe))
                                              (cons __tmp17743 _bind16049_))))
                                       (declare (not safe))
                                       (_lp16044_
                                        _rest16077_
                                        __tmp17749
                                        _pre16048_
                                        __tmp17742
                                        _post16050_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16078_))
                                         (let* ((_len16080_ (length _hd16078_))
                                                (_tmp16082_
                                                 (let ((__tmp17722 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17722))))
                                           (let ((__tmp17741
                                                  (cdr _exprs16047_))
                                                 (__tmp17734
                                                  (let ((__tmp17735
                                                         (lambda (_id16085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16086_)
                   (if (let () (declare (not safe)) (__AST-e _id16085_))
                       (let ((__tmp17736
                              (let ((__tmp17740
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16085_)))
                                    (__tmp17737
                                     (let ((__tmp17738
                                            (let ((__tmp17739
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17739))))
                                       (declare (not safe))
                                       (cons __tmp17738 '()))))
                                (declare (not safe))
                                (cons __tmp17740 __tmp17737))))
                         (declare (not safe))
                         (cons __tmp17736 _r16086_))
                       _r16086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17735
                                                            _pre16048_
                                                            _hd16078_)))
                                                 (__tmp17730
                                                  (let ((__tmp17731
                                                         (let ((__tmp17732
                                                                (let ((__tmp17733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16047_)))
                          (declare (not safe))
                          (cons __tmp17733 '()))))
                   (declare (not safe))
                   (cons _tmp16082_ __tmp17732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17731
                                                          _bind16049_)))
                                                 (__tmp17723
                                                  (let ((__tmp17724
                                                         (let ((__tmp17725
                                                                (let ((__tmp17726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17728
                                      (lambda (_id16088_ _k16089_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16088_))
                                            (let ((__tmp17729
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16088_))))
                                              (declare (not safe))
                                              (cons __tmp17729 _k16089_))
                                            '#f)))
                                     (__tmp17727
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16080_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17728
                                  _hd16078_
                                  __tmp17727))))
                          (declare (not safe))
                          (cons _len16080_ __tmp17726))))
                   (declare (not safe))
                   (cons _tmp16082_ __tmp17725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17724
                                                          _post16050_))))
                                             (declare (not safe))
                                             (_lp16044_
                                              _rest16077_
                                              __tmp17741
                                              __tmp17734
                                              __tmp17730
                                              __tmp17723)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15930_
                                            _hd16078_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1605116065_))
                              (let ((_tl1606116114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1605116065_)))
                                    (_hd1606016112_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1605116065_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1606016112_))
                                    (let ((_tl1606316119_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1606016112_)))
                                          (_hd1606216117_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1606016112_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1606316119_))
                                          (let ((_id16122_ _hd1606216117_)
                                                (_rest16124_ _tl1606116114_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1605916109_
                                               _rest16124_
                                               _id16122_)))
                                          (let ((_hd16099_ _hd1606016112_)
                                                (_rest16101_ _tl1606116114_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1605616091_
                                               _rest16101_
                                               _hd16099_)))))
                                    (let ((_hd16099_ _hd1606016112_)
                                          (_rest16101_ _tl1606116114_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1605616091_
                                         _rest16101_
                                         _hd16099_)))))
                              (let ()
                                (declare (not safe))
                                (_else1605416073_))))))))
                 (_compile-inner15934_
                  (lambda (_pre16035_ _bind16036_ _post16037_ _body16038_)
                    (if (let () (declare (not safe)) (null? _pre16035_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind15935_
                           _bind16036_
                           _post16037_
                           _body16038_))
                        (let ((__tmp17750
                               (let ((__tmp17751
                                      (let ((__tmp17754 (reverse _pre16035_))
                                            (__tmp17752
                                             (let ((__tmp17753
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind15935_
                                                       _bind16036_
                                                       _post16037_
                                                       _body16038_))))
                                               (declare (not safe))
                                               (cons __tmp17753 '()))))
                                        (declare (not safe))
                                        (cons __tmp17754 __tmp17752))))
                                 (declare (not safe))
                                 (cons 'let __tmp17751))))
                          (declare (not safe))
                          (__SRC__% __tmp17750 _stx15930_)))))
                 (_compile-bind15935_
                  (lambda (_bind16031_ _post16032_ _body16033_)
                    (let ((__tmp17755
                           (let ((__tmp17756
                                  (let ((__tmp17759 (reverse _bind16031_))
                                        (__tmp17757
                                         (let ((__tmp17758
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15936_
                                                   _post16032_
                                                   _body16033_))))
                                           (declare (not safe))
                                           (cons __tmp17758 '()))))
                                    (declare (not safe))
                                    (cons __tmp17759 __tmp17757))))
                             (declare (not safe))
                             (cons 'letrec __tmp17756))))
                      (declare (not safe))
                      (__SRC__% __tmp17755 _stx15930_))))
                 (_compile-post15936_
                  (lambda (_post15938_ _body15939_)
                    (let _lp15941_ ((_rest15943_ _post15938_)
                                    (_check15944_ '())
                                    (_bind15945_ '()))
                      (let* ((_rest1594615958_ _rest15943_)
                             (_else1594815966_
                              (lambda ()
                                (let ((__tmp17760
                                       (let ((__tmp17761
                                              (let ((__tmp17762
                                                     (let ((__tmp17763
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body15939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17763 _bind15945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17762
                                                        _check15944_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17761))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17760 _stx15930_))))
                             (_K1595016005_
                              (lambda (_rest15969_
                                       _init15970_
                                       _len15971_
                                       _tmp15972_)
                                (let ((__tmp17772
                                       (let ((__tmp17773
                                              (let ((__tmp17774
                                                     (let ((__tmp17775
                                                            (let ((__tmp17776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len15971_ '()))))
                      (declare (not safe))
                      (cons _tmp15972_ __tmp17776))))
               (declare (not safe))
               (cons '__check-values __tmp17775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17774
                                                 _stx15930_))))
                                         (declare (not safe))
                                         (cons __tmp17773 _check15944_)))
                                      (__tmp17764
                                       (let ((__tmp17765
                                              (lambda (_hd15974_ _r15975_)
                                                (let* ((_hd1597615983_
                                                        _hd15974_)
                                                       (_E1597815987_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1597615983_)))
               (_K1597915993_
                (lambda (_k15990_ _id15991_)
                  (let ((__tmp17766
                         (let ((__tmp17767
                                (let ((__tmp17768
                                       (let ((__tmp17769
                                              (let ((__tmp17770
                                                     (let ((__tmp17771
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k15990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp15972_ __tmp17771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17770))))
                                         (declare (not safe))
                                         (cons __tmp17769 '()))))
                                  (declare (not safe))
                                  (cons _id15991_ __tmp17768))))
                           (declare (not safe))
                           (cons 'set! __tmp17767))))
                    (declare (not safe))
                    (cons __tmp17766 _r15975_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1597615983_))
                                                      (let ((_hd1598015996_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1597615983_)))
                    (_tl1598115998_
                     (let () (declare (not safe)) (##cdr _hd1597615983_))))
                (let* ((_id16001_ _hd1598015996_) (_k16003_ _tl1598115998_))
                  (declare (not safe))
                  (_K1597915993_ _k16003_ _id16001_)))
              (let () (declare (not safe)) (_E1597815987_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17765
                                                 _bind15945_
                                                 _init15970_))))
                                  (declare (not safe))
                                  (_lp15941_
                                   _rest15969_
                                   __tmp17772
                                   __tmp17764)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1594615958_))
                            (let ((_hd1595116008_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1594615958_)))
                                  (_tl1595216010_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1594615958_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1595116008_))
                                  (let ((_hd1595316013_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1595116008_)))
                                        (_tl1595416015_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1595116008_))))
                                    (let ((_tmp16018_ _hd1595316013_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1595416015_))
                                          (let ((_hd1595516020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1595416015_)))
                                                (_tl1595616022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1595416015_))))
                                            (let* ((_len16025_ _hd1595516020_)
                                                   (_init16027_ _tl1595616022_)
                                                   (_rest16029_
                                                    _tl1595216010_))
                                              (declare (not safe))
                                              (_K1595016005_
                                               _rest16029_
                                               _init16027_
                                               _len16025_
                                               _tmp16018_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1594815966_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1594815966_))))
                            (let ()
                              (declare (not safe))
                              (_else1594815966_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15930_
             _compile-simple15932_
             _compile-values15933_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15685_)
        (letrec ((_compile-simple15687_
                  (lambda (_hd-ids15926_ _exprs15927_ _body15928_)
                    (let ((__tmp17777
                           (let ((__tmp17778
                                  (let ((__tmp17780
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids15926_)
                                              _exprs15927_))
                                        (__tmp17779
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15928_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17780 __tmp17779))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17778))))
                      (declare (not safe))
                      (__SRC__% __tmp17777 _stx15685_))))
                 (_compile-values15688_
                  (lambda (_hd-ids15837_ _exprs15838_ _body15839_)
                    (let _lp15841_ ((_rest15843_ _hd-ids15837_)
                                    (_exprs15844_ _exprs15838_)
                                    (_bind15845_ '())
                                    (_post15846_ '()))
                      (let* ((_rest1584715861_ _rest15843_)
                             (_else1585015869_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15689_
                                   _bind15845_
                                   _post15846_
                                   _body15839_)))))
                        (let ((_K1585515909_
                               (lambda (_rest15904_ _hd15905_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15905_))
                                     (let ((_id15907_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15905_))))
                                       (let ((__tmp17795 (cdr _exprs15844_))
                                             (__tmp17790
                                              (let ((__tmp17791
                                                     (let ((__tmp17792
                                                            (let ((__tmp17793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17794
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17794))))
                      (declare (not safe))
                      (cons __tmp17793 '()))))
               (declare (not safe))
               (cons _id15907_ __tmp17792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17791 _bind15845_)))
                                             (__tmp17786
                                              (let ((__tmp17787
                                                     (let ((__tmp17788
                                                            (let ((__tmp17789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs15844_)))
                      (declare (not safe))
                      (cons __tmp17789 '()))))
               (declare (not safe))
               (cons _id15907_ __tmp17788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17787
                                                      _post15846_))))
                                         (declare (not safe))
                                         (_lp15841_
                                          _rest15904_
                                          __tmp17795
                                          __tmp17790
                                          __tmp17786)))
                                     (let ((__tmp17785 (cdr _exprs15844_))
                                           (__tmp17781
                                            (let ((__tmp17782
                                                   (let ((__tmp17783
                                                          (let ((__tmp17784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs15844_)))
                    (declare (not safe))
                    (cons __tmp17784 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17783))))
                                              (declare (not safe))
                                              (cons __tmp17782 _post15846_))))
                                       (declare (not safe))
                                       (_lp15841_
                                        _rest15904_
                                        __tmp17785
                                        _bind15845_
                                        __tmp17781)))))
                              (_K1585215889_
                               (lambda (_rest15873_ _hd15874_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15874_))
                                     (let ((_id15876_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15874_))))
                                       (let ((__tmp17831 (cdr _exprs15844_))
                                             (__tmp17826
                                              (let ((__tmp17827
                                                     (let ((__tmp17828
                                                            (let ((__tmp17829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17830
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17830))))
                      (declare (not safe))
                      (cons __tmp17829 '()))))
               (declare (not safe))
               (cons _id15876_ __tmp17828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17827 _bind15845_)))
                                             (__tmp17820
                                              (let ((__tmp17821
                                                     (let ((__tmp17822
                                                            (let ((__tmp17823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17824
                                  (let ((__tmp17825 (car _exprs15844_)))
                                    (declare (not safe))
                                    (cons __tmp17825 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17824))))
                      (declare (not safe))
                      (cons __tmp17823 '()))))
               (declare (not safe))
               (cons _id15876_ __tmp17822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17821
                                                      _post15846_))))
                                         (declare (not safe))
                                         (_lp15841_
                                          _rest15873_
                                          __tmp17831
                                          __tmp17826
                                          __tmp17820)))
                                     (if (let ((__tmp17819
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15874_))))
                                           (declare (not safe))
                                           (not __tmp17819))
                                         (let ((__tmp17818 (cdr _exprs15844_))
                                               (__tmp17814
                                                (let ((__tmp17815
                                                       (let ((__tmp17816
                                                              (let ((__tmp17817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs15844_)))
                        (declare (not safe))
                        (cons __tmp17817 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17815
                                                        _post15846_))))
                                           (declare (not safe))
                                           (_lp15841_
                                            _rest15873_
                                            __tmp17818
                                            _bind15845_
                                            __tmp17814))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15874_))
                                             (let* ((_len15878_
                                                     (length _hd15874_))
                                                    (_tmp15880_
                                                     (let ((__tmp17796
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17796))))
                                               (let ((__tmp17813
                                                      (cdr _exprs15844_))
                                                     (__tmp17806
                                                      (let ((__tmp17807
                                                             (lambda (_id15883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15884_)
                       (if (let () (declare (not safe)) (__AST-e _id15883_))
                           (let ((__tmp17808
                                  (let ((__tmp17812
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15883_)))
                                        (__tmp17809
                                         (let ((__tmp17810
                                                (let ((__tmp17811
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17811))))
                                           (declare (not safe))
                                           (cons __tmp17810 '()))))
                                    (declare (not safe))
                                    (cons __tmp17812 __tmp17809))))
                             (declare (not safe))
                             (cons __tmp17808 _r15884_))
                           _r15884_))))
                (declare (not safe))
                (foldl1 __tmp17807 _bind15845_ _hd15874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17797
                                                      (let ((__tmp17798
                                                             (let ((__tmp17799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17805 (car _exprs15844_))
                                  (__tmp17800
                                   (let ((__tmp17801
                                          (let ((__tmp17803
                                                 (lambda (_id15886_ _k15887_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15886_))
                                                       (let ((__tmp17804
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15886_))))
                 (declare (not safe))
                 (cons __tmp17804 _k15887_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17802
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15878_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17803
                                             _hd15874_
                                             __tmp17802))))
                                     (declare (not safe))
                                     (cons _len15878_ __tmp17801))))
                              (declare (not safe))
                              (cons __tmp17805 __tmp17800))))
                       (declare (not safe))
                       (cons _tmp15880_ __tmp17799))))
                (declare (not safe))
                (cons __tmp17798 _post15846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15841_
                                                  _rest15873_
                                                  __tmp17813
                                                  __tmp17806
                                                  __tmp17797)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15685_
                                                _hd15874_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1584715861_))
                              (let ((_tl1585715914_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1584715861_)))
                                    (_hd1585615912_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1584715861_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1585615912_))
                                    (let ((_tl1585915919_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1585615912_)))
                                          (_hd1585815917_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1585615912_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1585915919_))
                                          (let ((_hd15922_ _hd1585815917_)
                                                (_rest15924_ _tl1585715914_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1585515909_
                                               _rest15924_
                                               _hd15922_)))
                                          (let ((_hd15897_ _hd1585615912_)
                                                (_rest15899_ _tl1585715914_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1585215889_
                                               _rest15899_
                                               _hd15897_)))))
                                    (let ((_hd15897_ _hd1585615912_)
                                          (_rest15899_ _tl1585715914_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1585215889_
                                         _rest15899_
                                         _hd15897_)))))
                              (let ()
                                (declare (not safe))
                                (_else1585015869_))))))))
                 (_compile-bind15689_
                  (lambda (_bind15833_ _post15834_ _body15835_)
                    (let ((__tmp17832
                           (let ((__tmp17833
                                  (let ((__tmp17836 (reverse _bind15833_))
                                        (__tmp17834
                                         (let ((__tmp17835
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15690_
                                                   _post15834_
                                                   _body15835_))))
                                           (declare (not safe))
                                           (cons __tmp17835 '()))))
                                    (declare (not safe))
                                    (cons __tmp17836 __tmp17834))))
                             (declare (not safe))
                             (cons 'let __tmp17833))))
                      (declare (not safe))
                      (__SRC__% __tmp17832 _stx15685_))))
                 (_compile-post15690_
                  (lambda (_post15692_ _body15693_)
                    (let ((__tmp17837
                           (let ((__tmp17838
                                  (let ((__tmp17839
                                         (let ((__tmp17841
                                                (lambda (_hd15695_ _r15696_)
                                                  (let* ((_hd1569715720_
                                                          _hd15695_)
                                                         (_E1570115724_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1569715720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1571415818_
                                                           (lambda (_expr15816_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15816_ _r15696_))))
                  (_K1570915796_
                   (lambda (_expr15793_ _id15794_)
                     (let ((__tmp17842
                            (let ((__tmp17843
                                   (let ((__tmp17844
                                          (let ((__tmp17845
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15793_ '()))))
                                            (declare (not safe))
                                            (cons _id15794_ __tmp17845))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17844))))
                              (declare (not safe))
                              (__SRC__% __tmp17843 _stx15685_))))
                       (declare (not safe))
                       (cons __tmp17842 _r15696_))))
                  (_K1570215763_
                   (lambda (_init15728_ _len15729_ _expr15730_ _tmp15731_)
                     (let ((__tmp17846
                            (let ((__tmp17847
                                   (let ((__tmp17848
                                          (let ((__tmp17862
                                                 (let ((__tmp17863
                                                        (let ((__tmp17864
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15730_ '()))))
                  (declare (not safe))
                  (cons _tmp15731_ __tmp17864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17863 '())))
                                                (__tmp17849
                                                 (let ((__tmp17858
                                                        (let ((__tmp17859
                                                               (let ((__tmp17860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17861
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15729_ '()))))
                                (declare (not safe))
                                (cons _tmp15731_ __tmp17861))))
                         (declare (not safe))
                         (cons '__check-values __tmp17860))))
                  (declare (not safe))
                  (__SRC__% __tmp17859 _stx15685_)))
               (__tmp17850
                (let ((__tmp17851
                       (map (lambda (_hd15733_)
                              (let* ((_hd1573415741_ _hd15733_)
                                     (_E1573615745_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1573415741_)))
                                     (_K1573715751_
                                      (lambda (_k15748_ _id15749_)
                                        (let ((__tmp17852
                                               (let ((__tmp17853
                                                      (let ((__tmp17854
                                                             (let ((__tmp17855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17856
                                   (let ((__tmp17857
                                          (let ()
                                            (declare (not safe))
                                            (cons _k15748_ '()))))
                                     (declare (not safe))
                                     (cons _tmp15731_ __tmp17857))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp17856))))
                       (declare (not safe))
                       (cons __tmp17855 '()))))
                (declare (not safe))
                (cons _id15749_ __tmp17854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp17853))))
                                          (declare (not safe))
                                          (__SRC__% __tmp17852 _stx15685_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1573415741_))
                                    (let ((_hd1573815754_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1573415741_)))
                                          (_tl1573915756_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1573415741_))))
                                      (let* ((_id15759_ _hd1573815754_)
                                             (_k15761_ _tl1573915756_))
                                        (declare (not safe))
                                        (_K1573715751_ _k15761_ _id15759_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1573615745_)))))
                            _init15728_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17858
                                                         __tmp17850))))
                                            (declare (not safe))
                                            (cons __tmp17862 __tmp17849))))
                                     (declare (not safe))
                                     (cons 'let __tmp17848))))
                              (declare (not safe))
                              (__SRC__% __tmp17847 _stx15685_))))
                       (declare (not safe))
                       (cons __tmp17846 _r15696_)))))
              (if (let () (declare (not safe)) (##pair? _hd1569715720_))
                  (let ((_tl1571615823_
                         (let () (declare (not safe)) (##cdr _hd1569715720_)))
                        (_hd1571515821_
                         (let () (declare (not safe)) (##car _hd1569715720_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1571515821_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1571615823_))
                            (let ((_tl1571815828_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1571615823_)))
                                  (_hd1571715826_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1571615823_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1571815828_))
                                  (let ((_expr15831_ _hd1571715826_))
                                    (declare (not safe))
                                    (_K1571415818_ _expr15831_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1571815828_))
                                      (let ((_tl1570815782_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1571815828_)))
                                            (_hd1570715780_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1571815828_))))
                                        (let ((_tmp15771_ _hd1571515821_)
                                              (_expr15778_ _hd1571715826_)
                                              (_len15785_ _hd1570715780_)
                                              (_init15787_ _tl1570815782_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1570215763_
                                             _init15787_
                                             _len15785_
                                             _expr15778_
                                             _tmp15771_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1570115724_)))))
                            (let () (declare (not safe)) (_E1570115724_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1571615823_))
                            (let ((_tl1571315808_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1571615823_)))
                                  (_hd1571215806_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1571615823_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1571315808_))
                                  (let ((_id15804_ _hd1571515821_)
                                        (_expr15811_ _hd1571215806_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1570915796_ _expr15811_ _id15804_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1571315808_))
                                      (let ((_tl1570815782_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1571315808_)))
                                            (_hd1570715780_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1571315808_))))
                                        (let ((_tmp15771_ _hd1571515821_)
                                              (_expr15778_ _hd1571215806_)
                                              (_len15785_ _hd1570715780_)
                                              (_init15787_ _tl1570815782_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1570215763_
                                             _init15787_
                                             _len15785_
                                             _expr15778_
                                             _tmp15771_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1570115724_)))))
                            (let () (declare (not safe)) (_E1570115724_)))))
                  (let () (declare (not safe)) (_E1570115724_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17840 (list _body15693_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17841
                                                   __tmp17840
                                                   _post15692_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17839))))
                             (declare (not safe))
                             (cons 'begin __tmp17838))))
                      (declare (not safe))
                      (__SRC__% __tmp17837 _stx15685_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15685_
             _compile-simple15687_
             _compile-values15688_)))))
    (define __compile-call%
      (lambda (_stx15645_)
        (let* ((_$e15647_ _stx15645_)
               (_$E1564915658_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15647_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15647_))
              (let* ((_$tgt1565015661_
                      (let () (declare (not safe)) (__AST-e _$e15647_)))
                     (_$hd1565115664_
                      (let () (declare (not safe)) (##car _$tgt1565015661_)))
                     (_$tl1565215667_
                      (let () (declare (not safe)) (##cdr _$tgt1565015661_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1565215667_))
                    (let* ((_$tgt1565315671_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1565215667_)))
                           (_$hd1565415674_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1565315671_)))
                           (_$tl1565515677_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1565315671_))))
                      (let* ((_rator15681_ _$hd1565415674_)
                             (_rands15683_ _$tl1565515677_)
                             (__tmp17865
                              (let ((__tmp17867
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15681_)))
                                    (__tmp17866 (map __compile _rands15683_)))
                                (declare (not safe))
                                (cons __tmp17867 __tmp17866))))
                        (declare (not safe))
                        (__SRC__% __tmp17865 _stx15645_)))
                    (let () (declare (not safe)) (_$E1564915658_))))
              (let () (declare (not safe)) (_$E1564915658_))))))
    (define __compile-ref%
      (lambda (_stx15607_)
        (let* ((_$e15609_ _stx15607_)
               (_$E1561115620_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15609_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15609_))
              (let* ((_$tgt1561215623_
                      (let () (declare (not safe)) (__AST-e _$e15609_)))
                     (_$hd1561315626_
                      (let () (declare (not safe)) (##car _$tgt1561215623_)))
                     (_$tl1561415629_
                      (let () (declare (not safe)) (##cdr _$tgt1561215623_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1561415629_))
                    (let* ((_$tgt1561515633_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1561415629_)))
                           (_$hd1561615636_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1561515633_)))
                           (_$tl1561715639_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1561515633_))))
                      (let ((_id15643_ _$hd1561615636_))
                        (if (let ((__tmp17868
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1561715639_))))
                              (declare (not safe))
                              (equal? __tmp17868 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15643_ _stx15607_))
                            (let () (declare (not safe)) (_$E1561115620_)))))
                    (let () (declare (not safe)) (_$E1561115620_))))
              (let () (declare (not safe)) (_$E1561115620_))))))
    (define __compile-setq%
      (lambda (_stx15554_)
        (let* ((_$e15556_ _stx15554_)
               (_$E1555815570_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15556_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15556_))
              (let* ((_$tgt1555915573_
                      (let () (declare (not safe)) (__AST-e _$e15556_)))
                     (_$hd1556015576_
                      (let () (declare (not safe)) (##car _$tgt1555915573_)))
                     (_$tl1556115579_
                      (let () (declare (not safe)) (##cdr _$tgt1555915573_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1556115579_))
                    (let* ((_$tgt1556215583_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1556115579_)))
                           (_$hd1556315586_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1556215583_)))
                           (_$tl1556415589_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1556215583_))))
                      (let ((_id15593_ _$hd1556315586_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1556415589_))
                            (let* ((_$tgt1556515595_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1556415589_)))
                                   (_$hd1556615598_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1556515595_)))
                                   (_$tl1556715601_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1556515595_))))
                              (let ((_expr15605_ _$hd1556615598_))
                                (if (let ((__tmp17874
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1556715601_))))
                                      (declare (not safe))
                                      (equal? __tmp17874 '()))
                                    (let ((__tmp17869
                                           (let ((__tmp17870
                                                  (let ((__tmp17873
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15593_
                                                            _stx15554_)))
                                                        (__tmp17871
                                                         (let ((__tmp17872
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15605_))))
                   (declare (not safe))
                   (cons __tmp17872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17873
                                                          __tmp17871))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17870))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17869 _stx15554_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1555815570_)))))
                            (let () (declare (not safe)) (_$E1555815570_)))))
                    (let () (declare (not safe)) (_$E1555815570_))))
              (let () (declare (not safe)) (_$E1555815570_))))))
    (define __compile-if%
      (lambda (_stx15486_)
        (let* ((_$e15488_ _stx15486_)
               (_$E1549015505_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15488_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15488_))
              (let* ((_$tgt1549115508_
                      (let () (declare (not safe)) (__AST-e _$e15488_)))
                     (_$hd1549215511_
                      (let () (declare (not safe)) (##car _$tgt1549115508_)))
                     (_$tl1549315514_
                      (let () (declare (not safe)) (##cdr _$tgt1549115508_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1549315514_))
                    (let* ((_$tgt1549415518_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1549315514_)))
                           (_$hd1549515521_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1549415518_)))
                           (_$tl1549615524_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1549415518_))))
                      (let ((_p15528_ _$hd1549515521_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1549615524_))
                            (let* ((_$tgt1549715530_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1549615524_)))
                                   (_$hd1549815533_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1549715530_)))
                                   (_$tl1549915536_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1549715530_))))
                              (let ((_t15540_ _$hd1549815533_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1549915536_))
                                    (let* ((_$tgt1550015542_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1549915536_)))
                                           (_$hd1550115545_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1550015542_)))
                                           (_$tl1550215548_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1550015542_))))
                                      (let ((_f15552_ _$hd1550115545_))
                                        (if (let ((__tmp17882
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1550215548_))))
                                              (declare (not safe))
                                              (equal? __tmp17882 '()))
                                            (let ((__tmp17875
                                                   (let ((__tmp17876
                                                          (let ((__tmp17881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15528_)))
                        (__tmp17877
                         (let ((__tmp17880
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15540_)))
                               (__tmp17878
                                (let ((__tmp17879
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15552_))))
                                  (declare (not safe))
                                  (cons __tmp17879 '()))))
                           (declare (not safe))
                           (cons __tmp17880 __tmp17878))))
                    (declare (not safe))
                    (cons __tmp17881 __tmp17877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17876))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17875 _stx15486_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1549015505_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1549015505_)))))
                            (let () (declare (not safe)) (_$E1549015505_)))))
                    (let () (declare (not safe)) (_$E1549015505_))))
              (let () (declare (not safe)) (_$E1549015505_))))))
    (define __compile-quote%
      (lambda (_stx15448_)
        (let* ((_$e15450_ _stx15448_)
               (_$E1545215461_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15450_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15450_))
              (let* ((_$tgt1545315464_
                      (let () (declare (not safe)) (__AST-e _$e15450_)))
                     (_$hd1545415467_
                      (let () (declare (not safe)) (##car _$tgt1545315464_)))
                     (_$tl1545515470_
                      (let () (declare (not safe)) (##cdr _$tgt1545315464_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1545515470_))
                    (let* ((_$tgt1545615474_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1545515470_)))
                           (_$hd1545715477_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1545615474_)))
                           (_$tl1545815480_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1545615474_))))
                      (let ((_e15484_ _$hd1545715477_))
                        (if (let ((__tmp17886
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1545815480_))))
                              (declare (not safe))
                              (equal? __tmp17886 '()))
                            (let ((__tmp17883
                                   (let ((__tmp17884
                                          (let ((__tmp17885
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15484_))))
                                            (declare (not safe))
                                            (cons __tmp17885 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17884))))
                              (declare (not safe))
                              (__SRC__% __tmp17883 _stx15448_))
                            (let () (declare (not safe)) (_$E1545215461_)))))
                    (let () (declare (not safe)) (_$E1545215461_))))
              (let () (declare (not safe)) (_$E1545215461_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15410_)
        (let* ((_$e15412_ _stx15410_)
               (_$E1541415423_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15412_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15412_))
              (let* ((_$tgt1541515426_
                      (let () (declare (not safe)) (__AST-e _$e15412_)))
                     (_$hd1541615429_
                      (let () (declare (not safe)) (##car _$tgt1541515426_)))
                     (_$tl1541715432_
                      (let () (declare (not safe)) (##cdr _$tgt1541515426_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1541715432_))
                    (let* ((_$tgt1541815436_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1541715432_)))
                           (_$hd1541915439_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1541815436_)))
                           (_$tl1542015442_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1541815436_))))
                      (let ((_e15446_ _$hd1541915439_))
                        (if (let ((__tmp17889
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1542015442_))))
                              (declare (not safe))
                              (equal? __tmp17889 '()))
                            (let ((__tmp17887
                                   (let ((__tmp17888
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15446_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17888))))
                              (declare (not safe))
                              (__SRC__% __tmp17887 _stx15410_))
                            (let () (declare (not safe)) (_$E1541415423_)))))
                    (let () (declare (not safe)) (_$E1541415423_))))
              (let () (declare (not safe)) (_$E1541415423_))))))
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
