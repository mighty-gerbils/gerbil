(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1695337676)
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
      (lambda _$args17327_
        (apply make-struct-instance __context::t _$args17327_)))
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
      (lambda _$args17324_
        (apply make-struct-instance __runtime::t _$args17324_)))
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
      (lambda _$args17321_
        (apply make-struct-instance __syntax::t _$args17321_)))
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
      (lambda _$args17318_
        (apply make-struct-instance __macro::t _$args17318_)))
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
      (lambda _$args17315_
        (apply make-struct-instance __special-form::t _$args17315_)))
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
      (lambda _$args17312_
        (apply make-struct-instance __core-form::t _$args17312_)))
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
      (lambda _$args17309_
        (apply make-struct-instance __core-expression::t _$args17309_)))
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
      (lambda _$args17306_
        (apply make-struct-instance __core-special-form::t _$args17306_)))
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
      (lambda _$args17303_
        (apply make-struct-instance __struct-info::t _$args17303_)))
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
      (lambda _$args17300_
        (apply make-struct-instance __feature::t _$args17300_)))
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
      (lambda _$args17297_
        (apply make-struct-instance __module::t _$args17297_)))
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
      (let ((__tmp17513
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17512 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17513 __tmp17512)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17272_ _ctx17273_)
        (if _ctx17273_
            (let ((_id17275_
                   (let () (declare (not safe)) (__AST-e _id17272_))))
              (let _lp17277_ ((_ctx17279_ _ctx17273_))
                (let ((_$e17281_
                       (table-ref
                        (##structure-ref _ctx17279_ '4 __context::t '#f)
                        _id17275_
                        '#f)))
                  (if _$e17281_
                      (values _$e17281_)
                      (let ((_$e17284_
                             (##structure-ref _ctx17279_ '3 __context::t '#f)))
                        (if _$e17284_
                            (let () (declare (not safe)) (_lp17277_ _$e17284_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17290_)
        (let ((_ctx17292_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17290_ _ctx17292_))))
    (define __core-resolve
      (lambda _g17515_
        (let ((_g17514_ (let () (declare (not safe)) (##length _g17515_))))
          (cond ((let () (declare (not safe)) (##fx= _g17514_ 1))
                 (apply (lambda (_id17290_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17290_)))
                        _g17515_))
                ((let () (declare (not safe)) (##fx= _g17514_ 2))
                 (apply (lambda (_id17294_ _ctx17295_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17294_ _ctx17295_)))
                        _g17515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17515_))))))
    (define __core-bound-id?__%
      (lambda (_id17255_ _is?17256_)
        (let ((_$e17258_
               (let () (declare (not safe)) (__core-resolve__0 _id17255_))))
          (if _$e17258_ (_is?17256_ _$e17258_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17264_)
        (let ((_is?17266_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17264_ _is?17266_))))
    (define __core-bound-id?
      (lambda _g17517_
        (let ((_g17516_ (let () (declare (not safe)) (##length _g17517_))))
          (cond ((let () (declare (not safe)) (##fx= _g17516_ 1))
                 (apply (lambda (_id17264_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17264_)))
                        _g17517_))
                ((let () (declare (not safe)) (##fx= _g17516_ 2))
                 (apply (lambda (_id17268_ _is?17269_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17268_ _is?17269_)))
                        _g17517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17517_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17238_ _eid17239_ _ctx17240_)
        (if _eid17239_
            (let ((__tmp17520 (##structure-ref _ctx17240_ '4 __context::t '#f))
                  (__tmp17519
                   (let () (declare (not safe)) (__AST-e _id17238_)))
                  (__tmp17518
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17239_))))
              (declare (not safe))
              (table-set! __tmp17520 __tmp17519 __tmp17518))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17245_ _eid17246_)
        (let ((_ctx17248_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17245_ _eid17246_ _ctx17248_))))
    (define __core-bind-runtime!
      (lambda _g17522_
        (let ((_g17521_ (let () (declare (not safe)) (##length _g17522_))))
          (cond ((let () (declare (not safe)) (##fx= _g17521_ 2))
                 (apply (lambda (_id17245_ _eid17246_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17245_ _eid17246_)))
                        _g17522_))
                ((let () (declare (not safe)) (##fx= _g17521_ 3))
                 (apply (lambda (_id17250_ _eid17251_ _ctx17252_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17250_
                             _eid17251_
                             _ctx17252_)))
                        _g17522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17522_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17221_ _e17222_ _make17223_)
        (let ((__tmp17523
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17222_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17222_
                   (_make17223_ _e17222_ _id17221_))))
          (declare (not safe))
          (table-set! __*core* _id17221_ __tmp17523))))
    (define __core-bind-syntax!__0
      (lambda (_id17228_ _e17229_)
        (let ((_make17231_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17228_ _e17229_ _make17231_))))
    (define __core-bind-syntax!
      (lambda _g17525_
        (let ((_g17524_ (let () (declare (not safe)) (##length _g17525_))))
          (cond ((let () (declare (not safe)) (##fx= _g17524_ 2))
                 (apply (lambda (_id17228_ _e17229_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17228_ _e17229_)))
                        _g17525_))
                ((let () (declare (not safe)) (##fx= _g17524_ 3))
                 (apply (lambda (_id17233_ _e17234_ _make17235_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17233_
                             _e17234_
                             _make17235_)))
                        _g17525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17525_))))))
    (define __core-bind-macro!
      (lambda (_id17217_ _e17218_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17217_ _e17218_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17214_ _e17215_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17214_ _e17215_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17198_ _e17199_ _ctx17200_)
        (let ((__tmp17529 (##structure-ref _ctx17200_ '4 __context::t '#f))
              (__tmp17528 (let () (declare (not safe)) (__AST-e _id17198_)))
              (__tmp17526
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17199_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17199_
                   (let ((__tmp17527
                          (let () (declare (not safe)) (__AST-e _id17198_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17199_ __tmp17527)))))
          (declare (not safe))
          (table-set! __tmp17529 __tmp17528 __tmp17526))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17205_ _e17206_)
        (let ((_ctx17208_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17205_ _e17206_ _ctx17208_))))
    (define __core-bind-user-syntax!
      (lambda _g17531_
        (let ((_g17530_ (let () (declare (not safe)) (##length _g17531_))))
          (cond ((let () (declare (not safe)) (##fx= _g17530_ 2))
                 (apply (lambda (_id17205_ _e17206_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17205_ _e17206_)))
                        _g17531_))
                ((let () (declare (not safe)) (##fx= _g17530_ 3))
                 (apply (lambda (_id17210_ _e17211_ _ctx17212_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17210_
                             _e17211_
                             _ctx17212_)))
                        _g17531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17531_))))))
    (define make-__runtime-id__%
      (lambda (_id17179_ _ctx17180_)
        (let ((_id17182_ (let () (declare (not safe)) (__AST-e _id17179_))))
          (if (let () (declare (not safe)) (eq? _id17182_ '_))
              '#f
              (if (uninterned-symbol? _id17182_)
                  (gensym _id17182_)
                  (if (let () (declare (not safe)) (symbol? _id17182_))
                      (let ((_$e17184_
                             (##structure-ref _ctx17180_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17184_))
                            (gensym _id17182_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17184_))
                                (let ((__tmp17532
                                       (##structure-ref
                                        _ctx17180_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol __tmp17532 '"#" _id17182_))
                                _id17182_)))
                      (error '"Illegal runtime identifier" _id17182_)))))))
    (define make-__runtime-id__0
      (lambda (_id17190_)
        (let ((_ctx17192_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17190_ _ctx17192_))))
    (define make-__runtime-id
      (lambda _g17534_
        (let ((_g17533_ (let () (declare (not safe)) (##length _g17534_))))
          (cond ((let () (declare (not safe)) (##fx= _g17533_ 1))
                 (apply (lambda (_id17190_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17190_)))
                        _g17534_))
                ((let () (declare (not safe)) (##fx= _g17533_ 2))
                 (apply (lambda (_id17194_ _ctx17195_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17194_ _ctx17195_)))
                        _g17534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17534_))))))
    (define make-__context-local__%
      (lambda (_super17168_)
        (let ((__tmp17535
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17168_ __tmp17535))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17174_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17174_))))
    (define make-__context-local
      (lambda _g17537_
        (let ((_g17536_ (let () (declare (not safe)) (##length _g17537_))))
          (cond ((let () (declare (not safe)) (##fx= _g17536_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17537_))
                ((let () (declare (not safe)) (##fx= _g17536_ 1))
                 (apply (lambda (_super17176_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17176_)))
                        _g17537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17537_))))))
    (define make-__context-module__%
      (lambda (_id17148_ _ns17149_ _path17150_ _super17151_)
        (let ((__tmp17538
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17149_
           _super17151_
           __tmp17538
           _id17148_
           _path17150_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17156_ _ns17157_ _path17158_)
        (let ((_super17160_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17156_
           _ns17157_
           _path17158_
           _super17160_))))
    (define make-__context-module
      (lambda _g17540_
        (let ((_g17539_ (let () (declare (not safe)) (##length _g17540_))))
          (cond ((let () (declare (not safe)) (##fx= _g17539_ 3))
                 (apply (lambda (_id17156_ _ns17157_ _path17158_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17156_
                             _ns17157_
                             _path17158_)))
                        _g17540_))
                ((let () (declare (not safe)) (##fx= _g17539_ 4))
                 (apply (lambda (_id17162_ _ns17163_ _path17164_ _super17165_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17162_
                             _ns17163_
                             _path17164_
                             _super17165_)))
                        _g17540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17540_))))))
    (define __SRC__%
      (lambda (_e17131_ _src-stx17132_)
        (if (or (let () (declare (not safe)) (pair? _e17131_))
                (let () (declare (not safe)) (symbol? _e17131_)))
            (let ((__tmp17544
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17132_
                          'gerbil#AST::t))
                       (let ((__tmp17545
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17132_))))
                         (declare (not safe))
                         (__locat __tmp17545))
                       '#f)))
              (declare (not safe))
              (##make-source _e17131_ __tmp17544))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17131_ 'gerbil#AST::t))
                (let ((__tmp17543
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17131_ '1 AST::t '#f)))
                      (__tmp17541
                       (let ((__tmp17542
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17131_))))
                         (declare (not safe))
                         (__locat __tmp17542))))
                  (declare (not safe))
                  (##make-source __tmp17543 __tmp17541))
                (error '"BUG! Cannot sourcify object" _e17131_)))))
    (define __SRC__0
      (lambda (_e17140_)
        (let ((_src-stx17142_ '#f))
          (declare (not safe))
          (__SRC__% _e17140_ _src-stx17142_))))
    (define __SRC
      (lambda _g17547_
        (let ((_g17546_ (let () (declare (not safe)) (##length _g17547_))))
          (cond ((let () (declare (not safe)) (##fx= _g17546_ 1))
                 (apply (lambda (_e17140_)
                          (let () (declare (not safe)) (__SRC__0 _e17140_)))
                        _g17547_))
                ((let () (declare (not safe)) (##fx= _g17546_ 2))
                 (apply (lambda (_e17144_ _src-stx17145_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17144_ _src-stx17145_)))
                        _g17547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17547_))))))
    (define __locat
      (lambda (_loc17128_)
        (if (let () (declare (not safe)) (##locat? _loc17128_))
            _loc17128_
            '#f)))
    (define __check-values
      (lambda (_obj17123_ _k17124_)
        (let ((_count17126_
               (if (let () (declare (not safe)) (##values? _obj17123_))
                   (let () (declare (not safe)) (##vector-length _obj17123_))
                   '1)))
          (if (fx= _count17126_ _k17124_)
              '#!void
              (error (if (fx< _count17126_ _k17124_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17123_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17123_))
                         _obj17123_)
                     _k17124_)))))
    (define __compile
      (lambda (_stx17093_)
        (let* ((_$e17095_ _stx17093_)
               (_$E1709717103_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17095_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17095_))
              (let* ((_$tgt1709817106_
                      (let () (declare (not safe)) (__AST-e _$e17095_)))
                     (_$hd1709917109_
                      (let () (declare (not safe)) (##car _$tgt1709817106_)))
                     (_$tl1710017112_
                      (let () (declare (not safe)) (##cdr _$tgt1709817106_))))
                (let* ((_form17116_ _$hd1709917109_)
                       (_$e17118_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17116_))))
                  (if _$e17118_
                      ((lambda (_bind17121_)
                         ((##structure-ref _bind17121_ '1 __syntax::t '#f)
                          _stx17093_))
                       _$e17118_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx17093_
                         _form17116_)))))
              (let () (declare (not safe)) (_$E1709717103_))))))
    (define __compile-error__%
      (lambda (_stx17080_ _detail17081_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17080_
           _detail17081_))))
    (define __compile-error__0
      (lambda (_stx17086_)
        (let ((_detail17088_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17086_ _detail17088_))))
    (define __compile-error
      (lambda _g17549_
        (let ((_g17548_ (let () (declare (not safe)) (##length _g17549_))))
          (cond ((let () (declare (not safe)) (##fx= _g17548_ 1))
                 (apply (lambda (_stx17086_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17086_)))
                        _g17549_))
                ((let () (declare (not safe)) (##fx= _g17548_ 2))
                 (apply (lambda (_stx17090_ _detail17091_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17090_ _detail17091_)))
                        _g17549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17549_))))))
    (define __compile-ignore%
      (lambda (_stx17077_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17077_))))
    (define __compile-begin%
      (lambda (_stx17052_)
        (let* ((_$e17054_ _stx17052_)
               (_$E1705617062_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17054_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17054_))
              (let* ((_$tgt1705717065_
                      (let () (declare (not safe)) (__AST-e _$e17054_)))
                     (_$hd1705817068_
                      (let () (declare (not safe)) (##car _$tgt1705717065_)))
                     (_$tl1705917071_
                      (let () (declare (not safe)) (##cdr _$tgt1705717065_))))
                (let* ((_body17075_ _$tl1705917071_)
                       (__tmp17550
                        (let ((__tmp17551 (map __compile _body17075_)))
                          (declare (not safe))
                          (cons 'begin __tmp17551))))
                  (declare (not safe))
                  (__SRC__% __tmp17550 _stx17052_)))
              (let () (declare (not safe)) (_$E1705617062_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17027_)
        (let* ((_$e17029_ _stx17027_)
               (_$E1703117037_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17029_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17029_))
              (let* ((_$tgt1703217040_
                      (let () (declare (not safe)) (__AST-e _$e17029_)))
                     (_$hd1703317043_
                      (let () (declare (not safe)) (##car _$tgt1703217040_)))
                     (_$tl1703417046_
                      (let () (declare (not safe)) (##cdr _$tgt1703217040_))))
                (let* ((_body17050_ _$tl1703417046_)
                       (__tmp17552
                        (let ((__tmp17553
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17050_))))
                          (declare (not safe))
                          (cons 'begin __tmp17553))))
                  (declare (not safe))
                  (__SRC__% __tmp17552 _stx17027_)))
              (let () (declare (not safe)) (_$E1703117037_))))))
    (define __compile-import%
      (lambda (_stx17002_)
        (let* ((_$e17004_ _stx17002_)
               (_$E1700617012_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17004_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17004_))
              (let* ((_$tgt1700717015_
                      (let () (declare (not safe)) (__AST-e _$e17004_)))
                     (_$hd1700817018_
                      (let () (declare (not safe)) (##car _$tgt1700717015_)))
                     (_$tl1700917021_
                      (let () (declare (not safe)) (##cdr _$tgt1700717015_))))
                (let* ((_body17025_ _$tl1700917021_)
                       (__tmp17554
                        (let ((__tmp17555
                               (let ((__tmp17556
                                      (let ((__tmp17557
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17025_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17557))))
                                 (declare (not safe))
                                 (cons __tmp17556 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17555))))
                  (declare (not safe))
                  (__SRC__% __tmp17554 _stx17002_)))
              (let () (declare (not safe)) (_$E1700617012_))))))
    (define __compile-begin-annotation%
      (lambda (_stx16949_)
        (let* ((_$e16951_ _stx16949_)
               (_$E1695316965_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16951_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16951_))
              (let* ((_$tgt1695416968_
                      (let () (declare (not safe)) (__AST-e _$e16951_)))
                     (_$hd1695516971_
                      (let () (declare (not safe)) (##car _$tgt1695416968_)))
                     (_$tl1695616974_
                      (let () (declare (not safe)) (##cdr _$tgt1695416968_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1695616974_))
                    (let* ((_$tgt1695716978_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1695616974_)))
                           (_$hd1695816981_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1695716978_)))
                           (_$tl1695916984_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1695716978_))))
                      (let ((_ann16988_ _$hd1695816981_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1695916984_))
                            (let* ((_$tgt1696016990_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1695916984_)))
                                   (_$hd1696116993_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1696016990_)))
                                   (_$tl1696216996_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1696016990_))))
                              (let ((_expr17000_ _$hd1696116993_))
                                (if (let ((__tmp17558
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1696216996_))))
                                      (declare (not safe))
                                      (equal? __tmp17558 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17000_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1695316965_)))))
                            (let () (declare (not safe)) (_$E1695316965_)))))
                    (let () (declare (not safe)) (_$E1695316965_))))
              (let () (declare (not safe)) (_$E1695316965_))))))
    (define __compile-define-values%
      (lambda (_stx16840_)
        (let* ((_$e16842_ _stx16840_)
               (_$E1684416856_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16842_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16842_))
              (let* ((_$tgt1684516859_
                      (let () (declare (not safe)) (__AST-e _$e16842_)))
                     (_$hd1684616862_
                      (let () (declare (not safe)) (##car _$tgt1684516859_)))
                     (_$tl1684716865_
                      (let () (declare (not safe)) (##cdr _$tgt1684516859_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1684716865_))
                    (let* ((_$tgt1684816869_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1684716865_)))
                           (_$hd1684916872_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1684816869_)))
                           (_$tl1685016875_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1684816869_))))
                      (let ((_hd16879_ _$hd1684916872_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1685016875_))
                            (let* ((_$tgt1685116881_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1685016875_)))
                                   (_$hd1685216884_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1685116881_)))
                                   (_$tl1685316887_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1685116881_))))
                              (let ((_expr16891_ _$hd1685216884_))
                                (if (let ((__tmp17591
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1685316887_))))
                                      (declare (not safe))
                                      (equal? __tmp17591 '()))
                                    (let* ((_$e16893_ _hd16879_)
                                           (_$E1689516936_
                                            (lambda ()
                                              (let ((_$E1689616921_
                                                     (lambda ()
                                                       (let* ((_$E1689716908_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _$e16893_))))
                      (_ids16911_ _hd16879_)
                      (_len16913_ (length _ids16911_))
                      (_tmp16915_
                       (let ((__tmp17559 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17559))))
                 (let ((__tmp17560
                        (let ((__tmp17561
                               (let ((__tmp17578
                                      (let ((__tmp17579
                                             (let ((__tmp17580
                                                    (let ((__tmp17581
                                                           (let ((__tmp17582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr16891_))))
                     (declare (not safe))
                     (cons __tmp17582 '()))))
              (declare (not safe))
              (cons _tmp16915_ __tmp17581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17580))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17579 _stx16840_)))
                                     (__tmp17562
                                      (let ((__tmp17574
                                             (let ((__tmp17575
                                                    (let ((__tmp17576
                                                           (let ((__tmp17577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len16913_ '()))))
                     (declare (not safe))
                     (cons _tmp16915_ __tmp17577))))
              (declare (not safe))
              (cons '__check-values __tmp17576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17575
                                                _stx16840_)))
                                            (__tmp17563
                                             (let ((__tmp17564
                                                    (let ((__tmp17566
                                                           (lambda (_id16918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k16919_)
                     (if (let () (declare (not safe)) (__AST-e _id16918_))
                         (let ((__tmp17567
                                (let ((__tmp17568
                                       (let ((__tmp17573
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id16918_)))
                                             (__tmp17569
                                              (let ((__tmp17570
                                                     (let ((__tmp17571
                                                            (let ((__tmp17572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k16919_ '()))))
                      (declare (not safe))
                      (cons _tmp16915_ __tmp17572))))
               (declare (not safe))
               (cons '##vector-ref __tmp17571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17570 '()))))
                                         (declare (not safe))
                                         (cons __tmp17573 __tmp17569))))
                                  (declare (not safe))
                                  (cons 'define __tmp17568))))
                           (declare (not safe))
                           (__SRC__% __tmp17567 _stx16840_))
                         '#f)))
                  (__tmp17565 (let () (declare (not safe)) (iota _len16913_))))
              (declare (not safe))
              (filter-map2 __tmp17566 _ids16911_ __tmp17565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17564))))
                                        (declare (not safe))
                                        (cons __tmp17574 __tmp17563))))
                                 (declare (not safe))
                                 (cons __tmp17578 __tmp17562))))
                          (declare (not safe))
                          (cons 'begin __tmp17561))))
                   (declare (not safe))
                   (__SRC__% __tmp17560 _stx16840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e16893_))
                                                    (let* ((_$tgt1689816924_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e16893_)))
                                                           (_$hd1689916927_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1689816924_)))
                                                           (_$tl1690016930_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1689816924_))))
                                                      (let ((_id16934_
                                                             _$hd1689916927_))
                                                        (if (let ((__tmp17588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1690016930_))))
                      (declare (not safe))
                      (equal? __tmp17588 '()))
                    (let ((__tmp17583
                           (let ((__tmp17584
                                  (let ((__tmp17587
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id16934_)))
                                        (__tmp17585
                                         (let ((__tmp17586
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr16891_))))
                                           (declare (not safe))
                                           (cons __tmp17586 '()))))
                                    (declare (not safe))
                                    (cons __tmp17587 __tmp17585))))
                             (declare (not safe))
                             (cons 'define __tmp17584))))
                      (declare (not safe))
                      (__SRC__% __tmp17583 _stx16840_))
                    (let () (declare (not safe)) (_$E1689616921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1689616921_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e16893_))
                                          (let* ((_$tgt1690116939_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e16893_)))
                                                 (_$hd1690216942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1690116939_)))
                                                 (_$tl1690316945_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1690116939_))))
                                            (if (let ((__tmp17590
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1690216942_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17590 '#f))
                                                (if (let ((__tmp17589
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1690316945_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17589 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr16891_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1689516936_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1689516936_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1689516936_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1684416856_)))))
                            (let () (declare (not safe)) (_$E1684416856_)))))
                    (let () (declare (not safe)) (_$E1684416856_))))
              (let () (declare (not safe)) (_$E1684416856_))))))
    (define __compile-head-id
      (lambda (_e16838_)
        (let ((__tmp17592
               (if (let () (declare (not safe)) (__AST-e _e16838_))
                   _e16838_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17592))))
    (define __compile-lambda-head
      (lambda (_hd16795_)
        (let _recur16797_ ((_rest16799_ _hd16795_))
          (let* ((_$e16801_ _rest16799_)
                 (_$E1680316821_
                  (lambda ()
                    (let ((_$E1680416818_
                           (lambda ()
                             (let* ((_$E1680516813_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _$e16801_))))
                                    (_tail16816_ _$e16801_))
                               (declare (not safe))
                               (__compile-head-id _tail16816_)))))
                      (if (let ((__tmp17593
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16801_))))
                            (declare (not safe))
                            (equal? __tmp17593 '()))
                          '()
                          (let () (declare (not safe)) (_$E1680416818_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16801_))
                (let* ((_$tgt1680616824_
                        (let () (declare (not safe)) (__AST-e _$e16801_)))
                       (_$hd1680716827_
                        (let () (declare (not safe)) (##car _$tgt1680616824_)))
                       (_$tl1680816830_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1680616824_))))
                  (let* ((_hd16834_ _$hd1680716827_)
                         (_rest16836_ _$tl1680816830_))
                    (let ((__tmp17595
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16834_)))
                          (__tmp17594
                           (let ()
                             (declare (not safe))
                             (_recur16797_ _rest16836_))))
                      (declare (not safe))
                      (cons __tmp17595 __tmp17594))))
                (let () (declare (not safe)) (_$E1680316821_)))))))
    (define __compile-lambda%
      (lambda (_stx16742_)
        (let* ((_$e16744_ _stx16742_)
               (_$E1674616758_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16744_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16744_))
              (let* ((_$tgt1674716761_
                      (let () (declare (not safe)) (__AST-e _$e16744_)))
                     (_$hd1674816764_
                      (let () (declare (not safe)) (##car _$tgt1674716761_)))
                     (_$tl1674916767_
                      (let () (declare (not safe)) (##cdr _$tgt1674716761_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1674916767_))
                    (let* ((_$tgt1675016771_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1674916767_)))
                           (_$hd1675116774_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1675016771_)))
                           (_$tl1675216777_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1675016771_))))
                      (let ((_hd16781_ _$hd1675116774_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1675216777_))
                            (let* ((_$tgt1675316783_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1675216777_)))
                                   (_$hd1675416786_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1675316783_)))
                                   (_$tl1675516789_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1675316783_))))
                              (let ((_body16793_ _$hd1675416786_))
                                (if (let ((__tmp17601
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1675516789_))))
                                      (declare (not safe))
                                      (equal? __tmp17601 '()))
                                    (let ((__tmp17596
                                           (let ((__tmp17597
                                                  (let ((__tmp17600
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16781_)))
                                                        (__tmp17598
                                                         (let ((__tmp17599
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16793_))))
                   (declare (not safe))
                   (cons __tmp17599 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17600
                                                          __tmp17598))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17597))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17596 _stx16742_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1674616758_)))))
                            (let () (declare (not safe)) (_$E1674616758_)))))
                    (let () (declare (not safe)) (_$E1674616758_))))
              (let () (declare (not safe)) (_$E1674616758_))))))
    (define __compile-case-lambda%
      (lambda (_stx16534_)
        (letrec ((_variadic?16536_
                  (lambda (_hd16707_)
                    (let* ((_$e16709_ _hd16707_)
                           (_$E1671116727_
                            (lambda ()
                              (let ((_$E1671216724_
                                     (lambda ()
                                       (let ((_$E1671316721_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _$e16709_)))))
                                         '#t))))
                                (if (let ((__tmp17602
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16709_))))
                                      (declare (not safe))
                                      (equal? __tmp17602 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1671216724_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16709_))
                          (let* ((_$tgt1671416730_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16709_)))
                                 (_$hd1671516733_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1671416730_)))
                                 (_$tl1671616736_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1671416730_))))
                            (let ((_rest16740_ _$tl1671616736_))
                              (declare (not safe))
                              (_variadic?16536_ _rest16740_)))
                          (let () (declare (not safe)) (_$E1671116727_))))))
                 (_arity16537_
                  (lambda (_hd16672_)
                    (let _lp16674_ ((_rest16676_ _hd16672_) (_k16677_ '0))
                      (let* ((_$e16679_ _rest16676_)
                             (_$E1668116692_
                              (lambda ()
                                (let ((_$E1668216689_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _$e16679_)))))
                                  _k16677_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16679_))
                            (let* ((_$tgt1668316695_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16679_)))
                                   (_$hd1668416698_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1668316695_)))
                                   (_$tl1668516701_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1668316695_))))
                              (let* ((_rest16705_ _$tl1668516701_)
                                     (__tmp17603
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16677_ '1))))
                                (declare (not safe))
                                (_lp16674_ _rest16705_ __tmp17603)))
                            (let () (declare (not safe)) (_$E1668116692_)))))))
                 (_generate16538_
                  (lambda (_rest16599_ _args16600_ _len16601_)
                    (let* ((_$e16603_ _rest16599_)
                           (_$E1660516616_
                            (lambda ()
                              (let* ((_$E1660616613_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _$e16603_))))
                                     (__tmp17604
                                      (let ((__tmp17605
                                             (let ((__tmp17606
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16600_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17606))))
                                        (declare (not safe))
                                        (cons 'error __tmp17605))))
                                (declare (not safe))
                                (__SRC__% __tmp17604 _stx16534_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16603_))
                          (let* ((_$tgt1660716619_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16603_)))
                                 (_$hd1660816622_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1660716619_)))
                                 (_$tl1660916625_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1660716619_))))
                            (let* ((_clause16629_ _$hd1660816622_)
                                   (_rest16631_ _$tl1660916625_)
                                   (_$e16633_ _clause16629_)
                                   (_$E1663516644_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _$e16633_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16633_))
                                  (let* ((_$tgt1663616647_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16633_)))
                                         (_$hd1663716650_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1663616647_)))
                                         (_$tl1663816653_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1663616647_))))
                                    (let ((_hd16657_ _$hd1663716650_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1663816653_))
                                          (let* ((_$tgt1663916659_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1663816653_)))
                                                 (_$hd1664016662_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1663916659_)))
                                                 (_$tl1664116665_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1663916659_))))
                                            (if (let ((__tmp17621
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1664116665_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17621 '()))
                                                (let ((_clen16669_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16537_
                                                          _hd16657_)))
                                                      (_cmp16670_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16536_
                                                              _hd16657_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17607
                                                         (let ((__tmp17608
                                                                (let ((__tmp17618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17619
                                      (let ((__tmp17620
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16669_ '()))))
                                        (declare (not safe))
                                        (cons _len16601_ __tmp17620))))
                                 (declare (not safe))
                                 (cons _cmp16670_ __tmp17619)))
                              (__tmp17609
                               (let ((__tmp17612
                                      (let ((__tmp17613
                                             (let ((__tmp17614
                                                    (let ((__tmp17616
                                                           (let ((__tmp17617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16629_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17617)))
                  (__tmp17615
                   (let () (declare (not safe)) (cons _args16600_ '()))))
              (declare (not safe))
              (cons __tmp17616 __tmp17615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17614))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17613 _stx16534_)))
                                     (__tmp17610
                                      (let ((__tmp17611
                                             (let ()
                                               (declare (not safe))
                                               (_generate16538_
                                                _rest16631_
                                                _args16600_
                                                _len16601_))))
                                        (declare (not safe))
                                        (cons __tmp17611 '()))))
                                 (declare (not safe))
                                 (cons __tmp17612 __tmp17610))))
                          (declare (not safe))
                          (cons __tmp17618 __tmp17609))))
                   (declare (not safe))
                   (cons 'if __tmp17608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17607
                                                     _stx16534_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1663516644_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1663516644_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1663516644_)))))
                          (let () (declare (not safe)) (_$E1660516616_)))))))
          (let* ((_$e16540_ _stx16534_)
                 (_$E1654216574_
                  (lambda ()
                    (let ((_$E1654316556_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16540_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16540_))
                          (let* ((_$tgt1654416559_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16540_)))
                                 (_$hd1654516562_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1654416559_)))
                                 (_$tl1654616565_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1654416559_))))
                            (let ((_clauses16569_ _$tl1654616565_))
                              (let ((_args16571_
                                     (let ((__tmp17622 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17622 _stx16534_)))
                                    (_len16572_
                                     (let ((__tmp17623 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17623 _stx16534_))))
                                (let ((__tmp17624
                                       (let ((__tmp17625
                                              (let ((__tmp17626
                                                     (let ((__tmp17627
                                                            (let ((__tmp17628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17629
                                  (let ((__tmp17632
                                         (let ((__tmp17633
                                                (let ((__tmp17634
                                                       (let ((__tmp17635
                                                              (let ((__tmp17636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17637
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16571_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17637))))
                        (declare (not safe))
                        (__SRC__% __tmp17636 _stx16534_))))
                 (declare (not safe))
                 (cons __tmp17635 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16572_
                                                        __tmp17634))))
                                           (declare (not safe))
                                           (cons __tmp17633 '())))
                                        (__tmp17630
                                         (let ((__tmp17631
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16538_
                                                   _clauses16569_
                                                   _args16571_
                                                   _len16572_))))
                                           (declare (not safe))
                                           (cons __tmp17631 '()))))
                                    (declare (not safe))
                                    (cons __tmp17632 __tmp17630))))
                             (declare (not safe))
                             (cons 'let __tmp17629))))
                      (declare (not safe))
                      (__SRC__% __tmp17628 _stx16534_))))
               (declare (not safe))
               (cons __tmp17627 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16571_
                                                      __tmp17626))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17625))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17624 _stx16534_)))))
                          (let () (declare (not safe)) (_$E1654316556_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16540_))
                (let* ((_$tgt1654716577_
                        (let () (declare (not safe)) (__AST-e _$e16540_)))
                       (_$hd1654816580_
                        (let () (declare (not safe)) (##car _$tgt1654716577_)))
                       (_$tl1654916583_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1654716577_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1654916583_))
                      (let* ((_$tgt1655016587_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1654916583_)))
                             (_$hd1655116590_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1655016587_)))
                             (_$tl1655216593_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1655016587_))))
                        (let ((_clause16597_ _$hd1655116590_))
                          (if (let ((__tmp17639
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1655216593_))))
                                (declare (not safe))
                                (equal? __tmp17639 '()))
                              (let ((__tmp17638
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16597_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17638))
                              (let () (declare (not safe)) (_$E1654216574_)))))
                      (let () (declare (not safe)) (_$E1654216574_))))
                (let () (declare (not safe)) (_$E1654216574_)))))))
    (define __compile-let-form
      (lambda (_stx16303_ _compile-simple16304_ _compile-values16305_)
        (letrec ((_simple-bind?16307_
                  (lambda (_hd16492_)
                    (let* ((_hd1649316503_ _hd16492_)
                           (_else1649616511_ (lambda () '#f)))
                      (let ((_K1649916524_ (lambda (_id16522_) '#t))
                            (_K1649816516_ (lambda () '#t)))
                        (let ((_try-match1649516519_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1649316503_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1649816516_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1649616511_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1649316503_))
                              (let ((_tl1650116529_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1649316503_)))
                                    (_hd1650016527_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1649316503_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1650116529_))
                                    (let ((_id16532_ _hd1650016527_))
                                      (declare (not safe))
                                      (_K1649916524_ _id16532_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1649516519_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1649516519_))))))))
                 (_car-e16308_
                  (lambda (_hd16490_)
                    (if (let () (declare (not safe)) (pair? _hd16490_))
                        (car _hd16490_)
                        _hd16490_))))
          (let* ((_$e16310_ _stx16303_)
                 (_$E1631216455_
                  (lambda ()
                    (let ((_$E1631316335_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16310_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16310_))
                          (let* ((_$tgt1631416338_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16310_)))
                                 (_$hd1631516341_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1631416338_)))
                                 (_$tl1631616344_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1631416338_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1631616344_))
                                (let* ((_$tgt1631716348_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1631616344_)))
                                       (_$hd1631816351_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1631716348_)))
                                       (_$tl1631916354_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1631716348_))))
                                  (let ((_hd16358_ _$hd1631816351_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1631916354_))
                                        (let* ((_$tgt1632016360_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1631916354_)))
                                               (_$hd1632116363_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1632016360_)))
                                               (_$tl1632216366_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1632016360_))))
                                          (let ((_body16370_ _$hd1632116363_))
                                            (if (let ((__tmp17642
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1632216366_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17642 '()))
                                                (let* ((_hd-ids16410_
                                                        (map (lambda (_bind16372_)
                                                               (let* ((_$e16374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16372_)
                              (_$E1637616385_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16374_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16374_))
                             (let* ((_$tgt1637716388_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16374_)))
                                    (_$hd1637816391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1637716388_)))
                                    (_$tl1637916394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1637716388_))))
                               (let ((_ids16398_ _$hd1637816391_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1637916394_))
                                     (let* ((_$tgt1638016400_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1637916394_)))
                                            (_$hd1638116403_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1638016400_)))
                                            (_$tl1638216406_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1638016400_))))
                                       (if (let ((__tmp17640
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1638216406_))))
                                             (declare (not safe))
                                             (equal? __tmp17640 '()))
                                           _ids16398_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1637616385_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1637616385_)))))
                             (let () (declare (not safe)) (_$E1637616385_)))))
                     _hd16358_))
               (_exprs16450_
                (map (lambda (_bind16412_)
                       (let* ((_$e16414_ _bind16412_)
                              (_$E1641616425_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16414_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16414_))
                             (let* ((_$tgt1641716428_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16414_)))
                                    (_$hd1641816431_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1641716428_)))
                                    (_$tl1641916434_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1641716428_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1641916434_))
                                   (let* ((_$tgt1642016438_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1641916434_)))
                                          (_$hd1642116441_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1642016438_)))
                                          (_$tl1642216444_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1642016438_))))
                                     (let ((_expr16448_ _$hd1642116441_))
                                       (if (let ((__tmp17641
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1642216444_))))
                                             (declare (not safe))
                                             (equal? __tmp17641 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16448_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1641616425_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1641616425_))))
                             (let () (declare (not safe)) (_$E1641616425_)))))
                     _hd16358_))
               (_body16452_
                (let () (declare (not safe)) (__compile _body16370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16410_))
              (_compile-simple16304_
               (map _car-e16308_ _hd-ids16410_)
               _exprs16450_
               _body16452_)
              (_compile-values16305_ _hd-ids16410_ _exprs16450_ _body16452_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1631316335_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1631316335_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1631316335_))))
                          (let () (declare (not safe)) (_$E1631316335_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16310_))
                (let* ((_$tgt1632316458_
                        (let () (declare (not safe)) (__AST-e _$e16310_)))
                       (_$hd1632416461_
                        (let () (declare (not safe)) (##car _$tgt1632316458_)))
                       (_$tl1632516464_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1632316458_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1632516464_))
                      (let* ((_$tgt1632616468_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1632516464_)))
                             (_$hd1632716471_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1632616468_)))
                             (_$tl1632816474_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1632616468_))))
                        (if (let ((__tmp17644
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1632716471_))))
                              (declare (not safe))
                              (equal? __tmp17644 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1632816474_))
                                (let* ((_$tgt1632916478_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1632816474_)))
                                       (_$hd1633016481_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1632916478_)))
                                       (_$tl1633116484_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1632916478_))))
                                  (let ((_body16488_ _$hd1633016481_))
                                    (if (let ((__tmp17643
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1633116484_))))
                                          (declare (not safe))
                                          (equal? __tmp17643 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16488_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1631216455_)))))
                                (let () (declare (not safe)) (_$E1631216455_)))
                            (let () (declare (not safe)) (_$E1631216455_))))
                      (let () (declare (not safe)) (_$E1631216455_))))
                (let () (declare (not safe)) (_$E1631216455_)))))))
    (define __compile-let-values%
      (lambda (_stx16118_)
        (letrec ((_compile-simple16120_
                  (lambda (_hd-ids16299_ _exprs16300_ _body16301_)
                    (let ((__tmp17645
                           (let ((__tmp17646
                                  (let ((__tmp17648
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16299_)
                                              _exprs16300_))
                                        (__tmp17647
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16301_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17648 __tmp17647))))
                             (declare (not safe))
                             (cons 'let __tmp17646))))
                      (declare (not safe))
                      (__SRC__% __tmp17645 _stx16118_))))
                 (_compile-values16121_
                  (lambda (_hd-ids16217_ _exprs16218_ _body16219_)
                    (let _lp16221_ ((_rest16223_ _hd-ids16217_)
                                    (_exprs16224_ _exprs16218_)
                                    (_bind16225_ '())
                                    (_post16226_ '()))
                      (let* ((_rest1622716241_ _rest16223_)
                             (_else1623016249_
                              (lambda ()
                                (let ((__tmp17649
                                       (let ((__tmp17650
                                              (let ((__tmp17653
                                                     (reverse _bind16225_))
                                                    (__tmp17651
                                                     (let ((__tmp17652
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16122_
                                                               _post16226_
                                                               _body16219_))))
                                                       (declare (not safe))
                                                       (cons __tmp17652 '()))))
                                                (declare (not safe))
                                                (cons __tmp17653 __tmp17651))))
                                         (declare (not safe))
                                         (cons 'let __tmp17650))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17649 _stx16118_)))))
                        (let ((_K1623516282_
                               (lambda (_rest16279_ _id16280_)
                                 (let ((__tmp17659 (cdr _exprs16224_))
                                       (__tmp17654
                                        (let ((__tmp17655
                                               (let ((__tmp17658
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16280_)))
                                                     (__tmp17656
                                                      (let ((__tmp17657
                                                             (car _exprs16224_)))
                                                        (declare (not safe))
                                                        (cons __tmp17657
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17658
                                                       __tmp17656))))
                                          (declare (not safe))
                                          (cons __tmp17655 _bind16225_))))
                                   (declare (not safe))
                                   (_lp16221_
                                    _rest16279_
                                    __tmp17659
                                    __tmp17654
                                    _post16226_))))
                              (_K1623216264_
                               (lambda (_rest16253_ _hd16254_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16254_))
                                     (let ((__tmp17680 (cdr _exprs16224_))
                                           (__tmp17673
                                            (let ((__tmp17674
                                                   (let ((__tmp17679
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16254_)))
                                                         (__tmp17675
                                                          (let ((__tmp17676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17677
                                (let ((__tmp17678 (car _exprs16224_)))
                                  (declare (not safe))
                                  (cons __tmp17678 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17677))))
                    (declare (not safe))
                    (cons __tmp17676 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17679
                                                           __tmp17675))))
                                              (declare (not safe))
                                              (cons __tmp17674 _bind16225_))))
                                       (declare (not safe))
                                       (_lp16221_
                                        _rest16253_
                                        __tmp17680
                                        __tmp17673
                                        _post16226_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16254_))
                                         (let* ((_len16256_ (length _hd16254_))
                                                (_tmp16258_
                                                 (let ((__tmp17660 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17660))))
                                           (let ((__tmp17672
                                                  (cdr _exprs16224_))
                                                 (__tmp17668
                                                  (let ((__tmp17669
                                                         (let ((__tmp17670
                                                                (let ((__tmp17671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16224_)))
                          (declare (not safe))
                          (cons __tmp17671 '()))))
                   (declare (not safe))
                   (cons _tmp16258_ __tmp17670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17669
                                                          _bind16225_)))
                                                 (__tmp17661
                                                  (let ((__tmp17662
                                                         (let ((__tmp17663
                                                                (let ((__tmp17664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17666
                                      (lambda (_id16261_ _k16262_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16261_))
                                            (let ((__tmp17667
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16261_))))
                                              (declare (not safe))
                                              (cons __tmp17667 _k16262_))
                                            '#f)))
                                     (__tmp17665
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16256_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17666
                                  _hd16254_
                                  __tmp17665))))
                          (declare (not safe))
                          (cons _len16256_ __tmp17664))))
                   (declare (not safe))
                   (cons _tmp16258_ __tmp17663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17662
                                                          _post16226_))))
                                             (declare (not safe))
                                             (_lp16221_
                                              _rest16253_
                                              __tmp17672
                                              __tmp17668
                                              __tmp17661)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16118_
                                            _hd16254_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1622716241_))
                              (let ((_tl1623716287_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1622716241_)))
                                    (_hd1623616285_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1622716241_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1623616285_))
                                    (let ((_tl1623916292_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1623616285_)))
                                          (_hd1623816290_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1623616285_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1623916292_))
                                          (let ((_id16295_ _hd1623816290_)
                                                (_rest16297_ _tl1623716287_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1623516282_
                                               _rest16297_
                                               _id16295_)))
                                          (let ((_hd16272_ _hd1623616285_)
                                                (_rest16274_ _tl1623716287_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1623216264_
                                               _rest16274_
                                               _hd16272_)))))
                                    (let ((_hd16272_ _hd1623616285_)
                                          (_rest16274_ _tl1623716287_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1623216264_
                                         _rest16274_
                                         _hd16272_)))))
                              (let ()
                                (declare (not safe))
                                (_else1623016249_))))))))
                 (_compile-post16122_
                  (lambda (_post16124_ _body16125_)
                    (let _lp16127_ ((_rest16129_ _post16124_)
                                    (_check16130_ '())
                                    (_bind16131_ '()))
                      (let* ((_rest1613216144_ _rest16129_)
                             (_else1613416152_
                              (lambda ()
                                (let ((__tmp17681
                                       (let ((__tmp17682
                                              (let ((__tmp17683
                                                     (let ((__tmp17684
                                                            (let ((__tmp17685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17686
                                  (let ((__tmp17687
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16125_ '()))))
                                    (declare (not safe))
                                    (cons _bind16131_ __tmp17687))))
                             (declare (not safe))
                             (cons 'let __tmp17686))))
                      (declare (not safe))
                      (__SRC__% __tmp17685 _stx16118_))))
               (declare (not safe))
               (cons __tmp17684 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17683
                                                        _check16130_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17682))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17681 _stx16118_))))
                             (_K1613616191_
                              (lambda (_rest16155_
                                       _init16156_
                                       _len16157_
                                       _tmp16158_)
                                (let ((__tmp17695
                                       (let ((__tmp17696
                                              (let ((__tmp17697
                                                     (let ((__tmp17698
                                                            (let ((__tmp17699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16157_ '()))))
                      (declare (not safe))
                      (cons _tmp16158_ __tmp17699))))
               (declare (not safe))
               (cons '__check-values __tmp17698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17697
                                                 _stx16118_))))
                                         (declare (not safe))
                                         (cons __tmp17696 _check16130_)))
                                      (__tmp17688
                                       (let ((__tmp17689
                                              (lambda (_hd16160_ _r16161_)
                                                (let* ((_hd1616216169_
                                                        _hd16160_)
                                                       (_E1616416173_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1616216169_)))
               (_K1616516179_
                (lambda (_k16176_ _id16177_)
                  (let ((__tmp17690
                         (let ((__tmp17691
                                (let ((__tmp17692
                                       (let ((__tmp17693
                                              (let ((__tmp17694
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16176_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16158_ __tmp17694))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17693))))
                                  (declare (not safe))
                                  (cons __tmp17692 '()))))
                           (declare (not safe))
                           (cons _id16177_ __tmp17691))))
                    (declare (not safe))
                    (cons __tmp17690 _r16161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1616216169_))
                                                      (let ((_hd1616616182_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1616216169_)))
                    (_tl1616716184_
                     (let () (declare (not safe)) (##cdr _hd1616216169_))))
                (let* ((_id16187_ _hd1616616182_) (_k16189_ _tl1616716184_))
                  (declare (not safe))
                  (_K1616516179_ _k16189_ _id16187_)))
              (let () (declare (not safe)) (_E1616416173_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17689
                                                 _bind16131_
                                                 _init16156_))))
                                  (declare (not safe))
                                  (_lp16127_
                                   _rest16155_
                                   __tmp17695
                                   __tmp17688)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1613216144_))
                            (let ((_hd1613716194_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1613216144_)))
                                  (_tl1613816196_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1613216144_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1613716194_))
                                  (let ((_hd1613916199_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1613716194_)))
                                        (_tl1614016201_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1613716194_))))
                                    (let ((_tmp16204_ _hd1613916199_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1614016201_))
                                          (let ((_hd1614116206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1614016201_)))
                                                (_tl1614216208_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1614016201_))))
                                            (let* ((_len16211_ _hd1614116206_)
                                                   (_init16213_ _tl1614216208_)
                                                   (_rest16215_
                                                    _tl1613816196_))
                                              (declare (not safe))
                                              (_K1613616191_
                                               _rest16215_
                                               _init16213_
                                               _len16211_
                                               _tmp16204_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1613416152_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1613416152_))))
                            (let ()
                              (declare (not safe))
                              (_else1613416152_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16118_
             _compile-simple16120_
             _compile-values16121_)))))
    (define __compile-letrec-values%
      (lambda (_stx15918_)
        (letrec ((_compile-simple15920_
                  (lambda (_hd-ids16114_ _exprs16115_ _body16116_)
                    (let ((__tmp17700
                           (let ((__tmp17701
                                  (let ((__tmp17703
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16114_)
                                              _exprs16115_))
                                        (__tmp17702
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16116_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17703 __tmp17702))))
                             (declare (not safe))
                             (cons 'letrec __tmp17701))))
                      (declare (not safe))
                      (__SRC__% __tmp17700 _stx15918_))))
                 (_compile-values15921_
                  (lambda (_hd-ids16028_ _exprs16029_ _body16030_)
                    (let _lp16032_ ((_rest16034_ _hd-ids16028_)
                                    (_exprs16035_ _exprs16029_)
                                    (_pre16036_ '())
                                    (_bind16037_ '())
                                    (_post16038_ '()))
                      (let* ((_rest1603916053_ _rest16034_)
                             (_else1604216061_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner15922_
                                   _pre16036_
                                   _bind16037_
                                   _post16038_
                                   _body16030_)))))
                        (let ((_K1604716097_
                               (lambda (_rest16094_ _id16095_)
                                 (let ((__tmp17709 (cdr _exprs16035_))
                                       (__tmp17704
                                        (let ((__tmp17705
                                               (let ((__tmp17708
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16095_)))
                                                     (__tmp17706
                                                      (let ((__tmp17707
                                                             (car _exprs16035_)))
                                                        (declare (not safe))
                                                        (cons __tmp17707
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17708
                                                       __tmp17706))))
                                          (declare (not safe))
                                          (cons __tmp17705 _bind16037_))))
                                   (declare (not safe))
                                   (_lp16032_
                                    _rest16094_
                                    __tmp17709
                                    _pre16036_
                                    __tmp17704
                                    _post16038_))))
                              (_K1604416079_
                               (lambda (_rest16065_ _hd16066_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16066_))
                                     (let ((__tmp17737 (cdr _exprs16035_))
                                           (__tmp17730
                                            (let ((__tmp17731
                                                   (let ((__tmp17736
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16066_)))
                                                         (__tmp17732
                                                          (let ((__tmp17733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17734
                                (let ((__tmp17735 (car _exprs16035_)))
                                  (declare (not safe))
                                  (cons __tmp17735 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17734))))
                    (declare (not safe))
                    (cons __tmp17733 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17736
                                                           __tmp17732))))
                                              (declare (not safe))
                                              (cons __tmp17731 _bind16037_))))
                                       (declare (not safe))
                                       (_lp16032_
                                        _rest16065_
                                        __tmp17737
                                        _pre16036_
                                        __tmp17730
                                        _post16038_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16066_))
                                         (let* ((_len16068_ (length _hd16066_))
                                                (_tmp16070_
                                                 (let ((__tmp17710 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17710))))
                                           (let ((__tmp17729
                                                  (cdr _exprs16035_))
                                                 (__tmp17722
                                                  (let ((__tmp17723
                                                         (lambda (_id16073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16074_)
                   (if (let () (declare (not safe)) (__AST-e _id16073_))
                       (let ((__tmp17724
                              (let ((__tmp17728
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16073_)))
                                    (__tmp17725
                                     (let ((__tmp17726
                                            (let ((__tmp17727
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17727))))
                                       (declare (not safe))
                                       (cons __tmp17726 '()))))
                                (declare (not safe))
                                (cons __tmp17728 __tmp17725))))
                         (declare (not safe))
                         (cons __tmp17724 _r16074_))
                       _r16074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17723
                                                            _pre16036_
                                                            _hd16066_)))
                                                 (__tmp17718
                                                  (let ((__tmp17719
                                                         (let ((__tmp17720
                                                                (let ((__tmp17721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16035_)))
                          (declare (not safe))
                          (cons __tmp17721 '()))))
                   (declare (not safe))
                   (cons _tmp16070_ __tmp17720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17719
                                                          _bind16037_)))
                                                 (__tmp17711
                                                  (let ((__tmp17712
                                                         (let ((__tmp17713
                                                                (let ((__tmp17714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17716
                                      (lambda (_id16076_ _k16077_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16076_))
                                            (let ((__tmp17717
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16076_))))
                                              (declare (not safe))
                                              (cons __tmp17717 _k16077_))
                                            '#f)))
                                     (__tmp17715
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16068_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17716
                                  _hd16066_
                                  __tmp17715))))
                          (declare (not safe))
                          (cons _len16068_ __tmp17714))))
                   (declare (not safe))
                   (cons _tmp16070_ __tmp17713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17712
                                                          _post16038_))))
                                             (declare (not safe))
                                             (_lp16032_
                                              _rest16065_
                                              __tmp17729
                                              __tmp17722
                                              __tmp17718
                                              __tmp17711)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15918_
                                            _hd16066_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1603916053_))
                              (let ((_tl1604916102_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1603916053_)))
                                    (_hd1604816100_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1603916053_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1604816100_))
                                    (let ((_tl1605116107_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1604816100_)))
                                          (_hd1605016105_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1604816100_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1605116107_))
                                          (let ((_id16110_ _hd1605016105_)
                                                (_rest16112_ _tl1604916102_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1604716097_
                                               _rest16112_
                                               _id16110_)))
                                          (let ((_hd16087_ _hd1604816100_)
                                                (_rest16089_ _tl1604916102_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1604416079_
                                               _rest16089_
                                               _hd16087_)))))
                                    (let ((_hd16087_ _hd1604816100_)
                                          (_rest16089_ _tl1604916102_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1604416079_
                                         _rest16089_
                                         _hd16087_)))))
                              (let ()
                                (declare (not safe))
                                (_else1604216061_))))))))
                 (_compile-inner15922_
                  (lambda (_pre16023_ _bind16024_ _post16025_ _body16026_)
                    (if (let () (declare (not safe)) (null? _pre16023_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind15923_
                           _bind16024_
                           _post16025_
                           _body16026_))
                        (let ((__tmp17738
                               (let ((__tmp17739
                                      (let ((__tmp17742 (reverse _pre16023_))
                                            (__tmp17740
                                             (let ((__tmp17741
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind15923_
                                                       _bind16024_
                                                       _post16025_
                                                       _body16026_))))
                                               (declare (not safe))
                                               (cons __tmp17741 '()))))
                                        (declare (not safe))
                                        (cons __tmp17742 __tmp17740))))
                                 (declare (not safe))
                                 (cons 'let __tmp17739))))
                          (declare (not safe))
                          (__SRC__% __tmp17738 _stx15918_)))))
                 (_compile-bind15923_
                  (lambda (_bind16019_ _post16020_ _body16021_)
                    (let ((__tmp17743
                           (let ((__tmp17744
                                  (let ((__tmp17747 (reverse _bind16019_))
                                        (__tmp17745
                                         (let ((__tmp17746
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15924_
                                                   _post16020_
                                                   _body16021_))))
                                           (declare (not safe))
                                           (cons __tmp17746 '()))))
                                    (declare (not safe))
                                    (cons __tmp17747 __tmp17745))))
                             (declare (not safe))
                             (cons 'letrec __tmp17744))))
                      (declare (not safe))
                      (__SRC__% __tmp17743 _stx15918_))))
                 (_compile-post15924_
                  (lambda (_post15926_ _body15927_)
                    (let _lp15929_ ((_rest15931_ _post15926_)
                                    (_check15932_ '())
                                    (_bind15933_ '()))
                      (let* ((_rest1593415946_ _rest15931_)
                             (_else1593615954_
                              (lambda ()
                                (let ((__tmp17748
                                       (let ((__tmp17749
                                              (let ((__tmp17750
                                                     (let ((__tmp17751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body15927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17751 _bind15933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17750
                                                        _check15932_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17749))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17748 _stx15918_))))
                             (_K1593815993_
                              (lambda (_rest15957_
                                       _init15958_
                                       _len15959_
                                       _tmp15960_)
                                (let ((__tmp17760
                                       (let ((__tmp17761
                                              (let ((__tmp17762
                                                     (let ((__tmp17763
                                                            (let ((__tmp17764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len15959_ '()))))
                      (declare (not safe))
                      (cons _tmp15960_ __tmp17764))))
               (declare (not safe))
               (cons '__check-values __tmp17763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17762
                                                 _stx15918_))))
                                         (declare (not safe))
                                         (cons __tmp17761 _check15932_)))
                                      (__tmp17752
                                       (let ((__tmp17753
                                              (lambda (_hd15962_ _r15963_)
                                                (let* ((_hd1596415971_
                                                        _hd15962_)
                                                       (_E1596615975_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1596415971_)))
               (_K1596715981_
                (lambda (_k15978_ _id15979_)
                  (let ((__tmp17754
                         (let ((__tmp17755
                                (let ((__tmp17756
                                       (let ((__tmp17757
                                              (let ((__tmp17758
                                                     (let ((__tmp17759
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k15978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp15960_ __tmp17759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17758))))
                                         (declare (not safe))
                                         (cons __tmp17757 '()))))
                                  (declare (not safe))
                                  (cons _id15979_ __tmp17756))))
                           (declare (not safe))
                           (cons 'set! __tmp17755))))
                    (declare (not safe))
                    (cons __tmp17754 _r15963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1596415971_))
                                                      (let ((_hd1596815984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1596415971_)))
                    (_tl1596915986_
                     (let () (declare (not safe)) (##cdr _hd1596415971_))))
                (let* ((_id15989_ _hd1596815984_) (_k15991_ _tl1596915986_))
                  (declare (not safe))
                  (_K1596715981_ _k15991_ _id15989_)))
              (let () (declare (not safe)) (_E1596615975_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17753
                                                 _bind15933_
                                                 _init15958_))))
                                  (declare (not safe))
                                  (_lp15929_
                                   _rest15957_
                                   __tmp17760
                                   __tmp17752)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1593415946_))
                            (let ((_hd1593915996_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1593415946_)))
                                  (_tl1594015998_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1593415946_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1593915996_))
                                  (let ((_hd1594116001_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1593915996_)))
                                        (_tl1594216003_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1593915996_))))
                                    (let ((_tmp16006_ _hd1594116001_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1594216003_))
                                          (let ((_hd1594316008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1594216003_)))
                                                (_tl1594416010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1594216003_))))
                                            (let* ((_len16013_ _hd1594316008_)
                                                   (_init16015_ _tl1594416010_)
                                                   (_rest16017_
                                                    _tl1594015998_))
                                              (declare (not safe))
                                              (_K1593815993_
                                               _rest16017_
                                               _init16015_
                                               _len16013_
                                               _tmp16006_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1593615954_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1593615954_))))
                            (let ()
                              (declare (not safe))
                              (_else1593615954_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15918_
             _compile-simple15920_
             _compile-values15921_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15673_)
        (letrec ((_compile-simple15675_
                  (lambda (_hd-ids15914_ _exprs15915_ _body15916_)
                    (let ((__tmp17765
                           (let ((__tmp17766
                                  (let ((__tmp17768
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids15914_)
                                              _exprs15915_))
                                        (__tmp17767
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15916_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17768 __tmp17767))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17766))))
                      (declare (not safe))
                      (__SRC__% __tmp17765 _stx15673_))))
                 (_compile-values15676_
                  (lambda (_hd-ids15825_ _exprs15826_ _body15827_)
                    (let _lp15829_ ((_rest15831_ _hd-ids15825_)
                                    (_exprs15832_ _exprs15826_)
                                    (_bind15833_ '())
                                    (_post15834_ '()))
                      (let* ((_rest1583515849_ _rest15831_)
                             (_else1583815857_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15677_
                                   _bind15833_
                                   _post15834_
                                   _body15827_)))))
                        (let ((_K1584315897_
                               (lambda (_rest15892_ _hd15893_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15893_))
                                     (let ((_id15895_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15893_))))
                                       (let ((__tmp17783 (cdr _exprs15832_))
                                             (__tmp17778
                                              (let ((__tmp17779
                                                     (let ((__tmp17780
                                                            (let ((__tmp17781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17782
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17782))))
                      (declare (not safe))
                      (cons __tmp17781 '()))))
               (declare (not safe))
               (cons _id15895_ __tmp17780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17779 _bind15833_)))
                                             (__tmp17774
                                              (let ((__tmp17775
                                                     (let ((__tmp17776
                                                            (let ((__tmp17777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs15832_)))
                      (declare (not safe))
                      (cons __tmp17777 '()))))
               (declare (not safe))
               (cons _id15895_ __tmp17776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17775
                                                      _post15834_))))
                                         (declare (not safe))
                                         (_lp15829_
                                          _rest15892_
                                          __tmp17783
                                          __tmp17778
                                          __tmp17774)))
                                     (let ((__tmp17773 (cdr _exprs15832_))
                                           (__tmp17769
                                            (let ((__tmp17770
                                                   (let ((__tmp17771
                                                          (let ((__tmp17772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs15832_)))
                    (declare (not safe))
                    (cons __tmp17772 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17771))))
                                              (declare (not safe))
                                              (cons __tmp17770 _post15834_))))
                                       (declare (not safe))
                                       (_lp15829_
                                        _rest15892_
                                        __tmp17773
                                        _bind15833_
                                        __tmp17769)))))
                              (_K1584015877_
                               (lambda (_rest15861_ _hd15862_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15862_))
                                     (let ((_id15864_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15862_))))
                                       (let ((__tmp17819 (cdr _exprs15832_))
                                             (__tmp17814
                                              (let ((__tmp17815
                                                     (let ((__tmp17816
                                                            (let ((__tmp17817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17818
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17818))))
                      (declare (not safe))
                      (cons __tmp17817 '()))))
               (declare (not safe))
               (cons _id15864_ __tmp17816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17815 _bind15833_)))
                                             (__tmp17808
                                              (let ((__tmp17809
                                                     (let ((__tmp17810
                                                            (let ((__tmp17811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17812
                                  (let ((__tmp17813 (car _exprs15832_)))
                                    (declare (not safe))
                                    (cons __tmp17813 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17812))))
                      (declare (not safe))
                      (cons __tmp17811 '()))))
               (declare (not safe))
               (cons _id15864_ __tmp17810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17809
                                                      _post15834_))))
                                         (declare (not safe))
                                         (_lp15829_
                                          _rest15861_
                                          __tmp17819
                                          __tmp17814
                                          __tmp17808)))
                                     (if (let ((__tmp17807
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15862_))))
                                           (declare (not safe))
                                           (not __tmp17807))
                                         (let ((__tmp17806 (cdr _exprs15832_))
                                               (__tmp17802
                                                (let ((__tmp17803
                                                       (let ((__tmp17804
                                                              (let ((__tmp17805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs15832_)))
                        (declare (not safe))
                        (cons __tmp17805 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17803
                                                        _post15834_))))
                                           (declare (not safe))
                                           (_lp15829_
                                            _rest15861_
                                            __tmp17806
                                            _bind15833_
                                            __tmp17802))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15862_))
                                             (let* ((_len15866_
                                                     (length _hd15862_))
                                                    (_tmp15868_
                                                     (let ((__tmp17784
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17784))))
                                               (let ((__tmp17801
                                                      (cdr _exprs15832_))
                                                     (__tmp17794
                                                      (let ((__tmp17795
                                                             (lambda (_id15871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15872_)
                       (if (let () (declare (not safe)) (__AST-e _id15871_))
                           (let ((__tmp17796
                                  (let ((__tmp17800
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15871_)))
                                        (__tmp17797
                                         (let ((__tmp17798
                                                (let ((__tmp17799
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17799))))
                                           (declare (not safe))
                                           (cons __tmp17798 '()))))
                                    (declare (not safe))
                                    (cons __tmp17800 __tmp17797))))
                             (declare (not safe))
                             (cons __tmp17796 _r15872_))
                           _r15872_))))
                (declare (not safe))
                (foldl1 __tmp17795 _bind15833_ _hd15862_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17785
                                                      (let ((__tmp17786
                                                             (let ((__tmp17787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17793 (car _exprs15832_))
                                  (__tmp17788
                                   (let ((__tmp17789
                                          (let ((__tmp17791
                                                 (lambda (_id15874_ _k15875_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15874_))
                                                       (let ((__tmp17792
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15874_))))
                 (declare (not safe))
                 (cons __tmp17792 _k15875_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17790
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15866_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17791
                                             _hd15862_
                                             __tmp17790))))
                                     (declare (not safe))
                                     (cons _len15866_ __tmp17789))))
                              (declare (not safe))
                              (cons __tmp17793 __tmp17788))))
                       (declare (not safe))
                       (cons _tmp15868_ __tmp17787))))
                (declare (not safe))
                (cons __tmp17786 _post15834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15829_
                                                  _rest15861_
                                                  __tmp17801
                                                  __tmp17794
                                                  __tmp17785)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15673_
                                                _hd15862_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1583515849_))
                              (let ((_tl1584515902_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1583515849_)))
                                    (_hd1584415900_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1583515849_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1584415900_))
                                    (let ((_tl1584715907_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1584415900_)))
                                          (_hd1584615905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1584415900_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1584715907_))
                                          (let ((_hd15910_ _hd1584615905_)
                                                (_rest15912_ _tl1584515902_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1584315897_
                                               _rest15912_
                                               _hd15910_)))
                                          (let ((_hd15885_ _hd1584415900_)
                                                (_rest15887_ _tl1584515902_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1584015877_
                                               _rest15887_
                                               _hd15885_)))))
                                    (let ((_hd15885_ _hd1584415900_)
                                          (_rest15887_ _tl1584515902_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1584015877_
                                         _rest15887_
                                         _hd15885_)))))
                              (let ()
                                (declare (not safe))
                                (_else1583815857_))))))))
                 (_compile-bind15677_
                  (lambda (_bind15821_ _post15822_ _body15823_)
                    (let ((__tmp17820
                           (let ((__tmp17821
                                  (let ((__tmp17824 (reverse _bind15821_))
                                        (__tmp17822
                                         (let ((__tmp17823
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15678_
                                                   _post15822_
                                                   _body15823_))))
                                           (declare (not safe))
                                           (cons __tmp17823 '()))))
                                    (declare (not safe))
                                    (cons __tmp17824 __tmp17822))))
                             (declare (not safe))
                             (cons 'let __tmp17821))))
                      (declare (not safe))
                      (__SRC__% __tmp17820 _stx15673_))))
                 (_compile-post15678_
                  (lambda (_post15680_ _body15681_)
                    (let ((__tmp17825
                           (let ((__tmp17826
                                  (let ((__tmp17827
                                         (let ((__tmp17829
                                                (lambda (_hd15683_ _r15684_)
                                                  (let* ((_hd1568515708_
                                                          _hd15683_)
                                                         (_E1568915712_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1568515708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1570215806_
                                                           (lambda (_expr15804_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15804_ _r15684_))))
                  (_K1569715784_
                   (lambda (_expr15781_ _id15782_)
                     (let ((__tmp17830
                            (let ((__tmp17831
                                   (let ((__tmp17832
                                          (let ((__tmp17833
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15781_ '()))))
                                            (declare (not safe))
                                            (cons _id15782_ __tmp17833))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17832))))
                              (declare (not safe))
                              (__SRC__% __tmp17831 _stx15673_))))
                       (declare (not safe))
                       (cons __tmp17830 _r15684_))))
                  (_K1569015751_
                   (lambda (_init15716_ _len15717_ _expr15718_ _tmp15719_)
                     (let ((__tmp17834
                            (let ((__tmp17835
                                   (let ((__tmp17836
                                          (let ((__tmp17850
                                                 (let ((__tmp17851
                                                        (let ((__tmp17852
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15718_ '()))))
                  (declare (not safe))
                  (cons _tmp15719_ __tmp17852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17851 '())))
                                                (__tmp17837
                                                 (let ((__tmp17846
                                                        (let ((__tmp17847
                                                               (let ((__tmp17848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17849
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15717_ '()))))
                                (declare (not safe))
                                (cons _tmp15719_ __tmp17849))))
                         (declare (not safe))
                         (cons '__check-values __tmp17848))))
                  (declare (not safe))
                  (__SRC__% __tmp17847 _stx15673_)))
               (__tmp17838
                (let ((__tmp17839
                       (map (lambda (_hd15721_)
                              (let* ((_hd1572215729_ _hd15721_)
                                     (_E1572415733_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1572215729_)))
                                     (_K1572515739_
                                      (lambda (_k15736_ _id15737_)
                                        (let ((__tmp17840
                                               (let ((__tmp17841
                                                      (let ((__tmp17842
                                                             (let ((__tmp17843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17844
                                   (let ((__tmp17845
                                          (let ()
                                            (declare (not safe))
                                            (cons _k15736_ '()))))
                                     (declare (not safe))
                                     (cons _tmp15719_ __tmp17845))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp17844))))
                       (declare (not safe))
                       (cons __tmp17843 '()))))
                (declare (not safe))
                (cons _id15737_ __tmp17842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp17841))))
                                          (declare (not safe))
                                          (__SRC__% __tmp17840 _stx15673_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1572215729_))
                                    (let ((_hd1572615742_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1572215729_)))
                                          (_tl1572715744_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1572215729_))))
                                      (let* ((_id15747_ _hd1572615742_)
                                             (_k15749_ _tl1572715744_))
                                        (declare (not safe))
                                        (_K1572515739_ _k15749_ _id15747_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1572415733_)))))
                            _init15716_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17846
                                                         __tmp17838))))
                                            (declare (not safe))
                                            (cons __tmp17850 __tmp17837))))
                                     (declare (not safe))
                                     (cons 'let __tmp17836))))
                              (declare (not safe))
                              (__SRC__% __tmp17835 _stx15673_))))
                       (declare (not safe))
                       (cons __tmp17834 _r15684_)))))
              (if (let () (declare (not safe)) (##pair? _hd1568515708_))
                  (let ((_tl1570415811_
                         (let () (declare (not safe)) (##cdr _hd1568515708_)))
                        (_hd1570315809_
                         (let () (declare (not safe)) (##car _hd1568515708_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1570315809_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1570415811_))
                            (let ((_tl1570615816_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1570415811_)))
                                  (_hd1570515814_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1570415811_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1570615816_))
                                  (let ((_expr15819_ _hd1570515814_))
                                    (declare (not safe))
                                    (_K1570215806_ _expr15819_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1570615816_))
                                      (let ((_tl1569615770_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1570615816_)))
                                            (_hd1569515768_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1570615816_))))
                                        (let ((_tmp15759_ _hd1570315809_)
                                              (_expr15766_ _hd1570515814_)
                                              (_len15773_ _hd1569515768_)
                                              (_init15775_ _tl1569615770_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1569015751_
                                             _init15775_
                                             _len15773_
                                             _expr15766_
                                             _tmp15759_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1568915712_)))))
                            (let () (declare (not safe)) (_E1568915712_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1570415811_))
                            (let ((_tl1570115796_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1570415811_)))
                                  (_hd1570015794_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1570415811_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1570115796_))
                                  (let ((_id15792_ _hd1570315809_)
                                        (_expr15799_ _hd1570015794_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1569715784_ _expr15799_ _id15792_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1570115796_))
                                      (let ((_tl1569615770_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1570115796_)))
                                            (_hd1569515768_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1570115796_))))
                                        (let ((_tmp15759_ _hd1570315809_)
                                              (_expr15766_ _hd1570015794_)
                                              (_len15773_ _hd1569515768_)
                                              (_init15775_ _tl1569615770_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1569015751_
                                             _init15775_
                                             _len15773_
                                             _expr15766_
                                             _tmp15759_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1568915712_)))))
                            (let () (declare (not safe)) (_E1568915712_)))))
                  (let () (declare (not safe)) (_E1568915712_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17828 (list _body15681_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17829
                                                   __tmp17828
                                                   _post15680_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17827))))
                             (declare (not safe))
                             (cons 'begin __tmp17826))))
                      (declare (not safe))
                      (__SRC__% __tmp17825 _stx15673_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15673_
             _compile-simple15675_
             _compile-values15676_)))))
    (define __compile-call%
      (lambda (_stx15633_)
        (let* ((_$e15635_ _stx15633_)
               (_$E1563715646_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15635_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15635_))
              (let* ((_$tgt1563815649_
                      (let () (declare (not safe)) (__AST-e _$e15635_)))
                     (_$hd1563915652_
                      (let () (declare (not safe)) (##car _$tgt1563815649_)))
                     (_$tl1564015655_
                      (let () (declare (not safe)) (##cdr _$tgt1563815649_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1564015655_))
                    (let* ((_$tgt1564115659_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1564015655_)))
                           (_$hd1564215662_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1564115659_)))
                           (_$tl1564315665_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1564115659_))))
                      (let* ((_rator15669_ _$hd1564215662_)
                             (_rands15671_ _$tl1564315665_)
                             (__tmp17853
                              (let ((__tmp17855
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15669_)))
                                    (__tmp17854 (map __compile _rands15671_)))
                                (declare (not safe))
                                (cons __tmp17855 __tmp17854))))
                        (declare (not safe))
                        (__SRC__% __tmp17853 _stx15633_)))
                    (let () (declare (not safe)) (_$E1563715646_))))
              (let () (declare (not safe)) (_$E1563715646_))))))
    (define __compile-ref%
      (lambda (_stx15595_)
        (let* ((_$e15597_ _stx15595_)
               (_$E1559915608_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15597_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15597_))
              (let* ((_$tgt1560015611_
                      (let () (declare (not safe)) (__AST-e _$e15597_)))
                     (_$hd1560115614_
                      (let () (declare (not safe)) (##car _$tgt1560015611_)))
                     (_$tl1560215617_
                      (let () (declare (not safe)) (##cdr _$tgt1560015611_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1560215617_))
                    (let* ((_$tgt1560315621_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1560215617_)))
                           (_$hd1560415624_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1560315621_)))
                           (_$tl1560515627_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1560315621_))))
                      (let ((_id15631_ _$hd1560415624_))
                        (if (let ((__tmp17856
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1560515627_))))
                              (declare (not safe))
                              (equal? __tmp17856 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15631_ _stx15595_))
                            (let () (declare (not safe)) (_$E1559915608_)))))
                    (let () (declare (not safe)) (_$E1559915608_))))
              (let () (declare (not safe)) (_$E1559915608_))))))
    (define __compile-setq%
      (lambda (_stx15542_)
        (let* ((_$e15544_ _stx15542_)
               (_$E1554615558_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15544_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15544_))
              (let* ((_$tgt1554715561_
                      (let () (declare (not safe)) (__AST-e _$e15544_)))
                     (_$hd1554815564_
                      (let () (declare (not safe)) (##car _$tgt1554715561_)))
                     (_$tl1554915567_
                      (let () (declare (not safe)) (##cdr _$tgt1554715561_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1554915567_))
                    (let* ((_$tgt1555015571_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1554915567_)))
                           (_$hd1555115574_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1555015571_)))
                           (_$tl1555215577_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1555015571_))))
                      (let ((_id15581_ _$hd1555115574_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1555215577_))
                            (let* ((_$tgt1555315583_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1555215577_)))
                                   (_$hd1555415586_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1555315583_)))
                                   (_$tl1555515589_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1555315583_))))
                              (let ((_expr15593_ _$hd1555415586_))
                                (if (let ((__tmp17862
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1555515589_))))
                                      (declare (not safe))
                                      (equal? __tmp17862 '()))
                                    (let ((__tmp17857
                                           (let ((__tmp17858
                                                  (let ((__tmp17861
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15581_
                                                            _stx15542_)))
                                                        (__tmp17859
                                                         (let ((__tmp17860
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15593_))))
                   (declare (not safe))
                   (cons __tmp17860 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17861
                                                          __tmp17859))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17858))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17857 _stx15542_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1554615558_)))))
                            (let () (declare (not safe)) (_$E1554615558_)))))
                    (let () (declare (not safe)) (_$E1554615558_))))
              (let () (declare (not safe)) (_$E1554615558_))))))
    (define __compile-if%
      (lambda (_stx15474_)
        (let* ((_$e15476_ _stx15474_)
               (_$E1547815493_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15476_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15476_))
              (let* ((_$tgt1547915496_
                      (let () (declare (not safe)) (__AST-e _$e15476_)))
                     (_$hd1548015499_
                      (let () (declare (not safe)) (##car _$tgt1547915496_)))
                     (_$tl1548115502_
                      (let () (declare (not safe)) (##cdr _$tgt1547915496_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1548115502_))
                    (let* ((_$tgt1548215506_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1548115502_)))
                           (_$hd1548315509_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1548215506_)))
                           (_$tl1548415512_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1548215506_))))
                      (let ((_p15516_ _$hd1548315509_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1548415512_))
                            (let* ((_$tgt1548515518_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1548415512_)))
                                   (_$hd1548615521_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1548515518_)))
                                   (_$tl1548715524_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1548515518_))))
                              (let ((_t15528_ _$hd1548615521_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1548715524_))
                                    (let* ((_$tgt1548815530_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1548715524_)))
                                           (_$hd1548915533_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1548815530_)))
                                           (_$tl1549015536_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1548815530_))))
                                      (let ((_f15540_ _$hd1548915533_))
                                        (if (let ((__tmp17870
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1549015536_))))
                                              (declare (not safe))
                                              (equal? __tmp17870 '()))
                                            (let ((__tmp17863
                                                   (let ((__tmp17864
                                                          (let ((__tmp17869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15516_)))
                        (__tmp17865
                         (let ((__tmp17868
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15528_)))
                               (__tmp17866
                                (let ((__tmp17867
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15540_))))
                                  (declare (not safe))
                                  (cons __tmp17867 '()))))
                           (declare (not safe))
                           (cons __tmp17868 __tmp17866))))
                    (declare (not safe))
                    (cons __tmp17869 __tmp17865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17864))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17863 _stx15474_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1547815493_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1547815493_)))))
                            (let () (declare (not safe)) (_$E1547815493_)))))
                    (let () (declare (not safe)) (_$E1547815493_))))
              (let () (declare (not safe)) (_$E1547815493_))))))
    (define __compile-quote%
      (lambda (_stx15436_)
        (let* ((_$e15438_ _stx15436_)
               (_$E1544015449_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15438_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15438_))
              (let* ((_$tgt1544115452_
                      (let () (declare (not safe)) (__AST-e _$e15438_)))
                     (_$hd1544215455_
                      (let () (declare (not safe)) (##car _$tgt1544115452_)))
                     (_$tl1544315458_
                      (let () (declare (not safe)) (##cdr _$tgt1544115452_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1544315458_))
                    (let* ((_$tgt1544415462_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1544315458_)))
                           (_$hd1544515465_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1544415462_)))
                           (_$tl1544615468_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1544415462_))))
                      (let ((_e15472_ _$hd1544515465_))
                        (if (let ((__tmp17874
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1544615468_))))
                              (declare (not safe))
                              (equal? __tmp17874 '()))
                            (let ((__tmp17871
                                   (let ((__tmp17872
                                          (let ((__tmp17873
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15472_))))
                                            (declare (not safe))
                                            (cons __tmp17873 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17872))))
                              (declare (not safe))
                              (__SRC__% __tmp17871 _stx15436_))
                            (let () (declare (not safe)) (_$E1544015449_)))))
                    (let () (declare (not safe)) (_$E1544015449_))))
              (let () (declare (not safe)) (_$E1544015449_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15398_)
        (let* ((_$e15400_ _stx15398_)
               (_$E1540215411_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15400_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15400_))
              (let* ((_$tgt1540315414_
                      (let () (declare (not safe)) (__AST-e _$e15400_)))
                     (_$hd1540415417_
                      (let () (declare (not safe)) (##car _$tgt1540315414_)))
                     (_$tl1540515420_
                      (let () (declare (not safe)) (##cdr _$tgt1540315414_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1540515420_))
                    (let* ((_$tgt1540615424_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1540515420_)))
                           (_$hd1540715427_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1540615424_)))
                           (_$tl1540815430_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1540615424_))))
                      (let ((_e15434_ _$hd1540715427_))
                        (if (let ((__tmp17877
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1540815430_))))
                              (declare (not safe))
                              (equal? __tmp17877 '()))
                            (let ((__tmp17875
                                   (let ((__tmp17876
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15434_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17876))))
                              (declare (not safe))
                              (__SRC__% __tmp17875 _stx15398_))
                            (let () (declare (not safe)) (_$E1540215411_)))))
                    (let () (declare (not safe)) (_$E1540215411_))))
              (let () (declare (not safe)) (_$E1540215411_))))))
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
