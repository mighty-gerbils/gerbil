(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707565658)
  (begin
    (define __context::t
      (let ((__tmp110482
             (let ((__tmp110483
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110483 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp110482
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args106092_
        (apply make-struct-instance __context::t _$args106092_)))
    (define __context-t
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __context::t 't)))
    (define __context-ns
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __context::t 'ns)))
    (define __context-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __context::t 'super)))
    (define __context-table
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __context::t 'table)))
    (define __context-t-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __context::t 't)))
    (define __context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __context::t 'ns)))
    (define __context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __context::t 'super)))
    (define __context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __context::t 'table)))
    (define &__context-t
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __context::t 't)))
    (define &__context-ns
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __context::t 'ns)))
    (define &__context-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __context::t 'super)))
    (define &__context-table
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __context::t 'table)))
    (define &__context-t-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __context::t 't)))
    (define &__context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __context::t 'ns)))
    (define &__context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __context::t 'super)))
    (define &__context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __context::t 'table)))
    (define __runtime::t
      (let ((__tmp110484
             (let ((__tmp110485
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110485 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp110484
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args106089_
        (apply make-struct-instance __runtime::t _$args106089_)))
    (define __runtime-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __runtime::t 'id)))
    (define __runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __runtime::t 'id)))
    (define &__runtime-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __runtime::t 'id)))
    (define &__runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __runtime::t 'id)))
    (define __syntax::t
      (let ((__tmp110486
             (let ((__tmp110487
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110487 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp110486
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args106086_
        (apply make-struct-instance __syntax::t _$args106086_)))
    (define __syntax-e
      (let () (declare (not safe)) (make-struct-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __syntax::t 'id)))
    (define __macro::t
      (let ((__tmp110488
             (let ((__tmp110489
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110489 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp110488
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args106083_
        (apply make-struct-instance __macro::t _$args106083_)))
    (define __macro-e
      (let () (declare (not safe)) (make-struct-slot-accessor __macro::t 'e)))
    (define __macro-id
      (let () (declare (not safe)) (make-struct-slot-accessor __macro::t 'id)))
    (define __macro-e-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __macro::t 'e)))
    (define __macro-id-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __macro::t 'id)))
    (define &__macro-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __macro::t 'e)))
    (define &__macro-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __macro::t 'id)))
    (define &__macro-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __macro::t 'e)))
    (define &__macro-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __macro::t 'id)))
    (define __special-form::t
      (let ((__tmp110490
             (let ((__tmp110491
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110491 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp110490
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args106080_
        (apply make-struct-instance __special-form::t _$args106080_)))
    (define __special-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __special-form::t 'e)))
    (define __special-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __special-form::t 'id)))
    (define __special-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __special-form::t 'e)))
    (define __special-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __special-form::t 'id)))
    (define &__special-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __special-form::t 'e)))
    (define &__special-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __special-form::t 'id)))
    (define &__special-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __special-form::t 'e)))
    (define &__special-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __special-form::t 'id)))
    (define __core-form::t
      (let ((__tmp110492
             (let ((__tmp110493
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110493 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp110492
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args106077_
        (apply make-struct-instance __core-form::t _$args106077_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp110494
             (let ((__tmp110495
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110495 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp110494
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args106074_
        (apply make-struct-instance __core-expression::t _$args106074_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp110496
             (let ((__tmp110497
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110497 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp110496
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args106071_
        (apply make-struct-instance __core-special-form::t _$args106071_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __struct-info::t
      (let ((__tmp110498
             (let ((__tmp110499
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110499 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp110498
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args106068_
        (apply make-struct-instance __struct-info::t _$args106068_)))
    (define __struct-info-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __struct-info::t 'e)))
    (define __struct-info-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __struct-info::t 'id)))
    (define __struct-info-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __struct-info::t 'e)))
    (define __struct-info-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __struct-info::t 'id)))
    (define &__struct-info-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __struct-info::t 'e)))
    (define &__struct-info-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __struct-info::t 'id)))
    (define &__struct-info-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __struct-info::t 'e)))
    (define &__struct-info-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __struct-info::t 'id)))
    (define __feature::t
      (let ((__tmp110500
             (let ((__tmp110501
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110501 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp110500
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args106065_
        (apply make-struct-instance __feature::t _$args106065_)))
    (define __feature-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __feature::t 'e)))
    (define __feature-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __feature::t 'id)))
    (define __feature-e-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __feature::t 'e)))
    (define __feature-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __feature::t 'id)))
    (define &__feature-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __feature::t 'e)))
    (define &__feature-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __feature::t 'id)))
    (define &__feature-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __feature::t 'e)))
    (define &__feature-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __feature::t 'id)))
    (define __module::t
      (let ((__tmp110502
             (let ((__tmp110503
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110503 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp110502
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args106062_
        (apply make-struct-instance __module::t _$args106062_)))
    (define __module-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'id)))
    (define __module-path
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'path)))
    (define __module-import
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'import)))
    (define __module-export
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'export)))
    (define __module-t
      (let () (declare (not safe)) (make-struct-slot-accessor __module::t 't)))
    (define __module-ns
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'ns)))
    (define __module-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'super)))
    (define __module-table
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'table)))
    (define __module-id-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __module::t 'id)))
    (define __module-path-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'path)))
    (define __module-import-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'import)))
    (define __module-export-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'export)))
    (define __module-t-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __module::t 't)))
    (define __module-ns-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __module::t 'ns)))
    (define __module-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'super)))
    (define __module-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'table)))
    (define &__module-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'id)))
    (define &__module-path
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'path)))
    (define &__module-import
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'import)))
    (define &__module-export
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'export)))
    (define &__module-t
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 't)))
    (define &__module-ns
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'ns)))
    (define &__module-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'super)))
    (define &__module-table
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'table)))
    (define &__module-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'id)))
    (define &__module-path-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'path)))
    (define &__module-import-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'import)))
    (define &__module-export-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'export)))
    (define &__module-t-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 't)))
    (define &__module-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'ns)))
    (define &__module-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'super)))
    (define &__module-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'table)))
    (define __*modules* (let () (declare (not safe)) (make-table)))
    (define __*core* (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __*top*
      (let ((__tmp110505
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp110504
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp110505 __tmp110504)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id106037_ _ctx106038_)
        (if _ctx106038_
            (let ((_id106040_
                   (let () (declare (not safe)) (__AST-e _id106037_))))
              (let _lp106042_ ((_ctx106044_ _ctx106038_))
                (let ((_$e106046_
                       (table-ref
                        (##structure-ref _ctx106044_ '4 __context::t '#f)
                        _id106040_
                        '#f)))
                  (if _$e106046_
                      (values _$e106046_)
                      (let ((_$e106049_
                             (##structure-ref
                              _ctx106044_
                              '3
                              __context::t
                              '#f)))
                        (if _$e106049_
                            (let ()
                              (declare (not safe))
                              (_lp106042_ _$e106049_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id106055_)
        (let ((_ctx106057_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id106055_ _ctx106057_))))
    (define __core-resolve
      (lambda _g110507_
        (let ((_g110506_ (let () (declare (not safe)) (##length _g110507_))))
          (cond ((let () (declare (not safe)) (##fx= _g110506_ 1))
                 (apply (lambda (_id106055_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id106055_)))
                        _g110507_))
                ((let () (declare (not safe)) (##fx= _g110506_ 2))
                 (apply (lambda (_id106059_ _ctx106060_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id106059_ _ctx106060_)))
                        _g110507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g110507_))))))
    (define __core-bound-id?__%
      (lambda (_id106020_ _is?106021_)
        (let ((_$e106023_
               (let () (declare (not safe)) (__core-resolve__0 _id106020_))))
          (if _$e106023_ (_is?106021_ _$e106023_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id106029_)
        (let ((_is?106031_ true))
          (declare (not safe))
          (__core-bound-id?__% _id106029_ _is?106031_))))
    (define __core-bound-id?
      (lambda _g110509_
        (let ((_g110508_ (let () (declare (not safe)) (##length _g110509_))))
          (cond ((let () (declare (not safe)) (##fx= _g110508_ 1))
                 (apply (lambda (_id106029_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id106029_)))
                        _g110509_))
                ((let () (declare (not safe)) (##fx= _g110508_ 2))
                 (apply (lambda (_id106033_ _is?106034_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id106033_ _is?106034_)))
                        _g110509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g110509_))))))
    (define __core-bind-runtime!__%
      (lambda (_id106003_ _eid106004_ _ctx106005_)
        (if _eid106004_
            (let ((__tmp110512
                   (##structure-ref _ctx106005_ '4 __context::t '#f))
                  (__tmp110511
                   (let () (declare (not safe)) (__AST-e _id106003_)))
                  (__tmp110510
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid106004_))))
              (declare (not safe))
              (table-set! __tmp110512 __tmp110511 __tmp110510))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id106010_ _eid106011_)
        (let ((_ctx106013_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id106010_ _eid106011_ _ctx106013_))))
    (define __core-bind-runtime!
      (lambda _g110514_
        (let ((_g110513_ (let () (declare (not safe)) (##length _g110514_))))
          (cond ((let () (declare (not safe)) (##fx= _g110513_ 2))
                 (apply (lambda (_id106010_ _eid106011_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id106010_ _eid106011_)))
                        _g110514_))
                ((let () (declare (not safe)) (##fx= _g110513_ 3))
                 (apply (lambda (_id106015_ _eid106016_ _ctx106017_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id106015_
                             _eid106016_
                             _ctx106017_)))
                        _g110514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g110514_))))))
    (define __core-bind-syntax!__%
      (lambda (_id105986_ _e105987_ _make105988_)
        (let ((__tmp110515
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e105987_
                      'gerbil/runtime/eval#__syntax::t))
                   _e105987_
                   (_make105988_ _e105987_ _id105986_))))
          (declare (not safe))
          (table-set! __*core* _id105986_ __tmp110515))))
    (define __core-bind-syntax!__0
      (lambda (_id105993_ _e105994_)
        (let ((_make105996_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id105993_ _e105994_ _make105996_))))
    (define __core-bind-syntax!
      (lambda _g110517_
        (let ((_g110516_ (let () (declare (not safe)) (##length _g110517_))))
          (cond ((let () (declare (not safe)) (##fx= _g110516_ 2))
                 (apply (lambda (_id105993_ _e105994_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id105993_ _e105994_)))
                        _g110517_))
                ((let () (declare (not safe)) (##fx= _g110516_ 3))
                 (apply (lambda (_id105998_ _e105999_ _make106000_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id105998_
                             _e105999_
                             _make106000_)))
                        _g110517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g110517_))))))
    (define __core-bind-macro!
      (lambda (_id105982_ _e105983_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id105982_ _e105983_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id105979_ _e105980_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id105979_ _e105980_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id105963_ _e105964_ _ctx105965_)
        (let ((__tmp110521 (##structure-ref _ctx105965_ '4 __context::t '#f))
              (__tmp110520 (let () (declare (not safe)) (__AST-e _id105963_)))
              (__tmp110518
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e105964_
                      'gerbil/runtime/eval#__syntax::t))
                   _e105964_
                   (let ((__tmp110519
                          (let () (declare (not safe)) (__AST-e _id105963_))))
                     (declare (not safe))
                     (##structure __syntax::t _e105964_ __tmp110519)))))
          (declare (not safe))
          (table-set! __tmp110521 __tmp110520 __tmp110518))))
    (define __core-bind-user-syntax!__0
      (lambda (_id105970_ _e105971_)
        (let ((_ctx105973_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id105970_ _e105971_ _ctx105973_))))
    (define __core-bind-user-syntax!
      (lambda _g110523_
        (let ((_g110522_ (let () (declare (not safe)) (##length _g110523_))))
          (cond ((let () (declare (not safe)) (##fx= _g110522_ 2))
                 (apply (lambda (_id105970_ _e105971_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id105970_
                             _e105971_)))
                        _g110523_))
                ((let () (declare (not safe)) (##fx= _g110522_ 3))
                 (apply (lambda (_id105975_ _e105976_ _ctx105977_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id105975_
                             _e105976_
                             _ctx105977_)))
                        _g110523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g110523_))))))
    (define make-__runtime-id__%
      (lambda (_id105944_ _ctx105945_)
        (let ((_id105947_ (let () (declare (not safe)) (__AST-e _id105944_))))
          (if (let () (declare (not safe)) (eq? _id105947_ '_))
              '#f
              (if (uninterned-symbol? _id105947_)
                  (gensym _id105947_)
                  (if (let () (declare (not safe)) (symbol? _id105947_))
                      (let ((_$e105949_
                             (##structure-ref
                              _ctx105945_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e105949_))
                            (gensym _id105947_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e105949_))
                                (let ((__tmp110524
                                       (##structure-ref
                                        _ctx105945_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp110524 '"#" _id105947_))
                                _id105947_)))
                      (error '"Illegal runtime identifier" _id105947_)))))))
    (define make-__runtime-id__0
      (lambda (_id105955_)
        (let ((_ctx105957_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id105955_ _ctx105957_))))
    (define make-__runtime-id
      (lambda _g110526_
        (let ((_g110525_ (let () (declare (not safe)) (##length _g110526_))))
          (cond ((let () (declare (not safe)) (##fx= _g110525_ 1))
                 (apply (lambda (_id105955_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id105955_)))
                        _g110526_))
                ((let () (declare (not safe)) (##fx= _g110525_ 2))
                 (apply (lambda (_id105959_ _ctx105960_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id105959_ _ctx105960_)))
                        _g110526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g110526_))))))
    (define make-__context-local__%
      (lambda (_super105933_)
        (let ((__tmp110527
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super105933_ __tmp110527))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super105939_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super105939_))))
    (define make-__context-local
      (lambda _g110529_
        (let ((_g110528_ (let () (declare (not safe)) (##length _g110529_))))
          (cond ((let () (declare (not safe)) (##fx= _g110528_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g110529_))
                ((let () (declare (not safe)) (##fx= _g110528_ 1))
                 (apply (lambda (_super105941_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super105941_)))
                        _g110529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g110529_))))))
    (define make-__context-module__%
      (lambda (_id105913_ _ns105914_ _path105915_ _super105916_)
        (let ((__tmp110530
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns105914_
           _super105916_
           __tmp110530
           _id105913_
           _path105915_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id105921_ _ns105922_ _path105923_)
        (let ((_super105925_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id105921_
           _ns105922_
           _path105923_
           _super105925_))))
    (define make-__context-module
      (lambda _g110532_
        (let ((_g110531_ (let () (declare (not safe)) (##length _g110532_))))
          (cond ((let () (declare (not safe)) (##fx= _g110531_ 3))
                 (apply (lambda (_id105921_ _ns105922_ _path105923_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id105921_
                             _ns105922_
                             _path105923_)))
                        _g110532_))
                ((let () (declare (not safe)) (##fx= _g110531_ 4))
                 (apply (lambda (_id105927_
                                 _ns105928_
                                 _path105929_
                                 _super105930_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id105927_
                             _ns105928_
                             _path105929_
                             _super105930_)))
                        _g110532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g110532_))))))
    (define __SRC__%
      (lambda (_e105896_ _src-stx105897_)
        (if (or (let () (declare (not safe)) (pair? _e105896_))
                (let () (declare (not safe)) (symbol? _e105896_)))
            (let ((__tmp110536
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx105897_
                          'gerbil#AST::t))
                       (let ((__tmp110537
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx105897_))))
                         (declare (not safe))
                         (__locat __tmp110537))
                       '#f)))
              (declare (not safe))
              (##make-source _e105896_ __tmp110536))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e105896_ 'gerbil#AST::t))
                (let ((__tmp110535
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e105896_ '1 AST::t '#f)))
                      (__tmp110533
                       (let ((__tmp110534
                              (let ()
                                (declare (not safe))
                                (__AST-source _e105896_))))
                         (declare (not safe))
                         (__locat __tmp110534))))
                  (declare (not safe))
                  (##make-source __tmp110535 __tmp110533))
                (error '"BUG! Cannot sourcify object" _e105896_)))))
    (define __SRC__0
      (lambda (_e105905_)
        (let ((_src-stx105907_ '#f))
          (declare (not safe))
          (__SRC__% _e105905_ _src-stx105907_))))
    (define __SRC
      (lambda _g110539_
        (let ((_g110538_ (let () (declare (not safe)) (##length _g110539_))))
          (cond ((let () (declare (not safe)) (##fx= _g110538_ 1))
                 (apply (lambda (_e105905_)
                          (let () (declare (not safe)) (__SRC__0 _e105905_)))
                        _g110539_))
                ((let () (declare (not safe)) (##fx= _g110538_ 2))
                 (apply (lambda (_e105909_ _src-stx105910_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e105909_ _src-stx105910_)))
                        _g110539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g110539_))))))
    (define __locat
      (lambda (_loc105893_)
        (if (let () (declare (not safe)) (##locat? _loc105893_))
            _loc105893_
            '#f)))
    (define __check-values
      (lambda (_obj105888_ _k105889_)
        (let ((_count105891_
               (if (let () (declare (not safe)) (##values? _obj105888_))
                   (let () (declare (not safe)) (##vector-length _obj105888_))
                   '1)))
          (if (fx= _count105891_ _k105889_)
              '#!void
              (error (if (fx< _count105891_ _k105889_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj105888_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj105888_))
                         _obj105888_)
                     _k105889_)))))
    (define __compile
      (lambda (_stx105858_)
        (let* ((_$e105860_ _stx105858_)
               (_$E105862105868_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105860_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105860_))
              (let* ((_$tgt105863105871_
                      (let () (declare (not safe)) (__AST-e _$e105860_)))
                     (_$hd105864105874_
                      (let () (declare (not safe)) (##car _$tgt105863105871_)))
                     (_$tl105865105877_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105863105871_))))
                (let* ((_form105881_ _$hd105864105874_)
                       (_$e105883_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form105881_))))
                  (if _$e105883_
                      ((lambda (_bind105886_)
                         ((##structure-ref _bind105886_ '1 __syntax::t '#f)
                          _stx105858_))
                       _$e105883_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx105858_
                         _form105881_)))))
              (let () (declare (not safe)) (_$E105862105868_))))))
    (define __compile-error__%
      (lambda (_stx105845_ _detail105846_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx105845_
           _detail105846_))))
    (define __compile-error__0
      (lambda (_stx105851_)
        (let ((_detail105853_ '#f))
          (declare (not safe))
          (__compile-error__% _stx105851_ _detail105853_))))
    (define __compile-error
      (lambda _g110541_
        (let ((_g110540_ (let () (declare (not safe)) (##length _g110541_))))
          (cond ((let () (declare (not safe)) (##fx= _g110540_ 1))
                 (apply (lambda (_stx105851_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx105851_)))
                        _g110541_))
                ((let () (declare (not safe)) (##fx= _g110540_ 2))
                 (apply (lambda (_stx105855_ _detail105856_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx105855_ _detail105856_)))
                        _g110541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g110541_))))))
    (define __compile-ignore%
      (lambda (_stx105842_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx105842_))))
    (define __compile-begin%
      (lambda (_stx105817_)
        (let* ((_$e105819_ _stx105817_)
               (_$E105821105827_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105819_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105819_))
              (let* ((_$tgt105822105830_
                      (let () (declare (not safe)) (__AST-e _$e105819_)))
                     (_$hd105823105833_
                      (let () (declare (not safe)) (##car _$tgt105822105830_)))
                     (_$tl105824105836_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105822105830_))))
                (let* ((_body105840_ _$tl105824105836_)
                       (__tmp110542
                        (let ((__tmp110543 (map __compile _body105840_)))
                          (declare (not safe))
                          (cons 'begin __tmp110543))))
                  (declare (not safe))
                  (__SRC__% __tmp110542 _stx105817_)))
              (let () (declare (not safe)) (_$E105821105827_))))))
    (define __compile-begin-foreign%
      (lambda (_stx105792_)
        (let* ((_$e105794_ _stx105792_)
               (_$E105796105802_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105794_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105794_))
              (let* ((_$tgt105797105805_
                      (let () (declare (not safe)) (__AST-e _$e105794_)))
                     (_$hd105798105808_
                      (let () (declare (not safe)) (##car _$tgt105797105805_)))
                     (_$tl105799105811_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105797105805_))))
                (let* ((_body105815_ _$tl105799105811_)
                       (__tmp110544
                        (let ((__tmp110545
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body105815_))))
                          (declare (not safe))
                          (cons 'begin __tmp110545))))
                  (declare (not safe))
                  (__SRC__% __tmp110544 _stx105792_)))
              (let () (declare (not safe)) (_$E105796105802_))))))
    (define __compile-import%
      (lambda (_stx105767_)
        (let* ((_$e105769_ _stx105767_)
               (_$E105771105777_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105769_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105769_))
              (let* ((_$tgt105772105780_
                      (let () (declare (not safe)) (__AST-e _$e105769_)))
                     (_$hd105773105783_
                      (let () (declare (not safe)) (##car _$tgt105772105780_)))
                     (_$tl105774105786_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105772105780_))))
                (let* ((_body105790_ _$tl105774105786_)
                       (__tmp110546
                        (let ((__tmp110547
                               (let ((__tmp110548
                                      (let ((__tmp110549
                                             (let ()
                                               (declare (not safe))
                                               (cons _body105790_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp110549))))
                                 (declare (not safe))
                                 (cons __tmp110548 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp110547))))
                  (declare (not safe))
                  (__SRC__% __tmp110546 _stx105767_)))
              (let () (declare (not safe)) (_$E105771105777_))))))
    (define __compile-begin-annotation%
      (lambda (_stx105714_)
        (let* ((_$e105716_ _stx105714_)
               (_$E105718105730_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105716_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105716_))
              (let* ((_$tgt105719105733_
                      (let () (declare (not safe)) (__AST-e _$e105716_)))
                     (_$hd105720105736_
                      (let () (declare (not safe)) (##car _$tgt105719105733_)))
                     (_$tl105721105739_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105719105733_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105721105739_))
                    (let* ((_$tgt105722105743_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105721105739_)))
                           (_$hd105723105746_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105722105743_)))
                           (_$tl105724105749_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105722105743_))))
                      (let ((_ann105753_ _$hd105723105746_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105724105749_))
                            (let* ((_$tgt105725105755_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105724105749_)))
                                   (_$hd105726105758_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105725105755_)))
                                   (_$tl105727105761_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105725105755_))))
                              (let ((_expr105765_ _$hd105726105758_))
                                (if (let ((__tmp110550
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105727105761_))))
                                      (declare (not safe))
                                      (equal? __tmp110550 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr105765_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105718105730_)))))
                            (let () (declare (not safe)) (_$E105718105730_)))))
                    (let () (declare (not safe)) (_$E105718105730_))))
              (let () (declare (not safe)) (_$E105718105730_))))))
    (define __compile-define-values%
      (lambda (_stx105605_)
        (let* ((_$e105607_ _stx105605_)
               (_$E105609105621_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105607_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105607_))
              (let* ((_$tgt105610105624_
                      (let () (declare (not safe)) (__AST-e _$e105607_)))
                     (_$hd105611105627_
                      (let () (declare (not safe)) (##car _$tgt105610105624_)))
                     (_$tl105612105630_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105610105624_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105612105630_))
                    (let* ((_$tgt105613105634_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105612105630_)))
                           (_$hd105614105637_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105613105634_)))
                           (_$tl105615105640_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105613105634_))))
                      (let ((_hd105644_ _$hd105614105637_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105615105640_))
                            (let* ((_$tgt105616105646_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105615105640_)))
                                   (_$hd105617105649_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105616105646_)))
                                   (_$tl105618105652_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105616105646_))))
                              (let ((_expr105656_ _$hd105617105649_))
                                (if (let ((__tmp110583
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105618105652_))))
                                      (declare (not safe))
                                      (equal? __tmp110583 '()))
                                    (let* ((_$e105658_ _hd105644_)
                                           (_$E105660105701_
                                            (lambda ()
                                              (let ((_$E105661105686_
                                                     (lambda ()
                                                       (let* ((_$E105662105673_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e105658_))))
                      (_ids105676_ _hd105644_)
                      (_len105678_ (length _ids105676_))
                      (_tmp105680_
                       (let ((__tmp110551 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp110551))))
                 (let ((__tmp110552
                        (let ((__tmp110553
                               (let ((__tmp110570
                                      (let ((__tmp110571
                                             (let ((__tmp110572
                                                    (let ((__tmp110573
                                                           (let ((__tmp110574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr105656_))))
                     (declare (not safe))
                     (cons __tmp110574 '()))))
              (declare (not safe))
              (cons _tmp105680_ __tmp110573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp110572))))
                                        (declare (not safe))
                                        (__SRC__% __tmp110571 _stx105605_)))
                                     (__tmp110554
                                      (let ((__tmp110566
                                             (let ((__tmp110567
                                                    (let ((__tmp110568
                                                           (let ((__tmp110569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len105678_ '()))))
                     (declare (not safe))
                     (cons _tmp105680_ __tmp110569))))
              (declare (not safe))
              (cons '__check-values __tmp110568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp110567
                                                _stx105605_)))
                                            (__tmp110555
                                             (let ((__tmp110556
                                                    (let ((__tmp110558
                                                           (lambda (_id105683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k105684_)
                     (if (let () (declare (not safe)) (__AST-e _id105683_))
                         (let ((__tmp110559
                                (let ((__tmp110560
                                       (let ((__tmp110565
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id105683_)))
                                             (__tmp110561
                                              (let ((__tmp110562
                                                     (let ((__tmp110563
                                                            (let ((__tmp110564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k105684_ '()))))
                      (declare (not safe))
                      (cons _tmp105680_ __tmp110564))))
               (declare (not safe))
               (cons '##vector-ref __tmp110563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110562 '()))))
                                         (declare (not safe))
                                         (cons __tmp110565 __tmp110561))))
                                  (declare (not safe))
                                  (cons 'define __tmp110560))))
                           (declare (not safe))
                           (__SRC__% __tmp110559 _stx105605_))
                         '#f)))
                  (__tmp110557
                   (let () (declare (not safe)) (iota _len105678_))))
              (declare (not safe))
              (filter-map2 __tmp110558 _ids105676_ __tmp110557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp110556))))
                                        (declare (not safe))
                                        (cons __tmp110566 __tmp110555))))
                                 (declare (not safe))
                                 (cons __tmp110570 __tmp110554))))
                          (declare (not safe))
                          (cons 'begin __tmp110553))))
                   (declare (not safe))
                   (__SRC__% __tmp110552 _stx105605_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e105658_))
                                                    (let* ((_$tgt105663105689_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e105658_)))
                                                           (_$hd105664105692_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt105663105689_)))
                                                           (_$tl105665105695_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt105663105689_))))
                                                      (let ((_id105699_
                                                             _$hd105664105692_))
                                                        (if (let ((__tmp110580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl105665105695_))))
                      (declare (not safe))
                      (equal? __tmp110580 '()))
                    (let ((__tmp110575
                           (let ((__tmp110576
                                  (let ((__tmp110579
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id105699_)))
                                        (__tmp110577
                                         (let ((__tmp110578
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr105656_))))
                                           (declare (not safe))
                                           (cons __tmp110578 '()))))
                                    (declare (not safe))
                                    (cons __tmp110579 __tmp110577))))
                             (declare (not safe))
                             (cons 'define __tmp110576))))
                      (declare (not safe))
                      (__SRC__% __tmp110575 _stx105605_))
                    (let () (declare (not safe)) (_$E105661105686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E105661105686_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e105658_))
                                          (let* ((_$tgt105666105704_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e105658_)))
                                                 (_$hd105667105707_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt105666105704_)))
                                                 (_$tl105668105710_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt105666105704_))))
                                            (if (let ((__tmp110582
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd105667105707_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110582 '#f))
                                                (if (let ((__tmp110581
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl105668105710_))))
                                                      (declare (not safe))
                                                      (equal? __tmp110581 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr105656_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E105660105701_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105660105701_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E105660105701_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105609105621_)))))
                            (let () (declare (not safe)) (_$E105609105621_)))))
                    (let () (declare (not safe)) (_$E105609105621_))))
              (let () (declare (not safe)) (_$E105609105621_))))))
    (define __compile-head-id
      (lambda (_e105603_)
        (let ((__tmp110584
               (if (let () (declare (not safe)) (__AST-e _e105603_))
                   _e105603_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp110584))))
    (define __compile-lambda-head
      (lambda (_hd105560_)
        (let _recur105562_ ((_rest105564_ _hd105560_))
          (let* ((_$e105566_ _rest105564_)
                 (_$E105568105586_
                  (lambda ()
                    (let ((_$E105569105583_
                           (lambda ()
                             (let* ((_$E105570105578_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e105566_))))
                                    (_tail105581_ _$e105566_))
                               (declare (not safe))
                               (__compile-head-id _tail105581_)))))
                      (if (let ((__tmp110585
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e105566_))))
                            (declare (not safe))
                            (equal? __tmp110585 '()))
                          '()
                          (let () (declare (not safe)) (_$E105569105583_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105566_))
                (let* ((_$tgt105571105589_
                        (let () (declare (not safe)) (__AST-e _$e105566_)))
                       (_$hd105572105592_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105571105589_)))
                       (_$tl105573105595_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105571105589_))))
                  (let* ((_hd105599_ _$hd105572105592_)
                         (_rest105601_ _$tl105573105595_))
                    (let ((__tmp110587
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd105599_)))
                          (__tmp110586
                           (let ()
                             (declare (not safe))
                             (_recur105562_ _rest105601_))))
                      (declare (not safe))
                      (cons __tmp110587 __tmp110586))))
                (let () (declare (not safe)) (_$E105568105586_)))))))
    (define __compile-lambda%
      (lambda (_stx105507_)
        (let* ((_$e105509_ _stx105507_)
               (_$E105511105523_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105509_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105509_))
              (let* ((_$tgt105512105526_
                      (let () (declare (not safe)) (__AST-e _$e105509_)))
                     (_$hd105513105529_
                      (let () (declare (not safe)) (##car _$tgt105512105526_)))
                     (_$tl105514105532_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105512105526_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105514105532_))
                    (let* ((_$tgt105515105536_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105514105532_)))
                           (_$hd105516105539_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105515105536_)))
                           (_$tl105517105542_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105515105536_))))
                      (let ((_hd105546_ _$hd105516105539_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105517105542_))
                            (let* ((_$tgt105518105548_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105517105542_)))
                                   (_$hd105519105551_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105518105548_)))
                                   (_$tl105520105554_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105518105548_))))
                              (let ((_body105558_ _$hd105519105551_))
                                (if (let ((__tmp110593
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105520105554_))))
                                      (declare (not safe))
                                      (equal? __tmp110593 '()))
                                    (let ((__tmp110588
                                           (let ((__tmp110589
                                                  (let ((__tmp110592
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd105546_)))
                                                        (__tmp110590
                                                         (let ((__tmp110591
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body105558_))))
                   (declare (not safe))
                   (cons __tmp110591 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110592
                                                          __tmp110590))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp110589))))
                                      (declare (not safe))
                                      (__SRC__% __tmp110588 _stx105507_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105511105523_)))))
                            (let () (declare (not safe)) (_$E105511105523_)))))
                    (let () (declare (not safe)) (_$E105511105523_))))
              (let () (declare (not safe)) (_$E105511105523_))))))
    (define __compile-case-lambda%
      (lambda (_stx105299_)
        (letrec ((_variadic?105301_
                  (lambda (_hd105472_)
                    (let* ((_$e105474_ _hd105472_)
                           (_$E105476105492_
                            (lambda ()
                              (let ((_$E105477105489_
                                     (lambda ()
                                       (let ((_$E105478105486_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e105474_)))))
                                         '#t))))
                                (if (let ((__tmp110594
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e105474_))))
                                      (declare (not safe))
                                      (equal? __tmp110594 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E105477105489_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105474_))
                          (let* ((_$tgt105479105495_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105474_)))
                                 (_$hd105480105498_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105479105495_)))
                                 (_$tl105481105501_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105479105495_))))
                            (let ((_rest105505_ _$tl105481105501_))
                              (declare (not safe))
                              (_variadic?105301_ _rest105505_)))
                          (let () (declare (not safe)) (_$E105476105492_))))))
                 (_arity105302_
                  (lambda (_hd105437_)
                    (let _lp105439_ ((_rest105441_ _hd105437_) (_k105442_ '0))
                      (let* ((_$e105444_ _rest105441_)
                             (_$E105446105457_
                              (lambda ()
                                (let ((_$E105447105454_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e105444_)))))
                                  _k105442_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e105444_))
                            (let* ((_$tgt105448105460_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e105444_)))
                                   (_$hd105449105463_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105448105460_)))
                                   (_$tl105450105466_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105448105460_))))
                              (let* ((_rest105470_ _$tl105450105466_)
                                     (__tmp110595
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k105442_ '1))))
                                (declare (not safe))
                                (_lp105439_ _rest105470_ __tmp110595)))
                            (let ()
                              (declare (not safe))
                              (_$E105446105457_)))))))
                 (_generate105303_
                  (lambda (_rest105364_ _args105365_ _len105366_)
                    (let* ((_$e105368_ _rest105364_)
                           (_$E105370105381_
                            (lambda ()
                              (let* ((_$E105371105378_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e105368_))))
                                     (__tmp110596
                                      (let ((__tmp110597
                                             (let ((__tmp110598
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args105365_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp110598))))
                                        (declare (not safe))
                                        (cons 'error __tmp110597))))
                                (declare (not safe))
                                (__SRC__% __tmp110596 _stx105299_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105368_))
                          (let* ((_$tgt105372105384_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105368_)))
                                 (_$hd105373105387_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105372105384_)))
                                 (_$tl105374105390_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105372105384_))))
                            (let* ((_clause105394_ _$hd105373105387_)
                                   (_rest105396_ _$tl105374105390_)
                                   (_$e105398_ _clause105394_)
                                   (_$E105400105409_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e105398_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e105398_))
                                  (let* ((_$tgt105401105412_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e105398_)))
                                         (_$hd105402105415_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt105401105412_)))
                                         (_$tl105403105418_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt105401105412_))))
                                    (let ((_hd105422_ _$hd105402105415_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl105403105418_))
                                          (let* ((_$tgt105404105424_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105403105418_)))
                                                 (_$hd105405105427_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt105404105424_)))
                                                 (_$tl105406105430_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt105404105424_))))
                                            (if (let ((__tmp110613
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl105406105430_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110613 '()))
                                                (let ((_clen105434_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity105302_
                                                          _hd105422_)))
                                                      (_cmp105435_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?105301_
                                                              _hd105422_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp110599
                                                         (let ((__tmp110600
                                                                (let ((__tmp110610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110611
                                      (let ((__tmp110612
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen105434_ '()))))
                                        (declare (not safe))
                                        (cons _len105366_ __tmp110612))))
                                 (declare (not safe))
                                 (cons _cmp105435_ __tmp110611)))
                              (__tmp110601
                               (let ((__tmp110604
                                      (let ((__tmp110605
                                             (let ((__tmp110606
                                                    (let ((__tmp110608
                                                           (let ((__tmp110609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause105394_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp110609)))
                  (__tmp110607
                   (let () (declare (not safe)) (cons _args105365_ '()))))
              (declare (not safe))
              (cons __tmp110608 __tmp110607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp110606))))
                                        (declare (not safe))
                                        (__SRC__% __tmp110605 _stx105299_)))
                                     (__tmp110602
                                      (let ((__tmp110603
                                             (let ()
                                               (declare (not safe))
                                               (_generate105303_
                                                _rest105396_
                                                _args105365_
                                                _len105366_))))
                                        (declare (not safe))
                                        (cons __tmp110603 '()))))
                                 (declare (not safe))
                                 (cons __tmp110604 __tmp110602))))
                          (declare (not safe))
                          (cons __tmp110610 __tmp110601))))
                   (declare (not safe))
                   (cons 'if __tmp110600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp110599
                                                     _stx105299_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105400105409_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E105400105409_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E105400105409_)))))
                          (let () (declare (not safe)) (_$E105370105381_)))))))
          (let* ((_$e105305_ _stx105299_)
                 (_$E105307105339_
                  (lambda ()
                    (let ((_$E105308105321_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e105305_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105305_))
                          (let* ((_$tgt105309105324_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105305_)))
                                 (_$hd105310105327_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105309105324_)))
                                 (_$tl105311105330_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105309105324_))))
                            (let ((_clauses105334_ _$tl105311105330_))
                              (let ((_args105336_
                                     (let ((__tmp110614 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp110614 _stx105299_)))
                                    (_len105337_
                                     (let ((__tmp110615 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp110615 _stx105299_))))
                                (let ((__tmp110616
                                       (let ((__tmp110617
                                              (let ((__tmp110618
                                                     (let ((__tmp110619
                                                            (let ((__tmp110620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110621
                                  (let ((__tmp110624
                                         (let ((__tmp110625
                                                (let ((__tmp110626
                                                       (let ((__tmp110627
                                                              (let ((__tmp110628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp110629
                                    (let ()
                                      (declare (not safe))
                                      (cons _args105336_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp110629))))
                        (declare (not safe))
                        (__SRC__% __tmp110628 _stx105299_))))
                 (declare (not safe))
                 (cons __tmp110627 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len105337_
                                                        __tmp110626))))
                                           (declare (not safe))
                                           (cons __tmp110625 '())))
                                        (__tmp110622
                                         (let ((__tmp110623
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate105303_
                                                   _clauses105334_
                                                   _args105336_
                                                   _len105337_))))
                                           (declare (not safe))
                                           (cons __tmp110623 '()))))
                                    (declare (not safe))
                                    (cons __tmp110624 __tmp110622))))
                             (declare (not safe))
                             (cons 'let __tmp110621))))
                      (declare (not safe))
                      (__SRC__% __tmp110620 _stx105299_))))
               (declare (not safe))
               (cons __tmp110619 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args105336_
                                                      __tmp110618))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp110617))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110616 _stx105299_)))))
                          (let () (declare (not safe)) (_$E105308105321_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105305_))
                (let* ((_$tgt105312105342_
                        (let () (declare (not safe)) (__AST-e _$e105305_)))
                       (_$hd105313105345_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105312105342_)))
                       (_$tl105314105348_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105312105342_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl105314105348_))
                      (let* ((_$tgt105315105352_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl105314105348_)))
                             (_$hd105316105355_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt105315105352_)))
                             (_$tl105317105358_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt105315105352_))))
                        (let ((_clause105362_ _$hd105316105355_))
                          (if (let ((__tmp110631
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl105317105358_))))
                                (declare (not safe))
                                (equal? __tmp110631 '()))
                              (let ((__tmp110630
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause105362_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp110630))
                              (let ()
                                (declare (not safe))
                                (_$E105307105339_)))))
                      (let () (declare (not safe)) (_$E105307105339_))))
                (let () (declare (not safe)) (_$E105307105339_)))))))
    (define __compile-let-form
      (lambda (_stx105068_ _compile-simple105069_ _compile-values105070_)
        (letrec ((_simple-bind?105072_
                  (lambda (_hd105257_)
                    (let* ((_hd105258105268_ _hd105257_)
                           (_else105261105276_ (lambda () '#f)))
                      (let ((_K105264105289_ (lambda (_id105287_) '#t))
                            (_K105263105281_ (lambda () '#t)))
                        (let ((_try-match105260105284_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd105258105268_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K105263105281_))
                                     (let ()
                                       (declare (not safe))
                                       (_else105261105276_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd105258105268_))
                              (let ((_tl105266105294_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd105258105268_)))
                                    (_hd105265105292_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd105258105268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl105266105294_))
                                    (let ((_id105297_ _hd105265105292_))
                                      (declare (not safe))
                                      (_K105264105289_ _id105297_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match105260105284_))))
                              (let ()
                                (declare (not safe))
                                (_try-match105260105284_))))))))
                 (_car-e105073_
                  (lambda (_hd105255_)
                    (if (let () (declare (not safe)) (pair? _hd105255_))
                        (car _hd105255_)
                        _hd105255_))))
          (let* ((_$e105075_ _stx105068_)
                 (_$E105077105220_
                  (lambda ()
                    (let ((_$E105078105100_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e105075_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105075_))
                          (let* ((_$tgt105079105103_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105075_)))
                                 (_$hd105080105106_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105079105103_)))
                                 (_$tl105081105109_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105079105103_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl105081105109_))
                                (let* ((_$tgt105082105113_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl105081105109_)))
                                       (_$hd105083105116_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt105082105113_)))
                                       (_$tl105084105119_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt105082105113_))))
                                  (let ((_hd105123_ _$hd105083105116_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl105084105119_))
                                        (let* ((_$tgt105085105125_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl105084105119_)))
                                               (_$hd105086105128_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt105085105125_)))
                                               (_$tl105087105131_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt105085105125_))))
                                          (let ((_body105135_
                                                 _$hd105086105128_))
                                            (if (let ((__tmp110634
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl105087105131_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110634 '()))
                                                (let* ((_hd-ids105175_
                                                        (map (lambda (_bind105137_)
                                                               (let* ((_$e105139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind105137_)
                              (_$E105141105150_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e105139_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e105139_))
                             (let* ((_$tgt105142105153_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e105139_)))
                                    (_$hd105143105156_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt105142105153_)))
                                    (_$tl105144105159_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt105142105153_))))
                               (let ((_ids105163_ _$hd105143105156_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl105144105159_))
                                     (let* ((_$tgt105145105165_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl105144105159_)))
                                            (_$hd105146105168_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt105145105165_)))
                                            (_$tl105147105171_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt105145105165_))))
                                       (if (let ((__tmp110632
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105147105171_))))
                                             (declare (not safe))
                                             (equal? __tmp110632 '()))
                                           _ids105163_
                                           (let ()
                                             (declare (not safe))
                                             (_$E105141105150_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E105141105150_)))))
                             (let ()
                               (declare (not safe))
                               (_$E105141105150_)))))
                     _hd105123_))
               (_exprs105215_
                (map (lambda (_bind105177_)
                       (let* ((_$e105179_ _bind105177_)
                              (_$E105181105190_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e105179_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e105179_))
                             (let* ((_$tgt105182105193_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e105179_)))
                                    (_$hd105183105196_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt105182105193_)))
                                    (_$tl105184105199_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt105182105193_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl105184105199_))
                                   (let* ((_$tgt105185105203_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105184105199_)))
                                          (_$hd105186105206_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt105185105203_)))
                                          (_$tl105187105209_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt105185105203_))))
                                     (let ((_expr105213_ _$hd105186105206_))
                                       (if (let ((__tmp110633
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105187105209_))))
                                             (declare (not safe))
                                             (equal? __tmp110633 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr105213_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E105181105190_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E105181105190_))))
                             (let ()
                               (declare (not safe))
                               (_$E105181105190_)))))
                     _hd105123_))
               (_body105217_
                (let () (declare (not safe)) (__compile _body105135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?105072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids105175_))
              (_compile-simple105069_
               (map _car-e105073_ _hd-ids105175_)
               _exprs105215_
               _body105217_)
              (_compile-values105070_
               _hd-ids105175_
               _exprs105215_
               _body105217_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105078105100_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E105078105100_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E105078105100_))))
                          (let () (declare (not safe)) (_$E105078105100_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105075_))
                (let* ((_$tgt105088105223_
                        (let () (declare (not safe)) (__AST-e _$e105075_)))
                       (_$hd105089105226_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105088105223_)))
                       (_$tl105090105229_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105088105223_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl105090105229_))
                      (let* ((_$tgt105091105233_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl105090105229_)))
                             (_$hd105092105236_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt105091105233_)))
                             (_$tl105093105239_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt105091105233_))))
                        (if (let ((__tmp110636
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd105092105236_))))
                              (declare (not safe))
                              (equal? __tmp110636 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl105093105239_))
                                (let* ((_$tgt105094105243_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl105093105239_)))
                                       (_$hd105095105246_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt105094105243_)))
                                       (_$tl105096105249_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt105094105243_))))
                                  (let ((_body105253_ _$hd105095105246_))
                                    (if (let ((__tmp110635
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl105096105249_))))
                                          (declare (not safe))
                                          (equal? __tmp110635 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body105253_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E105077105220_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E105077105220_)))
                            (let () (declare (not safe)) (_$E105077105220_))))
                      (let () (declare (not safe)) (_$E105077105220_))))
                (let () (declare (not safe)) (_$E105077105220_)))))))
    (define __compile-let-values%
      (lambda (_stx104883_)
        (letrec ((_compile-simple104885_
                  (lambda (_hd-ids105064_ _exprs105065_ _body105066_)
                    (let ((__tmp110637
                           (let ((__tmp110638
                                  (let ((__tmp110640
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids105064_)
                                              _exprs105065_))
                                        (__tmp110639
                                         (let ()
                                           (declare (not safe))
                                           (cons _body105066_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110640 __tmp110639))))
                             (declare (not safe))
                             (cons 'let __tmp110638))))
                      (declare (not safe))
                      (__SRC__% __tmp110637 _stx104883_))))
                 (_compile-values104886_
                  (lambda (_hd-ids104982_ _exprs104983_ _body104984_)
                    (let _lp104986_ ((_rest104988_ _hd-ids104982_)
                                     (_exprs104989_ _exprs104983_)
                                     (_bind104990_ '())
                                     (_post104991_ '()))
                      (let* ((_rest104992105006_ _rest104988_)
                             (_else104995105014_
                              (lambda ()
                                (let ((__tmp110641
                                       (let ((__tmp110642
                                              (let ((__tmp110645
                                                     (reverse _bind104990_))
                                                    (__tmp110643
                                                     (let ((__tmp110644
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post104887_
                                                               _post104991_
                                                               _body104984_))))
                                                       (declare (not safe))
                                                       (cons __tmp110644
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp110645
                                                      __tmp110643))))
                                         (declare (not safe))
                                         (cons 'let __tmp110642))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110641 _stx104883_)))))
                        (let ((_K105000105047_
                               (lambda (_rest105044_ _id105045_)
                                 (let ((__tmp110651 (cdr _exprs104989_))
                                       (__tmp110646
                                        (let ((__tmp110647
                                               (let ((__tmp110650
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id105045_)))
                                                     (__tmp110648
                                                      (let ((__tmp110649
                                                             (car _exprs104989_)))
                                                        (declare (not safe))
                                                        (cons __tmp110649
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp110650
                                                       __tmp110648))))
                                          (declare (not safe))
                                          (cons __tmp110647 _bind104990_))))
                                   (declare (not safe))
                                   (_lp104986_
                                    _rest105044_
                                    __tmp110651
                                    __tmp110646
                                    _post104991_))))
                              (_K104997105029_
                               (lambda (_rest105018_ _hd105019_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd105019_))
                                     (let ((__tmp110672 (cdr _exprs104989_))
                                           (__tmp110665
                                            (let ((__tmp110666
                                                   (let ((__tmp110671
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd105019_)))
                                                         (__tmp110667
                                                          (let ((__tmp110668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp110669
                                (let ((__tmp110670 (car _exprs104989_)))
                                  (declare (not safe))
                                  (cons __tmp110670 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp110669))))
                    (declare (not safe))
                    (cons __tmp110668 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp110671
                                                           __tmp110667))))
                                              (declare (not safe))
                                              (cons __tmp110666
                                                    _bind104990_))))
                                       (declare (not safe))
                                       (_lp104986_
                                        _rest105018_
                                        __tmp110672
                                        __tmp110665
                                        _post104991_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd105019_))
                                         (let* ((_len105021_
                                                 (length _hd105019_))
                                                (_tmp105023_
                                                 (let ((__tmp110652 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp110652))))
                                           (let ((__tmp110664
                                                  (cdr _exprs104989_))
                                                 (__tmp110660
                                                  (let ((__tmp110661
                                                         (let ((__tmp110662
                                                                (let ((__tmp110663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs104989_)))
                          (declare (not safe))
                          (cons __tmp110663 '()))))
                   (declare (not safe))
                   (cons _tmp105023_ __tmp110662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110661
                                                          _bind104990_)))
                                                 (__tmp110653
                                                  (let ((__tmp110654
                                                         (let ((__tmp110655
                                                                (let ((__tmp110656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110658
                                      (lambda (_id105026_ _k105027_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id105026_))
                                            (let ((__tmp110659
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id105026_))))
                                              (declare (not safe))
                                              (cons __tmp110659 _k105027_))
                                            '#f)))
                                     (__tmp110657
                                      (let ()
                                        (declare (not safe))
                                        (iota _len105021_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp110658
                                  _hd105019_
                                  __tmp110657))))
                          (declare (not safe))
                          (cons _len105021_ __tmp110656))))
                   (declare (not safe))
                   (cons _tmp105023_ __tmp110655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110654
                                                          _post104991_))))
                                             (declare (not safe))
                                             (_lp104986_
                                              _rest105018_
                                              __tmp110664
                                              __tmp110660
                                              __tmp110653)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx104883_
                                            _hd105019_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104992105006_))
                              (let ((_tl105002105052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104992105006_)))
                                    (_hd105001105050_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104992105006_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd105001105050_))
                                    (let ((_tl105004105057_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd105001105050_)))
                                          (_hd105003105055_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd105001105050_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl105004105057_))
                                          (let ((_id105060_ _hd105003105055_)
                                                (_rest105062_
                                                 _tl105002105052_))
                                            (let ()
                                              (declare (not safe))
                                              (_K105000105047_
                                               _rest105062_
                                               _id105060_)))
                                          (let ((_hd105037_ _hd105001105050_)
                                                (_rest105039_
                                                 _tl105002105052_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104997105029_
                                               _rest105039_
                                               _hd105037_)))))
                                    (let ((_hd105037_ _hd105001105050_)
                                          (_rest105039_ _tl105002105052_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104997105029_
                                         _rest105039_
                                         _hd105037_)))))
                              (let ()
                                (declare (not safe))
                                (_else104995105014_))))))))
                 (_compile-post104887_
                  (lambda (_post104889_ _body104890_)
                    (let _lp104892_ ((_rest104894_ _post104889_)
                                     (_check104895_ '())
                                     (_bind104896_ '()))
                      (let* ((_rest104897104909_ _rest104894_)
                             (_else104899104917_
                              (lambda ()
                                (let ((__tmp110673
                                       (let ((__tmp110674
                                              (let ((__tmp110675
                                                     (let ((__tmp110676
                                                            (let ((__tmp110677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110678
                                  (let ((__tmp110679
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104890_ '()))))
                                    (declare (not safe))
                                    (cons _bind104896_ __tmp110679))))
                             (declare (not safe))
                             (cons 'let __tmp110678))))
                      (declare (not safe))
                      (__SRC__% __tmp110677 _stx104883_))))
               (declare (not safe))
               (cons __tmp110676 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp110675
                                                        _check104895_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp110674))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110673 _stx104883_))))
                             (_K104901104956_
                              (lambda (_rest104920_
                                       _init104921_
                                       _len104922_
                                       _tmp104923_)
                                (let ((__tmp110687
                                       (let ((__tmp110688
                                              (let ((__tmp110689
                                                     (let ((__tmp110690
                                                            (let ((__tmp110691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len104922_ '()))))
                      (declare (not safe))
                      (cons _tmp104923_ __tmp110691))))
               (declare (not safe))
               (cons '__check-values __tmp110690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp110689
                                                 _stx104883_))))
                                         (declare (not safe))
                                         (cons __tmp110688 _check104895_)))
                                      (__tmp110680
                                       (let ((__tmp110681
                                              (lambda (_hd104925_ _r104926_)
                                                (let* ((_hd104927104934_
                                                        _hd104925_)
                                                       (_E104929104938_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd104927104934_)))
               (_K104930104944_
                (lambda (_k104941_ _id104942_)
                  (let ((__tmp110682
                         (let ((__tmp110683
                                (let ((__tmp110684
                                       (let ((__tmp110685
                                              (let ((__tmp110686
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k104941_ '()))))
                                                (declare (not safe))
                                                (cons _tmp104923_
                                                      __tmp110686))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp110685))))
                                  (declare (not safe))
                                  (cons __tmp110684 '()))))
                           (declare (not safe))
                           (cons _id104942_ __tmp110683))))
                    (declare (not safe))
                    (cons __tmp110682 _r104926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd104927104934_))
                                                      (let ((_hd104931104947_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd104927104934_)))
                    (_tl104932104949_
                     (let () (declare (not safe)) (##cdr _hd104927104934_))))
                (let* ((_id104952_ _hd104931104947_)
                       (_k104954_ _tl104932104949_))
                  (declare (not safe))
                  (_K104930104944_ _k104954_ _id104952_)))
              (let () (declare (not safe)) (_E104929104938_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp110681
                                                 _bind104896_
                                                 _init104921_))))
                                  (declare (not safe))
                                  (_lp104892_
                                   _rest104920_
                                   __tmp110687
                                   __tmp110680)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104897104909_))
                            (let ((_hd104902104959_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104897104909_)))
                                  (_tl104903104961_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104897104909_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd104902104959_))
                                  (let ((_hd104904104964_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd104902104959_)))
                                        (_tl104905104966_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd104902104959_))))
                                    (let ((_tmp104969_ _hd104904104964_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104905104966_))
                                          (let ((_hd104906104971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl104905104966_)))
                                                (_tl104907104973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104905104966_))))
                                            (let* ((_len104976_
                                                    _hd104906104971_)
                                                   (_init104978_
                                                    _tl104907104973_)
                                                   (_rest104980_
                                                    _tl104903104961_))
                                              (declare (not safe))
                                              (_K104901104956_
                                               _rest104980_
                                               _init104978_
                                               _len104976_
                                               _tmp104969_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else104899104917_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else104899104917_))))
                            (let ()
                              (declare (not safe))
                              (_else104899104917_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104883_
             _compile-simple104885_
             _compile-values104886_)))))
    (define __compile-letrec-values%
      (lambda (_stx104683_)
        (letrec ((_compile-simple104685_
                  (lambda (_hd-ids104879_ _exprs104880_ _body104881_)
                    (let ((__tmp110692
                           (let ((__tmp110693
                                  (let ((__tmp110695
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids104879_)
                                              _exprs104880_))
                                        (__tmp110694
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104881_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110695 __tmp110694))))
                             (declare (not safe))
                             (cons 'letrec __tmp110693))))
                      (declare (not safe))
                      (__SRC__% __tmp110692 _stx104683_))))
                 (_compile-values104686_
                  (lambda (_hd-ids104793_ _exprs104794_ _body104795_)
                    (let _lp104797_ ((_rest104799_ _hd-ids104793_)
                                     (_exprs104800_ _exprs104794_)
                                     (_pre104801_ '())
                                     (_bind104802_ '())
                                     (_post104803_ '()))
                      (let* ((_rest104804104818_ _rest104799_)
                             (_else104807104826_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner104687_
                                   _pre104801_
                                   _bind104802_
                                   _post104803_
                                   _body104795_)))))
                        (let ((_K104812104862_
                               (lambda (_rest104859_ _id104860_)
                                 (let ((__tmp110701 (cdr _exprs104800_))
                                       (__tmp110696
                                        (let ((__tmp110697
                                               (let ((__tmp110700
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id104860_)))
                                                     (__tmp110698
                                                      (let ((__tmp110699
                                                             (car _exprs104800_)))
                                                        (declare (not safe))
                                                        (cons __tmp110699
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp110700
                                                       __tmp110698))))
                                          (declare (not safe))
                                          (cons __tmp110697 _bind104802_))))
                                   (declare (not safe))
                                   (_lp104797_
                                    _rest104859_
                                    __tmp110701
                                    _pre104801_
                                    __tmp110696
                                    _post104803_))))
                              (_K104809104844_
                               (lambda (_rest104830_ _hd104831_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104831_))
                                     (let ((__tmp110729 (cdr _exprs104800_))
                                           (__tmp110722
                                            (let ((__tmp110723
                                                   (let ((__tmp110728
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd104831_)))
                                                         (__tmp110724
                                                          (let ((__tmp110725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp110726
                                (let ((__tmp110727 (car _exprs104800_)))
                                  (declare (not safe))
                                  (cons __tmp110727 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp110726))))
                    (declare (not safe))
                    (cons __tmp110725 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp110728
                                                           __tmp110724))))
                                              (declare (not safe))
                                              (cons __tmp110723
                                                    _bind104802_))))
                                       (declare (not safe))
                                       (_lp104797_
                                        _rest104830_
                                        __tmp110729
                                        _pre104801_
                                        __tmp110722
                                        _post104803_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd104831_))
                                         (let* ((_len104833_
                                                 (length _hd104831_))
                                                (_tmp104835_
                                                 (let ((__tmp110702 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp110702))))
                                           (let ((__tmp110721
                                                  (cdr _exprs104800_))
                                                 (__tmp110714
                                                  (let ((__tmp110715
                                                         (lambda (_id104838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r104839_)
                   (if (let () (declare (not safe)) (__AST-e _id104838_))
                       (let ((__tmp110716
                              (let ((__tmp110720
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id104838_)))
                                    (__tmp110717
                                     (let ((__tmp110718
                                            (let ((__tmp110719
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp110719))))
                                       (declare (not safe))
                                       (cons __tmp110718 '()))))
                                (declare (not safe))
                                (cons __tmp110720 __tmp110717))))
                         (declare (not safe))
                         (cons __tmp110716 _r104839_))
                       _r104839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp110715
                                                            _pre104801_
                                                            _hd104831_)))
                                                 (__tmp110710
                                                  (let ((__tmp110711
                                                         (let ((__tmp110712
                                                                (let ((__tmp110713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs104800_)))
                          (declare (not safe))
                          (cons __tmp110713 '()))))
                   (declare (not safe))
                   (cons _tmp104835_ __tmp110712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110711
                                                          _bind104802_)))
                                                 (__tmp110703
                                                  (let ((__tmp110704
                                                         (let ((__tmp110705
                                                                (let ((__tmp110706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110708
                                      (lambda (_id104841_ _k104842_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id104841_))
                                            (let ((__tmp110709
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id104841_))))
                                              (declare (not safe))
                                              (cons __tmp110709 _k104842_))
                                            '#f)))
                                     (__tmp110707
                                      (let ()
                                        (declare (not safe))
                                        (iota _len104833_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp110708
                                  _hd104831_
                                  __tmp110707))))
                          (declare (not safe))
                          (cons _len104833_ __tmp110706))))
                   (declare (not safe))
                   (cons _tmp104835_ __tmp110705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110704
                                                          _post104803_))))
                                             (declare (not safe))
                                             (_lp104797_
                                              _rest104830_
                                              __tmp110721
                                              __tmp110714
                                              __tmp110710
                                              __tmp110703)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx104683_
                                            _hd104831_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104804104818_))
                              (let ((_tl104814104867_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104804104818_)))
                                    (_hd104813104865_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104804104818_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104813104865_))
                                    (let ((_tl104816104872_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104813104865_)))
                                          (_hd104815104870_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104813104865_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104816104872_))
                                          (let ((_id104875_ _hd104815104870_)
                                                (_rest104877_
                                                 _tl104814104867_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104812104862_
                                               _rest104877_
                                               _id104875_)))
                                          (let ((_hd104852_ _hd104813104865_)
                                                (_rest104854_
                                                 _tl104814104867_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104809104844_
                                               _rest104854_
                                               _hd104852_)))))
                                    (let ((_hd104852_ _hd104813104865_)
                                          (_rest104854_ _tl104814104867_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104809104844_
                                         _rest104854_
                                         _hd104852_)))))
                              (let ()
                                (declare (not safe))
                                (_else104807104826_))))))))
                 (_compile-inner104687_
                  (lambda (_pre104788_ _bind104789_ _post104790_ _body104791_)
                    (if (let () (declare (not safe)) (null? _pre104788_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind104688_
                           _bind104789_
                           _post104790_
                           _body104791_))
                        (let ((__tmp110730
                               (let ((__tmp110731
                                      (let ((__tmp110734 (reverse _pre104788_))
                                            (__tmp110732
                                             (let ((__tmp110733
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind104688_
                                                       _bind104789_
                                                       _post104790_
                                                       _body104791_))))
                                               (declare (not safe))
                                               (cons __tmp110733 '()))))
                                        (declare (not safe))
                                        (cons __tmp110734 __tmp110732))))
                                 (declare (not safe))
                                 (cons 'let __tmp110731))))
                          (declare (not safe))
                          (__SRC__% __tmp110730 _stx104683_)))))
                 (_compile-bind104688_
                  (lambda (_bind104784_ _post104785_ _body104786_)
                    (let ((__tmp110735
                           (let ((__tmp110736
                                  (let ((__tmp110739 (reverse _bind104784_))
                                        (__tmp110737
                                         (let ((__tmp110738
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post104689_
                                                   _post104785_
                                                   _body104786_))))
                                           (declare (not safe))
                                           (cons __tmp110738 '()))))
                                    (declare (not safe))
                                    (cons __tmp110739 __tmp110737))))
                             (declare (not safe))
                             (cons 'letrec __tmp110736))))
                      (declare (not safe))
                      (__SRC__% __tmp110735 _stx104683_))))
                 (_compile-post104689_
                  (lambda (_post104691_ _body104692_)
                    (let _lp104694_ ((_rest104696_ _post104691_)
                                     (_check104697_ '())
                                     (_bind104698_ '()))
                      (let* ((_rest104699104711_ _rest104696_)
                             (_else104701104719_
                              (lambda ()
                                (let ((__tmp110740
                                       (let ((__tmp110741
                                              (let ((__tmp110742
                                                     (let ((__tmp110743
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body104692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp110743 _bind104698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp110742
                                                        _check104697_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp110741))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110740 _stx104683_))))
                             (_K104703104758_
                              (lambda (_rest104722_
                                       _init104723_
                                       _len104724_
                                       _tmp104725_)
                                (let ((__tmp110752
                                       (let ((__tmp110753
                                              (let ((__tmp110754
                                                     (let ((__tmp110755
                                                            (let ((__tmp110756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len104724_ '()))))
                      (declare (not safe))
                      (cons _tmp104725_ __tmp110756))))
               (declare (not safe))
               (cons '__check-values __tmp110755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp110754
                                                 _stx104683_))))
                                         (declare (not safe))
                                         (cons __tmp110753 _check104697_)))
                                      (__tmp110744
                                       (let ((__tmp110745
                                              (lambda (_hd104727_ _r104728_)
                                                (let* ((_hd104729104736_
                                                        _hd104727_)
                                                       (_E104731104740_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd104729104736_)))
               (_K104732104746_
                (lambda (_k104743_ _id104744_)
                  (let ((__tmp110746
                         (let ((__tmp110747
                                (let ((__tmp110748
                                       (let ((__tmp110749
                                              (let ((__tmp110750
                                                     (let ((__tmp110751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k104743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp104725_ __tmp110751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp110750))))
                                         (declare (not safe))
                                         (cons __tmp110749 '()))))
                                  (declare (not safe))
                                  (cons _id104744_ __tmp110748))))
                           (declare (not safe))
                           (cons 'set! __tmp110747))))
                    (declare (not safe))
                    (cons __tmp110746 _r104728_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd104729104736_))
                                                      (let ((_hd104733104749_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd104729104736_)))
                    (_tl104734104751_
                     (let () (declare (not safe)) (##cdr _hd104729104736_))))
                (let* ((_id104754_ _hd104733104749_)
                       (_k104756_ _tl104734104751_))
                  (declare (not safe))
                  (_K104732104746_ _k104756_ _id104754_)))
              (let () (declare (not safe)) (_E104731104740_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp110745
                                                 _bind104698_
                                                 _init104723_))))
                                  (declare (not safe))
                                  (_lp104694_
                                   _rest104722_
                                   __tmp110752
                                   __tmp110744)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104699104711_))
                            (let ((_hd104704104761_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104699104711_)))
                                  (_tl104705104763_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104699104711_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd104704104761_))
                                  (let ((_hd104706104766_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd104704104761_)))
                                        (_tl104707104768_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd104704104761_))))
                                    (let ((_tmp104771_ _hd104706104766_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104707104768_))
                                          (let ((_hd104708104773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl104707104768_)))
                                                (_tl104709104775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104707104768_))))
                                            (let* ((_len104778_
                                                    _hd104708104773_)
                                                   (_init104780_
                                                    _tl104709104775_)
                                                   (_rest104782_
                                                    _tl104705104763_))
                                              (declare (not safe))
                                              (_K104703104758_
                                               _rest104782_
                                               _init104780_
                                               _len104778_
                                               _tmp104771_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else104701104719_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else104701104719_))))
                            (let ()
                              (declare (not safe))
                              (_else104701104719_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104683_
             _compile-simple104685_
             _compile-values104686_)))))
    (define __compile-letrec*-values%
      (lambda (_stx104438_)
        (letrec ((_compile-simple104440_
                  (lambda (_hd-ids104679_ _exprs104680_ _body104681_)
                    (let ((__tmp110757
                           (let ((__tmp110758
                                  (let ((__tmp110760
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids104679_)
                                              _exprs104680_))
                                        (__tmp110759
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104681_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110760 __tmp110759))))
                             (declare (not safe))
                             (cons 'letrec* __tmp110758))))
                      (declare (not safe))
                      (__SRC__% __tmp110757 _stx104438_))))
                 (_compile-values104441_
                  (lambda (_hd-ids104590_ _exprs104591_ _body104592_)
                    (let _lp104594_ ((_rest104596_ _hd-ids104590_)
                                     (_exprs104597_ _exprs104591_)
                                     (_bind104598_ '())
                                     (_post104599_ '()))
                      (let* ((_rest104600104614_ _rest104596_)
                             (_else104603104622_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind104442_
                                   _bind104598_
                                   _post104599_
                                   _body104592_)))))
                        (let ((_K104608104662_
                               (lambda (_rest104657_ _hd104658_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104658_))
                                     (let ((_id104660_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd104658_))))
                                       (let ((__tmp110775 (cdr _exprs104597_))
                                             (__tmp110770
                                              (let ((__tmp110771
                                                     (let ((__tmp110772
                                                            (let ((__tmp110773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110774
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp110774))))
                      (declare (not safe))
                      (cons __tmp110773 '()))))
               (declare (not safe))
               (cons _id104660_ __tmp110772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110771
                                                      _bind104598_)))
                                             (__tmp110766
                                              (let ((__tmp110767
                                                     (let ((__tmp110768
                                                            (let ((__tmp110769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs104597_)))
                      (declare (not safe))
                      (cons __tmp110769 '()))))
               (declare (not safe))
               (cons _id104660_ __tmp110768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110767
                                                      _post104599_))))
                                         (declare (not safe))
                                         (_lp104594_
                                          _rest104657_
                                          __tmp110775
                                          __tmp110770
                                          __tmp110766)))
                                     (let ((__tmp110765 (cdr _exprs104597_))
                                           (__tmp110761
                                            (let ((__tmp110762
                                                   (let ((__tmp110763
                                                          (let ((__tmp110764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs104597_)))
                    (declare (not safe))
                    (cons __tmp110764 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp110763))))
                                              (declare (not safe))
                                              (cons __tmp110762
                                                    _post104599_))))
                                       (declare (not safe))
                                       (_lp104594_
                                        _rest104657_
                                        __tmp110765
                                        _bind104598_
                                        __tmp110761)))))
                              (_K104605104642_
                               (lambda (_rest104626_ _hd104627_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104627_))
                                     (let ((_id104629_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd104627_))))
                                       (let ((__tmp110811 (cdr _exprs104597_))
                                             (__tmp110806
                                              (let ((__tmp110807
                                                     (let ((__tmp110808
                                                            (let ((__tmp110809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110810
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp110810))))
                      (declare (not safe))
                      (cons __tmp110809 '()))))
               (declare (not safe))
               (cons _id104629_ __tmp110808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110807
                                                      _bind104598_)))
                                             (__tmp110800
                                              (let ((__tmp110801
                                                     (let ((__tmp110802
                                                            (let ((__tmp110803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110804
                                  (let ((__tmp110805 (car _exprs104597_)))
                                    (declare (not safe))
                                    (cons __tmp110805 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp110804))))
                      (declare (not safe))
                      (cons __tmp110803 '()))))
               (declare (not safe))
               (cons _id104629_ __tmp110802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110801
                                                      _post104599_))))
                                         (declare (not safe))
                                         (_lp104594_
                                          _rest104626_
                                          __tmp110811
                                          __tmp110806
                                          __tmp110800)))
                                     (if (let ((__tmp110799
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd104627_))))
                                           (declare (not safe))
                                           (not __tmp110799))
                                         (let ((__tmp110798
                                                (cdr _exprs104597_))
                                               (__tmp110794
                                                (let ((__tmp110795
                                                       (let ((__tmp110796
                                                              (let ((__tmp110797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs104597_)))
                        (declare (not safe))
                        (cons __tmp110797 '()))))
                 (declare (not safe))
                 (cons '#f __tmp110796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp110795
                                                        _post104599_))))
                                           (declare (not safe))
                                           (_lp104594_
                                            _rest104626_
                                            __tmp110798
                                            _bind104598_
                                            __tmp110794))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd104627_))
                                             (let* ((_len104631_
                                                     (length _hd104627_))
                                                    (_tmp104633_
                                                     (let ((__tmp110776
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp110776))))
                                               (let ((__tmp110793
                                                      (cdr _exprs104597_))
                                                     (__tmp110786
                                                      (let ((__tmp110787
                                                             (lambda (_id104636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r104637_)
                       (if (let () (declare (not safe)) (__AST-e _id104636_))
                           (let ((__tmp110788
                                  (let ((__tmp110792
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id104636_)))
                                        (__tmp110789
                                         (let ((__tmp110790
                                                (let ((__tmp110791
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp110791))))
                                           (declare (not safe))
                                           (cons __tmp110790 '()))))
                                    (declare (not safe))
                                    (cons __tmp110792 __tmp110789))))
                             (declare (not safe))
                             (cons __tmp110788 _r104637_))
                           _r104637_))))
                (declare (not safe))
                (foldl1 __tmp110787 _bind104598_ _hd104627_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp110777
                                                      (let ((__tmp110778
                                                             (let ((__tmp110779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp110785 (car _exprs104597_))
                                  (__tmp110780
                                   (let ((__tmp110781
                                          (let ((__tmp110783
                                                 (lambda (_id104639_ _k104640_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id104639_))
                                                       (let ((__tmp110784
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id104639_))))
                 (declare (not safe))
                 (cons __tmp110784 _k104640_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp110782
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len104631_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp110783
                                             _hd104627_
                                             __tmp110782))))
                                     (declare (not safe))
                                     (cons _len104631_ __tmp110781))))
                              (declare (not safe))
                              (cons __tmp110785 __tmp110780))))
                       (declare (not safe))
                       (cons _tmp104633_ __tmp110779))))
                (declare (not safe))
                (cons __tmp110778 _post104599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp104594_
                                                  _rest104626_
                                                  __tmp110793
                                                  __tmp110786
                                                  __tmp110777)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx104438_
                                                _hd104627_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104600104614_))
                              (let ((_tl104610104667_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104600104614_)))
                                    (_hd104609104665_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104600104614_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104609104665_))
                                    (let ((_tl104612104672_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104609104665_)))
                                          (_hd104611104670_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104609104665_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104612104672_))
                                          (let ((_hd104675_ _hd104611104670_)
                                                (_rest104677_
                                                 _tl104610104667_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104608104662_
                                               _rest104677_
                                               _hd104675_)))
                                          (let ((_hd104650_ _hd104609104665_)
                                                (_rest104652_
                                                 _tl104610104667_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104605104642_
                                               _rest104652_
                                               _hd104650_)))))
                                    (let ((_hd104650_ _hd104609104665_)
                                          (_rest104652_ _tl104610104667_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104605104642_
                                         _rest104652_
                                         _hd104650_)))))
                              (let ()
                                (declare (not safe))
                                (_else104603104622_))))))))
                 (_compile-bind104442_
                  (lambda (_bind104586_ _post104587_ _body104588_)
                    (let ((__tmp110812
                           (let ((__tmp110813
                                  (let ((__tmp110816 (reverse _bind104586_))
                                        (__tmp110814
                                         (let ((__tmp110815
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post104443_
                                                   _post104587_
                                                   _body104588_))))
                                           (declare (not safe))
                                           (cons __tmp110815 '()))))
                                    (declare (not safe))
                                    (cons __tmp110816 __tmp110814))))
                             (declare (not safe))
                             (cons 'let __tmp110813))))
                      (declare (not safe))
                      (__SRC__% __tmp110812 _stx104438_))))
                 (_compile-post104443_
                  (lambda (_post104445_ _body104446_)
                    (let ((__tmp110817
                           (let ((__tmp110818
                                  (let ((__tmp110819
                                         (let ((__tmp110821
                                                (lambda (_hd104448_ _r104449_)
                                                  (let* ((_hd104450104473_
                                                          _hd104448_)
                                                         (_E104454104477_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd104450104473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K104467104571_
                                                           (lambda (_expr104569_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr104569_ _r104449_))))
                  (_K104462104549_
                   (lambda (_expr104546_ _id104547_)
                     (let ((__tmp110822
                            (let ((__tmp110823
                                   (let ((__tmp110824
                                          (let ((__tmp110825
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr104546_ '()))))
                                            (declare (not safe))
                                            (cons _id104547_ __tmp110825))))
                                     (declare (not safe))
                                     (cons 'set! __tmp110824))))
                              (declare (not safe))
                              (__SRC__% __tmp110823 _stx104438_))))
                       (declare (not safe))
                       (cons __tmp110822 _r104449_))))
                  (_K104455104516_
                   (lambda (_init104481_ _len104482_ _expr104483_ _tmp104484_)
                     (let ((__tmp110826
                            (let ((__tmp110827
                                   (let ((__tmp110828
                                          (let ((__tmp110842
                                                 (let ((__tmp110843
                                                        (let ((__tmp110844
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr104483_ '()))))
                  (declare (not safe))
                  (cons _tmp104484_ __tmp110844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp110843 '())))
                                                (__tmp110829
                                                 (let ((__tmp110838
                                                        (let ((__tmp110839
                                                               (let ((__tmp110840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp110841
                                     (let ()
                                       (declare (not safe))
                                       (cons _len104482_ '()))))
                                (declare (not safe))
                                (cons _tmp104484_ __tmp110841))))
                         (declare (not safe))
                         (cons '__check-values __tmp110840))))
                  (declare (not safe))
                  (__SRC__% __tmp110839 _stx104438_)))
               (__tmp110830
                (let ((__tmp110831
                       (map (lambda (_hd104486_)
                              (let* ((_hd104487104494_ _hd104486_)
                                     (_E104489104498_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd104487104494_)))
                                     (_K104490104504_
                                      (lambda (_k104501_ _id104502_)
                                        (let ((__tmp110832
                                               (let ((__tmp110833
                                                      (let ((__tmp110834
                                                             (let ((__tmp110835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp110836
                                   (let ((__tmp110837
                                          (let ()
                                            (declare (not safe))
                                            (cons _k104501_ '()))))
                                     (declare (not safe))
                                     (cons _tmp104484_ __tmp110837))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp110836))))
                       (declare (not safe))
                       (cons __tmp110835 '()))))
                (declare (not safe))
                (cons _id104502_ __tmp110834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp110833))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp110832
                                           _stx104438_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104487104494_))
                                    (let ((_hd104491104507_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104487104494_)))
                                          (_tl104492104509_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104487104494_))))
                                      (let* ((_id104512_ _hd104491104507_)
                                             (_k104514_ _tl104492104509_))
                                        (declare (not safe))
                                        (_K104490104504_
                                         _k104514_
                                         _id104512_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E104489104498_)))))
                            _init104481_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp110831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp110838
                                                         __tmp110830))))
                                            (declare (not safe))
                                            (cons __tmp110842 __tmp110829))))
                                     (declare (not safe))
                                     (cons 'let __tmp110828))))
                              (declare (not safe))
                              (__SRC__% __tmp110827 _stx104438_))))
                       (declare (not safe))
                       (cons __tmp110826 _r104449_)))))
              (if (let () (declare (not safe)) (##pair? _hd104450104473_))
                  (let ((_tl104469104576_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd104450104473_)))
                        (_hd104468104574_
                         (let ()
                           (declare (not safe))
                           (##car _hd104450104473_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd104468104574_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104469104576_))
                            (let ((_tl104471104581_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104469104576_)))
                                  (_hd104470104579_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104469104576_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104471104581_))
                                  (let ((_expr104584_ _hd104470104579_))
                                    (declare (not safe))
                                    (_K104467104571_ _expr104584_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl104471104581_))
                                      (let ((_tl104461104535_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl104471104581_)))
                                            (_hd104460104533_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl104471104581_))))
                                        (let ((_tmp104524_ _hd104468104574_)
                                              (_expr104531_ _hd104470104579_)
                                              (_len104538_ _hd104460104533_)
                                              (_init104540_ _tl104461104535_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104455104516_
                                             _init104540_
                                             _len104538_
                                             _expr104531_
                                             _tmp104524_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E104454104477_)))))
                            (let () (declare (not safe)) (_E104454104477_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104469104576_))
                            (let ((_tl104466104561_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104469104576_)))
                                  (_hd104465104559_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104469104576_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104466104561_))
                                  (let ((_id104557_ _hd104468104574_)
                                        (_expr104564_ _hd104465104559_))
                                    (let ()
                                      (declare (not safe))
                                      (_K104462104549_
                                       _expr104564_
                                       _id104557_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl104466104561_))
                                      (let ((_tl104461104535_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl104466104561_)))
                                            (_hd104460104533_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl104466104561_))))
                                        (let ((_tmp104524_ _hd104468104574_)
                                              (_expr104531_ _hd104465104559_)
                                              (_len104538_ _hd104460104533_)
                                              (_init104540_ _tl104461104535_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104455104516_
                                             _init104540_
                                             _len104538_
                                             _expr104531_
                                             _tmp104524_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E104454104477_)))))
                            (let () (declare (not safe)) (_E104454104477_)))))
                  (let () (declare (not safe)) (_E104454104477_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp110820
                                                (list _body104446_)))
                                           (declare (not safe))
                                           (foldl1 __tmp110821
                                                   __tmp110820
                                                   _post104445_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp110819))))
                             (declare (not safe))
                             (cons 'begin __tmp110818))))
                      (declare (not safe))
                      (__SRC__% __tmp110817 _stx104438_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104438_
             _compile-simple104440_
             _compile-values104441_)))))
    (define __compile-call%
      (lambda (_stx104398_)
        (let* ((_$e104400_ _stx104398_)
               (_$E104402104411_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104400_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104400_))
              (let* ((_$tgt104403104414_
                      (let () (declare (not safe)) (__AST-e _$e104400_)))
                     (_$hd104404104417_
                      (let () (declare (not safe)) (##car _$tgt104403104414_)))
                     (_$tl104405104420_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104403104414_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104405104420_))
                    (let* ((_$tgt104406104424_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104405104420_)))
                           (_$hd104407104427_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104406104424_)))
                           (_$tl104408104430_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104406104424_))))
                      (let* ((_rator104434_ _$hd104407104427_)
                             (_rands104436_ _$tl104408104430_)
                             (__tmp110845
                              (let ((__tmp110847
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator104434_)))
                                    (__tmp110846
                                     (map __compile _rands104436_)))
                                (declare (not safe))
                                (cons __tmp110847 __tmp110846))))
                        (declare (not safe))
                        (__SRC__% __tmp110845 _stx104398_)))
                    (let () (declare (not safe)) (_$E104402104411_))))
              (let () (declare (not safe)) (_$E104402104411_))))))
    (define __compile-ref%
      (lambda (_stx104360_)
        (let* ((_$e104362_ _stx104360_)
               (_$E104364104373_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104362_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104362_))
              (let* ((_$tgt104365104376_
                      (let () (declare (not safe)) (__AST-e _$e104362_)))
                     (_$hd104366104379_
                      (let () (declare (not safe)) (##car _$tgt104365104376_)))
                     (_$tl104367104382_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104365104376_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104367104382_))
                    (let* ((_$tgt104368104386_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104367104382_)))
                           (_$hd104369104389_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104368104386_)))
                           (_$tl104370104392_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104368104386_))))
                      (let ((_id104396_ _$hd104369104389_))
                        (if (let ((__tmp110848
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104370104392_))))
                              (declare (not safe))
                              (equal? __tmp110848 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id104396_ _stx104360_))
                            (let () (declare (not safe)) (_$E104364104373_)))))
                    (let () (declare (not safe)) (_$E104364104373_))))
              (let () (declare (not safe)) (_$E104364104373_))))))
    (define __compile-setq%
      (lambda (_stx104307_)
        (let* ((_$e104309_ _stx104307_)
               (_$E104311104323_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104309_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104309_))
              (let* ((_$tgt104312104326_
                      (let () (declare (not safe)) (__AST-e _$e104309_)))
                     (_$hd104313104329_
                      (let () (declare (not safe)) (##car _$tgt104312104326_)))
                     (_$tl104314104332_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104312104326_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104314104332_))
                    (let* ((_$tgt104315104336_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104314104332_)))
                           (_$hd104316104339_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104315104336_)))
                           (_$tl104317104342_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104315104336_))))
                      (let ((_id104346_ _$hd104316104339_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl104317104342_))
                            (let* ((_$tgt104318104348_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl104317104342_)))
                                   (_$hd104319104351_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt104318104348_)))
                                   (_$tl104320104354_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt104318104348_))))
                              (let ((_expr104358_ _$hd104319104351_))
                                (if (let ((__tmp110854
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl104320104354_))))
                                      (declare (not safe))
                                      (equal? __tmp110854 '()))
                                    (let ((__tmp110849
                                           (let ((__tmp110850
                                                  (let ((__tmp110853
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id104346_
                                                            _stx104307_)))
                                                        (__tmp110851
                                                         (let ((__tmp110852
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr104358_))))
                   (declare (not safe))
                   (cons __tmp110852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110853
                                                          __tmp110851))))
                                             (declare (not safe))
                                             (cons 'set! __tmp110850))))
                                      (declare (not safe))
                                      (__SRC__% __tmp110849 _stx104307_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E104311104323_)))))
                            (let () (declare (not safe)) (_$E104311104323_)))))
                    (let () (declare (not safe)) (_$E104311104323_))))
              (let () (declare (not safe)) (_$E104311104323_))))))
    (define __compile-if%
      (lambda (_stx104239_)
        (let* ((_$e104241_ _stx104239_)
               (_$E104243104258_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104241_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104241_))
              (let* ((_$tgt104244104261_
                      (let () (declare (not safe)) (__AST-e _$e104241_)))
                     (_$hd104245104264_
                      (let () (declare (not safe)) (##car _$tgt104244104261_)))
                     (_$tl104246104267_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104244104261_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104246104267_))
                    (let* ((_$tgt104247104271_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104246104267_)))
                           (_$hd104248104274_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104247104271_)))
                           (_$tl104249104277_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104247104271_))))
                      (let ((_p104281_ _$hd104248104274_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl104249104277_))
                            (let* ((_$tgt104250104283_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl104249104277_)))
                                   (_$hd104251104286_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt104250104283_)))
                                   (_$tl104252104289_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt104250104283_))))
                              (let ((_t104293_ _$hd104251104286_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl104252104289_))
                                    (let* ((_$tgt104253104295_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl104252104289_)))
                                           (_$hd104254104298_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt104253104295_)))
                                           (_$tl104255104301_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt104253104295_))))
                                      (let ((_f104305_ _$hd104254104298_))
                                        (if (let ((__tmp110862
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl104255104301_))))
                                              (declare (not safe))
                                              (equal? __tmp110862 '()))
                                            (let ((__tmp110855
                                                   (let ((__tmp110856
                                                          (let ((__tmp110861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p104281_)))
                        (__tmp110857
                         (let ((__tmp110860
                                (let ()
                                  (declare (not safe))
                                  (__compile _t104293_)))
                               (__tmp110858
                                (let ((__tmp110859
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f104305_))))
                                  (declare (not safe))
                                  (cons __tmp110859 '()))))
                           (declare (not safe))
                           (cons __tmp110860 __tmp110858))))
                    (declare (not safe))
                    (cons __tmp110861 __tmp110857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp110856))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp110855
                                               _stx104239_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E104243104258_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E104243104258_)))))
                            (let () (declare (not safe)) (_$E104243104258_)))))
                    (let () (declare (not safe)) (_$E104243104258_))))
              (let () (declare (not safe)) (_$E104243104258_))))))
    (define __compile-quote%
      (lambda (_stx104201_)
        (let* ((_$e104203_ _stx104201_)
               (_$E104205104214_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104203_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104203_))
              (let* ((_$tgt104206104217_
                      (let () (declare (not safe)) (__AST-e _$e104203_)))
                     (_$hd104207104220_
                      (let () (declare (not safe)) (##car _$tgt104206104217_)))
                     (_$tl104208104223_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104206104217_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104208104223_))
                    (let* ((_$tgt104209104227_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104208104223_)))
                           (_$hd104210104230_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104209104227_)))
                           (_$tl104211104233_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104209104227_))))
                      (let ((_e104237_ _$hd104210104230_))
                        (if (let ((__tmp110866
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104211104233_))))
                              (declare (not safe))
                              (equal? __tmp110866 '()))
                            (let ((__tmp110863
                                   (let ((__tmp110864
                                          (let ((__tmp110865
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e104237_))))
                                            (declare (not safe))
                                            (cons __tmp110865 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp110864))))
                              (declare (not safe))
                              (__SRC__% __tmp110863 _stx104201_))
                            (let () (declare (not safe)) (_$E104205104214_)))))
                    (let () (declare (not safe)) (_$E104205104214_))))
              (let () (declare (not safe)) (_$E104205104214_))))))
    (define __compile-quote-syntax%
      (lambda (_stx104163_)
        (let* ((_$e104165_ _stx104163_)
               (_$E104167104176_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104165_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104165_))
              (let* ((_$tgt104168104179_
                      (let () (declare (not safe)) (__AST-e _$e104165_)))
                     (_$hd104169104182_
                      (let () (declare (not safe)) (##car _$tgt104168104179_)))
                     (_$tl104170104185_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104168104179_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104170104185_))
                    (let* ((_$tgt104171104189_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104170104185_)))
                           (_$hd104172104192_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104171104189_)))
                           (_$tl104173104195_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104171104189_))))
                      (let ((_e104199_ _$hd104172104192_))
                        (if (let ((__tmp110869
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104173104195_))))
                              (declare (not safe))
                              (equal? __tmp110869 '()))
                            (let ((__tmp110867
                                   (let ((__tmp110868
                                          (let ()
                                            (declare (not safe))
                                            (cons _e104199_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp110868))))
                              (declare (not safe))
                              (__SRC__% __tmp110867 _stx104163_))
                            (let () (declare (not safe)) (_$E104167104176_)))))
                    (let () (declare (not safe)) (_$E104167104176_))))
              (let () (declare (not safe)) (_$E104167104176_))))))
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
