(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708165429)
  (begin
    (define __context::t
      (let ((__tmp122361 (list))
            (__tmp122359
             (let ((__tmp122360
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122360 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp122361
         '(t ns super table)
         __tmp122359
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args117595_ (apply make-instance __context::t _$args117595_)))
    (define __context-t
      (let () (declare (not safe)) (make-class-slot-accessor __context::t 't)))
    (define __context-ns
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __context::t 'ns)))
    (define __context-super
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __context::t 'super)))
    (define __context-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __context::t 'table)))
    (define __context-t-set!
      (let () (declare (not safe)) (make-class-slot-mutator __context::t 't)))
    (define __context-ns-set!
      (let () (declare (not safe)) (make-class-slot-mutator __context::t 'ns)))
    (define __context-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __context::t 'super)))
    (define __context-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __context::t 'table)))
    (define &__context-t
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __context::t 't)))
    (define &__context-ns
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __context::t 'ns)))
    (define &__context-super
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __context::t 'super)))
    (define &__context-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __context::t 'table)))
    (define &__context-t-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __context::t 't)))
    (define &__context-ns-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __context::t 'ns)))
    (define &__context-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __context::t 'super)))
    (define &__context-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __context::t 'table)))
    (define __runtime::t
      (let ((__tmp122364 (list))
            (__tmp122362
             (let ((__tmp122363
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122363 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp122364
         '(id)
         __tmp122362
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args117592_ (apply make-instance __runtime::t _$args117592_)))
    (define __runtime-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __runtime::t 'id)))
    (define __runtime-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator __runtime::t 'id)))
    (define &__runtime-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __runtime::t 'id)))
    (define &__runtime-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __runtime::t 'id)))
    (define __syntax::t
      (let ((__tmp122367 (list))
            (__tmp122365
             (let ((__tmp122366
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122366 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp122367
         '(e id)
         __tmp122365
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args117589_ (apply make-instance __syntax::t _$args117589_)))
    (define __syntax-e
      (let () (declare (not safe)) (make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let () (declare (not safe)) (make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __macro::t
      (let ((__tmp122370 (list __syntax::t))
            (__tmp122368
             (let ((__tmp122369
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122369 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp122370
         '()
         __tmp122368
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args117586_ (apply make-instance __macro::t _$args117586_)))
    (define __macro-e
      (let () (declare (not safe)) (make-class-slot-accessor __macro::t 'e)))
    (define __macro-id
      (let () (declare (not safe)) (make-class-slot-accessor __macro::t 'id)))
    (define __macro-e-set!
      (let () (declare (not safe)) (make-class-slot-mutator __macro::t 'e)))
    (define __macro-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator __macro::t 'id)))
    (define &__macro-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __macro::t 'e)))
    (define &__macro-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __macro::t 'id)))
    (define &__macro-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __macro::t 'e)))
    (define &__macro-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __macro::t 'id)))
    (define __special-form::t
      (let ((__tmp122373 (list __macro::t))
            (__tmp122371
             (let ((__tmp122372
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122372 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp122373
         '()
         __tmp122371
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args117583_
        (apply make-instance __special-form::t _$args117583_)))
    (define __special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __special-form::t 'e)))
    (define __special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __special-form::t 'id)))
    (define __special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __special-form::t 'e)))
    (define __special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __special-form::t 'id)))
    (define &__special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __special-form::t 'e)))
    (define &__special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __special-form::t 'id)))
    (define &__special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __special-form::t 'e)))
    (define &__special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __special-form::t 'id)))
    (define __core-form::t
      (let ((__tmp122376 (list __syntax::t))
            (__tmp122374
             (let ((__tmp122375
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122375 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp122376
         '()
         __tmp122374
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args117580_
        (apply make-instance __core-form::t _$args117580_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp122379 (list __core-form::t))
            (__tmp122377
             (let ((__tmp122378
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122378 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp122379
         '()
         __tmp122377
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args117577_
        (apply make-instance __core-expression::t _$args117577_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp122382 (list __core-form::t))
            (__tmp122380
             (let ((__tmp122381
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122381 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp122382
         '()
         __tmp122380
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args117574_
        (apply make-instance __core-special-form::t _$args117574_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __struct-info::t
      (let ((__tmp122385 (list __syntax::t))
            (__tmp122383
             (let ((__tmp122384
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122384 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp122385
         '()
         __tmp122383
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args117571_
        (apply make-instance __struct-info::t _$args117571_)))
    (define __struct-info-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __struct-info::t 'e)))
    (define __struct-info-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __struct-info::t 'id)))
    (define __struct-info-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __struct-info::t 'e)))
    (define __struct-info-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __struct-info::t 'id)))
    (define &__struct-info-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __struct-info::t 'e)))
    (define &__struct-info-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __struct-info::t 'id)))
    (define &__struct-info-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __struct-info::t 'e)))
    (define &__struct-info-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __struct-info::t 'id)))
    (define __feature::t
      (let ((__tmp122388 (list __syntax::t))
            (__tmp122386
             (let ((__tmp122387
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122387 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp122388
         '()
         __tmp122386
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args117568_ (apply make-instance __feature::t _$args117568_)))
    (define __feature-e
      (let () (declare (not safe)) (make-class-slot-accessor __feature::t 'e)))
    (define __feature-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __feature::t 'id)))
    (define __feature-e-set!
      (let () (declare (not safe)) (make-class-slot-mutator __feature::t 'e)))
    (define __feature-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator __feature::t 'id)))
    (define &__feature-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __feature::t 'e)))
    (define &__feature-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __feature::t 'id)))
    (define &__feature-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __feature::t 'e)))
    (define &__feature-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __feature::t 'id)))
    (define __module::t
      (let ((__tmp122391 (list __context::t))
            (__tmp122389
             (let ((__tmp122390
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122390 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp122391
         '(id path import export)
         __tmp122389
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args117565_ (apply make-instance __module::t _$args117565_)))
    (define __module-id
      (let () (declare (not safe)) (make-class-slot-accessor __module::t 'id)))
    (define __module-path
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __module::t 'path)))
    (define __module-import
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __module::t 'import)))
    (define __module-export
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __module::t 'export)))
    (define __module-t
      (let () (declare (not safe)) (make-class-slot-accessor __module::t 't)))
    (define __module-ns
      (let () (declare (not safe)) (make-class-slot-accessor __module::t 'ns)))
    (define __module-super
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __module::t 'super)))
    (define __module-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __module::t 'table)))
    (define __module-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator __module::t 'id)))
    (define __module-path-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __module::t 'path)))
    (define __module-import-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __module::t 'import)))
    (define __module-export-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __module::t 'export)))
    (define __module-t-set!
      (let () (declare (not safe)) (make-class-slot-mutator __module::t 't)))
    (define __module-ns-set!
      (let () (declare (not safe)) (make-class-slot-mutator __module::t 'ns)))
    (define __module-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __module::t 'super)))
    (define __module-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __module::t 'table)))
    (define &__module-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __module::t 'id)))
    (define &__module-path
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __module::t 'path)))
    (define &__module-import
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __module::t 'import)))
    (define &__module-export
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __module::t 'export)))
    (define &__module-t
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __module::t 't)))
    (define &__module-ns
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __module::t 'ns)))
    (define &__module-super
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __module::t 'super)))
    (define &__module-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __module::t 'table)))
    (define &__module-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __module::t 'id)))
    (define &__module-path-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __module::t 'path)))
    (define &__module-import-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __module::t 'import)))
    (define &__module-export-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __module::t 'export)))
    (define &__module-t-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __module::t 't)))
    (define &__module-ns-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __module::t 'ns)))
    (define &__module-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __module::t 'super)))
    (define &__module-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __module::t 'table)))
    (define __*modules* (let () (declare (not safe)) (make-table)))
    (define __*core* (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __*top*
      (let ((__tmp122393
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp122392
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp122393 __tmp122392)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id117540_ _ctx117541_)
        (if _ctx117541_
            (let ((_id117543_
                   (let () (declare (not safe)) (__AST-e _id117540_))))
              (let _lp117545_ ((_ctx117547_ _ctx117541_))
                (let ((_$e117549_
                       (table-ref
                        (##structure-ref _ctx117547_ '4 __context::t '#f)
                        _id117543_
                        '#f)))
                  (if _$e117549_
                      (values _$e117549_)
                      (let ((_$e117552_
                             (##structure-ref
                              _ctx117547_
                              '3
                              __context::t
                              '#f)))
                        (if _$e117552_
                            (let ()
                              (declare (not safe))
                              (_lp117545_ _$e117552_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id117558_)
        (let ((_ctx117560_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id117558_ _ctx117560_))))
    (define __core-resolve
      (lambda _g122395_
        (let ((_g122394_ (let () (declare (not safe)) (##length _g122395_))))
          (cond ((let () (declare (not safe)) (##fx= _g122394_ 1))
                 (apply (lambda (_id117558_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id117558_)))
                        _g122395_))
                ((let () (declare (not safe)) (##fx= _g122394_ 2))
                 (apply (lambda (_id117562_ _ctx117563_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id117562_ _ctx117563_)))
                        _g122395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g122395_))))))
    (define __core-bound-id?__%
      (lambda (_id117523_ _is?117524_)
        (let ((_$e117526_
               (let () (declare (not safe)) (__core-resolve__0 _id117523_))))
          (if _$e117526_ (_is?117524_ _$e117526_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id117532_)
        (let ((_is?117534_ true))
          (declare (not safe))
          (__core-bound-id?__% _id117532_ _is?117534_))))
    (define __core-bound-id?
      (lambda _g122397_
        (let ((_g122396_ (let () (declare (not safe)) (##length _g122397_))))
          (cond ((let () (declare (not safe)) (##fx= _g122396_ 1))
                 (apply (lambda (_id117532_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id117532_)))
                        _g122397_))
                ((let () (declare (not safe)) (##fx= _g122396_ 2))
                 (apply (lambda (_id117536_ _is?117537_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id117536_ _is?117537_)))
                        _g122397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g122397_))))))
    (define __core-bind-runtime!__%
      (lambda (_id117506_ _eid117507_ _ctx117508_)
        (if _eid117507_
            (let ((__tmp122400
                   (##structure-ref _ctx117508_ '4 __context::t '#f))
                  (__tmp122399
                   (let () (declare (not safe)) (__AST-e _id117506_)))
                  (__tmp122398
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid117507_))))
              (declare (not safe))
              (table-set! __tmp122400 __tmp122399 __tmp122398))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id117513_ _eid117514_)
        (let ((_ctx117516_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id117513_ _eid117514_ _ctx117516_))))
    (define __core-bind-runtime!
      (lambda _g122402_
        (let ((_g122401_ (let () (declare (not safe)) (##length _g122402_))))
          (cond ((let () (declare (not safe)) (##fx= _g122401_ 2))
                 (apply (lambda (_id117513_ _eid117514_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id117513_ _eid117514_)))
                        _g122402_))
                ((let () (declare (not safe)) (##fx= _g122401_ 3))
                 (apply (lambda (_id117518_ _eid117519_ _ctx117520_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id117518_
                             _eid117519_
                             _ctx117520_)))
                        _g122402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g122402_))))))
    (define __core-bind-syntax!__%
      (lambda (_id117489_ _e117490_ _make117491_)
        (let ((__tmp122403
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e117490_
                      'gerbil/runtime/eval#__syntax::t))
                   _e117490_
                   (_make117491_ _e117490_ _id117489_))))
          (declare (not safe))
          (table-set! __*core* _id117489_ __tmp122403))))
    (define __core-bind-syntax!__0
      (lambda (_id117496_ _e117497_)
        (let ((_make117499_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id117496_ _e117497_ _make117499_))))
    (define __core-bind-syntax!
      (lambda _g122405_
        (let ((_g122404_ (let () (declare (not safe)) (##length _g122405_))))
          (cond ((let () (declare (not safe)) (##fx= _g122404_ 2))
                 (apply (lambda (_id117496_ _e117497_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id117496_ _e117497_)))
                        _g122405_))
                ((let () (declare (not safe)) (##fx= _g122404_ 3))
                 (apply (lambda (_id117501_ _e117502_ _make117503_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id117501_
                             _e117502_
                             _make117503_)))
                        _g122405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g122405_))))))
    (define __core-bind-macro!
      (lambda (_id117485_ _e117486_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id117485_ _e117486_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id117482_ _e117483_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id117482_ _e117483_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id117466_ _e117467_ _ctx117468_)
        (let ((__tmp122409 (##structure-ref _ctx117468_ '4 __context::t '#f))
              (__tmp122408 (let () (declare (not safe)) (__AST-e _id117466_)))
              (__tmp122406
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e117467_
                      'gerbil/runtime/eval#__syntax::t))
                   _e117467_
                   (let ((__tmp122407
                          (let () (declare (not safe)) (__AST-e _id117466_))))
                     (declare (not safe))
                     (##structure __syntax::t _e117467_ __tmp122407)))))
          (declare (not safe))
          (table-set! __tmp122409 __tmp122408 __tmp122406))))
    (define __core-bind-user-syntax!__0
      (lambda (_id117473_ _e117474_)
        (let ((_ctx117476_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id117473_ _e117474_ _ctx117476_))))
    (define __core-bind-user-syntax!
      (lambda _g122411_
        (let ((_g122410_ (let () (declare (not safe)) (##length _g122411_))))
          (cond ((let () (declare (not safe)) (##fx= _g122410_ 2))
                 (apply (lambda (_id117473_ _e117474_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id117473_
                             _e117474_)))
                        _g122411_))
                ((let () (declare (not safe)) (##fx= _g122410_ 3))
                 (apply (lambda (_id117478_ _e117479_ _ctx117480_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id117478_
                             _e117479_
                             _ctx117480_)))
                        _g122411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g122411_))))))
    (define make-__runtime-id__%
      (lambda (_id117447_ _ctx117448_)
        (let ((_id117450_ (let () (declare (not safe)) (__AST-e _id117447_))))
          (if (let () (declare (not safe)) (eq? _id117450_ '_))
              '#f
              (if (uninterned-symbol? _id117450_)
                  (gensym _id117450_)
                  (if (let () (declare (not safe)) (symbol? _id117450_))
                      (let ((_$e117452_
                             (##structure-ref
                              _ctx117448_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e117452_))
                            (gensym _id117450_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e117452_))
                                (let ((__tmp122412
                                       (##structure-ref
                                        _ctx117448_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp122412 '"#" _id117450_))
                                _id117450_)))
                      (error '"Illegal runtime identifier" _id117450_)))))))
    (define make-__runtime-id__0
      (lambda (_id117458_)
        (let ((_ctx117460_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id117458_ _ctx117460_))))
    (define make-__runtime-id
      (lambda _g122414_
        (let ((_g122413_ (let () (declare (not safe)) (##length _g122414_))))
          (cond ((let () (declare (not safe)) (##fx= _g122413_ 1))
                 (apply (lambda (_id117458_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id117458_)))
                        _g122414_))
                ((let () (declare (not safe)) (##fx= _g122413_ 2))
                 (apply (lambda (_id117462_ _ctx117463_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id117462_ _ctx117463_)))
                        _g122414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g122414_))))))
    (define make-__context-local__%
      (lambda (_super117436_)
        (let ((__tmp122415
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super117436_ __tmp122415))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super117442_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super117442_))))
    (define make-__context-local
      (lambda _g122417_
        (let ((_g122416_ (let () (declare (not safe)) (##length _g122417_))))
          (cond ((let () (declare (not safe)) (##fx= _g122416_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g122417_))
                ((let () (declare (not safe)) (##fx= _g122416_ 1))
                 (apply (lambda (_super117444_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super117444_)))
                        _g122417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g122417_))))))
    (define make-__context-module__%
      (lambda (_id117416_ _ns117417_ _path117418_ _super117419_)
        (let ((__tmp122418
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns117417_
           _super117419_
           __tmp122418
           _id117416_
           _path117418_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id117424_ _ns117425_ _path117426_)
        (let ((_super117428_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id117424_
           _ns117425_
           _path117426_
           _super117428_))))
    (define make-__context-module
      (lambda _g122420_
        (let ((_g122419_ (let () (declare (not safe)) (##length _g122420_))))
          (cond ((let () (declare (not safe)) (##fx= _g122419_ 3))
                 (apply (lambda (_id117424_ _ns117425_ _path117426_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id117424_
                             _ns117425_
                             _path117426_)))
                        _g122420_))
                ((let () (declare (not safe)) (##fx= _g122419_ 4))
                 (apply (lambda (_id117430_
                                 _ns117431_
                                 _path117432_
                                 _super117433_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id117430_
                             _ns117431_
                             _path117432_
                             _super117433_)))
                        _g122420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g122420_))))))
    (define __SRC__%
      (lambda (_e117399_ _src-stx117400_)
        (if (or (let () (declare (not safe)) (pair? _e117399_))
                (let () (declare (not safe)) (symbol? _e117399_)))
            (let ((__tmp122424
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx117400_
                          'gerbil#AST::t))
                       (let ((__tmp122425
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx117400_))))
                         (declare (not safe))
                         (__locat __tmp122425))
                       '#f)))
              (declare (not safe))
              (##make-source _e117399_ __tmp122424))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e117399_ 'gerbil#AST::t))
                (let ((__tmp122423
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e117399_ '1 AST::t '#f)))
                      (__tmp122421
                       (let ((__tmp122422
                              (let ()
                                (declare (not safe))
                                (__AST-source _e117399_))))
                         (declare (not safe))
                         (__locat __tmp122422))))
                  (declare (not safe))
                  (##make-source __tmp122423 __tmp122421))
                (error '"BUG! Cannot sourcify object" _e117399_)))))
    (define __SRC__0
      (lambda (_e117408_)
        (let ((_src-stx117410_ '#f))
          (declare (not safe))
          (__SRC__% _e117408_ _src-stx117410_))))
    (define __SRC
      (lambda _g122427_
        (let ((_g122426_ (let () (declare (not safe)) (##length _g122427_))))
          (cond ((let () (declare (not safe)) (##fx= _g122426_ 1))
                 (apply (lambda (_e117408_)
                          (let () (declare (not safe)) (__SRC__0 _e117408_)))
                        _g122427_))
                ((let () (declare (not safe)) (##fx= _g122426_ 2))
                 (apply (lambda (_e117412_ _src-stx117413_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e117412_ _src-stx117413_)))
                        _g122427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g122427_))))))
    (define __locat
      (lambda (_loc117396_)
        (if (let () (declare (not safe)) (##locat? _loc117396_))
            _loc117396_
            '#f)))
    (define __check-values
      (lambda (_obj117391_ _k117392_)
        (let ((_count117394_
               (if (let () (declare (not safe)) (##values? _obj117391_))
                   (let () (declare (not safe)) (##vector-length _obj117391_))
                   '1)))
          (if (fx= _count117394_ _k117392_)
              '#!void
              (error (if (fx< _count117394_ _k117392_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj117391_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj117391_))
                         _obj117391_)
                     _k117392_)))))
    (define __compile
      (lambda (_stx117361_)
        (let* ((_$e117363_ _stx117361_)
               (_$E117365117371_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117363_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117363_))
              (let* ((_$tgt117366117374_
                      (let () (declare (not safe)) (__AST-e _$e117363_)))
                     (_$hd117367117377_
                      (let () (declare (not safe)) (##car _$tgt117366117374_)))
                     (_$tl117368117380_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117366117374_))))
                (let* ((_form117384_ _$hd117367117377_)
                       (_$e117386_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form117384_))))
                  (if _$e117386_
                      ((lambda (_bind117389_)
                         ((##structure-ref _bind117389_ '1 __syntax::t '#f)
                          _stx117361_))
                       _$e117386_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx117361_
                         _form117384_)))))
              (let () (declare (not safe)) (_$E117365117371_))))))
    (define __compile-error__%
      (lambda (_stx117348_ _detail117349_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx117348_
           _detail117349_))))
    (define __compile-error__0
      (lambda (_stx117354_)
        (let ((_detail117356_ '#f))
          (declare (not safe))
          (__compile-error__% _stx117354_ _detail117356_))))
    (define __compile-error
      (lambda _g122429_
        (let ((_g122428_ (let () (declare (not safe)) (##length _g122429_))))
          (cond ((let () (declare (not safe)) (##fx= _g122428_ 1))
                 (apply (lambda (_stx117354_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx117354_)))
                        _g122429_))
                ((let () (declare (not safe)) (##fx= _g122428_ 2))
                 (apply (lambda (_stx117358_ _detail117359_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx117358_ _detail117359_)))
                        _g122429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g122429_))))))
    (define __compile-ignore%
      (lambda (_stx117345_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx117345_))))
    (define __compile-begin%
      (lambda (_stx117320_)
        (let* ((_$e117322_ _stx117320_)
               (_$E117324117330_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117322_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117322_))
              (let* ((_$tgt117325117333_
                      (let () (declare (not safe)) (__AST-e _$e117322_)))
                     (_$hd117326117336_
                      (let () (declare (not safe)) (##car _$tgt117325117333_)))
                     (_$tl117327117339_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117325117333_))))
                (let* ((_body117343_ _$tl117327117339_)
                       (__tmp122430
                        (let ((__tmp122431 (map __compile _body117343_)))
                          (declare (not safe))
                          (cons 'begin __tmp122431))))
                  (declare (not safe))
                  (__SRC__% __tmp122430 _stx117320_)))
              (let () (declare (not safe)) (_$E117324117330_))))))
    (define __compile-begin-foreign%
      (lambda (_stx117295_)
        (let* ((_$e117297_ _stx117295_)
               (_$E117299117305_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117297_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117297_))
              (let* ((_$tgt117300117308_
                      (let () (declare (not safe)) (__AST-e _$e117297_)))
                     (_$hd117301117311_
                      (let () (declare (not safe)) (##car _$tgt117300117308_)))
                     (_$tl117302117314_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117300117308_))))
                (let* ((_body117318_ _$tl117302117314_)
                       (__tmp122432
                        (let ((__tmp122433
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body117318_))))
                          (declare (not safe))
                          (cons 'begin __tmp122433))))
                  (declare (not safe))
                  (__SRC__% __tmp122432 _stx117295_)))
              (let () (declare (not safe)) (_$E117299117305_))))))
    (define __compile-import%
      (lambda (_stx117270_)
        (let* ((_$e117272_ _stx117270_)
               (_$E117274117280_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117272_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117272_))
              (let* ((_$tgt117275117283_
                      (let () (declare (not safe)) (__AST-e _$e117272_)))
                     (_$hd117276117286_
                      (let () (declare (not safe)) (##car _$tgt117275117283_)))
                     (_$tl117277117289_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117275117283_))))
                (let* ((_body117293_ _$tl117277117289_)
                       (__tmp122434
                        (let ((__tmp122435
                               (let ((__tmp122436
                                      (let ((__tmp122437
                                             (let ()
                                               (declare (not safe))
                                               (cons _body117293_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp122437))))
                                 (declare (not safe))
                                 (cons __tmp122436 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp122435))))
                  (declare (not safe))
                  (__SRC__% __tmp122434 _stx117270_)))
              (let () (declare (not safe)) (_$E117274117280_))))))
    (define __compile-begin-annotation%
      (lambda (_stx117217_)
        (let* ((_$e117219_ _stx117217_)
               (_$E117221117233_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117219_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117219_))
              (let* ((_$tgt117222117236_
                      (let () (declare (not safe)) (__AST-e _$e117219_)))
                     (_$hd117223117239_
                      (let () (declare (not safe)) (##car _$tgt117222117236_)))
                     (_$tl117224117242_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117222117236_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl117224117242_))
                    (let* ((_$tgt117225117246_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl117224117242_)))
                           (_$hd117226117249_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt117225117246_)))
                           (_$tl117227117252_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt117225117246_))))
                      (let ((_ann117256_ _$hd117226117249_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl117227117252_))
                            (let* ((_$tgt117228117258_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl117227117252_)))
                                   (_$hd117229117261_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt117228117258_)))
                                   (_$tl117230117264_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt117228117258_))))
                              (let ((_expr117268_ _$hd117229117261_))
                                (if (let ((__tmp122438
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl117230117264_))))
                                      (declare (not safe))
                                      (equal? __tmp122438 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr117268_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E117221117233_)))))
                            (let () (declare (not safe)) (_$E117221117233_)))))
                    (let () (declare (not safe)) (_$E117221117233_))))
              (let () (declare (not safe)) (_$E117221117233_))))))
    (define __compile-define-values%
      (lambda (_stx117108_)
        (let* ((_$e117110_ _stx117108_)
               (_$E117112117124_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117110_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117110_))
              (let* ((_$tgt117113117127_
                      (let () (declare (not safe)) (__AST-e _$e117110_)))
                     (_$hd117114117130_
                      (let () (declare (not safe)) (##car _$tgt117113117127_)))
                     (_$tl117115117133_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117113117127_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl117115117133_))
                    (let* ((_$tgt117116117137_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl117115117133_)))
                           (_$hd117117117140_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt117116117137_)))
                           (_$tl117118117143_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt117116117137_))))
                      (let ((_hd117147_ _$hd117117117140_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl117118117143_))
                            (let* ((_$tgt117119117149_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl117118117143_)))
                                   (_$hd117120117152_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt117119117149_)))
                                   (_$tl117121117155_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt117119117149_))))
                              (let ((_expr117159_ _$hd117120117152_))
                                (if (let ((__tmp122471
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl117121117155_))))
                                      (declare (not safe))
                                      (equal? __tmp122471 '()))
                                    (let* ((_$e117161_ _hd117147_)
                                           (_$E117163117204_
                                            (lambda ()
                                              (let ((_$E117164117189_
                                                     (lambda ()
                                                       (let* ((_$E117165117176_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e117161_))))
                      (_ids117179_ _hd117147_)
                      (_len117181_ (length _ids117179_))
                      (_tmp117183_
                       (let ((__tmp122439 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp122439))))
                 (let ((__tmp122440
                        (let ((__tmp122441
                               (let ((__tmp122458
                                      (let ((__tmp122459
                                             (let ((__tmp122460
                                                    (let ((__tmp122461
                                                           (let ((__tmp122462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr117159_))))
                     (declare (not safe))
                     (cons __tmp122462 '()))))
              (declare (not safe))
              (cons _tmp117183_ __tmp122461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp122460))))
                                        (declare (not safe))
                                        (__SRC__% __tmp122459 _stx117108_)))
                                     (__tmp122442
                                      (let ((__tmp122454
                                             (let ((__tmp122455
                                                    (let ((__tmp122456
                                                           (let ((__tmp122457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len117181_ '()))))
                     (declare (not safe))
                     (cons _tmp117183_ __tmp122457))))
              (declare (not safe))
              (cons '__check-values __tmp122456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp122455
                                                _stx117108_)))
                                            (__tmp122443
                                             (let ((__tmp122444
                                                    (let ((__tmp122446
                                                           (lambda (_id117186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k117187_)
                     (if (let () (declare (not safe)) (__AST-e _id117186_))
                         (let ((__tmp122447
                                (let ((__tmp122448
                                       (let ((__tmp122453
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id117186_)))
                                             (__tmp122449
                                              (let ((__tmp122450
                                                     (let ((__tmp122451
                                                            (let ((__tmp122452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k117187_ '()))))
                      (declare (not safe))
                      (cons _tmp117183_ __tmp122452))))
               (declare (not safe))
               (cons '##vector-ref __tmp122451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp122450 '()))))
                                         (declare (not safe))
                                         (cons __tmp122453 __tmp122449))))
                                  (declare (not safe))
                                  (cons 'define __tmp122448))))
                           (declare (not safe))
                           (__SRC__% __tmp122447 _stx117108_))
                         '#f)))
                  (__tmp122445
                   (let () (declare (not safe)) (iota _len117181_))))
              (declare (not safe))
              (filter-map2 __tmp122446 _ids117179_ __tmp122445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp122444))))
                                        (declare (not safe))
                                        (cons __tmp122454 __tmp122443))))
                                 (declare (not safe))
                                 (cons __tmp122458 __tmp122442))))
                          (declare (not safe))
                          (cons 'begin __tmp122441))))
                   (declare (not safe))
                   (__SRC__% __tmp122440 _stx117108_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e117161_))
                                                    (let* ((_$tgt117166117192_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e117161_)))
                                                           (_$hd117167117195_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt117166117192_)))
                                                           (_$tl117168117198_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt117166117192_))))
                                                      (let ((_id117202_
                                                             _$hd117167117195_))
                                                        (if (let ((__tmp122468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl117168117198_))))
                      (declare (not safe))
                      (equal? __tmp122468 '()))
                    (let ((__tmp122463
                           (let ((__tmp122464
                                  (let ((__tmp122467
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id117202_)))
                                        (__tmp122465
                                         (let ((__tmp122466
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr117159_))))
                                           (declare (not safe))
                                           (cons __tmp122466 '()))))
                                    (declare (not safe))
                                    (cons __tmp122467 __tmp122465))))
                             (declare (not safe))
                             (cons 'define __tmp122464))))
                      (declare (not safe))
                      (__SRC__% __tmp122463 _stx117108_))
                    (let () (declare (not safe)) (_$E117164117189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E117164117189_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e117161_))
                                          (let* ((_$tgt117169117207_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e117161_)))
                                                 (_$hd117170117210_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt117169117207_)))
                                                 (_$tl117171117213_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt117169117207_))))
                                            (if (let ((__tmp122470
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd117170117210_))))
                                                  (declare (not safe))
                                                  (equal? __tmp122470 '#f))
                                                (if (let ((__tmp122469
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl117171117213_))))
                                                      (declare (not safe))
                                                      (equal? __tmp122469 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr117159_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E117163117204_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E117163117204_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E117163117204_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E117112117124_)))))
                            (let () (declare (not safe)) (_$E117112117124_)))))
                    (let () (declare (not safe)) (_$E117112117124_))))
              (let () (declare (not safe)) (_$E117112117124_))))))
    (define __compile-head-id
      (lambda (_e117106_)
        (let ((__tmp122472
               (if (let () (declare (not safe)) (__AST-e _e117106_))
                   _e117106_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp122472))))
    (define __compile-lambda-head
      (lambda (_hd117063_)
        (let _recur117065_ ((_rest117067_ _hd117063_))
          (let* ((_$e117069_ _rest117067_)
                 (_$E117071117089_
                  (lambda ()
                    (let ((_$E117072117086_
                           (lambda ()
                             (let* ((_$E117073117081_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e117069_))))
                                    (_tail117084_ _$e117069_))
                               (declare (not safe))
                               (__compile-head-id _tail117084_)))))
                      (if (let ((__tmp122473
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e117069_))))
                            (declare (not safe))
                            (equal? __tmp122473 '()))
                          '()
                          (let () (declare (not safe)) (_$E117072117086_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e117069_))
                (let* ((_$tgt117074117092_
                        (let () (declare (not safe)) (__AST-e _$e117069_)))
                       (_$hd117075117095_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt117074117092_)))
                       (_$tl117076117098_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt117074117092_))))
                  (let* ((_hd117102_ _$hd117075117095_)
                         (_rest117104_ _$tl117076117098_))
                    (let ((__tmp122475
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd117102_)))
                          (__tmp122474
                           (let ()
                             (declare (not safe))
                             (_recur117065_ _rest117104_))))
                      (declare (not safe))
                      (cons __tmp122475 __tmp122474))))
                (let () (declare (not safe)) (_$E117071117089_)))))))
    (define __compile-lambda%
      (lambda (_stx117010_)
        (let* ((_$e117012_ _stx117010_)
               (_$E117014117026_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117012_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117012_))
              (let* ((_$tgt117015117029_
                      (let () (declare (not safe)) (__AST-e _$e117012_)))
                     (_$hd117016117032_
                      (let () (declare (not safe)) (##car _$tgt117015117029_)))
                     (_$tl117017117035_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117015117029_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl117017117035_))
                    (let* ((_$tgt117018117039_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl117017117035_)))
                           (_$hd117019117042_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt117018117039_)))
                           (_$tl117020117045_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt117018117039_))))
                      (let ((_hd117049_ _$hd117019117042_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl117020117045_))
                            (let* ((_$tgt117021117051_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl117020117045_)))
                                   (_$hd117022117054_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt117021117051_)))
                                   (_$tl117023117057_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt117021117051_))))
                              (let ((_body117061_ _$hd117022117054_))
                                (if (let ((__tmp122481
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl117023117057_))))
                                      (declare (not safe))
                                      (equal? __tmp122481 '()))
                                    (let ((__tmp122476
                                           (let ((__tmp122477
                                                  (let ((__tmp122480
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd117049_)))
                                                        (__tmp122478
                                                         (let ((__tmp122479
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body117061_))))
                   (declare (not safe))
                   (cons __tmp122479 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122480
                                                          __tmp122478))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp122477))))
                                      (declare (not safe))
                                      (__SRC__% __tmp122476 _stx117010_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E117014117026_)))))
                            (let () (declare (not safe)) (_$E117014117026_)))))
                    (let () (declare (not safe)) (_$E117014117026_))))
              (let () (declare (not safe)) (_$E117014117026_))))))
    (define __compile-case-lambda%
      (lambda (_stx116802_)
        (letrec ((_variadic?116804_
                  (lambda (_hd116975_)
                    (let* ((_$e116977_ _hd116975_)
                           (_$E116979116995_
                            (lambda ()
                              (let ((_$E116980116992_
                                     (lambda ()
                                       (let ((_$E116981116989_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e116977_)))))
                                         '#t))))
                                (if (let ((__tmp122482
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e116977_))))
                                      (declare (not safe))
                                      (equal? __tmp122482 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E116980116992_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e116977_))
                          (let* ((_$tgt116982116998_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e116977_)))
                                 (_$hd116983117001_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt116982116998_)))
                                 (_$tl116984117004_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt116982116998_))))
                            (let ((_rest117008_ _$tl116984117004_))
                              (declare (not safe))
                              (_variadic?116804_ _rest117008_)))
                          (let () (declare (not safe)) (_$E116979116995_))))))
                 (_arity116805_
                  (lambda (_hd116940_)
                    (let _lp116942_ ((_rest116944_ _hd116940_) (_k116945_ '0))
                      (let* ((_$e116947_ _rest116944_)
                             (_$E116949116960_
                              (lambda ()
                                (let ((_$E116950116957_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e116947_)))))
                                  _k116945_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e116947_))
                            (let* ((_$tgt116951116963_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e116947_)))
                                   (_$hd116952116966_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt116951116963_)))
                                   (_$tl116953116969_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt116951116963_))))
                              (let* ((_rest116973_ _$tl116953116969_)
                                     (__tmp122483
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k116945_ '1))))
                                (declare (not safe))
                                (_lp116942_ _rest116973_ __tmp122483)))
                            (let ()
                              (declare (not safe))
                              (_$E116949116960_)))))))
                 (_generate116806_
                  (lambda (_rest116867_ _args116868_ _len116869_)
                    (let* ((_$e116871_ _rest116867_)
                           (_$E116873116884_
                            (lambda ()
                              (let* ((_$E116874116881_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e116871_))))
                                     (__tmp122484
                                      (let ((__tmp122485
                                             (let ((__tmp122486
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args116868_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp122486))))
                                        (declare (not safe))
                                        (cons 'error __tmp122485))))
                                (declare (not safe))
                                (__SRC__% __tmp122484 _stx116802_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e116871_))
                          (let* ((_$tgt116875116887_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e116871_)))
                                 (_$hd116876116890_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt116875116887_)))
                                 (_$tl116877116893_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt116875116887_))))
                            (let* ((_clause116897_ _$hd116876116890_)
                                   (_rest116899_ _$tl116877116893_)
                                   (_$e116901_ _clause116897_)
                                   (_$E116903116912_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e116901_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e116901_))
                                  (let* ((_$tgt116904116915_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e116901_)))
                                         (_$hd116905116918_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt116904116915_)))
                                         (_$tl116906116921_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt116904116915_))))
                                    (let ((_hd116925_ _$hd116905116918_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl116906116921_))
                                          (let* ((_$tgt116907116927_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl116906116921_)))
                                                 (_$hd116908116930_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt116907116927_)))
                                                 (_$tl116909116933_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt116907116927_))))
                                            (if (let ((__tmp122501
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl116909116933_))))
                                                  (declare (not safe))
                                                  (equal? __tmp122501 '()))
                                                (let ((_clen116937_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity116805_
                                                          _hd116925_)))
                                                      (_cmp116938_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?116804_
                                                              _hd116925_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp122487
                                                         (let ((__tmp122488
                                                                (let ((__tmp122498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp122499
                                      (let ((__tmp122500
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen116937_ '()))))
                                        (declare (not safe))
                                        (cons _len116869_ __tmp122500))))
                                 (declare (not safe))
                                 (cons _cmp116938_ __tmp122499)))
                              (__tmp122489
                               (let ((__tmp122492
                                      (let ((__tmp122493
                                             (let ((__tmp122494
                                                    (let ((__tmp122496
                                                           (let ((__tmp122497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause116897_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp122497)))
                  (__tmp122495
                   (let () (declare (not safe)) (cons _args116868_ '()))))
              (declare (not safe))
              (cons __tmp122496 __tmp122495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp122494))))
                                        (declare (not safe))
                                        (__SRC__% __tmp122493 _stx116802_)))
                                     (__tmp122490
                                      (let ((__tmp122491
                                             (let ()
                                               (declare (not safe))
                                               (_generate116806_
                                                _rest116899_
                                                _args116868_
                                                _len116869_))))
                                        (declare (not safe))
                                        (cons __tmp122491 '()))))
                                 (declare (not safe))
                                 (cons __tmp122492 __tmp122490))))
                          (declare (not safe))
                          (cons __tmp122498 __tmp122489))))
                   (declare (not safe))
                   (cons 'if __tmp122488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp122487
                                                     _stx116802_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E116903116912_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E116903116912_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E116903116912_)))))
                          (let () (declare (not safe)) (_$E116873116884_)))))))
          (let* ((_$e116808_ _stx116802_)
                 (_$E116810116842_
                  (lambda ()
                    (let ((_$E116811116824_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e116808_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e116808_))
                          (let* ((_$tgt116812116827_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e116808_)))
                                 (_$hd116813116830_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt116812116827_)))
                                 (_$tl116814116833_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt116812116827_))))
                            (let ((_clauses116837_ _$tl116814116833_))
                              (let ((_args116839_
                                     (let ((__tmp122502 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp122502 _stx116802_)))
                                    (_len116840_
                                     (let ((__tmp122503 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp122503 _stx116802_))))
                                (let ((__tmp122504
                                       (let ((__tmp122505
                                              (let ((__tmp122506
                                                     (let ((__tmp122507
                                                            (let ((__tmp122508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp122509
                                  (let ((__tmp122512
                                         (let ((__tmp122513
                                                (let ((__tmp122514
                                                       (let ((__tmp122515
                                                              (let ((__tmp122516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp122517
                                    (let ()
                                      (declare (not safe))
                                      (cons _args116839_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp122517))))
                        (declare (not safe))
                        (__SRC__% __tmp122516 _stx116802_))))
                 (declare (not safe))
                 (cons __tmp122515 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len116840_
                                                        __tmp122514))))
                                           (declare (not safe))
                                           (cons __tmp122513 '())))
                                        (__tmp122510
                                         (let ((__tmp122511
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate116806_
                                                   _clauses116837_
                                                   _args116839_
                                                   _len116840_))))
                                           (declare (not safe))
                                           (cons __tmp122511 '()))))
                                    (declare (not safe))
                                    (cons __tmp122512 __tmp122510))))
                             (declare (not safe))
                             (cons 'let __tmp122509))))
                      (declare (not safe))
                      (__SRC__% __tmp122508 _stx116802_))))
               (declare (not safe))
               (cons __tmp122507 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args116839_
                                                      __tmp122506))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp122505))))
                                  (declare (not safe))
                                  (__SRC__% __tmp122504 _stx116802_)))))
                          (let () (declare (not safe)) (_$E116811116824_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e116808_))
                (let* ((_$tgt116815116845_
                        (let () (declare (not safe)) (__AST-e _$e116808_)))
                       (_$hd116816116848_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt116815116845_)))
                       (_$tl116817116851_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt116815116845_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl116817116851_))
                      (let* ((_$tgt116818116855_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl116817116851_)))
                             (_$hd116819116858_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt116818116855_)))
                             (_$tl116820116861_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt116818116855_))))
                        (let ((_clause116865_ _$hd116819116858_))
                          (if (let ((__tmp122519
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl116820116861_))))
                                (declare (not safe))
                                (equal? __tmp122519 '()))
                              (let ((__tmp122518
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause116865_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp122518))
                              (let ()
                                (declare (not safe))
                                (_$E116810116842_)))))
                      (let () (declare (not safe)) (_$E116810116842_))))
                (let () (declare (not safe)) (_$E116810116842_)))))))
    (define __compile-let-form
      (lambda (_stx116571_ _compile-simple116572_ _compile-values116573_)
        (letrec ((_simple-bind?116575_
                  (lambda (_hd116760_)
                    (let* ((_hd116761116771_ _hd116760_)
                           (_else116764116779_ (lambda () '#f)))
                      (let ((_K116767116792_ (lambda (_id116790_) '#t))
                            (_K116766116784_ (lambda () '#t)))
                        (let ((_try-match116763116787_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd116761116771_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K116766116784_))
                                     (let ()
                                       (declare (not safe))
                                       (_else116764116779_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd116761116771_))
                              (let ((_tl116769116797_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd116761116771_)))
                                    (_hd116768116795_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd116761116771_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl116769116797_))
                                    (let ((_id116800_ _hd116768116795_))
                                      (declare (not safe))
                                      (_K116767116792_ _id116800_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match116763116787_))))
                              (let ()
                                (declare (not safe))
                                (_try-match116763116787_))))))))
                 (_car-e116576_
                  (lambda (_hd116758_)
                    (if (let () (declare (not safe)) (pair? _hd116758_))
                        (car _hd116758_)
                        _hd116758_))))
          (let* ((_$e116578_ _stx116571_)
                 (_$E116580116723_
                  (lambda ()
                    (let ((_$E116581116603_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e116578_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e116578_))
                          (let* ((_$tgt116582116606_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e116578_)))
                                 (_$hd116583116609_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt116582116606_)))
                                 (_$tl116584116612_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt116582116606_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl116584116612_))
                                (let* ((_$tgt116585116616_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl116584116612_)))
                                       (_$hd116586116619_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt116585116616_)))
                                       (_$tl116587116622_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt116585116616_))))
                                  (let ((_hd116626_ _$hd116586116619_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl116587116622_))
                                        (let* ((_$tgt116588116628_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl116587116622_)))
                                               (_$hd116589116631_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt116588116628_)))
                                               (_$tl116590116634_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt116588116628_))))
                                          (let ((_body116638_
                                                 _$hd116589116631_))
                                            (if (let ((__tmp122522
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl116590116634_))))
                                                  (declare (not safe))
                                                  (equal? __tmp122522 '()))
                                                (let* ((_hd-ids116678_
                                                        (map (lambda (_bind116640_)
                                                               (let* ((_$e116642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind116640_)
                              (_$E116644116653_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e116642_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e116642_))
                             (let* ((_$tgt116645116656_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e116642_)))
                                    (_$hd116646116659_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt116645116656_)))
                                    (_$tl116647116662_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt116645116656_))))
                               (let ((_ids116666_ _$hd116646116659_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl116647116662_))
                                     (let* ((_$tgt116648116668_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl116647116662_)))
                                            (_$hd116649116671_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt116648116668_)))
                                            (_$tl116650116674_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt116648116668_))))
                                       (if (let ((__tmp122520
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl116650116674_))))
                                             (declare (not safe))
                                             (equal? __tmp122520 '()))
                                           _ids116666_
                                           (let ()
                                             (declare (not safe))
                                             (_$E116644116653_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E116644116653_)))))
                             (let ()
                               (declare (not safe))
                               (_$E116644116653_)))))
                     _hd116626_))
               (_exprs116718_
                (map (lambda (_bind116680_)
                       (let* ((_$e116682_ _bind116680_)
                              (_$E116684116693_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e116682_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e116682_))
                             (let* ((_$tgt116685116696_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e116682_)))
                                    (_$hd116686116699_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt116685116696_)))
                                    (_$tl116687116702_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt116685116696_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl116687116702_))
                                   (let* ((_$tgt116688116706_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl116687116702_)))
                                          (_$hd116689116709_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt116688116706_)))
                                          (_$tl116690116712_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt116688116706_))))
                                     (let ((_expr116716_ _$hd116689116709_))
                                       (if (let ((__tmp122521
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl116690116712_))))
                                             (declare (not safe))
                                             (equal? __tmp122521 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr116716_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E116684116693_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E116684116693_))))
                             (let ()
                               (declare (not safe))
                               (_$E116684116693_)))))
                     _hd116626_))
               (_body116720_
                (let () (declare (not safe)) (__compile _body116638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?116575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids116678_))
              (_compile-simple116572_
               (map _car-e116576_ _hd-ids116678_)
               _exprs116718_
               _body116720_)
              (_compile-values116573_
               _hd-ids116678_
               _exprs116718_
               _body116720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E116581116603_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E116581116603_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E116581116603_))))
                          (let () (declare (not safe)) (_$E116581116603_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e116578_))
                (let* ((_$tgt116591116726_
                        (let () (declare (not safe)) (__AST-e _$e116578_)))
                       (_$hd116592116729_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt116591116726_)))
                       (_$tl116593116732_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt116591116726_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl116593116732_))
                      (let* ((_$tgt116594116736_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl116593116732_)))
                             (_$hd116595116739_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt116594116736_)))
                             (_$tl116596116742_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt116594116736_))))
                        (if (let ((__tmp122524
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd116595116739_))))
                              (declare (not safe))
                              (equal? __tmp122524 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl116596116742_))
                                (let* ((_$tgt116597116746_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl116596116742_)))
                                       (_$hd116598116749_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt116597116746_)))
                                       (_$tl116599116752_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt116597116746_))))
                                  (let ((_body116756_ _$hd116598116749_))
                                    (if (let ((__tmp122523
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl116599116752_))))
                                          (declare (not safe))
                                          (equal? __tmp122523 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body116756_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E116580116723_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E116580116723_)))
                            (let () (declare (not safe)) (_$E116580116723_))))
                      (let () (declare (not safe)) (_$E116580116723_))))
                (let () (declare (not safe)) (_$E116580116723_)))))))
    (define __compile-let-values%
      (lambda (_stx116386_)
        (letrec ((_compile-simple116388_
                  (lambda (_hd-ids116567_ _exprs116568_ _body116569_)
                    (let ((__tmp122525
                           (let ((__tmp122526
                                  (let ((__tmp122528
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids116567_)
                                              _exprs116568_))
                                        (__tmp122527
                                         (let ()
                                           (declare (not safe))
                                           (cons _body116569_ '()))))
                                    (declare (not safe))
                                    (cons __tmp122528 __tmp122527))))
                             (declare (not safe))
                             (cons 'let __tmp122526))))
                      (declare (not safe))
                      (__SRC__% __tmp122525 _stx116386_))))
                 (_compile-values116389_
                  (lambda (_hd-ids116485_ _exprs116486_ _body116487_)
                    (let _lp116489_ ((_rest116491_ _hd-ids116485_)
                                     (_exprs116492_ _exprs116486_)
                                     (_bind116493_ '())
                                     (_post116494_ '()))
                      (let* ((_rest116495116509_ _rest116491_)
                             (_else116498116517_
                              (lambda ()
                                (let ((__tmp122529
                                       (let ((__tmp122530
                                              (let ((__tmp122533
                                                     (reverse _bind116493_))
                                                    (__tmp122531
                                                     (let ((__tmp122532
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post116390_
                                                               _post116494_
                                                               _body116487_))))
                                                       (declare (not safe))
                                                       (cons __tmp122532
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp122533
                                                      __tmp122531))))
                                         (declare (not safe))
                                         (cons 'let __tmp122530))))
                                  (declare (not safe))
                                  (__SRC__% __tmp122529 _stx116386_)))))
                        (let ((_K116503116550_
                               (lambda (_rest116547_ _id116548_)
                                 (let ((__tmp122539 (cdr _exprs116492_))
                                       (__tmp122534
                                        (let ((__tmp122535
                                               (let ((__tmp122538
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id116548_)))
                                                     (__tmp122536
                                                      (let ((__tmp122537
                                                             (car _exprs116492_)))
                                                        (declare (not safe))
                                                        (cons __tmp122537
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp122538
                                                       __tmp122536))))
                                          (declare (not safe))
                                          (cons __tmp122535 _bind116493_))))
                                   (declare (not safe))
                                   (_lp116489_
                                    _rest116547_
                                    __tmp122539
                                    __tmp122534
                                    _post116494_))))
                              (_K116500116532_
                               (lambda (_rest116521_ _hd116522_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd116522_))
                                     (let ((__tmp122560 (cdr _exprs116492_))
                                           (__tmp122553
                                            (let ((__tmp122554
                                                   (let ((__tmp122559
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd116522_)))
                                                         (__tmp122555
                                                          (let ((__tmp122556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp122557
                                (let ((__tmp122558 (car _exprs116492_)))
                                  (declare (not safe))
                                  (cons __tmp122558 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp122557))))
                    (declare (not safe))
                    (cons __tmp122556 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp122559
                                                           __tmp122555))))
                                              (declare (not safe))
                                              (cons __tmp122554
                                                    _bind116493_))))
                                       (declare (not safe))
                                       (_lp116489_
                                        _rest116521_
                                        __tmp122560
                                        __tmp122553
                                        _post116494_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd116522_))
                                         (let* ((_len116524_
                                                 (length _hd116522_))
                                                (_tmp116526_
                                                 (let ((__tmp122540 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp122540))))
                                           (let ((__tmp122552
                                                  (cdr _exprs116492_))
                                                 (__tmp122548
                                                  (let ((__tmp122549
                                                         (let ((__tmp122550
                                                                (let ((__tmp122551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs116492_)))
                          (declare (not safe))
                          (cons __tmp122551 '()))))
                   (declare (not safe))
                   (cons _tmp116526_ __tmp122550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122549
                                                          _bind116493_)))
                                                 (__tmp122541
                                                  (let ((__tmp122542
                                                         (let ((__tmp122543
                                                                (let ((__tmp122544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp122546
                                      (lambda (_id116529_ _k116530_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id116529_))
                                            (let ((__tmp122547
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id116529_))))
                                              (declare (not safe))
                                              (cons __tmp122547 _k116530_))
                                            '#f)))
                                     (__tmp122545
                                      (let ()
                                        (declare (not safe))
                                        (iota _len116524_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp122546
                                  _hd116522_
                                  __tmp122545))))
                          (declare (not safe))
                          (cons _len116524_ __tmp122544))))
                   (declare (not safe))
                   (cons _tmp116526_ __tmp122543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122542
                                                          _post116494_))))
                                             (declare (not safe))
                                             (_lp116489_
                                              _rest116521_
                                              __tmp122552
                                              __tmp122548
                                              __tmp122541)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx116386_
                                            _hd116522_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116495116509_))
                              (let ((_tl116505116555_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116495116509_)))
                                    (_hd116504116553_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116495116509_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd116504116553_))
                                    (let ((_tl116507116560_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd116504116553_)))
                                          (_hd116506116558_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd116504116553_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl116507116560_))
                                          (let ((_id116563_ _hd116506116558_)
                                                (_rest116565_
                                                 _tl116505116555_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116503116550_
                                               _rest116565_
                                               _id116563_)))
                                          (let ((_hd116540_ _hd116504116553_)
                                                (_rest116542_
                                                 _tl116505116555_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116500116532_
                                               _rest116542_
                                               _hd116540_)))))
                                    (let ((_hd116540_ _hd116504116553_)
                                          (_rest116542_ _tl116505116555_))
                                      (let ()
                                        (declare (not safe))
                                        (_K116500116532_
                                         _rest116542_
                                         _hd116540_)))))
                              (let ()
                                (declare (not safe))
                                (_else116498116517_))))))))
                 (_compile-post116390_
                  (lambda (_post116392_ _body116393_)
                    (let _lp116395_ ((_rest116397_ _post116392_)
                                     (_check116398_ '())
                                     (_bind116399_ '()))
                      (let* ((_rest116400116412_ _rest116397_)
                             (_else116402116420_
                              (lambda ()
                                (let ((__tmp122561
                                       (let ((__tmp122562
                                              (let ((__tmp122563
                                                     (let ((__tmp122564
                                                            (let ((__tmp122565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp122566
                                  (let ((__tmp122567
                                         (let ()
                                           (declare (not safe))
                                           (cons _body116393_ '()))))
                                    (declare (not safe))
                                    (cons _bind116399_ __tmp122567))))
                             (declare (not safe))
                             (cons 'let __tmp122566))))
                      (declare (not safe))
                      (__SRC__% __tmp122565 _stx116386_))))
               (declare (not safe))
               (cons __tmp122564 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp122563
                                                        _check116398_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp122562))))
                                  (declare (not safe))
                                  (__SRC__% __tmp122561 _stx116386_))))
                             (_K116404116459_
                              (lambda (_rest116423_
                                       _init116424_
                                       _len116425_
                                       _tmp116426_)
                                (let ((__tmp122575
                                       (let ((__tmp122576
                                              (let ((__tmp122577
                                                     (let ((__tmp122578
                                                            (let ((__tmp122579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len116425_ '()))))
                      (declare (not safe))
                      (cons _tmp116426_ __tmp122579))))
               (declare (not safe))
               (cons '__check-values __tmp122578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp122577
                                                 _stx116386_))))
                                         (declare (not safe))
                                         (cons __tmp122576 _check116398_)))
                                      (__tmp122568
                                       (let ((__tmp122569
                                              (lambda (_hd116428_ _r116429_)
                                                (let* ((_hd116430116437_
                                                        _hd116428_)
                                                       (_E116432116441_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd116430116437_)))
               (_K116433116447_
                (lambda (_k116444_ _id116445_)
                  (let ((__tmp122570
                         (let ((__tmp122571
                                (let ((__tmp122572
                                       (let ((__tmp122573
                                              (let ((__tmp122574
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k116444_ '()))))
                                                (declare (not safe))
                                                (cons _tmp116426_
                                                      __tmp122574))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp122573))))
                                  (declare (not safe))
                                  (cons __tmp122572 '()))))
                           (declare (not safe))
                           (cons _id116445_ __tmp122571))))
                    (declare (not safe))
                    (cons __tmp122570 _r116429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd116430116437_))
                                                      (let ((_hd116434116450_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd116430116437_)))
                    (_tl116435116452_
                     (let () (declare (not safe)) (##cdr _hd116430116437_))))
                (let* ((_id116455_ _hd116434116450_)
                       (_k116457_ _tl116435116452_))
                  (declare (not safe))
                  (_K116433116447_ _k116457_ _id116455_)))
              (let () (declare (not safe)) (_E116432116441_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp122569
                                                 _bind116399_
                                                 _init116424_))))
                                  (declare (not safe))
                                  (_lp116395_
                                   _rest116423_
                                   __tmp122575
                                   __tmp122568)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest116400116412_))
                            (let ((_hd116405116462_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest116400116412_)))
                                  (_tl116406116464_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest116400116412_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd116405116462_))
                                  (let ((_hd116407116467_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd116405116462_)))
                                        (_tl116408116469_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd116405116462_))))
                                    (let ((_tmp116472_ _hd116407116467_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl116408116469_))
                                          (let ((_hd116409116474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl116408116469_)))
                                                (_tl116410116476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl116408116469_))))
                                            (let* ((_len116479_
                                                    _hd116409116474_)
                                                   (_init116481_
                                                    _tl116410116476_)
                                                   (_rest116483_
                                                    _tl116406116464_))
                                              (declare (not safe))
                                              (_K116404116459_
                                               _rest116483_
                                               _init116481_
                                               _len116479_
                                               _tmp116472_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else116402116420_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else116402116420_))))
                            (let ()
                              (declare (not safe))
                              (_else116402116420_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx116386_
             _compile-simple116388_
             _compile-values116389_)))))
    (define __compile-letrec-values%
      (lambda (_stx116186_)
        (letrec ((_compile-simple116188_
                  (lambda (_hd-ids116382_ _exprs116383_ _body116384_)
                    (let ((__tmp122580
                           (let ((__tmp122581
                                  (let ((__tmp122583
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids116382_)
                                              _exprs116383_))
                                        (__tmp122582
                                         (let ()
                                           (declare (not safe))
                                           (cons _body116384_ '()))))
                                    (declare (not safe))
                                    (cons __tmp122583 __tmp122582))))
                             (declare (not safe))
                             (cons 'letrec __tmp122581))))
                      (declare (not safe))
                      (__SRC__% __tmp122580 _stx116186_))))
                 (_compile-values116189_
                  (lambda (_hd-ids116296_ _exprs116297_ _body116298_)
                    (let _lp116300_ ((_rest116302_ _hd-ids116296_)
                                     (_exprs116303_ _exprs116297_)
                                     (_pre116304_ '())
                                     (_bind116305_ '())
                                     (_post116306_ '()))
                      (let* ((_rest116307116321_ _rest116302_)
                             (_else116310116329_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner116190_
                                   _pre116304_
                                   _bind116305_
                                   _post116306_
                                   _body116298_)))))
                        (let ((_K116315116365_
                               (lambda (_rest116362_ _id116363_)
                                 (let ((__tmp122589 (cdr _exprs116303_))
                                       (__tmp122584
                                        (let ((__tmp122585
                                               (let ((__tmp122588
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id116363_)))
                                                     (__tmp122586
                                                      (let ((__tmp122587
                                                             (car _exprs116303_)))
                                                        (declare (not safe))
                                                        (cons __tmp122587
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp122588
                                                       __tmp122586))))
                                          (declare (not safe))
                                          (cons __tmp122585 _bind116305_))))
                                   (declare (not safe))
                                   (_lp116300_
                                    _rest116362_
                                    __tmp122589
                                    _pre116304_
                                    __tmp122584
                                    _post116306_))))
                              (_K116312116347_
                               (lambda (_rest116333_ _hd116334_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd116334_))
                                     (let ((__tmp122617 (cdr _exprs116303_))
                                           (__tmp122610
                                            (let ((__tmp122611
                                                   (let ((__tmp122616
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd116334_)))
                                                         (__tmp122612
                                                          (let ((__tmp122613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp122614
                                (let ((__tmp122615 (car _exprs116303_)))
                                  (declare (not safe))
                                  (cons __tmp122615 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp122614))))
                    (declare (not safe))
                    (cons __tmp122613 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp122616
                                                           __tmp122612))))
                                              (declare (not safe))
                                              (cons __tmp122611
                                                    _bind116305_))))
                                       (declare (not safe))
                                       (_lp116300_
                                        _rest116333_
                                        __tmp122617
                                        _pre116304_
                                        __tmp122610
                                        _post116306_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd116334_))
                                         (let* ((_len116336_
                                                 (length _hd116334_))
                                                (_tmp116338_
                                                 (let ((__tmp122590 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp122590))))
                                           (let ((__tmp122609
                                                  (cdr _exprs116303_))
                                                 (__tmp122602
                                                  (let ((__tmp122603
                                                         (lambda (_id116341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r116342_)
                   (if (let () (declare (not safe)) (__AST-e _id116341_))
                       (let ((__tmp122604
                              (let ((__tmp122608
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id116341_)))
                                    (__tmp122605
                                     (let ((__tmp122606
                                            (let ((__tmp122607
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp122607))))
                                       (declare (not safe))
                                       (cons __tmp122606 '()))))
                                (declare (not safe))
                                (cons __tmp122608 __tmp122605))))
                         (declare (not safe))
                         (cons __tmp122604 _r116342_))
                       _r116342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp122603
                                                            _pre116304_
                                                            _hd116334_)))
                                                 (__tmp122598
                                                  (let ((__tmp122599
                                                         (let ((__tmp122600
                                                                (let ((__tmp122601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs116303_)))
                          (declare (not safe))
                          (cons __tmp122601 '()))))
                   (declare (not safe))
                   (cons _tmp116338_ __tmp122600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122599
                                                          _bind116305_)))
                                                 (__tmp122591
                                                  (let ((__tmp122592
                                                         (let ((__tmp122593
                                                                (let ((__tmp122594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp122596
                                      (lambda (_id116344_ _k116345_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id116344_))
                                            (let ((__tmp122597
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id116344_))))
                                              (declare (not safe))
                                              (cons __tmp122597 _k116345_))
                                            '#f)))
                                     (__tmp122595
                                      (let ()
                                        (declare (not safe))
                                        (iota _len116336_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp122596
                                  _hd116334_
                                  __tmp122595))))
                          (declare (not safe))
                          (cons _len116336_ __tmp122594))))
                   (declare (not safe))
                   (cons _tmp116338_ __tmp122593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122592
                                                          _post116306_))))
                                             (declare (not safe))
                                             (_lp116300_
                                              _rest116333_
                                              __tmp122609
                                              __tmp122602
                                              __tmp122598
                                              __tmp122591)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx116186_
                                            _hd116334_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116307116321_))
                              (let ((_tl116317116370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116307116321_)))
                                    (_hd116316116368_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116307116321_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd116316116368_))
                                    (let ((_tl116319116375_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd116316116368_)))
                                          (_hd116318116373_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd116316116368_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl116319116375_))
                                          (let ((_id116378_ _hd116318116373_)
                                                (_rest116380_
                                                 _tl116317116370_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116315116365_
                                               _rest116380_
                                               _id116378_)))
                                          (let ((_hd116355_ _hd116316116368_)
                                                (_rest116357_
                                                 _tl116317116370_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116312116347_
                                               _rest116357_
                                               _hd116355_)))))
                                    (let ((_hd116355_ _hd116316116368_)
                                          (_rest116357_ _tl116317116370_))
                                      (let ()
                                        (declare (not safe))
                                        (_K116312116347_
                                         _rest116357_
                                         _hd116355_)))))
                              (let ()
                                (declare (not safe))
                                (_else116310116329_))))))))
                 (_compile-inner116190_
                  (lambda (_pre116291_ _bind116292_ _post116293_ _body116294_)
                    (if (let () (declare (not safe)) (null? _pre116291_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind116191_
                           _bind116292_
                           _post116293_
                           _body116294_))
                        (let ((__tmp122618
                               (let ((__tmp122619
                                      (let ((__tmp122622 (reverse _pre116291_))
                                            (__tmp122620
                                             (let ((__tmp122621
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind116191_
                                                       _bind116292_
                                                       _post116293_
                                                       _body116294_))))
                                               (declare (not safe))
                                               (cons __tmp122621 '()))))
                                        (declare (not safe))
                                        (cons __tmp122622 __tmp122620))))
                                 (declare (not safe))
                                 (cons 'let __tmp122619))))
                          (declare (not safe))
                          (__SRC__% __tmp122618 _stx116186_)))))
                 (_compile-bind116191_
                  (lambda (_bind116287_ _post116288_ _body116289_)
                    (let ((__tmp122623
                           (let ((__tmp122624
                                  (let ((__tmp122627 (reverse _bind116287_))
                                        (__tmp122625
                                         (let ((__tmp122626
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post116192_
                                                   _post116288_
                                                   _body116289_))))
                                           (declare (not safe))
                                           (cons __tmp122626 '()))))
                                    (declare (not safe))
                                    (cons __tmp122627 __tmp122625))))
                             (declare (not safe))
                             (cons 'letrec __tmp122624))))
                      (declare (not safe))
                      (__SRC__% __tmp122623 _stx116186_))))
                 (_compile-post116192_
                  (lambda (_post116194_ _body116195_)
                    (let _lp116197_ ((_rest116199_ _post116194_)
                                     (_check116200_ '())
                                     (_bind116201_ '()))
                      (let* ((_rest116202116214_ _rest116199_)
                             (_else116204116222_
                              (lambda ()
                                (let ((__tmp122628
                                       (let ((__tmp122629
                                              (let ((__tmp122630
                                                     (let ((__tmp122631
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body116195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp122631 _bind116201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp122630
                                                        _check116200_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp122629))))
                                  (declare (not safe))
                                  (__SRC__% __tmp122628 _stx116186_))))
                             (_K116206116261_
                              (lambda (_rest116225_
                                       _init116226_
                                       _len116227_
                                       _tmp116228_)
                                (let ((__tmp122640
                                       (let ((__tmp122641
                                              (let ((__tmp122642
                                                     (let ((__tmp122643
                                                            (let ((__tmp122644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len116227_ '()))))
                      (declare (not safe))
                      (cons _tmp116228_ __tmp122644))))
               (declare (not safe))
               (cons '__check-values __tmp122643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp122642
                                                 _stx116186_))))
                                         (declare (not safe))
                                         (cons __tmp122641 _check116200_)))
                                      (__tmp122632
                                       (let ((__tmp122633
                                              (lambda (_hd116230_ _r116231_)
                                                (let* ((_hd116232116239_
                                                        _hd116230_)
                                                       (_E116234116243_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd116232116239_)))
               (_K116235116249_
                (lambda (_k116246_ _id116247_)
                  (let ((__tmp122634
                         (let ((__tmp122635
                                (let ((__tmp122636
                                       (let ((__tmp122637
                                              (let ((__tmp122638
                                                     (let ((__tmp122639
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k116246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp116228_ __tmp122639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp122638))))
                                         (declare (not safe))
                                         (cons __tmp122637 '()))))
                                  (declare (not safe))
                                  (cons _id116247_ __tmp122636))))
                           (declare (not safe))
                           (cons 'set! __tmp122635))))
                    (declare (not safe))
                    (cons __tmp122634 _r116231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd116232116239_))
                                                      (let ((_hd116236116252_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd116232116239_)))
                    (_tl116237116254_
                     (let () (declare (not safe)) (##cdr _hd116232116239_))))
                (let* ((_id116257_ _hd116236116252_)
                       (_k116259_ _tl116237116254_))
                  (declare (not safe))
                  (_K116235116249_ _k116259_ _id116257_)))
              (let () (declare (not safe)) (_E116234116243_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp122633
                                                 _bind116201_
                                                 _init116226_))))
                                  (declare (not safe))
                                  (_lp116197_
                                   _rest116225_
                                   __tmp122640
                                   __tmp122632)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest116202116214_))
                            (let ((_hd116207116264_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest116202116214_)))
                                  (_tl116208116266_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest116202116214_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd116207116264_))
                                  (let ((_hd116209116269_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd116207116264_)))
                                        (_tl116210116271_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd116207116264_))))
                                    (let ((_tmp116274_ _hd116209116269_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl116210116271_))
                                          (let ((_hd116211116276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl116210116271_)))
                                                (_tl116212116278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl116210116271_))))
                                            (let* ((_len116281_
                                                    _hd116211116276_)
                                                   (_init116283_
                                                    _tl116212116278_)
                                                   (_rest116285_
                                                    _tl116208116266_))
                                              (declare (not safe))
                                              (_K116206116261_
                                               _rest116285_
                                               _init116283_
                                               _len116281_
                                               _tmp116274_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else116204116222_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else116204116222_))))
                            (let ()
                              (declare (not safe))
                              (_else116204116222_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx116186_
             _compile-simple116188_
             _compile-values116189_)))))
    (define __compile-letrec*-values%
      (lambda (_stx115941_)
        (letrec ((_compile-simple115943_
                  (lambda (_hd-ids116182_ _exprs116183_ _body116184_)
                    (let ((__tmp122645
                           (let ((__tmp122646
                                  (let ((__tmp122648
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids116182_)
                                              _exprs116183_))
                                        (__tmp122647
                                         (let ()
                                           (declare (not safe))
                                           (cons _body116184_ '()))))
                                    (declare (not safe))
                                    (cons __tmp122648 __tmp122647))))
                             (declare (not safe))
                             (cons 'letrec* __tmp122646))))
                      (declare (not safe))
                      (__SRC__% __tmp122645 _stx115941_))))
                 (_compile-values115944_
                  (lambda (_hd-ids116093_ _exprs116094_ _body116095_)
                    (let _lp116097_ ((_rest116099_ _hd-ids116093_)
                                     (_exprs116100_ _exprs116094_)
                                     (_bind116101_ '())
                                     (_post116102_ '()))
                      (let* ((_rest116103116117_ _rest116099_)
                             (_else116106116125_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind115945_
                                   _bind116101_
                                   _post116102_
                                   _body116095_)))))
                        (let ((_K116111116165_
                               (lambda (_rest116160_ _hd116161_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd116161_))
                                     (let ((_id116163_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd116161_))))
                                       (let ((__tmp122663 (cdr _exprs116100_))
                                             (__tmp122658
                                              (let ((__tmp122659
                                                     (let ((__tmp122660
                                                            (let ((__tmp122661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp122662
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp122662))))
                      (declare (not safe))
                      (cons __tmp122661 '()))))
               (declare (not safe))
               (cons _id116163_ __tmp122660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp122659
                                                      _bind116101_)))
                                             (__tmp122654
                                              (let ((__tmp122655
                                                     (let ((__tmp122656
                                                            (let ((__tmp122657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs116100_)))
                      (declare (not safe))
                      (cons __tmp122657 '()))))
               (declare (not safe))
               (cons _id116163_ __tmp122656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp122655
                                                      _post116102_))))
                                         (declare (not safe))
                                         (_lp116097_
                                          _rest116160_
                                          __tmp122663
                                          __tmp122658
                                          __tmp122654)))
                                     (let ((__tmp122653 (cdr _exprs116100_))
                                           (__tmp122649
                                            (let ((__tmp122650
                                                   (let ((__tmp122651
                                                          (let ((__tmp122652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs116100_)))
                    (declare (not safe))
                    (cons __tmp122652 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp122651))))
                                              (declare (not safe))
                                              (cons __tmp122650
                                                    _post116102_))))
                                       (declare (not safe))
                                       (_lp116097_
                                        _rest116160_
                                        __tmp122653
                                        _bind116101_
                                        __tmp122649)))))
                              (_K116108116145_
                               (lambda (_rest116129_ _hd116130_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd116130_))
                                     (let ((_id116132_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd116130_))))
                                       (let ((__tmp122699 (cdr _exprs116100_))
                                             (__tmp122694
                                              (let ((__tmp122695
                                                     (let ((__tmp122696
                                                            (let ((__tmp122697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp122698
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp122698))))
                      (declare (not safe))
                      (cons __tmp122697 '()))))
               (declare (not safe))
               (cons _id116132_ __tmp122696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp122695
                                                      _bind116101_)))
                                             (__tmp122688
                                              (let ((__tmp122689
                                                     (let ((__tmp122690
                                                            (let ((__tmp122691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp122692
                                  (let ((__tmp122693 (car _exprs116100_)))
                                    (declare (not safe))
                                    (cons __tmp122693 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp122692))))
                      (declare (not safe))
                      (cons __tmp122691 '()))))
               (declare (not safe))
               (cons _id116132_ __tmp122690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp122689
                                                      _post116102_))))
                                         (declare (not safe))
                                         (_lp116097_
                                          _rest116129_
                                          __tmp122699
                                          __tmp122694
                                          __tmp122688)))
                                     (if (let ((__tmp122687
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd116130_))))
                                           (declare (not safe))
                                           (not __tmp122687))
                                         (let ((__tmp122686
                                                (cdr _exprs116100_))
                                               (__tmp122682
                                                (let ((__tmp122683
                                                       (let ((__tmp122684
                                                              (let ((__tmp122685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs116100_)))
                        (declare (not safe))
                        (cons __tmp122685 '()))))
                 (declare (not safe))
                 (cons '#f __tmp122684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp122683
                                                        _post116102_))))
                                           (declare (not safe))
                                           (_lp116097_
                                            _rest116129_
                                            __tmp122686
                                            _bind116101_
                                            __tmp122682))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd116130_))
                                             (let* ((_len116134_
                                                     (length _hd116130_))
                                                    (_tmp116136_
                                                     (let ((__tmp122664
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp122664))))
                                               (let ((__tmp122681
                                                      (cdr _exprs116100_))
                                                     (__tmp122674
                                                      (let ((__tmp122675
                                                             (lambda (_id116139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r116140_)
                       (if (let () (declare (not safe)) (__AST-e _id116139_))
                           (let ((__tmp122676
                                  (let ((__tmp122680
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id116139_)))
                                        (__tmp122677
                                         (let ((__tmp122678
                                                (let ((__tmp122679
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp122679))))
                                           (declare (not safe))
                                           (cons __tmp122678 '()))))
                                    (declare (not safe))
                                    (cons __tmp122680 __tmp122677))))
                             (declare (not safe))
                             (cons __tmp122676 _r116140_))
                           _r116140_))))
                (declare (not safe))
                (foldl1 __tmp122675 _bind116101_ _hd116130_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp122665
                                                      (let ((__tmp122666
                                                             (let ((__tmp122667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp122673 (car _exprs116100_))
                                  (__tmp122668
                                   (let ((__tmp122669
                                          (let ((__tmp122671
                                                 (lambda (_id116142_ _k116143_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id116142_))
                                                       (let ((__tmp122672
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id116142_))))
                 (declare (not safe))
                 (cons __tmp122672 _k116143_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp122670
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len116134_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp122671
                                             _hd116130_
                                             __tmp122670))))
                                     (declare (not safe))
                                     (cons _len116134_ __tmp122669))))
                              (declare (not safe))
                              (cons __tmp122673 __tmp122668))))
                       (declare (not safe))
                       (cons _tmp116136_ __tmp122667))))
                (declare (not safe))
                (cons __tmp122666 _post116102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp116097_
                                                  _rest116129_
                                                  __tmp122681
                                                  __tmp122674
                                                  __tmp122665)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx115941_
                                                _hd116130_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116103116117_))
                              (let ((_tl116113116170_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116103116117_)))
                                    (_hd116112116168_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116103116117_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd116112116168_))
                                    (let ((_tl116115116175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd116112116168_)))
                                          (_hd116114116173_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd116112116168_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl116115116175_))
                                          (let ((_hd116178_ _hd116114116173_)
                                                (_rest116180_
                                                 _tl116113116170_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116111116165_
                                               _rest116180_
                                               _hd116178_)))
                                          (let ((_hd116153_ _hd116112116168_)
                                                (_rest116155_
                                                 _tl116113116170_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116108116145_
                                               _rest116155_
                                               _hd116153_)))))
                                    (let ((_hd116153_ _hd116112116168_)
                                          (_rest116155_ _tl116113116170_))
                                      (let ()
                                        (declare (not safe))
                                        (_K116108116145_
                                         _rest116155_
                                         _hd116153_)))))
                              (let ()
                                (declare (not safe))
                                (_else116106116125_))))))))
                 (_compile-bind115945_
                  (lambda (_bind116089_ _post116090_ _body116091_)
                    (let ((__tmp122700
                           (let ((__tmp122701
                                  (let ((__tmp122704 (reverse _bind116089_))
                                        (__tmp122702
                                         (let ((__tmp122703
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post115946_
                                                   _post116090_
                                                   _body116091_))))
                                           (declare (not safe))
                                           (cons __tmp122703 '()))))
                                    (declare (not safe))
                                    (cons __tmp122704 __tmp122702))))
                             (declare (not safe))
                             (cons 'let __tmp122701))))
                      (declare (not safe))
                      (__SRC__% __tmp122700 _stx115941_))))
                 (_compile-post115946_
                  (lambda (_post115948_ _body115949_)
                    (let ((__tmp122705
                           (let ((__tmp122706
                                  (let ((__tmp122707
                                         (let ((__tmp122709
                                                (lambda (_hd115951_ _r115952_)
                                                  (let* ((_hd115953115976_
                                                          _hd115951_)
                                                         (_E115957115980_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd115953115976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K115970116074_
                                                           (lambda (_expr116072_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr116072_ _r115952_))))
                  (_K115965116052_
                   (lambda (_expr116049_ _id116050_)
                     (let ((__tmp122710
                            (let ((__tmp122711
                                   (let ((__tmp122712
                                          (let ((__tmp122713
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr116049_ '()))))
                                            (declare (not safe))
                                            (cons _id116050_ __tmp122713))))
                                     (declare (not safe))
                                     (cons 'set! __tmp122712))))
                              (declare (not safe))
                              (__SRC__% __tmp122711 _stx115941_))))
                       (declare (not safe))
                       (cons __tmp122710 _r115952_))))
                  (_K115958116019_
                   (lambda (_init115984_ _len115985_ _expr115986_ _tmp115987_)
                     (let ((__tmp122714
                            (let ((__tmp122715
                                   (let ((__tmp122716
                                          (let ((__tmp122730
                                                 (let ((__tmp122731
                                                        (let ((__tmp122732
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr115986_ '()))))
                  (declare (not safe))
                  (cons _tmp115987_ __tmp122732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp122731 '())))
                                                (__tmp122717
                                                 (let ((__tmp122726
                                                        (let ((__tmp122727
                                                               (let ((__tmp122728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp122729
                                     (let ()
                                       (declare (not safe))
                                       (cons _len115985_ '()))))
                                (declare (not safe))
                                (cons _tmp115987_ __tmp122729))))
                         (declare (not safe))
                         (cons '__check-values __tmp122728))))
                  (declare (not safe))
                  (__SRC__% __tmp122727 _stx115941_)))
               (__tmp122718
                (let ((__tmp122719
                       (map (lambda (_hd115989_)
                              (let* ((_hd115990115997_ _hd115989_)
                                     (_E115992116001_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd115990115997_)))
                                     (_K115993116007_
                                      (lambda (_k116004_ _id116005_)
                                        (let ((__tmp122720
                                               (let ((__tmp122721
                                                      (let ((__tmp122722
                                                             (let ((__tmp122723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp122724
                                   (let ((__tmp122725
                                          (let ()
                                            (declare (not safe))
                                            (cons _k116004_ '()))))
                                     (declare (not safe))
                                     (cons _tmp115987_ __tmp122725))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp122724))))
                       (declare (not safe))
                       (cons __tmp122723 '()))))
                (declare (not safe))
                (cons _id116005_ __tmp122722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp122721))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp122720
                                           _stx115941_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd115990115997_))
                                    (let ((_hd115994116010_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd115990115997_)))
                                          (_tl115995116012_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd115990115997_))))
                                      (let* ((_id116015_ _hd115994116010_)
                                             (_k116017_ _tl115995116012_))
                                        (declare (not safe))
                                        (_K115993116007_
                                         _k116017_
                                         _id116015_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E115992116001_)))))
                            _init115984_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp122719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp122726
                                                         __tmp122718))))
                                            (declare (not safe))
                                            (cons __tmp122730 __tmp122717))))
                                     (declare (not safe))
                                     (cons 'let __tmp122716))))
                              (declare (not safe))
                              (__SRC__% __tmp122715 _stx115941_))))
                       (declare (not safe))
                       (cons __tmp122714 _r115952_)))))
              (if (let () (declare (not safe)) (##pair? _hd115953115976_))
                  (let ((_tl115972116079_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd115953115976_)))
                        (_hd115971116077_
                         (let ()
                           (declare (not safe))
                           (##car _hd115953115976_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd115971116077_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl115972116079_))
                            (let ((_tl115974116084_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl115972116079_)))
                                  (_hd115973116082_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl115972116079_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl115974116084_))
                                  (let ((_expr116087_ _hd115973116082_))
                                    (declare (not safe))
                                    (_K115970116074_ _expr116087_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl115974116084_))
                                      (let ((_tl115964116038_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl115974116084_)))
                                            (_hd115963116036_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl115974116084_))))
                                        (let ((_tmp116027_ _hd115971116077_)
                                              (_expr116034_ _hd115973116082_)
                                              (_len116041_ _hd115963116036_)
                                              (_init116043_ _tl115964116038_))
                                          (let ()
                                            (declare (not safe))
                                            (_K115958116019_
                                             _init116043_
                                             _len116041_
                                             _expr116034_
                                             _tmp116027_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E115957115980_)))))
                            (let () (declare (not safe)) (_E115957115980_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl115972116079_))
                            (let ((_tl115969116064_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl115972116079_)))
                                  (_hd115968116062_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl115972116079_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl115969116064_))
                                  (let ((_id116060_ _hd115971116077_)
                                        (_expr116067_ _hd115968116062_))
                                    (let ()
                                      (declare (not safe))
                                      (_K115965116052_
                                       _expr116067_
                                       _id116060_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl115969116064_))
                                      (let ((_tl115964116038_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl115969116064_)))
                                            (_hd115963116036_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl115969116064_))))
                                        (let ((_tmp116027_ _hd115971116077_)
                                              (_expr116034_ _hd115968116062_)
                                              (_len116041_ _hd115963116036_)
                                              (_init116043_ _tl115964116038_))
                                          (let ()
                                            (declare (not safe))
                                            (_K115958116019_
                                             _init116043_
                                             _len116041_
                                             _expr116034_
                                             _tmp116027_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E115957115980_)))))
                            (let () (declare (not safe)) (_E115957115980_)))))
                  (let () (declare (not safe)) (_E115957115980_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp122708
                                                (list _body115949_)))
                                           (declare (not safe))
                                           (foldl1 __tmp122709
                                                   __tmp122708
                                                   _post115948_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp122707))))
                             (declare (not safe))
                             (cons 'begin __tmp122706))))
                      (declare (not safe))
                      (__SRC__% __tmp122705 _stx115941_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx115941_
             _compile-simple115943_
             _compile-values115944_)))))
    (define __compile-call%
      (lambda (_stx115901_)
        (let* ((_$e115903_ _stx115901_)
               (_$E115905115914_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e115903_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e115903_))
              (let* ((_$tgt115906115917_
                      (let () (declare (not safe)) (__AST-e _$e115903_)))
                     (_$hd115907115920_
                      (let () (declare (not safe)) (##car _$tgt115906115917_)))
                     (_$tl115908115923_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt115906115917_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl115908115923_))
                    (let* ((_$tgt115909115927_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl115908115923_)))
                           (_$hd115910115930_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt115909115927_)))
                           (_$tl115911115933_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt115909115927_))))
                      (let* ((_rator115937_ _$hd115910115930_)
                             (_rands115939_ _$tl115911115933_)
                             (__tmp122733
                              (let ((__tmp122735
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator115937_)))
                                    (__tmp122734
                                     (map __compile _rands115939_)))
                                (declare (not safe))
                                (cons __tmp122735 __tmp122734))))
                        (declare (not safe))
                        (__SRC__% __tmp122733 _stx115901_)))
                    (let () (declare (not safe)) (_$E115905115914_))))
              (let () (declare (not safe)) (_$E115905115914_))))))
    (define __compile-ref%
      (lambda (_stx115863_)
        (let* ((_$e115865_ _stx115863_)
               (_$E115867115876_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e115865_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e115865_))
              (let* ((_$tgt115868115879_
                      (let () (declare (not safe)) (__AST-e _$e115865_)))
                     (_$hd115869115882_
                      (let () (declare (not safe)) (##car _$tgt115868115879_)))
                     (_$tl115870115885_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt115868115879_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl115870115885_))
                    (let* ((_$tgt115871115889_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl115870115885_)))
                           (_$hd115872115892_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt115871115889_)))
                           (_$tl115873115895_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt115871115889_))))
                      (let ((_id115899_ _$hd115872115892_))
                        (if (let ((__tmp122736
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl115873115895_))))
                              (declare (not safe))
                              (equal? __tmp122736 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id115899_ _stx115863_))
                            (let () (declare (not safe)) (_$E115867115876_)))))
                    (let () (declare (not safe)) (_$E115867115876_))))
              (let () (declare (not safe)) (_$E115867115876_))))))
    (define __compile-setq%
      (lambda (_stx115810_)
        (let* ((_$e115812_ _stx115810_)
               (_$E115814115826_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e115812_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e115812_))
              (let* ((_$tgt115815115829_
                      (let () (declare (not safe)) (__AST-e _$e115812_)))
                     (_$hd115816115832_
                      (let () (declare (not safe)) (##car _$tgt115815115829_)))
                     (_$tl115817115835_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt115815115829_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl115817115835_))
                    (let* ((_$tgt115818115839_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl115817115835_)))
                           (_$hd115819115842_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt115818115839_)))
                           (_$tl115820115845_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt115818115839_))))
                      (let ((_id115849_ _$hd115819115842_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl115820115845_))
                            (let* ((_$tgt115821115851_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl115820115845_)))
                                   (_$hd115822115854_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt115821115851_)))
                                   (_$tl115823115857_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt115821115851_))))
                              (let ((_expr115861_ _$hd115822115854_))
                                (if (let ((__tmp122742
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl115823115857_))))
                                      (declare (not safe))
                                      (equal? __tmp122742 '()))
                                    (let ((__tmp122737
                                           (let ((__tmp122738
                                                  (let ((__tmp122741
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id115849_
                                                            _stx115810_)))
                                                        (__tmp122739
                                                         (let ((__tmp122740
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr115861_))))
                   (declare (not safe))
                   (cons __tmp122740 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122741
                                                          __tmp122739))))
                                             (declare (not safe))
                                             (cons 'set! __tmp122738))))
                                      (declare (not safe))
                                      (__SRC__% __tmp122737 _stx115810_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E115814115826_)))))
                            (let () (declare (not safe)) (_$E115814115826_)))))
                    (let () (declare (not safe)) (_$E115814115826_))))
              (let () (declare (not safe)) (_$E115814115826_))))))
    (define __compile-if%
      (lambda (_stx115742_)
        (let* ((_$e115744_ _stx115742_)
               (_$E115746115761_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e115744_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e115744_))
              (let* ((_$tgt115747115764_
                      (let () (declare (not safe)) (__AST-e _$e115744_)))
                     (_$hd115748115767_
                      (let () (declare (not safe)) (##car _$tgt115747115764_)))
                     (_$tl115749115770_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt115747115764_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl115749115770_))
                    (let* ((_$tgt115750115774_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl115749115770_)))
                           (_$hd115751115777_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt115750115774_)))
                           (_$tl115752115780_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt115750115774_))))
                      (let ((_p115784_ _$hd115751115777_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl115752115780_))
                            (let* ((_$tgt115753115786_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl115752115780_)))
                                   (_$hd115754115789_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt115753115786_)))
                                   (_$tl115755115792_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt115753115786_))))
                              (let ((_t115796_ _$hd115754115789_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl115755115792_))
                                    (let* ((_$tgt115756115798_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl115755115792_)))
                                           (_$hd115757115801_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt115756115798_)))
                                           (_$tl115758115804_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt115756115798_))))
                                      (let ((_f115808_ _$hd115757115801_))
                                        (if (let ((__tmp122750
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl115758115804_))))
                                              (declare (not safe))
                                              (equal? __tmp122750 '()))
                                            (let ((__tmp122743
                                                   (let ((__tmp122744
                                                          (let ((__tmp122749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p115784_)))
                        (__tmp122745
                         (let ((__tmp122748
                                (let ()
                                  (declare (not safe))
                                  (__compile _t115796_)))
                               (__tmp122746
                                (let ((__tmp122747
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f115808_))))
                                  (declare (not safe))
                                  (cons __tmp122747 '()))))
                           (declare (not safe))
                           (cons __tmp122748 __tmp122746))))
                    (declare (not safe))
                    (cons __tmp122749 __tmp122745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp122744))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp122743
                                               _stx115742_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E115746115761_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E115746115761_)))))
                            (let () (declare (not safe)) (_$E115746115761_)))))
                    (let () (declare (not safe)) (_$E115746115761_))))
              (let () (declare (not safe)) (_$E115746115761_))))))
    (define __compile-quote%
      (lambda (_stx115704_)
        (let* ((_$e115706_ _stx115704_)
               (_$E115708115717_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e115706_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e115706_))
              (let* ((_$tgt115709115720_
                      (let () (declare (not safe)) (__AST-e _$e115706_)))
                     (_$hd115710115723_
                      (let () (declare (not safe)) (##car _$tgt115709115720_)))
                     (_$tl115711115726_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt115709115720_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl115711115726_))
                    (let* ((_$tgt115712115730_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl115711115726_)))
                           (_$hd115713115733_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt115712115730_)))
                           (_$tl115714115736_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt115712115730_))))
                      (let ((_e115740_ _$hd115713115733_))
                        (if (let ((__tmp122754
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl115714115736_))))
                              (declare (not safe))
                              (equal? __tmp122754 '()))
                            (let ((__tmp122751
                                   (let ((__tmp122752
                                          (let ((__tmp122753
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e115740_))))
                                            (declare (not safe))
                                            (cons __tmp122753 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp122752))))
                              (declare (not safe))
                              (__SRC__% __tmp122751 _stx115704_))
                            (let () (declare (not safe)) (_$E115708115717_)))))
                    (let () (declare (not safe)) (_$E115708115717_))))
              (let () (declare (not safe)) (_$E115708115717_))))))
    (define __compile-quote-syntax%
      (lambda (_stx115666_)
        (let* ((_$e115668_ _stx115666_)
               (_$E115670115679_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e115668_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e115668_))
              (let* ((_$tgt115671115682_
                      (let () (declare (not safe)) (__AST-e _$e115668_)))
                     (_$hd115672115685_
                      (let () (declare (not safe)) (##car _$tgt115671115682_)))
                     (_$tl115673115688_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt115671115682_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl115673115688_))
                    (let* ((_$tgt115674115692_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl115673115688_)))
                           (_$hd115675115695_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt115674115692_)))
                           (_$tl115676115698_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt115674115692_))))
                      (let ((_e115702_ _$hd115675115695_))
                        (if (let ((__tmp122757
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl115676115698_))))
                              (declare (not safe))
                              (equal? __tmp122757 '()))
                            (let ((__tmp122755
                                   (let ((__tmp122756
                                          (let ()
                                            (declare (not safe))
                                            (cons _e115702_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp122756))))
                              (declare (not safe))
                              (__SRC__% __tmp122755 _stx115666_))
                            (let () (declare (not safe)) (_$E115670115679_)))))
                    (let () (declare (not safe)) (_$E115670115679_))))
              (let () (declare (not safe)) (_$E115670115679_))))))
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
